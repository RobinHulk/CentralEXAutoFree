package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class UUDecoderStream extends FilterInputStream {
    private byte[] buffer;
    private int bufsize;
    private boolean gotEnd;
    private boolean gotPrefix;
    private boolean ignoreErrors;
    private boolean ignoreMissingBeginEnd;
    private int index;
    private LineInputStream lin;
    private int mode;
    private String name;
    private String readAhead;

    public UUDecoderStream(InputStream inputStream) {
        super(inputStream);
        this.buffer = new byte[45];
        this.bufsize = 0;
        this.index = 0;
        this.gotPrefix = false;
        this.gotEnd = false;
        this.lin = new LineInputStream(inputStream);
        this.ignoreErrors = PropUtil.getBooleanSystemProperty("mail.mime.uudecode.ignoreerrors", false);
        this.ignoreMissingBeginEnd = PropUtil.getBooleanSystemProperty("mail.mime.uudecode.ignoremissingbeginend", false);
    }

    private boolean decode() throws DecodingException {
        if (this.gotEnd) {
            return false;
        }
        this.bufsize = 0;
        while (true) {
            String line = this.readAhead;
            if (line != null) {
                this.readAhead = null;
            } else {
                line = this.lin.readLine();
            }
            if (line == null) {
                if (!this.ignoreMissingBeginEnd) {
                    throw new DecodingException("UUDecoder: Missing end at EOF");
                }
                this.gotEnd = true;
                return false;
            }
            if (line.equals("end")) {
                this.gotEnd = true;
                return false;
            }
            if (line.length() != 0) {
                char cCharAt = line.charAt(0);
                if (cCharAt >= ' ') {
                    int i2 = (cCharAt - ' ') & 63;
                    if (i2 == 0) {
                        String line2 = this.lin.readLine();
                        if ((line2 == null || !line2.equals("end")) && !this.ignoreMissingBeginEnd) {
                            throw new DecodingException("UUDecoder: Missing End after count 0 line");
                        }
                        this.gotEnd = true;
                        return false;
                    }
                    if (line.length() >= (((i2 * 8) + 5) / 6) + 1) {
                        int i3 = 1;
                        while (this.bufsize < i2) {
                            byte bCharAt = (byte) ((line.charAt(i3) - ' ') & 63);
                            int i4 = i3 + 2;
                            byte bCharAt2 = (byte) ((line.charAt(i3 + 1) - ' ') & 63);
                            byte[] bArr = this.buffer;
                            int i5 = this.bufsize;
                            int i6 = i5 + 1;
                            this.bufsize = i6;
                            bArr[i5] = (byte) (((bCharAt << 2) & 252) | ((bCharAt2 >>> 4) & 3));
                            if (i6 < i2) {
                                i3 += 3;
                                byte bCharAt3 = (byte) ((line.charAt(i4) - ' ') & 63);
                                byte[] bArr2 = this.buffer;
                                int i7 = this.bufsize;
                                this.bufsize = i7 + 1;
                                bArr2[i7] = (byte) (((bCharAt2 << 4) & 240) | ((bCharAt3 >>> 2) & 15));
                                bCharAt2 = bCharAt3;
                            } else {
                                i3 = i4;
                            }
                            if (this.bufsize < i2) {
                                int i8 = i3 + 1;
                                byte bCharAt4 = (byte) ((line.charAt(i3) - ' ') & 63);
                                byte[] bArr3 = this.buffer;
                                int i9 = this.bufsize;
                                this.bufsize = i9 + 1;
                                bArr3[i9] = (byte) ((bCharAt4 & 63) | ((bCharAt2 << 6) & 192));
                                i3 = i8;
                            }
                        }
                        return true;
                    }
                    if (!this.ignoreErrors) {
                        throw new DecodingException("UUDecoder: Short buffer error");
                    }
                } else if (!this.ignoreErrors) {
                    throw new DecodingException("UUDecoder: Buffer format error");
                }
            }
        }
    }

    private void readPrefix() throws DecodingException {
        String line;
        int iCharAt;
        if (this.gotPrefix) {
            return;
        }
        this.mode = 438;
        this.name = "encoder.buf";
        while (true) {
            line = this.lin.readLine();
            if (line != null) {
                if (!line.regionMatches(false, 0, "begin", 0, 5)) {
                    if (this.ignoreMissingBeginEnd && line.length() != 0 && ((iCharAt = ((((line.charAt(0) - ' ') & 63) * 8) + 5) / 6) == 0 || line.length() >= iCharAt + 1)) {
                        break;
                    }
                } else {
                    try {
                        this.mode = Integer.parseInt(line.substring(6, 9));
                    } catch (NumberFormatException e2) {
                        if (!this.ignoreErrors) {
                            throw new DecodingException("UUDecoder: Error in mode: " + e2.toString());
                        }
                    }
                    if (line.length() > 10) {
                        this.name = line.substring(10);
                    } else if (!this.ignoreErrors) {
                        throw new DecodingException("UUDecoder: Missing name: ".concat(line));
                    }
                    this.gotPrefix = true;
                    return;
                }
            } else {
                if (!this.ignoreMissingBeginEnd) {
                    throw new DecodingException("UUDecoder: Missing begin");
                }
                this.gotPrefix = true;
                this.gotEnd = true;
                return;
            }
        }
        this.readAhead = line;
        this.gotPrefix = true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return (this.bufsize - this.index) + ((((FilterInputStream) this).in.available() * 3) / 4);
    }

    public int getMode() throws DecodingException {
        readPrefix();
        return this.mode;
    }

    public String getName() throws DecodingException {
        readPrefix();
        return this.name;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws DecodingException {
        if (this.index >= this.bufsize) {
            readPrefix();
            if (!decode()) {
                return -1;
            }
            this.index = 0;
        }
        byte[] bArr = this.buffer;
        int i2 = this.index;
        this.index = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws DecodingException {
        int i4 = 0;
        while (i4 < i3) {
            int i5 = read();
            if (i5 == -1) {
                if (i4 == 0) {
                    return -1;
                }
                return i4;
            }
            bArr[i2 + i4] = (byte) i5;
            i4++;
        }
        return i4;
    }

    public UUDecoderStream(InputStream inputStream, boolean z2, boolean z3) {
        super(inputStream);
        this.buffer = new byte[45];
        this.bufsize = 0;
        this.index = 0;
        this.gotPrefix = false;
        this.gotEnd = false;
        this.lin = new LineInputStream(inputStream);
        this.ignoreErrors = z2;
        this.ignoreMissingBeginEnd = z3;
    }
}

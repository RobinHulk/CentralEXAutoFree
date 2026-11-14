package com.sun.mail.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* JADX INFO: loaded from: classes.dex */
public class QPDecoderStream extends FilterInputStream {
    protected byte[] ba;
    protected int spaces;

    public QPDecoderStream(InputStream inputStream) {
        super(new PushbackInputStream(inputStream, 2));
        this.ba = new byte[2];
        this.spaces = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i2;
        int i3 = this.spaces;
        if (i3 > 0) {
            this.spaces = i3 - 1;
            return 32;
        }
        int i4 = ((FilterInputStream) this).in.read();
        if (i4 == 32) {
            while (true) {
                i2 = ((FilterInputStream) this).in.read();
                if (i2 != 32) {
                    break;
                }
                this.spaces++;
            }
            if (i2 == 13 || i2 == 10 || i2 == -1) {
                this.spaces = 0;
                return i2;
            }
            ((PushbackInputStream) ((FilterInputStream) this).in).unread(i2);
            return 32;
        }
        if (i4 == 61) {
            int i5 = ((FilterInputStream) this).in.read();
            if (i5 == 10) {
                return read();
            }
            if (i5 == 13) {
                int i6 = ((FilterInputStream) this).in.read();
                if (i6 != 10) {
                    ((PushbackInputStream) ((FilterInputStream) this).in).unread(i6);
                }
                return read();
            }
            if (i5 == -1) {
                return -1;
            }
            byte[] bArr = this.ba;
            bArr[0] = (byte) i5;
            bArr[1] = (byte) ((FilterInputStream) this).in.read();
            try {
                return ASCIIUtility.parseInt(this.ba, 0, 2, 16);
            } catch (NumberFormatException unused) {
                ((PushbackInputStream) ((FilterInputStream) this).in).unread(this.ba);
            }
        }
        return i4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j2) {
        long j3 = 0;
        while (true) {
            long j4 = j2 - 1;
            if (j2 <= 0 || read() < 0) {
                break;
            }
            j3++;
            j2 = j4;
        }
        return j3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i2, int i3) throws IOException {
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
}

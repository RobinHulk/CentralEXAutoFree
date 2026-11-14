package com.sun.mail.iap;

import com.sun.mail.util.ASCIIUtility;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class ResponseInputStream {
    private static final int incrementSlop = 16;
    private static final int maxIncrement = 262144;
    private static final int minIncrement = 256;
    private BufferedInputStream bin;

    public ResponseInputStream(InputStream inputStream) {
        this.bin = new BufferedInputStream(inputStream, 2048);
    }

    public int available() {
        return this.bin.available();
    }

    public ByteArray readResponse() {
        return readResponse(null);
    }

    public ByteArray readResponse(ByteArray byteArray) throws IOException {
        if (byteArray == null) {
            byteArray = new ByteArray(new byte[128], 0, 128);
        }
        byte[] bytes = byteArray.getBytes();
        int i2 = 0;
        while (true) {
            boolean z2 = false;
            int i3 = 0;
            while (!z2 && (i3 = this.bin.read()) != -1) {
                if (i3 == 10 && i2 > 0 && bytes[i2 - 1] == 13) {
                    z2 = true;
                }
                if (i2 >= bytes.length) {
                    int length = bytes.length;
                    if (length > maxIncrement) {
                        length = maxIncrement;
                    }
                    byteArray.grow(length);
                    bytes = byteArray.getBytes();
                }
                bytes[i2] = (byte) i3;
                i2++;
            }
            if (i3 == -1) {
                throw new IOException("Connection dropped by server?");
            }
            if (i2 >= 5) {
                int i4 = i2 - 3;
                if (bytes[i4] == 125) {
                    int i5 = i2 - 4;
                    while (i5 >= 0 && bytes[i5] != 123) {
                        i5--;
                    }
                    if (i5 >= 0) {
                        try {
                            int i6 = ASCIIUtility.parseInt(bytes, i5 + 1, i4);
                            if (i6 > 0) {
                                int length2 = bytes.length - i2;
                                int i7 = i6 + 16;
                                if (i7 > length2) {
                                    int i8 = i7 - length2;
                                    if (minIncrement > i8) {
                                        i8 = minIncrement;
                                    }
                                    byteArray.grow(i8);
                                    bytes = byteArray.getBytes();
                                }
                                while (i6 > 0) {
                                    int i9 = this.bin.read(bytes, i2, i6);
                                    if (i9 == -1) {
                                        throw new IOException("Connection dropped by server?");
                                    }
                                    i6 -= i9;
                                    i2 += i9;
                                }
                            }
                        } catch (NumberFormatException unused) {
                        }
                    }
                }
            }
            byteArray.setCount(i2);
            return byteArray;
        }
    }
}

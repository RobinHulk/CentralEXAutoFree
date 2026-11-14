package com.sun.mail.util;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class QEncoderStream extends QPEncoderStream {
    private static String TEXT_SPECIALS = "=_?";
    private static String WORD_SPECIALS = "=_?\"#$%&'(),.:;<>@[\\]^`{|}~";
    private String specials;

    public QEncoderStream(OutputStream outputStream, boolean z2) {
        super(outputStream, Integer.MAX_VALUE);
        this.specials = z2 ? WORD_SPECIALS : TEXT_SPECIALS;
    }

    public static int encodedLength(byte[] bArr, boolean z2) {
        String str = z2 ? WORD_SPECIALS : TEXT_SPECIALS;
        int i2 = 0;
        for (byte b : bArr) {
            int i3 = b & 255;
            i2 = (i3 < 32 || i3 >= 127 || str.indexOf(i3) >= 0) ? i2 + 3 : i2 + 1;
        }
        return i2;
    }

    @Override // com.sun.mail.util.QPEncoderStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i2) throws IOException {
        int i3 = i2 & 255;
        if (i3 == 32) {
            output(95, false);
        } else if (i3 < 32 || i3 >= 127 || this.specials.indexOf(i3) >= 0) {
            output(i3, true);
        } else {
            output(i3, false);
        }
    }
}

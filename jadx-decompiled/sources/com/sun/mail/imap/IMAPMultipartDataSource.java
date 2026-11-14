package com.sun.mail.imap;

import M.d0;
import com.sun.mail.imap.protocol.BODYSTRUCTURE;
import java.util.ArrayList;
import java.util.List;
import javax.mail.BodyPart;
import javax.mail.MultipartDataSource;
import javax.mail.internet.MimePart;
import javax.mail.internet.MimePartDataSource;

/* JADX INFO: loaded from: classes.dex */
public class IMAPMultipartDataSource extends MimePartDataSource implements MultipartDataSource {
    private List<IMAPBodyPart> parts;

    public IMAPMultipartDataSource(MimePart mimePart, BODYSTRUCTURE[] bodystructureArr, String str, IMAPMessage iMAPMessage) {
        String string;
        super(mimePart);
        this.parts = new ArrayList(bodystructureArr.length);
        for (int i2 = 0; i2 < bodystructureArr.length; i2++) {
            List<IMAPBodyPart> list = this.parts;
            BODYSTRUCTURE bodystructure = bodystructureArr[i2];
            if (str == null) {
                string = Integer.toString(i2 + 1);
            } else {
                StringBuilder sbI = d0.i(str, ".");
                sbI.append(Integer.toString(i2 + 1));
                string = sbI.toString();
            }
            list.add(new IMAPBodyPart(bodystructure, string, iMAPMessage));
        }
    }

    @Override // javax.mail.MultipartDataSource
    public BodyPart getBodyPart(int i2) {
        return this.parts.get(i2);
    }

    @Override // javax.mail.MultipartDataSource
    public int getCount() {
        return this.parts.size();
    }
}

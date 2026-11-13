package com.sun.mail.imap.protocol;

import com.sun.mail.iap.Protocol;
import com.sun.mail.iap.Response;
import com.sun.mail.util.ASCIIUtility;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class IMAPResponse extends Response {
    private String key;
    private int number;

    public IMAPResponse(Protocol protocol) {
        super(protocol);
        init();
    }

    private void init() {
        if (!isUnTagged() || isOK() || isNO() || isBAD() || isBYE()) {
            return;
        }
        String atom = readAtom();
        this.key = atom;
        try {
            this.number = Integer.parseInt(atom);
            this.key = readAtom();
        } catch (NumberFormatException unused) {
        }
    }

    public String getKey() {
        return this.key;
    }

    public int getNumber() {
        return this.number;
    }

    public boolean keyEquals(String str) {
        String str2 = this.key;
        return str2 != null && str2.equalsIgnoreCase(str);
    }

    public String[] readSimpleList() {
        byte[] bArr;
        int i2;
        skipSpaces();
        byte[] bArr2 = this.buffer;
        int i3 = this.index;
        if (bArr2[i3] != 40) {
            return null;
        }
        this.index = i3 + 1;
        ArrayList arrayList = new ArrayList();
        int i4 = this.index;
        while (true) {
            bArr = this.buffer;
            i2 = this.index;
            byte b = bArr[i2];
            if (b == 41) {
                break;
            }
            if (b == 32) {
                arrayList.add(ASCIIUtility.toString(bArr, i4, i2));
                i4 = this.index + 1;
            }
            this.index++;
        }
        if (i2 > i4) {
            arrayList.add(ASCIIUtility.toString(bArr, i4, i2));
        }
        this.index++;
        int size = arrayList.size();
        if (size > 0) {
            return (String[]) arrayList.toArray(new String[size]);
        }
        return null;
    }

    public IMAPResponse(IMAPResponse iMAPResponse) {
        super(iMAPResponse);
        this.key = iMAPResponse.key;
        this.number = iMAPResponse.number;
    }

    public IMAPResponse(String str) {
        this(str, true);
    }

    public IMAPResponse(String str, boolean z2) {
        super(str, z2);
        init();
    }
}

package com.sun.mail.imap.protocol;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class MessageSet {
    public int end;
    public int start;

    public MessageSet() {
    }

    public static MessageSet[] createMessageSets(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < iArr.length) {
            MessageSet messageSet = new MessageSet();
            messageSet.start = iArr[i2];
            do {
                i2++;
                if (i2 >= iArr.length) {
                    break;
                }
            } while (iArr[i2] == iArr[i2 - 1] + 1);
            messageSet.end = iArr[i2 - 1];
            arrayList.add(messageSet);
        }
        return (MessageSet[]) arrayList.toArray(new MessageSet[arrayList.size()]);
    }

    public static String toString(MessageSet[] messageSetArr) {
        if (messageSetArr == null || messageSetArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = messageSetArr.length;
        int i2 = 0;
        while (true) {
            MessageSet messageSet = messageSetArr[i2];
            int i3 = messageSet.start;
            int i4 = messageSet.end;
            if (i4 > i3) {
                sb.append(i3);
                sb.append(':');
                sb.append(i4);
            } else {
                sb.append(i3);
            }
            i2++;
            if (i2 >= length) {
                return sb.toString();
            }
            sb.append(',');
        }
    }

    public int size() {
        return (this.end - this.start) + 1;
    }

    public MessageSet(int i2, int i3) {
        this.start = i2;
        this.end = i3;
    }

    public static int size(MessageSet[] messageSetArr) {
        if (messageSetArr == null) {
            return 0;
        }
        int size = 0;
        for (MessageSet messageSet : messageSetArr) {
            size += messageSet.size();
        }
        return size;
    }
}

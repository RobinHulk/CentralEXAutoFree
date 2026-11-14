package com.sun.mail.imap.protocol;

import java.util.ArrayList;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class UIDSet {
    public long end;
    public long start;

    public UIDSet() {
    }

    public static UIDSet[] createUIDSets(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < jArr.length) {
            UIDSet uIDSet = new UIDSet();
            uIDSet.start = jArr[i2];
            do {
                i2++;
                if (i2 >= jArr.length) {
                    break;
                }
            } while (jArr[i2] == jArr[i2 - 1] + 1);
            uIDSet.end = jArr[i2 - 1];
            arrayList.add(uIDSet);
        }
        return (UIDSet[]) arrayList.toArray(new UIDSet[arrayList.size()]);
    }

    public static UIDSet[] parseUIDSets(String str) {
        UIDSet uIDSet;
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",:", true);
        loop0: while (true) {
            uIDSet = null;
            while (true) {
                try {
                    if (!stringTokenizer.hasMoreTokens()) {
                        break loop0;
                    }
                    String strNextToken = stringTokenizer.nextToken();
                    if (strNextToken.equals(",")) {
                        break;
                    }
                    if (!strNextToken.equals(":")) {
                        long j2 = Long.parseLong(strNextToken);
                        if (uIDSet != null) {
                            uIDSet.end = j2;
                        } else {
                            uIDSet = new UIDSet(j2, j2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
            if (uIDSet != null) {
                arrayList.add(uIDSet);
            }
        }
        if (uIDSet != null) {
            arrayList.add(uIDSet);
        }
        return (UIDSet[]) arrayList.toArray(new UIDSet[arrayList.size()]);
    }

    public static long[] toArray(UIDSet[] uIDSetArr) {
        if (uIDSetArr == null) {
            return null;
        }
        long[] jArr = new long[(int) size(uIDSetArr)];
        int i2 = 0;
        for (UIDSet uIDSet : uIDSetArr) {
            long j2 = uIDSet.start;
            while (j2 <= uIDSet.end) {
                jArr[i2] = j2;
                j2++;
                i2++;
            }
        }
        return jArr;
    }

    public static String toString(UIDSet[] uIDSetArr) {
        if (uIDSetArr == null) {
            return null;
        }
        if (uIDSetArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = uIDSetArr.length;
        int i2 = 0;
        while (true) {
            UIDSet uIDSet = uIDSetArr[i2];
            long j2 = uIDSet.start;
            long j3 = uIDSet.end;
            if (j3 > j2) {
                sb.append(j2);
                sb.append(':');
                sb.append(j3);
            } else {
                sb.append(j2);
            }
            i2++;
            if (i2 >= length) {
                return sb.toString();
            }
            sb.append(',');
        }
    }

    public long size() {
        return (this.end - this.start) + 1;
    }

    public UIDSet(long j2, long j3) {
        this.start = j2;
        this.end = j3;
    }

    public static long size(UIDSet[] uIDSetArr) {
        long size = 0;
        if (uIDSetArr != null) {
            for (UIDSet uIDSet : uIDSetArr) {
                size += uIDSet.size();
            }
        }
        return size;
    }

    private static long size(UIDSet[] uIDSetArr, long j2) {
        long size;
        if (uIDSetArr == null) {
            return 0L;
        }
        long j3 = 0;
        for (UIDSet uIDSet : uIDSetArr) {
            if (j2 < 0) {
                size = uIDSet.size();
            } else {
                long j4 = uIDSet.start;
                if (j4 <= j2) {
                    long j5 = uIDSet.end;
                    if (j5 < j2) {
                        j3 += (j5 - j4) + 1;
                    } else {
                        size = (j2 - j4) + 1;
                    }
                }
            }
            j3 += size;
        }
        return j3;
    }

    public static long[] toArray(UIDSet[] uIDSetArr, long j2) {
        if (uIDSetArr == null) {
            return null;
        }
        long[] jArr = new long[(int) size(uIDSetArr, j2)];
        int i2 = 0;
        for (UIDSet uIDSet : uIDSetArr) {
            long j3 = uIDSet.start;
            while (j3 <= uIDSet.end && (j2 < 0 || j3 <= j2)) {
                jArr[i2] = j3;
                j3++;
                i2++;
            }
        }
        return jArr;
    }
}

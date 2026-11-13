package androidx.emoji2.text;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ThreadLocal f1704d = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1705a;
    public final q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f1706c = 0;

    public l(q qVar, int i2) {
        this.b = qVar;
        this.f1705a = i2;
    }

    public final int a(int i2) {
        F.a aVarC = c();
        int iA = aVarC.a(16);
        if (iA == 0) {
            return 0;
        }
        ByteBuffer byteBuffer = (ByteBuffer) aVarC.f88d;
        int i3 = iA + aVarC.f86a;
        return byteBuffer.getInt((i2 * 4) + byteBuffer.getInt(i3) + i3 + 4);
    }

    public final int b() {
        F.a aVarC = c();
        int iA = aVarC.a(16);
        if (iA == 0) {
            return 0;
        }
        int i2 = iA + aVarC.f86a;
        return ((ByteBuffer) aVarC.f88d).getInt(((ByteBuffer) aVarC.f88d).getInt(i2) + i2);
    }

    public final F.a c() {
        ThreadLocal threadLocal = f1704d;
        F.a aVar = (F.a) threadLocal.get();
        if (aVar == null) {
            aVar = new F.a();
            threadLocal.set(aVar);
        }
        F.b bVar = (F.b) this.b.f1719a;
        int iA = bVar.a(6);
        if (iA != 0) {
            int i2 = iA + bVar.f86a;
            int i3 = (this.f1705a * 4) + ((ByteBuffer) bVar.f88d).getInt(i2) + i2 + 4;
            int i4 = ((ByteBuffer) bVar.f88d).getInt(i3) + i3;
            ByteBuffer byteBuffer = (ByteBuffer) bVar.f88d;
            aVar.f88d = byteBuffer;
            if (byteBuffer != null) {
                aVar.f86a = i4;
                int i5 = i4 - byteBuffer.getInt(i4);
                aVar.b = i5;
                aVar.f87c = ((ByteBuffer) aVar.f88d).getShort(i5);
            } else {
                aVar.f86a = 0;
                aVar.b = 0;
                aVar.f87c = 0;
            }
        }
        return aVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        F.a aVarC = c();
        int iA = aVarC.a(4);
        sb.append(Integer.toHexString(iA != 0 ? ((ByteBuffer) aVarC.f88d).getInt(iA + aVarC.f86a) : 0));
        sb.append(", codepoints:");
        int iB = b();
        for (int i2 = 0; i2 < iB; i2++) {
            sb.append(Integer.toHexString(a(i2)));
            sb.append(" ");
        }
        return sb.toString();
    }
}

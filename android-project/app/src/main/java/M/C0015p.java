package M;

import java.util.Comparator;

/* JADX INFO: renamed from: M.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0015p implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f331a;

    public /* synthetic */ C0015p(int i2) {
        this.f331a = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0036, code lost:
    
        if (r3 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
    
        if (r3 != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
    
        return -1;
     */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int compare(java.lang.Object r7, java.lang.Object r8) {
        /*
            r6 = this;
            r0 = 0
            r1 = 1
            r2 = -1
            int r3 = r6.f331a
            switch(r3) {
                case 0: goto L22;
                default: goto L8;
            }
        L8:
            android.view.View r7 = (android.view.View) r7
            android.view.View r8 = (android.view.View) r8
            java.util.WeakHashMap r3 = p034y.N.f4222a
            float r7 = p034y.D.m(r7)
            float r8 = p034y.D.m(r8)
            int r3 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r3 <= 0) goto L1c
            r0 = r2
            goto L21
        L1c:
            int r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r7 >= 0) goto L21
            r0 = r1
        L21:
            return r0
        L22:
            M.r r7 = (M.r) r7
            M.r r8 = (M.r) r8
            androidx.recyclerview.widget.RecyclerView r3 = r7.f340d
            if (r3 != 0) goto L2c
            r4 = r1
            goto L2d
        L2c:
            r4 = r0
        L2d:
            androidx.recyclerview.widget.RecyclerView r5 = r8.f340d
            if (r5 != 0) goto L33
            r5 = r1
            goto L34
        L33:
            r5 = r0
        L34:
            if (r4 == r5) goto L3b
            if (r3 != 0) goto L39
            goto L4b
        L39:
            r0 = r2
            goto L55
        L3b:
            boolean r3 = r7.f338a
            boolean r4 = r8.f338a
            if (r3 == r4) goto L44
            if (r3 == 0) goto L4b
            goto L39
        L44:
            int r1 = r8.b
            int r2 = r7.b
            int r1 = r1 - r2
            if (r1 == 0) goto L4d
        L4b:
            r0 = r1
            goto L55
        L4d:
            int r7 = r7.f339c
            int r8 = r8.f339c
            int r7 = r7 - r8
            if (r7 == 0) goto L55
            r0 = r7
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: M.C0015p.compare(java.lang.Object, java.lang.Object):int");
    }
}

package p033x;

import T.C0081j1;

/* JADX INFO: loaded from: classes.dex */
public final class c extends C0081j1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4207c;

    public c() {
        super(12);
        this.f4207c = new Object();
    }

    @Override // T.C0081j1
    public final Object a() {
        Object objA;
        synchronized (this.f4207c) {
            objA = super.a();
        }
        return objA;
    }

    @Override // T.C0081j1
    public final boolean c(Object obj) {
        boolean zC;
        synchronized (this.f4207c) {
            zC = super.c(obj);
        }
        return zC;
    }
}

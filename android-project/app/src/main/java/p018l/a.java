package p018l;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f3823e = new HashMap();

    @Override // p018l.f
    public final c a(Object obj) {
        return (c) this.f3823e.get(obj);
    }

    @Override // p018l.f
    public final Object b(Object obj) {
        Object objB = super.b(obj);
        this.f3823e.remove(obj);
        return objB;
    }
}

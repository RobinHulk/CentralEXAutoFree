package p014j;

import p012i.C;

/* JADX INFO: loaded from: classes.dex */
public final class H extends AbstractViewOnTouchListenerC0258v0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ P f3453j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ T f3454k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H(T t2, T t3, P p2) {
        super(t3);
        this.f3454k = t2;
        this.f3453j = p2;
    }

    @Override // p014j.AbstractViewOnTouchListenerC0258v0
    public final C b() {
        return this.f3453j;
    }

    @Override // p014j.AbstractViewOnTouchListenerC0258v0
    public final boolean c() {
        T t2 = this.f3454k;
        if (t2.getInternalPopup().b()) {
            return true;
        }
        t2.f.d(J.b(t2), J.a(t2));
        return true;
    }
}

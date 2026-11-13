package w0;

/* JADX INFO: loaded from: classes.dex */
public final class v extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ w f4196e;

    public v(w wVar) {
        this.f4196e = wVar;
        this.f4194c = wVar.a();
        this.f4195d = wVar.f4198c;
    }

    @Override // w0.a
    public final void a() {
        int i2 = this.f4194c;
        if (i2 == 0) {
            this.f4180a = 2;
            return;
        }
        w wVar = this.f4196e;
        Object[] objArr = wVar.f4197a;
        int i3 = this.f4195d;
        this.b = objArr[i3];
        this.f4180a = 1;
        this.f4195d = (i3 + 1) % wVar.b;
        this.f4194c = i2 - 1;
    }
}

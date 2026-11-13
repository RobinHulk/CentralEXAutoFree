package p011h;

import android.view.View;
import p007e.AbstractC0201a;
import p014j.q1;

/* JADX INFO: loaded from: classes.dex */
public final class j extends AbstractC0201a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3262a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3264d;

    public j(k kVar) {
        this.f3262a = 0;
        this.f3264d = kVar;
        this.b = false;
        this.f3263c = 0;
    }

    @Override // p034y.W
    public final void a() {
        switch (this.f3262a) {
            case 0:
                int i2 = this.f3263c + 1;
                this.f3263c = i2;
                k kVar = (k) this.f3264d;
                if (i2 == kVar.f3265a.size()) {
                    AbstractC0201a abstractC0201a = kVar.f3267d;
                    if (abstractC0201a != null) {
                        abstractC0201a.a();
                    }
                    this.f3263c = 0;
                    this.b = false;
                    kVar.f3268e = false;
                }
                break;
            default:
                if (!this.b) {
                    ((q1) this.f3264d).f3662a.setVisibility(this.f3263c);
                }
                break;
        }
    }

    @Override // p007e.AbstractC0201a, p034y.W
    public void b(View view) {
        switch (this.f3262a) {
            case 1:
                this.b = true;
                break;
        }
    }

    @Override // p007e.AbstractC0201a, p034y.W
    public final void c() {
        switch (this.f3262a) {
            case 0:
                if (!this.b) {
                    this.b = true;
                    AbstractC0201a abstractC0201a = ((k) this.f3264d).f3267d;
                    if (abstractC0201a != null) {
                        abstractC0201a.c();
                    }
                    break;
                }
                break;
            default:
                ((q1) this.f3264d).f3662a.setVisibility(0);
                break;
        }
    }

    public j(q1 q1Var, int i2) {
        this.f3262a = 1;
        this.f3264d = q1Var;
        this.f3263c = i2;
        this.b = false;
    }
}

package p014j;

import A.e;
import android.content.Context;
import android.view.View;
import com.ex.auto.R;
import p012i.E;
import p012i.l;
import p012i.t;
import p012i.w;

/* JADX INFO: renamed from: j.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0226f extends w {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ int f3591l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ C0234j f3592m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0226f(C0234j c0234j, Context context, l lVar, View view) {
        super(R.attr.actionOverflowMenuStyle, context, view, lVar, true);
        this.f3592m = c0234j;
        this.f = 8388613;
        e eVar = c0234j.f3629w;
        this.f3406h = eVar;
        t tVar = this.f3407i;
        if (tVar != null) {
            tVar.g(eVar);
        }
    }

    @Override // p012i.w
    public final void c() {
        switch (this.f3591l) {
            case 0:
                C0234j c0234j = this.f3592m;
                c0234j.f3626t = null;
                c0234j.getClass();
                super.c();
                break;
            default:
                C0234j c0234j2 = this.f3592m;
                l lVar = c0234j2.f3610c;
                if (lVar != null) {
                    lVar.c(true);
                }
                c0234j2.f3625s = null;
                super.c();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0226f(C0234j c0234j, Context context, E e2, View view) {
        super(R.attr.actionOverflowMenuStyle, context, view, e2, false);
        this.f3592m = c0234j;
        if (!e2.f3287A.f()) {
            View view2 = c0234j.f3615i;
            this.f3404e = view2 == null ? (View) c0234j.f3614h : view2;
        }
        e eVar = c0234j.f3629w;
        this.f3406h = eVar;
        t tVar = this.f3407i;
        if (tVar != null) {
            tVar.g(eVar);
        }
    }
}

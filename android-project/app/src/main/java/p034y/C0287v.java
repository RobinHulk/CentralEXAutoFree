package p034y;

import F.c;
import android.text.TextUtils;
import android.view.View;

/* JADX INFO: renamed from: y.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0287v extends c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f4264e;

    public C0287v(int i2, Class cls, int i3, int i4, int i5) {
        this.f4264e = i5;
        this.f86a = i2;
        this.f88d = cls;
        this.f87c = i3;
        this.b = i4;
    }

    @Override // F.c
    public final Object b(View view) {
        switch (this.f4264e) {
            case 0:
                return Boolean.valueOf(H.d(view));
            case 1:
                return H.b(view);
            case 2:
                return J.a(view);
            default:
                return Boolean.valueOf(H.c(view));
        }
    }

    @Override // F.c
    public final void c(View view, Object obj) {
        switch (this.f4264e) {
            case 0:
                H.i(view, ((Boolean) obj).booleanValue());
                break;
            case 1:
                H.h(view, (CharSequence) obj);
                break;
            case 2:
                J.b(view, (CharSequence) obj);
                break;
            default:
                H.g(view, ((Boolean) obj).booleanValue());
                break;
        }
    }

    @Override // F.c
    public final boolean e(Object obj, Object obj2) {
        switch (this.f4264e) {
            case 0:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                return !((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
            case 1:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            case 2:
                return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
            default:
                Boolean bool3 = (Boolean) obj;
                Boolean bool4 = (Boolean) obj2;
                return !((bool3 != null && bool3.booleanValue()) == (bool4 != null && bool4.booleanValue()));
        }
    }
}

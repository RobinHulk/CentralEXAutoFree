package p020m;

import java.lang.reflect.Array;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public h f3836a;
    public h b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f3837c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3838d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3839e;

    public /* synthetic */ a(Object obj, int i2) {
        this.f3838d = i2;
        this.f3839e = obj;
    }

    public static boolean h(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public final void a() {
        switch (this.f3838d) {
            case 0:
                ((b) this.f3839e).clear();
                break;
            default:
                ((c) this.f3839e).clear();
                break;
        }
    }

    public final Object b(int i2, int i3) {
        switch (this.f3838d) {
            case 0:
                return ((b) this.f3839e).b[(i2 << 1) + i3];
            default:
                return ((c) this.f3839e).b[i2];
        }
    }

    public final Map c() {
        switch (this.f3838d) {
            case 0:
                return (b) this.f3839e;
            default:
                throw new UnsupportedOperationException("not a map");
        }
    }

    public final int d() {
        switch (this.f3838d) {
            case 0:
                return ((b) this.f3839e).f3871c;
            default:
                return ((c) this.f3839e).f3847c;
        }
    }

    public final int e(Object obj) {
        switch (this.f3838d) {
            case 0:
                return ((b) this.f3839e).d(obj);
            default:
                return ((c) this.f3839e).indexOf(obj);
        }
    }

    public final int f(Object obj) {
        switch (this.f3838d) {
            case 0:
                return ((b) this.f3839e).f(obj);
            default:
                return ((c) this.f3839e).indexOf(obj);
        }
    }

    public final void g(int i2) {
        switch (this.f3838d) {
            case 0:
                ((b) this.f3839e).h(i2);
                break;
            default:
                ((c) this.f3839e).e(i2);
                break;
        }
    }

    public final Object[] i(int i2, Object[] objArr) {
        int iD = d();
        if (objArr.length < iD) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), iD);
        }
        for (int i3 = 0; i3 < iD; i3++) {
            objArr[i3] = b(i3, i2);
        }
        if (objArr.length > iD) {
            objArr[iD] = null;
        }
        return objArr;
    }
}

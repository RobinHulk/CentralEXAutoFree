package T;

import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: renamed from: T.h4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0072h4 implements H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean[] f994a;
    public final /* synthetic */ int b;

    public /* synthetic */ C0072h4(boolean[] zArr, int i2) {
        this.f994a = zArr;
        this.b = i2;
    }

    @Override // H0.l
    public final Object b(Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        List list = QuickAccessFloaterService.f2436j0;
        this.f994a[this.b] = zBooleanValue;
        return v0.e.f4161c;
    }
}

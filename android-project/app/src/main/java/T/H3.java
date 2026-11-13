package T;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import java.util.List;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class H3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f619a;
    public final /* synthetic */ Context b;

    public /* synthetic */ H3(Context context, int i2) {
        this.f619a = i2;
        this.b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.b;
        switch (this.f619a) {
            case 0:
                List list = J3.f637a;
                J3.h(context, "retomada-boot");
                break;
            case 1:
                List list2 = J3.f637a;
                J3.h(context, "prazo");
                break;
            case 2:
                if (Build.VERSION.SDK_INT >= 33) {
                    ComponentName componentName = new ComponentName(context, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (p007e.n.c().b()) {
                            String strM = AbstractC0201a.M(context);
                            Object systemService = context.getSystemService("locale");
                            if (systemService != null) {
                                p007e.m.b(systemService, p007e.l.a(strM));
                            }
                        }
                        context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                    }
                }
                p007e.n.f = true;
                break;
            default:
                p007e.n.s(context);
                break;
        }
    }
}

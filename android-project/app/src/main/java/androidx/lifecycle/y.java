package androidx.lifecycle;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class y extends AbstractC0195e {
    final /* synthetic */ z this$0;

    public class a extends AbstractC0195e {
        public a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            y.this.this$0.a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            z zVar = y.this.this$0;
            int i2 = zVar.f1982a + 1;
            zVar.f1982a = i2;
            if (i2 == 1 && zVar.f1984d) {
                zVar.f.d(k.ON_START);
                zVar.f1984d = false;
            }
        }
    }

    public y(z zVar) {
        this.this$0 = zVar;
    }

    @Override // androidx.lifecycle.AbstractC0195e, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (Build.VERSION.SDK_INT < 29) {
            int i2 = A.b;
            ((A) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag")).f1934a = this.this$0.f1987h;
        }
    }

    @Override // androidx.lifecycle.AbstractC0195e, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        z zVar = this.this$0;
        int i2 = zVar.b - 1;
        zVar.b = i2;
        if (i2 == 0) {
            zVar.f1985e.postDelayed(zVar.f1986g, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        activity.registerActivityLifecycleCallbacks(new a());
    }

    @Override // androidx.lifecycle.AbstractC0195e, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        z zVar = this.this$0;
        int i2 = zVar.f1982a - 1;
        zVar.f1982a = i2;
        if (i2 == 0 && zVar.f1983c) {
            zVar.f.d(k.ON_STOP);
            zVar.f1984d = true;
        }
    }
}

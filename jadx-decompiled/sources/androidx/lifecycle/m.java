package androidx.lifecycle;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class m extends AbstractC0195e {
    @Override // androidx.lifecycle.AbstractC0195e, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        A.c(activity);
    }

    @Override // androidx.lifecycle.AbstractC0195e, android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // androidx.lifecycle.AbstractC0195e, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}

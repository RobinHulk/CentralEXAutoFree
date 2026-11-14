package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements O.b {
    @Override // O.b
    public final List a() {
        return Collections.emptyList();
    }

    @Override // O.b
    public final Object b(Context context) {
        if (!O.a.c(context).b.contains(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily. \nPlease ensure that you have: \n<meta-data\n    android:name='androidx.lifecycle.ProcessLifecycleInitializer' \n    android:value='androidx.startup' /> \nunder InitializationProvider in your AndroidManifest.xml");
        }
        if (!n.f1961a.getAndSet(true)) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new m());
        }
        z zVar = z.f1981i;
        zVar.getClass();
        zVar.f1985e = new Handler();
        zVar.f.d(k.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new y(zVar));
        return zVar;
    }
}

package androidx.emoji2.text;

import android.content.Context;
import android.os.Looper;
import androidx.lifecycle.InterfaceC0194d;
import androidx.lifecycle.ProcessLifecycleInitializer;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class EmojiCompatInitializer implements O.b {
    @Override // O.b
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // O.b
    public final Object b(Context context) {
        Object objB;
        o oVar = new o(new A.e(context));
        oVar.f144a = 1;
        if (i.f1695j == null) {
            synchronized (i.f1694i) {
                try {
                    if (i.f1695j == null) {
                        i.f1695j = new i(oVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        O.a aVarC = O.a.c(context);
        aVarC.getClass();
        synchronized (O.a.f409e) {
            try {
                objB = aVarC.f410a.get(ProcessLifecycleInitializer.class);
                if (objB == null) {
                    objB = aVarC.b(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        final androidx.lifecycle.s sVarD = ((androidx.lifecycle.q) objB).d();
        sVarD.a(new InterfaceC0194d() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.InterfaceC0194d
            public final void a() {
                EmojiCompatInitializer.this.getClass();
                b.a(Looper.getMainLooper()).postDelayed(new k(), 500L);
                sVarD.f(this);
            }
        });
        return Boolean.TRUE;
    }
}

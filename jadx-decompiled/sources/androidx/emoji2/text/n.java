package androidx.emoji2.text;

import M.C0001b;
import T.C0081j1;
import T.T0;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class n implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1711a;
    public final C0001b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p025p0.e f1712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Handler f1714e;
    public ThreadPoolExecutor f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ThreadPoolExecutor f1715g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public A.b f1716h;

    public n(Context context, C0001b c0001b) {
        p025p0.e eVar = o.f1717d;
        this.f1713d = new Object();
        AbstractC0201a.j(context, "Context cannot be null");
        this.f1711a = context.getApplicationContext();
        this.b = c0001b;
        this.f1712c = eVar;
    }

    public final void a() {
        synchronized (this.f1713d) {
            try {
                this.f1716h = null;
                Handler handler = this.f1714e;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.f1714e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f1715g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f = null;
                this.f1715g = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final v.h b() {
        try {
            p025p0.e eVar = this.f1712c;
            Context context = this.f1711a;
            C0001b c0001b = this.b;
            eVar.getClass();
            C0081j1 c0081j1A = v.c.a(context, c0001b);
            int i2 = c0081j1A.f1019a;
            if (i2 != 0) {
                throw new RuntimeException("fetchFonts failed (" + i2 + ")");
            }
            v.h[] hVarArr = (v.h[]) c0081j1A.b;
            if (hVarArr == null || hVarArr.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return hVarArr[0];
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RuntimeException("provider not found", e2);
        }
    }

    @Override // androidx.emoji2.text.h
    public final void q(A.b bVar) {
        synchronized (this.f1713d) {
            this.f1716h = bVar;
        }
        synchronized (this.f1713d) {
            try {
                if (this.f1716h == null) {
                    return;
                }
                if (this.f == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.f1715g = threadPoolExecutor;
                    this.f = threadPoolExecutor;
                }
                this.f.execute(new T0(this, 16));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

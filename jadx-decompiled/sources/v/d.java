package v;

import M.C0001b;
import android.content.Context;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4141a;
    public final /* synthetic */ String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f4142c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0001b f4143d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f4144e;

    public /* synthetic */ d(String str, Context context, C0001b c0001b, int i2, int i3) {
        this.f4141a = i3;
        this.b = str;
        this.f4142c = context;
        this.f4143d = c0001b;
        this.f4144e = i2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f4141a) {
            case 0:
                return g.a(this.b, this.f4142c, this.f4143d, this.f4144e);
            default:
                try {
                    return g.a(this.b, this.f4142c, this.f4143d, this.f4144e);
                } catch (Throwable unused) {
                    return new f(-3);
                }
        }
    }
}

package androidx.lifecycle;

/* JADX INFO: loaded from: classes.dex */
public abstract class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final A.e f1970a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1971c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ w f1972d;

    public v(w wVar, A.e eVar) {
        this.f1972d = wVar;
        this.f1970a = eVar;
    }

    public final void c(boolean z2) {
        if (z2 == this.b) {
            return;
        }
        this.b = z2;
        int i2 = z2 ? 1 : -1;
        w wVar = this.f1972d;
        int i3 = wVar.f1975c;
        wVar.f1975c = i2 + i3;
        if (!wVar.f1976d) {
            wVar.f1976d = true;
            while (true) {
                try {
                    int i4 = wVar.f1975c;
                    if (i3 == i4) {
                        break;
                    } else {
                        i3 = i4;
                    }
                } catch (Throwable th) {
                    wVar.f1976d = false;
                    throw th;
                }
            }
            wVar.f1976d = false;
        }
        if (this.b) {
            wVar.c(this);
        }
    }

    public void d() {
    }

    public abstract boolean e();
}

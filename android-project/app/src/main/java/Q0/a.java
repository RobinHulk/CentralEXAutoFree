package Q0;

import P0.i;
import P0.k;
import P0.p;
import R0.f;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class a extends p implements i {
    private volatile a _immediate;
    public final Handler b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a f445e;

    public a(Handler handler, String str, boolean z2) {
        this.b = handler;
        this.f443c = str;
        this.f444d = z2;
        this._immediate = z2 ? this : null;
        a aVar = this._immediate;
        if (aVar == null) {
            aVar = new a(handler, str, true);
            this._immediate = aVar;
        }
        this.f445e = aVar;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && ((a) obj).b == this.b;
    }

    public final int hashCode() {
        return System.identityHashCode(this.b);
    }

    @Override // P0.c
    public final String toString() {
        a aVar;
        String str;
        int i2 = k.f440a;
        p pVar = f.f465a;
        if (this == pVar) {
            str = "Dispatchers.Main";
        } else {
            try {
                aVar = ((a) pVar).f445e;
            } catch (UnsupportedOperationException unused) {
                aVar = null;
            }
            str = this == aVar ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.f443c;
        if (string == null) {
            string = this.b.toString();
        }
        return this.f444d ? I0.f.g(".immediate", string) : string;
    }

    public a(Handler handler) {
        this(handler, null, false);
    }
}

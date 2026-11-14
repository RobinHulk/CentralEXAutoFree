package I0;

import M.d0;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class d implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient d f115a;
    public final Class b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f117d;
    public final int f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f118e = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f119g = 0;

    public d(int i2, Class cls, String str, String str2) {
        this.b = cls;
        this.f116c = str;
        this.f117d = str2;
        this.f = i2;
    }

    public final b c() {
        Class cls = this.b;
        if (this.f118e) {
            m.f126a.getClass();
            return new h(cls);
        }
        m.f126a.getClass();
        return new c(cls);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = this.f115a;
            if (dVar == null) {
                m.f126a.getClass();
                this.f115a = this;
                dVar = this;
            }
            return obj.equals(dVar);
        }
        d dVar2 = (d) obj;
        if (this.f116c.equals(dVar2.f116c) && this.f117d.equals(dVar2.f117d) && this.f119g == dVar2.f119g && this.f == dVar2.f) {
            Object obj2 = a.f113a;
            if (obj2.equals(obj2) && c().equals(dVar2.c())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        c();
        return this.f117d.hashCode() + d0.b(c().hashCode() * 31, 31, this.f116c);
    }

    public final String toString() {
        d dVar = this.f115a;
        if (dVar == null) {
            m.f126a.getClass();
            this.f115a = this;
            dVar = this;
        }
        if (dVar != this) {
            return dVar.toString();
        }
        String str = this.f116c;
        return "<init>".equals(str) ? "constructor (Kotlin reflection is not available)" : d0.f("function ", str, " (Kotlin reflection is not available)");
    }
}

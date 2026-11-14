package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class I implements Parcelable {
    public static final Parcelable.Creator<I> CREATOR = new B.m(10);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1773a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1774c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1776e;
    public final String f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f1777g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f1778h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f1779i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Bundle f1780j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f1781k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f1782l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Bundle f1783m;

    public I(AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o) {
        this.f1773a = abstractComponentCallbacksC0187o.getClass().getName();
        this.b = abstractComponentCallbacksC0187o.f1892e;
        this.f1774c = abstractComponentCallbacksC0187o.f1899m;
        this.f1775d = abstractComponentCallbacksC0187o.f1908v;
        this.f1776e = abstractComponentCallbacksC0187o.f1909w;
        this.f = abstractComponentCallbacksC0187o.f1910x;
        this.f1777g = abstractComponentCallbacksC0187o.f1874A;
        this.f1778h = abstractComponentCallbacksC0187o.f1898l;
        this.f1779i = abstractComponentCallbacksC0187o.f1912z;
        this.f1780j = abstractComponentCallbacksC0187o.f;
        this.f1781k = abstractComponentCallbacksC0187o.f1911y;
        this.f1782l = abstractComponentCallbacksC0187o.f1884K.ordinal();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f1773a);
        sb.append(" (");
        sb.append(this.b);
        sb.append(")}:");
        if (this.f1774c) {
            sb.append(" fromLayout");
        }
        int i2 = this.f1776e;
        if (i2 != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i2));
        }
        String str = this.f;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.f1777g) {
            sb.append(" retainInstance");
        }
        if (this.f1778h) {
            sb.append(" removing");
        }
        if (this.f1779i) {
            sb.append(" detached");
        }
        if (this.f1781k) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f1773a);
        parcel.writeString(this.b);
        parcel.writeInt(this.f1774c ? 1 : 0);
        parcel.writeInt(this.f1775d);
        parcel.writeInt(this.f1776e);
        parcel.writeString(this.f);
        parcel.writeInt(this.f1777g ? 1 : 0);
        parcel.writeInt(this.f1778h ? 1 : 0);
        parcel.writeInt(this.f1779i ? 1 : 0);
        parcel.writeBundle(this.f1780j);
        parcel.writeInt(this.f1781k ? 1 : 0);
        parcel.writeBundle(this.f1783m);
        parcel.writeInt(this.f1782l);
    }

    public I(Parcel parcel) {
        this.f1773a = parcel.readString();
        this.b = parcel.readString();
        this.f1774c = parcel.readInt() != 0;
        this.f1775d = parcel.readInt();
        this.f1776e = parcel.readInt();
        this.f = parcel.readString();
        this.f1777g = parcel.readInt() != 0;
        this.f1778h = parcel.readInt() != 0;
        this.f1779i = parcel.readInt() != 0;
        this.f1780j = parcel.readBundle();
        this.f1781k = parcel.readInt() != 0;
        this.f1783m = parcel.readBundle();
        this.f1782l = parcel.readInt();
    }
}

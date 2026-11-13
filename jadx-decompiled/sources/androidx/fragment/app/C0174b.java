package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: renamed from: androidx.fragment.app.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0174b implements Parcelable {
    public static final Parcelable.Creator<C0174b> CREATOR = new B.m(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f1822a;
    public final ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f1823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f1824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1825e;
    public final String f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1826g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1827h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CharSequence f1828i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f1829j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CharSequence f1830k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ArrayList f1831l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f1832m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f1833n;

    public C0174b(C0173a c0173a) {
        int size = c0173a.f1806a.size();
        this.f1822a = new int[size * 5];
        if (!c0173a.f1810g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.b = new ArrayList(size);
        this.f1823c = new int[size];
        this.f1824d = new int[size];
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            L l2 = (L) c0173a.f1806a.get(i3);
            int i4 = i2 + 1;
            this.f1822a[i2] = l2.f1789a;
            ArrayList arrayList = this.b;
            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = l2.b;
            arrayList.add(abstractComponentCallbacksC0187o != null ? abstractComponentCallbacksC0187o.f1892e : null);
            int[] iArr = this.f1822a;
            iArr[i4] = l2.f1790c;
            iArr[i2 + 2] = l2.f1791d;
            int i5 = i2 + 4;
            iArr[i2 + 3] = l2.f1792e;
            i2 += 5;
            iArr[i5] = l2.f;
            this.f1823c[i3] = l2.f1793g.ordinal();
            this.f1824d[i3] = l2.f1794h.ordinal();
        }
        this.f1825e = c0173a.f;
        this.f = c0173a.f1811h;
        this.f1826g = c0173a.f1821r;
        this.f1827h = c0173a.f1812i;
        this.f1828i = c0173a.f1813j;
        this.f1829j = c0173a.f1814k;
        this.f1830k = c0173a.f1815l;
        this.f1831l = c0173a.f1816m;
        this.f1832m = c0173a.f1817n;
        this.f1833n = c0173a.f1818o;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.f1822a);
        parcel.writeStringList(this.b);
        parcel.writeIntArray(this.f1823c);
        parcel.writeIntArray(this.f1824d);
        parcel.writeInt(this.f1825e);
        parcel.writeString(this.f);
        parcel.writeInt(this.f1826g);
        parcel.writeInt(this.f1827h);
        TextUtils.writeToParcel(this.f1828i, parcel, 0);
        parcel.writeInt(this.f1829j);
        TextUtils.writeToParcel(this.f1830k, parcel, 0);
        parcel.writeStringList(this.f1831l);
        parcel.writeStringList(this.f1832m);
        parcel.writeInt(this.f1833n ? 1 : 0);
    }

    public C0174b(Parcel parcel) {
        this.f1822a = parcel.createIntArray();
        this.b = parcel.createStringArrayList();
        this.f1823c = parcel.createIntArray();
        this.f1824d = parcel.createIntArray();
        this.f1825e = parcel.readInt();
        this.f = parcel.readString();
        this.f1826g = parcel.readInt();
        this.f1827h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f1828i = (CharSequence) creator.createFromParcel(parcel);
        this.f1829j = parcel.readInt();
        this.f1830k = (CharSequence) creator.createFromParcel(parcel);
        this.f1831l = parcel.createStringArrayList();
        this.f1832m = parcel.createStringArrayList();
        this.f1833n = parcel.readInt() != 0;
    }
}

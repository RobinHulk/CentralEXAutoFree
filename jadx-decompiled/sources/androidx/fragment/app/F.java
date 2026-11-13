package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class F implements Parcelable {
    public static final Parcelable.Creator<F> CREATOR = new B.m(9);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList f1761a;
    public ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0174b[] f1762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1764e;
    public ArrayList f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList f1765g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f1766h;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedList(this.f1761a);
        parcel.writeStringList(this.b);
        parcel.writeTypedArray(this.f1762c, i2);
        parcel.writeInt(this.f1763d);
        parcel.writeString(this.f1764e);
        parcel.writeStringList(this.f);
        parcel.writeTypedList(this.f1765g);
        parcel.writeTypedList(this.f1766h);
    }
}

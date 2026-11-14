package M;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: M.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0023y implements Parcelable {
    public static final Parcelable.Creator<C0023y> CREATOR = new B.m(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f371a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f372c;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f371a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.f372c ? 1 : 0);
    }
}

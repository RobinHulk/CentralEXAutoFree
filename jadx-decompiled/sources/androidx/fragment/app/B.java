package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class B implements Parcelable {
    public static final Parcelable.Creator<B> CREATOR = new B.m(8);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1728a;
    public int b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f1728a);
        parcel.writeInt(this.b);
    }
}

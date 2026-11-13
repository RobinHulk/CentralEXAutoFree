package androidx.versionedparcelable;

import B.m;
import R.b;
import R.c;
import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new m(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f2096a;

    public ParcelImpl(Parcel parcel) {
        this.f2096a = new b(parcel).g();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        new b(parcel).i(this.f2096a);
    }
}

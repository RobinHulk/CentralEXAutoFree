package M;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class l0 implements Parcelable {
    public static final Parcelable.Creator<l0> CREATOR = new B.m(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f282a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f284d;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.f282a + ", mGapDir=" + this.b + ", mHasUnwantedGapAfter=" + this.f284d + ", mGapPerSpan=" + Arrays.toString(this.f283c) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f282a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.f284d ? 1 : 0);
        int[] iArr = this.f283c;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f283c);
        }
    }
}

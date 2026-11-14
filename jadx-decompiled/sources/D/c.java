package D;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements Parcelable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Parcelable f46a;
    public static final a b = new a();
    public static final Parcelable.Creator<c> CREATOR = new b(0);

    public c() {
        this.f46a = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f46a, i2);
    }

    public c(Parcelable parcelable) {
        if (parcelable != null) {
            this.f46a = parcelable == b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public c(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f46a = parcelable == null ? b : parcelable;
    }
}

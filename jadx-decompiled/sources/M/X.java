package M;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class X extends D.c {
    public static final Parcelable.Creator<X> CREATOR = new D.b(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Parcelable f183c;

    public X(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f183c = parcel.readParcelable(classLoader == null ? O.class.getClassLoader() : classLoader);
    }

    @Override // D.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeParcelable(this.f183c, 0);
    }
}

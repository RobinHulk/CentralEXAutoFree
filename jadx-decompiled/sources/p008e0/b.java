package p008e0;

import D.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class b extends c {
    public static final Parcelable.Creator<b> CREATOR = new D.b(3);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3137c;

    public b(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            b.class.getClassLoader();
        }
        this.f3137c = parcel.readInt() == 1;
    }

    @Override // D.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f3137c ? 1 : 0);
    }
}

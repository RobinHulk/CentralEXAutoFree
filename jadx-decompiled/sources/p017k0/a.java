package p017k0;

import D.b;
import D.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class a extends c {
    public static final Parcelable.Creator<a> CREATOR = new b(6);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3741c;

    public a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f3741c = parcel.readInt() == 1;
    }

    @Override // D.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f3741c ? 1 : 0);
    }
}

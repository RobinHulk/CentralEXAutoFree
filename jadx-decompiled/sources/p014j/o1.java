package p014j;

import D.b;
import D.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class o1 extends c {
    public static final Parcelable.Creator<o1> CREATOR = new b(5);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3653d;

    public o1(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f3652c = parcel.readInt();
        this.f3653d = parcel.readInt() != 0;
    }

    @Override // D.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f3652c);
        parcel.writeInt(this.f3653d ? 1 : 0);
    }
}

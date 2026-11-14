package M;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class m0 implements Parcelable {
    public static final Parcelable.Creator<m0> CREATOR = new B.m(3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f286a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f288d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f289e;
    public int[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList f290g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f291h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f292i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f293j;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f286a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.f287c);
        if (this.f287c > 0) {
            parcel.writeIntArray(this.f288d);
        }
        parcel.writeInt(this.f289e);
        if (this.f289e > 0) {
            parcel.writeIntArray(this.f);
        }
        parcel.writeInt(this.f291h ? 1 : 0);
        parcel.writeInt(this.f292i ? 1 : 0);
        parcel.writeInt(this.f293j ? 1 : 0);
        parcel.writeList(this.f290g);
    }
}

package p023o;

import D.b;
import D.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class f extends c {
    public static final Parcelable.Creator<f> CREATOR = new b(7);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray f3907c;

    public f(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i2 = parcel.readInt();
        int[] iArr = new int[i2];
        parcel.readIntArray(iArr);
        Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        this.f3907c = new SparseArray(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            this.f3907c.append(iArr[i3], parcelableArray[i3]);
        }
    }

    @Override // D.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        SparseArray sparseArray = this.f3907c;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i3 = 0; i3 < size; i3++) {
            iArr[i3] = this.f3907c.keyAt(i3);
            parcelableArr[i3] = (Parcelable) this.f3907c.valueAt(i3);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i2);
    }
}

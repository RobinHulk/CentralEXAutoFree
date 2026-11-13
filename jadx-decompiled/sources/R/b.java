package R;

import M.d0;
import android.os.Parcel;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseIntArray f448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Parcel f449e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f450g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f451h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f452i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f453j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f454k;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new p020m.b(), new p020m.b(), new p020m.b());
    }

    @Override // R.a
    public final b a() {
        Parcel parcel = this.f449e;
        int iDataPosition = parcel.dataPosition();
        int i2 = this.f453j;
        if (i2 == this.f) {
            i2 = this.f450g;
        }
        return new b(parcel, iDataPosition, i2, d0.g(new StringBuilder(), this.f451h, "  "), this.f446a, this.b, this.f447c);
    }

    @Override // R.a
    public final boolean e(int i2) {
        while (this.f453j < this.f450g) {
            int i3 = this.f454k;
            if (i3 == i2) {
                return true;
            }
            if (String.valueOf(i3).compareTo(String.valueOf(i2)) > 0) {
                return false;
            }
            int i4 = this.f453j;
            Parcel parcel = this.f449e;
            parcel.setDataPosition(i4);
            int i5 = parcel.readInt();
            this.f454k = parcel.readInt();
            this.f453j += i5;
        }
        return this.f454k == i2;
    }

    @Override // R.a
    public final void h(int i2) {
        int i3 = this.f452i;
        SparseIntArray sparseIntArray = this.f448d;
        Parcel parcel = this.f449e;
        if (i3 >= 0) {
            int i4 = sparseIntArray.get(i3);
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i4);
            parcel.writeInt(iDataPosition - i4);
            parcel.setDataPosition(iDataPosition);
        }
        this.f452i = i2;
        sparseIntArray.put(i2, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i2);
    }

    public b(Parcel parcel, int i2, int i3, String str, p020m.b bVar, p020m.b bVar2, p020m.b bVar3) {
        super(bVar, bVar2, bVar3);
        this.f448d = new SparseIntArray();
        this.f452i = -1;
        this.f454k = -1;
        this.f449e = parcel;
        this.f = i2;
        this.f450g = i3;
        this.f453j = i2;
        this.f451h = str;
    }
}

package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new B.m(11);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f2748a;
    public final o b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o f2749c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f2750d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2751e;
    public final int f;

    public b(o oVar, o oVar2, o oVar3, d dVar) {
        this.f2748a = oVar;
        this.b = oVar2;
        this.f2749c = oVar3;
        this.f2750d = dVar;
        if (oVar.compareTo(oVar3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (oVar3.compareTo(oVar2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f = oVar.d(oVar2) + 1;
        this.f2751e = (oVar2.f2789d - oVar.f2789d) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2748a.equals(bVar.f2748a) && this.b.equals(bVar.b) && this.f2749c.equals(bVar.f2749c) && this.f2750d.equals(bVar.f2750d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2748a, this.b, this.f2749c, this.f2750d});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f2748a, 0);
        parcel.writeParcelable(this.b, 0);
        parcel.writeParcelable(this.f2749c, 0);
        parcel.writeParcelable(this.f2750d, 0);
    }
}

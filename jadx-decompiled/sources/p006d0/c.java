package p006d0;

import D.b;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: loaded from: classes.dex */
public final class c extends D.c {
    public static final Parcelable.Creator<c> CREATOR = new b(2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2935d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f2936e;
    public final boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f2937g;

    public c(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2934c = parcel.readInt();
        this.f2935d = parcel.readInt();
        this.f2936e = parcel.readInt() == 1;
        this.f = parcel.readInt() == 1;
        this.f2937g = parcel.readInt() == 1;
    }

    @Override // D.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.f2934c);
        parcel.writeInt(this.f2935d);
        parcel.writeInt(this.f2936e ? 1 : 0);
        parcel.writeInt(this.f ? 1 : 0);
        parcel.writeInt(this.f2937g ? 1 : 0);
    }

    public c(AbsSavedState absSavedState, BottomSheetBehavior bottomSheetBehavior) {
        super(absSavedState);
        this.f2934c = bottomSheetBehavior.f2708y;
        this.f2935d = bottomSheetBehavior.f2688d;
        this.f2936e = bottomSheetBehavior.b;
        this.f = bottomSheetBehavior.f2705v;
        this.f2937g = bottomSheetBehavior.f2706w;
    }
}

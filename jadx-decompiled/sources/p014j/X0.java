package p014j;

import D.b;
import D.c;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class X0 extends c {
    public static final Parcelable.Creator<X0> CREATOR = new b(4);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3500c;

    public X0(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f3500c = ((Boolean) parcel.readValue(null)).booleanValue();
    }

    public final String toString() {
        return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f3500c + "}";
    }

    @Override // D.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeValue(Boolean.valueOf(this.f3500c));
    }
}

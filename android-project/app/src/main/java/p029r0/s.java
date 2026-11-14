package p029r0;

import D.b;
import D.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class s extends c {
    public static final Parcelable.Creator<s> CREATOR = new b(8);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CharSequence f4117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4118d;

    public s(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f4117c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f4118d = parcel.readInt() == 1;
    }

    public final String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f4117c) + "}";
    }

    @Override // D.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        TextUtils.writeToParcel(this.f4117c, parcel, i2);
        parcel.writeInt(this.f4118d ? 1 : 0);
    }
}

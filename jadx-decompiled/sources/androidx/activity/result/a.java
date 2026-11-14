package androidx.activity.result;

import B.m;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new m(6);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1436a;
    public final Intent b;

    public a(int i2, Intent intent) {
        this.f1436a = i2;
        this.b = intent;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        String strValueOf;
        StringBuilder sb = new StringBuilder("ActivityResult{resultCode=");
        int i2 = this.f1436a;
        if (i2 != -1) {
            strValueOf = i2 != 0 ? String.valueOf(i2) : "RESULT_CANCELED";
        } else {
            strValueOf = "RESULT_OK";
        }
        sb.append(strValueOf);
        sb.append(", data=");
        sb.append(this.b);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f1436a);
        Intent intent = this.b;
        parcel.writeInt(intent == null ? 0 : 1);
        if (intent != null) {
            intent.writeToParcel(parcel, i2);
        }
    }

    public a(Parcel parcel) {
        this.f1436a = parcel.readInt();
        this.b = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}

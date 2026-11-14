package android.support.v4.os;

import B.m;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new m(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public IResultReceiver f1401a;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        synchronized (this) {
            try {
                if (this.f1401a == null) {
                    this.f1401a = new IResultReceiver.Stub() { // from class: android.support.v4.os.ResultReceiver$MyResultReceiver
                        @Override // android.support.v4.os.IResultReceiver
                        public void send(int i3, Bundle bundle) {
                            this.this$0.getClass();
                            this.this$0.getClass();
                        }
                    };
                }
                parcel.writeStrongBinder(this.f1401a.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

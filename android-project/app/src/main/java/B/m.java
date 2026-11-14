package B;

import M.C0023y;
import M.l0;
import M.m0;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.IResultReceiver;
import androidx.fragment.app.B;
import androidx.fragment.app.C0174b;
import androidx.fragment.app.F;
import androidx.fragment.app.I;
import androidx.versionedparcelable.ParcelImpl;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import p014j.Q;

/* JADX INFO: loaded from: classes.dex */
public final class m implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f31a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f31a) {
            case 0:
                n nVar = new n(parcel);
                nVar.f32a = parcel.readInt();
                return nVar;
            case 1:
                C0023y c0023y = new C0023y();
                c0023y.f371a = parcel.readInt();
                c0023y.b = parcel.readInt();
                c0023y.f372c = parcel.readInt() == 1;
                return c0023y;
            case 2:
                l0 l0Var = new l0();
                l0Var.f282a = parcel.readInt();
                l0Var.b = parcel.readInt();
                l0Var.f284d = parcel.readInt() == 1;
                int i2 = parcel.readInt();
                if (i2 > 0) {
                    int[] iArr = new int[i2];
                    l0Var.f283c = iArr;
                    parcel.readIntArray(iArr);
                }
                return l0Var;
            case 3:
                m0 m0Var = new m0();
                m0Var.f286a = parcel.readInt();
                m0Var.b = parcel.readInt();
                int i3 = parcel.readInt();
                m0Var.f287c = i3;
                if (i3 > 0) {
                    int[] iArr2 = new int[i3];
                    m0Var.f288d = iArr2;
                    parcel.readIntArray(iArr2);
                }
                int i4 = parcel.readInt();
                m0Var.f289e = i4;
                if (i4 > 0) {
                    int[] iArr3 = new int[i4];
                    m0Var.f = iArr3;
                    parcel.readIntArray(iArr3);
                }
                m0Var.f291h = parcel.readInt() == 1;
                m0Var.f292i = parcel.readInt() == 1;
                m0Var.f293j = parcel.readInt() == 1;
                m0Var.f290g = parcel.readArrayList(l0.class.getClassLoader());
                return m0Var;
            case 4:
                return new ParcelImpl(parcel);
            case 5:
                android.support.v4.os.a aVar = new android.support.v4.os.a();
                aVar.f1401a = IResultReceiver.Stub.asInterface(parcel.readStrongBinder());
                return aVar;
            case 6:
                return new androidx.activity.result.a(parcel);
            case PlaybackState.STATE_ERROR /* 7 */:
                return new C0174b(parcel);
            case Response.NO /* 8 */:
                B b = new B();
                b.f1728a = parcel.readString();
                b.b = parcel.readInt();
                return b;
            case 9:
                F f = new F();
                f.f1764e = null;
                f.f = new ArrayList();
                f.f1765g = new ArrayList();
                f.f1761a = parcel.createTypedArrayList(I.CREATOR);
                f.b = parcel.createStringArrayList();
                f.f1762c = (C0174b[]) parcel.createTypedArray(C0174b.CREATOR);
                f.f1763d = parcel.readInt();
                f.f1764e = parcel.readString();
                f.f = parcel.createStringArrayList();
                f.f1765g = parcel.createTypedArrayList(Bundle.CREATOR);
                f.f1766h = parcel.createTypedArrayList(B.CREATOR);
                return f;
            case 10:
                return new I(parcel);
            case 11:
                return new com.google.android.material.datepicker.b((com.google.android.material.datepicker.o) parcel.readParcelable(com.google.android.material.datepicker.o.class.getClassLoader()), (com.google.android.material.datepicker.o) parcel.readParcelable(com.google.android.material.datepicker.o.class.getClassLoader()), (com.google.android.material.datepicker.o) parcel.readParcelable(com.google.android.material.datepicker.o.class.getClassLoader()), (com.google.android.material.datepicker.d) parcel.readParcelable(com.google.android.material.datepicker.d.class.getClassLoader()));
            case Response.BAD /* 12 */:
                return new com.google.android.material.datepicker.d(parcel.readLong());
            case 13:
                return com.google.android.material.datepicker.o.b(parcel.readInt(), parcel.readInt());
            default:
                Q q2 = new Q(parcel);
                q2.f3484a = parcel.readByte() != 0;
                return q2;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i2) {
        switch (this.f31a) {
            case 0:
                return new n[i2];
            case 1:
                return new C0023y[i2];
            case 2:
                return new l0[i2];
            case 3:
                return new m0[i2];
            case 4:
                return new ParcelImpl[i2];
            case 5:
                return new android.support.v4.os.a[i2];
            case 6:
                return new androidx.activity.result.a[i2];
            case PlaybackState.STATE_ERROR /* 7 */:
                return new C0174b[i2];
            case Response.NO /* 8 */:
                return new B[i2];
            case 9:
                return new F[i2];
            case 10:
                return new I[i2];
            case 11:
                return new com.google.android.material.datepicker.b[i2];
            case Response.BAD /* 12 */:
                return new com.google.android.material.datepicker.d[i2];
            case 13:
                return new com.google.android.material.datepicker.o[i2];
            default:
                return new Q[i2];
        }
    }
}

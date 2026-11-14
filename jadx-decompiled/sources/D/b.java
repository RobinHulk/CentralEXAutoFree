package D;

import M.X;
import android.os.Parcel;
import android.os.Parcelable;
import ecarx.xsf.mediacenter.session.PlaybackState;
import p014j.X0;
import p014j.o1;
import p023o.f;
import p029r0.s;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable.ClassLoaderCreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f45a;

    public /* synthetic */ b(int i2) {
        this.f45a = i2;
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f45a) {
            case 0:
                if (parcel.readParcelable(classLoader) == null) {
                    return c.b;
                }
                throw new IllegalStateException("superState must be null");
            case 1:
                return new X(parcel, classLoader);
            case 2:
                return new p006d0.c(parcel, classLoader);
            case 3:
                return new p008e0.b(parcel, classLoader);
            case 4:
                return new X0(parcel, classLoader);
            case 5:
                return new o1(parcel, classLoader);
            case 6:
                return new p017k0.a(parcel, classLoader);
            case PlaybackState.STATE_ERROR /* 7 */:
                return new f(parcel, classLoader);
            default:
                return new s(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i2) {
        switch (this.f45a) {
            case 0:
                return new c[i2];
            case 1:
                return new X[i2];
            case 2:
                return new p006d0.c[i2];
            case 3:
                return new p008e0.b[i2];
            case 4:
                return new X0[i2];
            case 5:
                return new o1[i2];
            case 6:
                return new p017k0.a[i2];
            case PlaybackState.STATE_ERROR /* 7 */:
                return new f[i2];
            default:
                return new s[i2];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f45a) {
            case 0:
                if (parcel.readParcelable(null) == null) {
                    return c.b;
                }
                throw new IllegalStateException("superState must be null");
            case 1:
                return new X(parcel, null);
            case 2:
                return new p006d0.c(parcel, (ClassLoader) null);
            case 3:
                return new p008e0.b(parcel, null);
            case 4:
                return new X0(parcel, null);
            case 5:
                return new o1(parcel, null);
            case 6:
                return new p017k0.a(parcel, null);
            case PlaybackState.STATE_ERROR /* 7 */:
                return new f(parcel, null);
            default:
                return new s(parcel, null);
        }
    }
}

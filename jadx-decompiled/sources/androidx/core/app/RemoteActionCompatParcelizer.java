package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(R.a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        R.c cVarG = remoteActionCompat.f1646a;
        if (aVar.e(1)) {
            cVarG = aVar.g();
        }
        remoteActionCompat.f1646a = (IconCompat) cVarG;
        CharSequence charSequence = remoteActionCompat.b;
        if (aVar.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((R.b) aVar).f449e);
        }
        remoteActionCompat.b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f1647c;
        if (aVar.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((R.b) aVar).f449e);
        }
        remoteActionCompat.f1647c = charSequence2;
        remoteActionCompat.f1648d = (PendingIntent) aVar.f(remoteActionCompat.f1648d, 4);
        boolean z2 = remoteActionCompat.f1649e;
        if (aVar.e(5)) {
            z2 = ((R.b) aVar).f449e.readInt() != 0;
        }
        remoteActionCompat.f1649e = z2;
        boolean z3 = remoteActionCompat.f;
        if (aVar.e(6)) {
            z3 = ((R.b) aVar).f449e.readInt() != 0;
        }
        remoteActionCompat.f = z3;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, R.a aVar) {
        aVar.getClass();
        IconCompat iconCompat = remoteActionCompat.f1646a;
        aVar.h(1);
        aVar.i(iconCompat);
        CharSequence charSequence = remoteActionCompat.b;
        aVar.h(2);
        Parcel parcel = ((R.b) aVar).f449e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.f1647c;
        aVar.h(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.f1648d;
        aVar.h(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z2 = remoteActionCompat.f1649e;
        aVar.h(5);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = remoteActionCompat.f;
        aVar.h(6);
        parcel.writeInt(z3 ? 1 : 0);
    }
}

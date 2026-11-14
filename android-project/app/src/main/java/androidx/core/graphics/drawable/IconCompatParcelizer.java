package androidx.core.graphics.drawable;

import R.a;
import R.b;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(a aVar) {
        IconCompat iconCompat = new IconCompat();
        int i2 = iconCompat.f1651a;
        if (aVar.e(1)) {
            i2 = ((b) aVar).f449e.readInt();
        }
        iconCompat.f1651a = i2;
        byte[] bArr = iconCompat.f1652c;
        if (aVar.e(2)) {
            Parcel parcel = ((b) aVar).f449e;
            int i3 = parcel.readInt();
            if (i3 < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i3];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f1652c = bArr;
        iconCompat.f1653d = aVar.f(iconCompat.f1653d, 3);
        int i4 = iconCompat.f1654e;
        if (aVar.e(4)) {
            i4 = ((b) aVar).f449e.readInt();
        }
        iconCompat.f1654e = i4;
        int i5 = iconCompat.f;
        if (aVar.e(5)) {
            i5 = ((b) aVar).f449e.readInt();
        }
        iconCompat.f = i5;
        iconCompat.f1655g = (ColorStateList) aVar.f(iconCompat.f1655g, 6);
        String string = iconCompat.f1657i;
        if (aVar.e(7)) {
            string = ((b) aVar).f449e.readString();
        }
        iconCompat.f1657i = string;
        String string2 = iconCompat.f1658j;
        if (aVar.e(8)) {
            string2 = ((b) aVar).f449e.readString();
        }
        iconCompat.f1658j = string2;
        iconCompat.f1656h = PorterDuff.Mode.valueOf(iconCompat.f1657i);
        switch (iconCompat.f1651a) {
            case -1:
                Parcelable parcelable = iconCompat.f1653d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.f1653d;
                if (parcelable2 != null) {
                    iconCompat.b = parcelable2;
                } else {
                    byte[] bArr3 = iconCompat.f1652c;
                    iconCompat.b = bArr3;
                    iconCompat.f1651a = 3;
                    iconCompat.f1654e = 0;
                    iconCompat.f = bArr3.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str = new String(iconCompat.f1652c, Charset.forName("UTF-16"));
                iconCompat.b = str;
                if (iconCompat.f1651a == 2 && iconCompat.f1658j == null) {
                    iconCompat.f1658j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.b = iconCompat.f1652c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, a aVar) {
        aVar.getClass();
        iconCompat.f1657i = iconCompat.f1656h.name();
        switch (iconCompat.f1651a) {
            case -1:
                iconCompat.f1653d = (Parcelable) iconCompat.b;
                break;
            case 1:
            case 5:
                iconCompat.f1653d = (Parcelable) iconCompat.b;
                break;
            case 2:
                iconCompat.f1652c = ((String) iconCompat.b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f1652c = (byte[]) iconCompat.b;
                break;
            case 4:
            case 6:
                iconCompat.f1652c = iconCompat.b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i2 = iconCompat.f1651a;
        if (-1 != i2) {
            aVar.h(1);
            ((b) aVar).f449e.writeInt(i2);
        }
        byte[] bArr = iconCompat.f1652c;
        if (bArr != null) {
            aVar.h(2);
            int length = bArr.length;
            Parcel parcel = ((b) aVar).f449e;
            parcel.writeInt(length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.f1653d;
        if (parcelable != null) {
            aVar.h(3);
            ((b) aVar).f449e.writeParcelable(parcelable, 0);
        }
        int i3 = iconCompat.f1654e;
        if (i3 != 0) {
            aVar.h(4);
            ((b) aVar).f449e.writeInt(i3);
        }
        int i4 = iconCompat.f;
        if (i4 != 0) {
            aVar.h(5);
            ((b) aVar).f449e.writeInt(i4);
        }
        ColorStateList colorStateList = iconCompat.f1655g;
        if (colorStateList != null) {
            aVar.h(6);
            ((b) aVar).f449e.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.f1657i;
        if (str != null) {
            aVar.h(7);
            ((b) aVar).f449e.writeString(str);
        }
        String str2 = iconCompat.f1658j;
        if (str2 != null) {
            aVar.h(8);
            ((b) aVar).f449e.writeString(str2);
        }
    }
}

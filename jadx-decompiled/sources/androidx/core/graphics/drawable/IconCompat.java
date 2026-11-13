package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import androidx.versionedparcelable.CustomVersionedParcelable;
import s.d;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f1650k = PorterDuff.Mode.SRC_IN;
    public Object b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f1658j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1651a = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f1652c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f1653d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1654e = 0;
    public int f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f1655g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f1656h = f1650k;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f1657i = null;

    public final String toString() {
        String str;
        int iA;
        if (this.f1651a == -1) {
            return String.valueOf(this.b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f1651a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f1651a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f1658j);
                sb.append(" id=");
                int i2 = this.f1651a;
                if (i2 == -1) {
                    iA = d.a(this.b);
                } else {
                    if (i2 != 2) {
                        throw new IllegalStateException("called getResId() on " + this);
                    }
                    iA = this.f1654e;
                }
                sb.append(String.format("0x%08x", Integer.valueOf(iA)));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f1654e);
                if (this.f != 0) {
                    sb.append(" off=");
                    sb.append(this.f);
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.b);
                break;
        }
        if (this.f1655g != null) {
            sb.append(" tint=");
            sb.append(this.f1655g);
        }
        if (this.f1656h != f1650k) {
            sb.append(" mode=");
            sb.append(this.f1656h);
        }
        sb.append(")");
        return sb.toString();
    }
}

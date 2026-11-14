package p032w;

import com.sun.mail.iap.Response;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4175a;
    public final boolean b;

    public g(f fVar, boolean z2) {
        this.f4175a = fVar;
        this.b = z2;
    }

    public final boolean a() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0034  */
    public final boolean b(CharSequence charSequence, int i2) {
        if (charSequence == null || i2 < 0 || charSequence.length() - i2 < 0) {
            throw new IllegalArgumentException();
        }
        if (this.f4175a == null) {
            return a();
        }
        char c2 = 0;
        c2 = 2;
        for (int i3 = 0; i3 < i2 && c2 == 2; i3++) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i3));
            g gVar = h.f4176a;
            if (directionality == 0) {
                c2 = 1;
                continue;
            } else if (directionality != 1 && directionality != 2) {
                switch (directionality) {
                    case 14:
                    case 15:
                        c2 = 1;
                        continue;
                    case Response.BYE /* 16 */:
                    case 17:
                        break;
                    default:
                        c2 = 2;
                        continue;
                }
            }
        }
        if (c2 == 0) {
            return true;
        }
        if (c2 != 1) {
            return a();
        }
        return false;
    }
}

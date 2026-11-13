package p032w;

import android.text.SpannableStringBuilder;
import com.sun.mail.iap.Response;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f4167c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f4168d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f4169e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4170a;

    static {
        g gVar = h.f4177c;
        b = Character.toString((char) 8206);
        f4167c = Character.toString((char) 8207);
        f4168d = new b(false);
        f4169e = new b(true);
    }

    public b(boolean z2) {
        g gVar = h.f4176a;
        this.f4170a = z2;
    }

    public static int a(CharSequence charSequence) {
        byte directionality;
        a aVar = new a(charSequence);
        aVar.f4165c = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = aVar.f4165c;
            if (i5 < aVar.b && i2 == 0) {
                CharSequence charSequence2 = aVar.f4164a;
                char cCharAt = charSequence2.charAt(i5);
                aVar.f4166d = cCharAt;
                if (Character.isHighSurrogate(cCharAt)) {
                    int iCodePointAt = Character.codePointAt(charSequence2, aVar.f4165c);
                    aVar.f4165c = Character.charCount(iCodePointAt) + aVar.f4165c;
                    directionality = Character.getDirectionality(iCodePointAt);
                } else {
                    aVar.f4165c++;
                    char c2 = aVar.f4166d;
                    directionality = c2 < 1792 ? a.f4163e[c2] : Character.getDirectionality(c2);
                }
                if (directionality != 0) {
                    if (directionality == 1 || directionality == 2) {
                        if (i4 == 0) {
                            return 1;
                        }
                    } else if (directionality != 9) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                i4++;
                                i3 = -1;
                                continue;
                            case Response.BYE /* 16 */:
                            case 17:
                                i4++;
                                i3 = 1;
                                continue;
                            case 18:
                                i4--;
                                i3 = 0;
                                continue;
                        }
                    }
                } else if (i4 == 0) {
                    return -1;
                }
                i2 = i4;
            }
        }
        if (i2 == 0) {
            return 0;
        }
        if (i3 != 0) {
            return i3;
        }
        while (aVar.f4165c > 0) {
            switch (aVar.a()) {
                case 14:
                case 15:
                    if (i2 == i4) {
                        return -1;
                    }
                    i4--;
                    break;
                case Response.BYE /* 16 */:
                case 17:
                    if (i2 == i4) {
                        return 1;
                    }
                    i4--;
                    break;
                case 18:
                    i4++;
                    break;
                default:
                    break;
            }
        }
        return 0;
    }

    public static int b(CharSequence charSequence) {
        a aVar = new a(charSequence);
        aVar.f4165c = aVar.b;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            while (aVar.f4165c > 0) {
                byte bA = aVar.a();
                if (bA == 0) {
                    if (i2 == 0) {
                        return -1;
                    }
                    if (i3 == 0) {
                    }
                } else if (bA == 1 || bA == 2) {
                    if (i2 == 0) {
                        return 1;
                    }
                    if (i3 == 0) {
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i3 == i2) {
                                return -1;
                            }
                            i2--;
                            break;
                        case Response.BYE /* 16 */:
                        case 17:
                            if (i3 == i2) {
                                return 1;
                            }
                            i2--;
                            break;
                        case 18:
                            i2++;
                            break;
                        default:
                            if (i3 != 0) {
                            }
                            break;
                    }
                } else {
                    continue;
                }
            }
            return 0;
        }
    }

    public final SpannableStringBuilder c(CharSequence charSequence) {
        String str;
        g gVar = h.f4177c;
        if (charSequence == null) {
            return null;
        }
        boolean zB = gVar.b(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        boolean zB2 = (zB ? h.b : h.f4176a).b(charSequence, charSequence.length());
        String str2 = "";
        String str3 = f4167c;
        String str4 = b;
        boolean z2 = this.f4170a;
        if (z2 || !(zB2 || a(charSequence) == 1)) {
            str = (!z2 || (zB2 && a(charSequence) != -1)) ? "" : str3;
        } else {
            str = str4;
        }
        spannableStringBuilder.append((CharSequence) str);
        if (zB != z2) {
            spannableStringBuilder.append(zB ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean zB3 = (zB ? h.b : h.f4176a).b(charSequence, charSequence.length());
        if (!z2 && (zB3 || b(charSequence) == 1)) {
            str2 = str4;
        } else if (z2 && (!zB3 || b(charSequence) == -1)) {
            str2 = str3;
        }
        spannableStringBuilder.append((CharSequence) str2);
        return spannableStringBuilder;
    }
}

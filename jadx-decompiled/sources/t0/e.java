package t0;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f4128a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4131e;
    public boolean f;

    /* JADX WARN: Code duplicated, block: B:19:0x0028 A[FALL_THROUGH, ORIG_RETURN, RETURN] */
    public static boolean a(char c2) {
        if (c2 != '\"' && c2 != ',' && c2 != '/' && c2 != '(' && c2 != ')') {
            switch (c2) {
                default:
                    switch (c2) {
                        default:
                            if (!Character.isISOControl(c2) && !Character.isWhitespace(c2)) {
                                return true;
                            }
                        case '[':
                        case '\\':
                        case ']':
                            return false;
                    }
                case ':':
                case ';':
                case '<':
                case '=':
                case '>':
                case '?':
                case '@':
                    return false;
            }
        }
        return false;
    }

    public static String b(int i2) {
        if (i2 == 0) {
            return "unknown";
        }
        if (i2 == 1) {
            return "start";
        }
        if (i2 == 2) {
            return "string";
        }
        if (i2 == 5) {
            return "EOI";
        }
        if (i2 == 47) {
            return "'/'";
        }
        if (i2 != 59) {
            return i2 != 61 ? "really unknown" : "'='";
        }
        return "';'";
    }

    public final int c() {
        String str;
        int i2;
        int i3 = this.b;
        int i4 = this.f4129c;
        if (i3 < i4) {
            while (true) {
                int i5 = this.b;
                str = this.f4128a;
                if (i5 >= i4 || !Character.isWhitespace(str.charAt(i5))) {
                    break;
                }
                this.b++;
            }
            int i6 = this.b;
            if (i6 < i4) {
                char cCharAt = str.charAt(i6);
                int i7 = 0;
                if (this.f) {
                    if (cCharAt == ';' || cCharAt == '=') {
                        this.f4130d = cCharAt;
                        this.f4131e = new Character(cCharAt).toString();
                        this.b++;
                    } else {
                        int i8 = this.b;
                        boolean z2 = false;
                        while (true) {
                            i2 = this.b;
                            if (i2 >= i4 || z2) {
                                break;
                            }
                            if (str.charAt(i2) != ';') {
                                this.b++;
                            } else {
                                z2 = true;
                            }
                        }
                        this.f4130d = 2;
                        String strSubstring = str.substring(i8, i2);
                        int length = strSubstring.length();
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.ensureCapacity(length);
                        while (i7 < length) {
                            char cCharAt2 = strSubstring.charAt(i7);
                            if (cCharAt2 != '\\') {
                                stringBuffer.append(cCharAt2);
                            } else if (i7 < length - 1) {
                                i7++;
                                stringBuffer.append(strSubstring.charAt(i7));
                            } else {
                                stringBuffer.append(cCharAt2);
                            }
                            i7++;
                        }
                        this.f4131e = stringBuffer.toString();
                    }
                } else if (a(cCharAt)) {
                    int i9 = this.b;
                    while (true) {
                        int i10 = this.b;
                        if (i10 >= i4 || !a(str.charAt(i10))) {
                            break;
                        }
                        this.b++;
                    }
                    this.f4130d = 2;
                    this.f4131e = str.substring(i9, this.b);
                } else if (cCharAt == '/' || cCharAt == ';' || cCharAt == '=') {
                    this.f4130d = cCharAt;
                    this.f4131e = new Character(cCharAt).toString();
                    this.b++;
                } else {
                    this.f4130d = 0;
                    this.f4131e = new Character(cCharAt).toString();
                    this.b++;
                }
            } else {
                this.f4130d = 5;
                this.f4131e = null;
            }
        } else {
            this.f4130d = 5;
            this.f4131e = null;
        }
        return this.f4130d;
    }
}

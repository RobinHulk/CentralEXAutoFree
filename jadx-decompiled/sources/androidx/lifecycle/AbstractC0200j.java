package androidx.lifecycle;

/* JADX INFO: renamed from: androidx.lifecycle.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0200j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f1956a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[k.values().length];
        b = iArr;
        try {
            iArr[k.ON_CREATE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            b[k.ON_STOP.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            b[k.ON_START.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            b[k.ON_PAUSE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            b[k.ON_RESUME.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            b[k.ON_DESTROY.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            b[k.ON_ANY.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        int[] iArr2 = new int[l.values().length];
        f1956a = iArr2;
        try {
            iArr2[2] = 1;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f1956a[3] = 2;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f1956a[4] = 3;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            f1956a[0] = 4;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            f1956a[1] = 5;
        } catch (NoSuchFieldError unused12) {
        }
    }
}

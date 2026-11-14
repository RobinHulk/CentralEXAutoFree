package androidx.lifecycle;

/* JADX INFO: renamed from: androidx.lifecycle.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0196f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f1955a;

    static {
        int[] iArr = new int[k.values().length];
        f1955a = iArr;
        try {
            iArr[k.ON_CREATE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f1955a[k.ON_START.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f1955a[k.ON_RESUME.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f1955a[k.ON_PAUSE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f1955a[k.ON_STOP.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f1955a[k.ON_DESTROY.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f1955a[k.ON_ANY.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
    }
}

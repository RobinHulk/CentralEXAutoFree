package T;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class X {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final X f838a;
    public static final X b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final X f839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ X[] f840d;

    static {
        X x2 = new X("OK", 0);
        f838a = x2;
        X x3 = new X("NO_DEVICE", 1);
        b = x3;
        X x4 = new X("FAILED", 2);
        f839c = x4;
        f840d = new X[]{x2, x3, x4};
    }

    public static X valueOf(String str) {
        return (X) Enum.valueOf(X.class, str);
    }

    public static X[] values() {
        return (X[]) f840d.clone();
    }
}

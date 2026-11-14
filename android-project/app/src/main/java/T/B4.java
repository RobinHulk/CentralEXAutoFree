package T;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class B4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final B4 f516a;
    public static final B4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final B4 f517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final B4 f518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final B4 f519e;
    public static final B4 f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final B4 f520g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ B4[] f521h;

    static {
        B4 b4 = new B4("OFF", 0);
        f516a = b4;
        B4 b5 = new B4("SEARCHING", 1);
        b = b5;
        B4 b6 = new B4("LEVEL0", 2);
        f517c = b6;
        B4 b7 = new B4("LEVEL1", 3);
        f518d = b7;
        B4 b8 = new B4("LEVEL2", 4);
        f519e = b8;
        B4 b9 = new B4("LEVEL3", 5);
        f = b9;
        B4 b10 = new B4("LEVEL4", 6);
        f520g = b10;
        f521h = new B4[]{b4, b5, b6, b7, b8, b9, b10};
    }

    public static B4 valueOf(String str) {
        return (B4) Enum.valueOf(B4.class, str);
    }

    public static B4[] values() {
        return (B4[]) f521h.clone();
    }
}

package T;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class P3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final P3 f756a;
    public static final P3 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ P3[] f757c;

    static {
        P3 p3 = new P3("BOOL", 0);
        f756a = p3;
        P3 p4 = new P3("INT", 1);
        b = p4;
        f757c = new P3[]{p3, p4};
    }

    public static P3 valueOf(String str) {
        return (P3) Enum.valueOf(P3.class, str);
    }

    public static P3[] values() {
        return (P3[]) f757c.clone();
    }
}

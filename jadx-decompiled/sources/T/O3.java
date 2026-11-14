package T;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class O3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final O3 f730a;
    public static final O3 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ O3[] f731c;

    static {
        O3 o3 = new O3("MAIN", 0);
        f730a = o3;
        O3 o4 = new O3("DRIVE_REGEN", 1);
        b = o4;
        f731c = new O3[]{o3, o4};
    }

    public static O3 valueOf(String str) {
        return (O3) Enum.valueOf(O3.class, str);
    }

    public static O3[] values() {
        return (O3[]) f731c.clone();
    }
}

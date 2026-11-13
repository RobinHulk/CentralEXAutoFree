package T;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: T.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0031b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EnumC0031b f886a;
    public static final EnumC0031b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EnumC0031b f887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ EnumC0031b[] f888d;

    static {
        EnumC0031b enumC0031b = new EnumC0031b("OK", 0);
        f886a = enumC0031b;
        EnumC0031b enumC0031b2 = new EnumC0031b("NO_DEVICE", 1);
        b = enumC0031b2;
        EnumC0031b enumC0031b3 = new EnumC0031b("FAILED", 2);
        f887c = enumC0031b3;
        f888d = new EnumC0031b[]{enumC0031b, enumC0031b2, enumC0031b3};
    }

    public static EnumC0031b valueOf(String str) {
        return (EnumC0031b) Enum.valueOf(EnumC0031b.class, str);
    }

    public static EnumC0031b[] values() {
        return (EnumC0031b[]) f888d.clone();
    }
}

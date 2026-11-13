package I0;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n f126a;

    static {
        n nVar = null;
        try {
            nVar = (n) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (nVar == null) {
            nVar = new n();
        }
        f126a = nVar;
    }
}

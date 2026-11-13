package J0;

import I0.f;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class c extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f129c = new b();

    @Override // J0.a
    public final Random a() {
        Object obj = this.f129c.get();
        f.d(obj, "get(...)");
        return (Random) obj;
    }
}

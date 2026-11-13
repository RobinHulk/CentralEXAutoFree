package K0;

import I0.f;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: loaded from: classes.dex */
public final class a extends J0.a {
    @Override // J0.a
    public final Random a() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        f.d(threadLocalRandomCurrent, "current(...)");
        return threadLocalRandomCurrent;
    }
}

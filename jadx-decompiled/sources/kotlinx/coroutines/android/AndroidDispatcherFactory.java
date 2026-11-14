package kotlinx.coroutines.android;

import P0.p;
import Q0.a;
import Q0.b;
import R0.e;
import android.os.Looper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidDispatcherFactory implements e {
    @Override // R0.e
    public p createDispatcher(List<? extends e> list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new a(b.a(mainLooper));
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // R0.e
    public int getLoadPriority() {
        return 1073741823;
    }

    @Override // R0.e
    public String hintOnError() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }
}

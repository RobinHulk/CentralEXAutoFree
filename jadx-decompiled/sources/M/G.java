package M;

import android.database.Observable;

/* JADX INFO: loaded from: classes.dex */
public final class G extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }
}

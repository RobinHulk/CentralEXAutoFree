package T;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class R4 extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        I0.f.e(context, "ctx");
        I0.f.e(intent, "intent");
        Iterator it = S4.f795c.iterator();
        while (it.hasNext()) {
            ((H0.a) it.next()).a();
        }
    }
}

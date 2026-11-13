package T;

import android.app.Service;
import android.content.Context;
import android.content.IntentFilter;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class S4 {
    public static R4 b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final S4 f794a = new S4();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CopyOnWriteArrayList f795c = new CopyOnWriteArrayList();

    public final synchronized void a(Service service, H0.a aVar) {
        I0.f.e(aVar, "listener");
        f795c.add(aVar);
        if (b == null) {
            R4 r4 = new R4();
            b = r4;
            Context applicationContext = service.getApplicationContext();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.STATE_CHANGE");
            intentFilter.addAction("android.net.wifi.RSSI_CHANGED");
            applicationContext.registerReceiver(r4, intentFilter);
        }
    }

    public final synchronized void b(Service service, H0.a aVar) {
        I0.f.e(aVar, "listener");
        CopyOnWriteArrayList copyOnWriteArrayList = f795c;
        copyOnWriteArrayList.remove(aVar);
        if (copyOnWriteArrayList.isEmpty()) {
            R4 r4 = b;
            if (r4 != null) {
                try {
                    service.getApplicationContext().unregisterReceiver(r4);
                } catch (Exception unused) {
                }
            }
            b = null;
        }
    }
}

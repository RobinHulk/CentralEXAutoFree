package T;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.ex.auto.CentralWatchdogService;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class J0 extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CentralWatchdogService f630a;
    public final /* synthetic */ List b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J0(CentralWatchdogService centralWatchdogService, List list, Handler handler) {
        super(handler);
        this.f630a = centralWatchdogService;
        this.b = list;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z2, Uri uri) {
        CentralWatchdogService centralWatchdogService = this.f630a;
        if (centralWatchdogService.f2223s0) {
            String string = uri != null ? uri.toString() : null;
            if (string != null) {
                List list = this.b;
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (O0.j.x0(string, (String) it.next(), true)) {
                            Log.i("CentralWatchdog", "brilho: ignorando mudança nossa em ".concat(string));
                            return;
                        }
                    }
                }
            }
            L3 l3 = L3.f671a;
            if (string == null) {
                string = "Settings (sem URI)";
            }
            l3.b("CentralWatchdog", "brilho: restaurando — mudança em ".concat(string));
            centralWatchdogService.g0();
        }
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z2) {
        onChange(z2, null);
    }
}

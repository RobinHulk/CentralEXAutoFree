package T;

import android.util.Log;
import android.widget.Toast;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: T.j4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0084j4 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1024a = 1;
    public final /* synthetic */ QuickAccessFloaterService b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1025c;

    public /* synthetic */ RunnableC0084j4(QuickAccessFloaterService quickAccessFloaterService, ArrayList arrayList) {
        this.b = quickAccessFloaterService;
        this.f1025c = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        QuickAccessFloaterService quickAccessFloaterService = this.b;
        switch (this.f1024a) {
            case 0:
                List list = QuickAccessFloaterService.f2436j0;
                C0029a3 c0029a3 = new C0029a3(10);
                ArrayList arrayList = this.f1025c;
                Log.i("QuickAccessFloater", "doCloseUserApps (" + arrayList + "): " + quickAccessFloaterService.b(15000, w0.i.d0(arrayList, "\n", null, null, c0029a3, 30)));
                quickAccessFloaterService.f2471a.post(new RunnableC0084j4(quickAccessFloaterService, arrayList));
                break;
            default:
                List list2 = QuickAccessFloaterService.f2436j0;
                Toast.makeText(quickAccessFloaterService, quickAccessFloaterService.getString(R.string.k_close_apps_done, Integer.valueOf(this.f1025c.size())), 0).show();
                break;
        }
    }

    public /* synthetic */ RunnableC0084j4(ArrayList arrayList, QuickAccessFloaterService quickAccessFloaterService) {
        this.f1025c = arrayList;
        this.b = quickAccessFloaterService;
    }
}

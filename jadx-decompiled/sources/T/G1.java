package T;

import android.os.Handler;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.fragment.app.C0180h;
import com.ex.auto.HomeFloatingWidgetsService;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class G1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f588a = 2;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f590d;

    public /* synthetic */ G1() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objCall;
        switch (this.f588a) {
            case 0:
                FrameLayout frameLayout = (FrameLayout) this.f589c;
                LinearLayout linearLayout = (LinearLayout) this.f590d;
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) this.b;
                new Thread(new RunnableC0168z(homeFloatingWidgetsService, frameLayout, linearLayout, 4)).start();
                homeFloatingWidgetsService.f2280c.postDelayed(this, 2000L);
                break;
            case 1:
                ArrayList arrayList = (ArrayList) this.b;
                androidx.fragment.app.P p2 = (androidx.fragment.app.P) this.f589c;
                if (arrayList.contains(p2)) {
                    arrayList.remove(p2);
                    ((C0180h) this.f590d).getClass();
                    androidx.fragment.app.Q.a(p2.f1801c.f1878E, p2.f1800a);
                }
                break;
            default:
                try {
                    objCall = ((v.d) this.b).call();
                } catch (Exception unused) {
                    objCall = null;
                }
                ((Handler) this.f590d).post(new p002b0.c((v.e) this.f589c, 3, objCall));
                break;
        }
    }

    public G1(C0180h c0180h, ArrayList arrayList, androidx.fragment.app.P p2) {
        this.f590d = c0180h;
        this.b = arrayList;
        this.f589c = p2;
    }

    public G1(HomeFloatingWidgetsService homeFloatingWidgetsService, FrameLayout frameLayout, LinearLayout linearLayout) {
        this.b = homeFloatingWidgetsService;
        this.f589c = frameLayout;
        this.f590d = linearLayout;
    }
}

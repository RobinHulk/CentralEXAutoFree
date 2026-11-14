package T;

import android.content.ContextWrapper;
import android.view.View;
import android.widget.Button;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: renamed from: T.g3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnLongClickListenerC0065g3 implements View.OnLongClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f975a;
    public final /* synthetic */ ContextWrapper b;

    public /* synthetic */ ViewOnLongClickListenerC0065g3(ContextWrapper contextWrapper, int i2) {
        this.f975a = i2;
        this.b = contextWrapper;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        ContextWrapper contextWrapper = this.b;
        switch (this.f975a) {
            case 0:
                MainActivity mainActivity = (MainActivity) contextWrapper;
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                Button button = aVar.f1291c;
                String string = button.getText().toString();
                I0.k kVar = new I0.k();
                kVar.f124a = 5;
                RunnableC0147u3 runnableC0147u3 = new RunnableC0147u3(kVar, button, string, mainActivity);
                button.setOnTouchListener(new ViewOnTouchListenerC0075i1(mainActivity, runnableC0147u3, button, string, 1));
                mainActivity.f2387v.post(runnableC0147u3);
                return true;
            default:
                List list = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) contextWrapper;
                quickAccessFloaterService.M(800L);
                A.b.V(quickAccessFloaterService);
                return true;
        }
    }
}

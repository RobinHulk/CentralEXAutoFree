package T;

import android.view.View;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.ExSapoCastActivity;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.TimerFloaterService;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class A implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f467a;
    public final /* synthetic */ H0.a b;

    public /* synthetic */ A(H0.a aVar, int i2) {
        this.f467a = i2;
        this.b = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f467a) {
            case 0:
                AppPipFloaterService appPipFloaterService = AppPipFloaterService.f2114u;
                this.b.a();
                break;
            case 1:
                int i2 = ExSapoCastActivity.f2246e;
                this.b.a();
                break;
            case 2:
                int i3 = ExSapoCastFloaterService.f2250j;
                this.b.a();
                break;
            case 3:
                Set set = LyricsFloaterService.f2324v;
                this.b.a();
                break;
            case 4:
                List list = QuickAccessFloaterService.f2436j0;
                this.b.a();
                break;
            case 5:
                List list2 = QuickAccessFloaterService.f2436j0;
                this.b.a();
                break;
            default:
                boolean z2 = TimerFloaterService.f2545o;
                this.b.a();
                break;
        }
    }
}

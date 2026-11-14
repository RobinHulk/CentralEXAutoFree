package T;

import android.view.View;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.LyricsFloaterService;
import java.util.List;
import java.util.Set;

/* JADX INFO: renamed from: T.x1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0160x1 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1203a;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f1203a) {
            case 0:
                List list = HomeFloatingWidgetsService.f2262Q;
                break;
            default:
                Set set = LyricsFloaterService.f2324v;
                break;
        }
    }
}

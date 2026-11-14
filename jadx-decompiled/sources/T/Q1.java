package T;

import android.app.Service;
import android.media.session.MediaSessionManager;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MediaBarFloaterService;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Q1 implements MediaSessionManager.OnActiveSessionsChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f762a;
    public final /* synthetic */ Service b;

    public /* synthetic */ Q1(Service service, int i2) {
        this.f762a = i2;
        this.b = service;
    }

    @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
    public final void onActiveSessionsChanged(List list) {
        Service service = this.b;
        switch (this.f762a) {
            case 0:
                Set set = LyricsFloaterService.f2324v;
                ((LyricsFloaterService) service).h();
                break;
            default:
                Set set2 = MediaBarFloaterService.f2392u;
                ((MediaBarFloaterService) service).d();
                break;
        }
    }
}

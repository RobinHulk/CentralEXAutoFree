package T;

import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.view.View;
import android.widget.TextView;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class N1 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f699a;
    public final /* synthetic */ LyricsFloaterService b;

    public /* synthetic */ N1(LyricsFloaterService lyricsFloaterService, int i2) {
        this.f699a = i2;
        this.b = lyricsFloaterService;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MediaMetadata metadata;
        switch (this.f699a) {
            case 0:
                Set set = LyricsFloaterService.f2324v;
                ExecutorService executorService = K1.f648a;
                LyricsFloaterService lyricsFloaterService = this.b;
                String str = lyricsFloaterService.f;
                String str2 = lyricsFloaterService.f2329g;
                I0.f.e(str, "title");
                I0.f.e(str2, "artist");
                String strF = K1.f(str, str2);
                K1.f650d.remove(strF);
                K1.f651e.remove(strF);
                K1.f652g.remove(strF);
                TextView textView = lyricsFloaterService.f2333k;
                if (textView != null) {
                    textView.setText("🎤 procurando de novo…");
                }
                MediaController mediaController = lyricsFloaterService.f2328e;
                if (mediaController != null && (metadata = mediaController.getMetadata()) != null) {
                    lyricsFloaterService.r();
                    K1.d(lyricsFloaterService.f, lyricsFloaterService.f2329g, metadata.getLong("android.media.metadata.DURATION"), new M1(lyricsFloaterService, 4));
                    break;
                }
                break;
            case 1:
                LyricsFloaterService lyricsFloaterService2 = this.b;
                Set set2 = LyricsFloaterService.f2324v;
                lyricsFloaterService2.getSharedPreferences("tela_preta_prefs", 0).edit().putBoolean("lyrics_floater_enabled", false).apply();
                try {
                    List list = QuickAccessFloaterService.f2436j0;
                    QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.f2438l0;
                    if (quickAccessFloaterService != null) {
                        quickAccessFloaterService.H();
                    }
                    break;
                } catch (Throwable unused) {
                }
                lyricsFloaterService2.stopSelf();
                break;
            case 2:
                Set set3 = LyricsFloaterService.f2324v;
                this.b.c();
                break;
            case 3:
                Set set4 = LyricsFloaterService.f2324v;
                this.b.l();
                break;
            case 4:
                Set set5 = LyricsFloaterService.f2324v;
                this.b.b();
                break;
            default:
                Set set6 = LyricsFloaterService.f2324v;
                this.b.b();
                break;
        }
    }
}

package T;

import com.ex.auto.LyricsFloaterService;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class L1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f667a;
    public final /* synthetic */ LyricsFloaterService b;

    public /* synthetic */ L1(LyricsFloaterService lyricsFloaterService, int i2) {
        this.f667a = i2;
        this.b = lyricsFloaterService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LyricsFloaterService lyricsFloaterService = this.b;
        switch (this.f667a) {
            case 0:
                Set set = LyricsFloaterService.f2324v;
                lyricsFloaterService.l();
                break;
            case 1:
                Set set2 = LyricsFloaterService.f2324v;
                ExecutorService executorService = K1.f648a;
                lyricsFloaterService.f2330h = K1.c(lyricsFloaterService.f, lyricsFloaterService.f2329g);
                lyricsFloaterService.g();
                break;
            case 2:
                lyricsFloaterService.f2331i = -1;
                lyricsFloaterService.q();
                break;
            case 3:
                Set set3 = LyricsFloaterService.f2324v;
                ExecutorService executorService2 = K1.f648a;
                lyricsFloaterService.f2330h = K1.c(lyricsFloaterService.f, lyricsFloaterService.f2329g);
                lyricsFloaterService.g();
                break;
            default:
                lyricsFloaterService.f2331i = -1;
                lyricsFloaterService.q();
                break;
        }
    }
}

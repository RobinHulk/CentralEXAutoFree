package T;

import android.widget.TextView;
import com.ex.auto.LyricsFloaterService;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class M1 implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f693a;
    public final /* synthetic */ LyricsFloaterService b;

    public /* synthetic */ M1(LyricsFloaterService lyricsFloaterService, int i2) {
        this.f693a = i2;
        this.b = lyricsFloaterService;
    }

    @Override // H0.a
    public final Object a() {
        LyricsFloaterService lyricsFloaterService = this.b;
        switch (this.f693a) {
            case 0:
                lyricsFloaterService.f2326c.post(new L1(lyricsFloaterService, 1));
                break;
            case 1:
                lyricsFloaterService.a(-lyricsFloaterService.f2343u);
                break;
            case 2:
                if (!O0.j.E0(lyricsFloaterService.f)) {
                    ExecutorService executorService = K1.f648a;
                    String str = lyricsFloaterService.f;
                    String str2 = lyricsFloaterService.f2329g;
                    I0.f.e(str, "title");
                    I0.f.e(str2, "artist");
                    try {
                        lyricsFloaterService.getSharedPreferences("lyrics_sync_offsets", 0).edit().remove(K1.f(str, str2)).apply();
                        break;
                    } catch (Throwable unused) {
                    }
                    lyricsFloaterService.f2331i = -1;
                    TextView textView = lyricsFloaterService.f2333k;
                    if (textView != null) {
                        textView.setText("⏱ 0 ms");
                    }
                    lyricsFloaterService.f2326c.postDelayed(new L1(lyricsFloaterService, 4), 500L);
                }
                break;
            case 3:
                lyricsFloaterService.a(lyricsFloaterService.f2343u);
                break;
            default:
                lyricsFloaterService.f2326c.post(new L1(lyricsFloaterService, 3));
                break;
        }
        return v0.e.f4161c;
    }
}

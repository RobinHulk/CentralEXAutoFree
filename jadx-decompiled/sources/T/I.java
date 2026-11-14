package T;

import android.car.media.CarAudioManager;
import android.util.Log;
import com.ex.auto.PhoneSyncService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class I implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f621a;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f622c;

    public /* synthetic */ I(Object obj, boolean z2, int i2) {
        this.f621a = i2;
        this.f622c = obj;
        this.b = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f621a) {
            case 0:
                ((A.c) this.f622c).b(Boolean.valueOf(this.b));
                break;
            default:
                PhoneSyncService phoneSyncService = (PhoneSyncService) this.f622c;
                boolean z2 = this.b;
                boolean z3 = PhoneSyncService.f2416v;
                try {
                    CarAudioManager carAudioManager = phoneSyncService.f2421g;
                    if (carAudioManager != null) {
                        carAudioManager.getClass().getMethod("setAVASMode", Integer.TYPE).invoke(carAudioManager, Integer.valueOf(!z2 ? 1 : 0));
                        Log.i("PhoneSyncService", "AVAS via sync: mute=" + z2);
                    }
                } catch (Exception e2) {
                    Log.e("PhoneSyncService", "applyAvasMute: " + e2.getMessage());
                }
                break;
        }
    }
}

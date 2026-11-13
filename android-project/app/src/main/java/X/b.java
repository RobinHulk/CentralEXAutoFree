package X;

import android.widget.Toast;
import com.geely.hvacstepperv2.TempStepperService;
import ecarx.xsf.mediacenter.session.PlaybackState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1363a;
    public final /* synthetic */ TempStepperService b;

    public /* synthetic */ b(TempStepperService tempStepperService, int i2) {
        this.f1363a = i2;
        this.b = tempStepperService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TempStepperService tempStepperService = this.b;
        switch (this.f1363a) {
            case 0:
                int[] iArr = TempStepperService.f2615X;
                tempStepperService.k("init");
                break;
            case 1:
                int[] iArr2 = TempStepperService.f2615X;
                tempStepperService.l();
                break;
            case 2:
                int[] iArr3 = TempStepperService.f2615X;
                tempStepperService.k("auto");
                break;
            case 3:
                int[] iArr4 = TempStepperService.f2615X;
                tempStepperService.k("poll");
                break;
            case 4:
                int[] iArr5 = TempStepperService.f2615X;
                tempStepperService.k("fan_pr");
                break;
            case 5:
                int[] iArr6 = TempStepperService.f2615X;
                tempStepperService.getClass();
                Toast.makeText(tempStepperService, "Alteração manual — temporizador desligado", 0).show();
                break;
            case 6:
                int[] iArr7 = TempStepperService.f2615X;
                tempStepperService.k("fan_end");
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                int[] iArr8 = TempStepperService.f2615X;
                tempStepperService.b();
                break;
            default:
                int[] iArr9 = TempStepperService.f2615X;
                tempStepperService.k("init");
                break;
        }
    }
}

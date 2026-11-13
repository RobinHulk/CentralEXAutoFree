package T;

import android.content.ContextWrapper;
import android.content.Intent;
import android.view.View;
import com.ex.auto.AcProgramEditActivity;
import com.ex.auto.AcProgramListActivity;
import com.ex.auto.DpadFloaterService;
import com.ex.auto.MainActivity;
import com.geely.hvacstepperv2.TempStepperService;

/* JADX INFO: renamed from: T.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0073i implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f995a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f996c;

    public /* synthetic */ ViewOnClickListenerC0073i(ContextWrapper contextWrapper, int i2, int i3) {
        this.f995a = i3;
        this.f996c = contextWrapper;
        this.b = i2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.b;
        ContextWrapper contextWrapper = this.f996c;
        switch (this.f995a) {
            case 0:
                AcProgramEditActivity acProgramEditActivity = (AcProgramEditActivity) contextWrapper;
                acProgramEditActivity.f2108u.remove(i2);
                acProgramEditActivity.t();
                break;
            case 1:
                int i3 = AcProgramListActivity.f2112u;
                AcProgramListActivity acProgramListActivity = (AcProgramListActivity) contextWrapper;
                acProgramListActivity.startActivity(new Intent(acProgramListActivity, (Class<?>) AcProgramEditActivity.class).putExtra("slot", i2));
                break;
            case 2:
                if (!((DpadFloaterService) contextWrapper).f2243h) {
                    new Thread(new RunnableC0154w0(i2, 1)).start();
                }
                break;
            case 3:
                int i4 = MainActivity.u0;
                ((MainActivity) contextWrapper).k2(i2);
                break;
            default:
                int[] iArr = TempStepperService.f2615X;
                ((TempStepperService) contextWrapper).c(i2);
                break;
        }
    }
}

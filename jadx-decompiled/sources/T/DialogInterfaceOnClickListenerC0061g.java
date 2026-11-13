package T;

import android.content.DialogInterface;
import com.ex.auto.AcProgramEditActivity;
import com.ex.auto.InstallerActivity;
import com.ex.auto.MainActivity;

/* JADX INFO: renamed from: T.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0061g implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f967a;
    public final /* synthetic */ Object b;

    public /* synthetic */ DialogInterfaceOnClickListenerC0061g(Object obj, int i2) {
        this.f967a = i2;
        this.b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        Object obj = this.b;
        switch (this.f967a) {
            case 0:
                AcProgramEditActivity acProgramEditActivity = (AcProgramEditActivity) obj;
                int i3 = acProgramEditActivity.f2107t;
                acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().remove("program_" + i3).apply();
                acProgramEditActivity.finish();
                break;
            case 1:
                int i4 = InstallerActivity.f2322u;
                ((InstallerActivity) obj).finish();
                break;
            default:
                int i5 = MainActivity.u0;
                ((H0.a) obj).a();
                break;
        }
    }
}

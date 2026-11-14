package T;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.widget.Toast;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import p007e.C0205e;

/* JADX INFO: renamed from: T.z2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0171z2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1239a = 2;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f1240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f1241d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f1242e;

    public /* synthetic */ RunnableC0171z2(MainActivity mainActivity, boolean z2, String str, boolean z3) {
        this.b = mainActivity;
        this.f1240c = z2;
        this.f1242e = str;
        this.f1241d = z3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final boolean z2 = this.f1241d;
        String str = this.f1242e;
        boolean z3 = this.f1240c;
        final MainActivity mainActivity = this.b;
        switch (this.f1239a) {
            case 0:
                int i2 = MainActivity.u0;
                if (z3 || z2 || mainActivity.D0()) {
                    boolean z4 = (z3 || z2) ? false : true;
                    mainActivity.getClass();
                    String string = str.equals("temp") ? mainActivity.getString(R.string.k_hvac_digital_temp_title) : str.equals("batt") ? mainActivity.getString(R.string.k_hvac_digital_batt_title) : mainActivity.getString(R.string.xml_hvac_exttemp_titulo);
                    I0.f.b(string);
                    String string2 = str.equals("temp") ? mainActivity.getString(R.string.k_hvac_digital_temp_desc) : str.equals("batt") ? mainActivity.getString(R.string.xml_mostra_o_de_bateria_na_barra_do_carro) : mainActivity.getString(R.string.xml_hvac_exttemp_desc);
                    I0.f.b(string2);
                    String str2 = " " + mainActivity.getString(R.string.k_hvac_digital_common_desc);
                    String str3 = z4 ? string2 + str2 + "\n\n" + mainActivity.getString(R.string.k_hvac_digital_needs_download) : string2 + str2 + ' ' + mainActivity.getString(R.string.k_continue_question);
                    C0081j1 c0081j1 = new C0081j1(mainActivity);
                    C0205e c0205e = (C0205e) c0081j1.b;
                    c0205e.f2991d = string;
                    c0205e.f = str3;
                    c0205e.f2997k = false;
                    c0081j1.f(mainActivity.getString(R.string.common_cancel), new X1(22, mainActivity));
                    c0081j1.h(mainActivity.getString(R.string.common_apply), new DialogInterfaceOnClickListenerC0028a2(mainActivity, str, 3));
                    c0081j1.j();
                } else {
                    C0081j1 c0081j2 = new C0081j1(mainActivity);
                    String string3 = mainActivity.getString(R.string.k_no_internet_title);
                    C0205e c0205e2 = (C0205e) c0081j2.b;
                    c0205e2.f2991d = string3;
                    c0205e2.f = mainActivity.getString(R.string.k_no_internet_message);
                    c0205e2.f2997k = false;
                    c0081j2.h(mainActivity.getString(R.string.common_ok), new X1(20, mainActivity));
                    c0081j2.j();
                }
                break;
            case 1:
                int i3 = MainActivity.u0;
                if (!mainActivity.isFinishing() && !mainActivity.isDestroyed()) {
                    if (!z3) {
                        C0081j1 c0081j3 = new C0081j1(mainActivity);
                        String string4 = mainActivity.getString(R.string.xml_android_auto_carplay);
                        C0205e c0205e3 = (C0205e) c0081j3.b;
                        c0205e3.f2991d = string4;
                        c0205e3.f = mainActivity.getString(R.string.k_sem_canal_adb);
                        c0081j3.g(android.R.string.ok, null);
                        c0081j3.j();
                    } else {
                        C0081j1 c0081j4 = new C0081j1(mainActivity);
                        String string5 = mainActivity.getString(z2 ? R.string.k_connadaptor_confirm_uninstall_title : R.string.k_connadaptor_confirm_install_title);
                        C0205e c0205e4 = (C0205e) c0081j4.b;
                        c0205e4.f2991d = string5;
                        c0205e4.f = mainActivity.getString(z2 ? R.string.k_connadaptor_confirm_uninstall_msg : R.string.k_connadaptor_confirm_install_msg, str);
                        c0081j4.h(mainActivity.getString(z2 ? R.string.xml_desativar : R.string.xml_ativar), new DialogInterface.OnClickListener() { // from class: T.X2
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i4) {
                                int i5 = MainActivity.u0;
                                MainActivity mainActivity2 = mainActivity;
                                mainActivity2.getClass();
                                mainActivity2.f2388w.execute(new RunnableC0040c2(z2, mainActivity2, 14));
                            }
                        });
                        c0081j4.e(android.R.string.cancel, null);
                        c0081j4.j();
                    }
                    break;
                }
                break;
            default:
                int i4 = MainActivity.u0;
                if (!mainActivity.isFinishing()) {
                    Toast.makeText(mainActivity, mainActivity.getString(z3 ? R.string.k_applied : R.string.k_apply_failed_check_internet), 1 ^ (z3 ? 1 : 0)).show();
                    if (!z3) {
                        SharedPreferences.Editor editorEdit = mainActivity.B0().edit();
                        editorEdit.putBoolean(str, false);
                        if (z2) {
                            editorEdit.putBoolean("hvac_digital_batt", false);
                        }
                        editorEdit.apply();
                        mainActivity.v1();
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ RunnableC0171z2(MainActivity mainActivity, boolean z2, boolean z3, String str) {
        this.b = mainActivity;
        this.f1240c = z2;
        this.f1241d = z3;
        this.f1242e = str;
    }

    public /* synthetic */ RunnableC0171z2(boolean z2, boolean z3, MainActivity mainActivity, String str) {
        this.f1240c = z2;
        this.f1241d = z3;
        this.b = mainActivity;
        this.f1242e = str;
    }
}

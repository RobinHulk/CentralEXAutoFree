package T;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
import p007e.C0205e;

/* JADX INFO: renamed from: T.a2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0028a2 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f881a;
    public final /* synthetic */ String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f882c;

    public /* synthetic */ DialogInterfaceOnClickListenerC0028a2(MainActivity mainActivity, String str, int i2) {
        this.f881a = i2;
        this.f882c = mainActivity;
        this.b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        int i3 = 10;
        MainActivity mainActivity = this.f882c;
        String str = this.b;
        switch (this.f881a) {
            case 0:
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.f1261H.setEnabled(false);
                mainActivity.f2388w.execute(new RunnableC0168z(mainActivity, str, new C0076i2(6, mainActivity), i3));
                return;
            case 1:
                MainActivity.R1(mainActivity, str);
                return;
            case 2:
                MainActivity.Q1(mainActivity, str);
                return;
            case 3:
                int i4 = MainActivity.u0;
                MainActivity mainActivity2 = this.f882c;
                mainActivity2.getClass();
                String str2 = str.equals("temp") ? "hvac_digital_temp" : str.equals("batt") ? "hvac_digital_batt" : "hvac_digital_ext_temp";
                boolean z2 = str.equals("exttemp") && !mainActivity2.B0().getBoolean("hvac_digital_batt", false);
                SharedPreferences.Editor editorEdit = mainActivity2.B0().edit();
                editorEdit.putBoolean(str2, true);
                if (z2) {
                    editorEdit.putBoolean("hvac_digital_batt", true);
                }
                editorEdit.apply();
                mainActivity2.v1();
                mainActivity2.startForegroundService(new Intent(mainActivity2, (Class<?>) CentralWatchdogService.class));
                Toast.makeText(mainActivity2, mainActivity2.getString(R.string.k_applying), 0).show();
                boolean z3 = mainActivity2.B0().getBoolean("hvac_digital_temp", false);
                boolean z4 = mainActivity2.B0().getBoolean("hvac_digital_batt", false);
                boolean z5 = mainActivity2.B0().getBoolean("hvac_digital_ext_temp", false);
                if (!C0097m.l()) {
                    ProgressBar progressBar = new ProgressBar(mainActivity2, null, android.R.attr.progressBarStyleHorizontal);
                    progressBar.setIndeterminate(true);
                    progressBar.setMax(100);
                    int i5 = (int) (20 * progressBar.getResources().getDisplayMetrics().density);
                    progressBar.setPadding(i5, i5, i5, i5);
                    mainActivity2.f2373g0 = progressBar;
                    C0081j1 c0081j1 = new C0081j1(mainActivity2);
                    String string = mainActivity2.getString(R.string.k_hvac_baixando_titulo);
                    C0205e c0205e = (C0205e) c0081j1.b;
                    c0205e.f2991d = string;
                    c0205e.f = mainActivity2.getString(R.string.k_hvac_baixando_msg);
                    c0205e.f3003q = progressBar;
                    c0205e.f2997k = false;
                    mainActivity2.h0 = c0081j1.j();
                }
                mainActivity2.f2388w.execute(new W2(mainActivity2, z3, z4, z5, str2, z2));
                return;
            default:
                int i6 = MainActivity.u0;
                Y0 y0 = Y0.f854a;
                SharedPreferences sharedPreferencesB0 = mainActivity.B0();
                I0.f.d(sharedPreferencesB0, "<get-prefs>(...)");
                I0.f.e(str, "details");
                try {
                    JSONArray jSONArray = new JSONArray(sharedPreferencesB0.getString("error_report_queue", "[]"));
                    jSONArray.put(new JSONObject().put("s", "[CentralEXAuto] Erro — ".concat("Falha ao aplicar o fundo preto na ré")).put("b", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date()) + '\n' + Y0.b(mainActivity, sharedPreferencesB0) + "\n\nFalha ao aplicar o fundo preto na ré\n\n" + O0.j.X0(str).toString()));
                    while (jSONArray.length() > 50) {
                        jSONArray.remove(0);
                    }
                    sharedPreferencesB0.edit().putString("error_report_queue", jSONArray.toString()).apply();
                    Log.d("DR", "erro enfileirado (" + jSONArray.length() + " na fila)");
                } catch (Throwable th) {
                    M.d0.r(th, new StringBuilder("queueErrorReport: "), "DR");
                }
                if (!mainActivity.D0()) {
                    M.d0.l(mainActivity, R.string.k_error_report_no_internet, mainActivity, 1);
                    return;
                } else {
                    Toast.makeText(mainActivity, mainActivity.getString(R.string.k_sending_error_report), 0).show();
                    mainActivity.f2388w.execute(new G2(12, mainActivity));
                    return;
                }
        }
    }

    public /* synthetic */ DialogInterfaceOnClickListenerC0028a2(String str, MainActivity mainActivity, int i2) {
        this.f881a = i2;
        this.b = str;
        this.f882c = mainActivity;
    }
}

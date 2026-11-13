package T;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.widget.Button;
import android.widget.Toast;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class F2 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f562a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f563c;

    public /* synthetic */ F2(MainActivity mainActivity, ArrayList arrayList, int i2) {
        this.f562a = i2;
        this.b = mainActivity;
        this.f563c = arrayList;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        ArrayList<C0113o3> arrayList = this.f563c;
        MainActivity mainActivity = this.b;
        switch (this.f562a) {
            case 0:
                int i3 = MainActivity.u0;
                String str = (String) arrayList.get(i2);
                SharedPreferences.Editor editorEdit = mainActivity.B0().edit();
                if (str == null) {
                    editorEdit.remove("auto_connect_preferred_bt");
                } else {
                    editorEdit.putString("auto_connect_preferred_bt", str);
                }
                editorEdit.apply();
                L3 l3 = L3.f671a;
                if (str == null) {
                    str = "qualquer";
                }
                l3.b("Preferido", "celular preferido: ".concat(str));
                mainActivity.y();
                dialogInterface.dismiss();
                return;
            case 1:
                int i4 = MainActivity.u0;
                mainActivity.B0().edit().putString("widget_apps_list", w0.i.d0(this.f563c, ",", null, null, null, 62)).apply();
                List list = HomeFloatingWidgetsService.f2262Q;
                Y.E(mainActivity);
                Y.Z("apps");
                return;
            case 2:
                int i5 = MainActivity.u0;
                MainActivity mainActivity2 = this.b;
                mainActivity2.getClass();
                Toast.makeText(mainActivity2, mainActivity2.getString(R.string.k_dep_update_running, Integer.valueOf(arrayList.size())), 1).show();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str2 = ((C0113o3) it.next()).f1081a;
                    int iHashCode = str2.hashCode();
                    ExecutorService executorService = mainActivity2.f2388w;
                    switch (iHashCode) {
                        case -1814115367:
                            if (str2.equals("connadaptor")) {
                                executorService.execute(new G2(8, mainActivity2));
                            }
                            break;
                        case -1249348125:
                            if (str2.equals("gestos")) {
                                executorService.execute(new G2(9, mainActivity2));
                            }
                            break;
                        case -1085978014:
                            if (str2.equals("keyserver")) {
                                mainActivity2.D1();
                            }
                            break;
                        case 634262273:
                            if (str2.equals("dualdashcam")) {
                                U.a aVar = mainActivity2.f2384t;
                                if (aVar == null) {
                                    I0.f.h("binding");
                                    throw null;
                                }
                                Button button = aVar.f1250B;
                                if (aVar == null) {
                                    I0.f.h("binding");
                                    throw null;
                                }
                                Button button2 = aVar.h0;
                                if (aVar == null) {
                                    I0.f.h("binding");
                                    throw null;
                                }
                                mainActivity2.G0("https://raw.githubusercontent.com/swimapps/Outros/main/dualdashcam.json", "DualDashcam-install.apk", "br.com.central.dualdashcam", button, button2, aVar.B2);
                            } else {
                                continue;
                            }
                            break;
                    }
                }
                return;
            default:
                int i6 = MainActivity.u0;
                SharedPreferences.Editor editorEdit2 = mainActivity.B0().edit();
                for (C0113o3 c0113o3 : arrayList) {
                    editorEdit2.putString("dep_update_notified_".concat(c0113o3.f1081a), c0113o3.f1082c);
                }
                editorEdit2.apply();
                return;
        }
    }

    public /* synthetic */ F2(ArrayList arrayList, MainActivity mainActivity) {
        this.f562a = 0;
        this.f563c = arrayList;
        this.b = mainActivity;
    }
}

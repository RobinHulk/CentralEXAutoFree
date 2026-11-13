package T;

import android.app.Service;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class Q3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Q3 f768a = new Q3();
    public static final List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LinkedHashMap f769c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap.KeySetView f770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static M3 f771e;

    static {
        P3 p3 = P3.f756a;
        O3 o3 = O3.f730a;
        N3 n3 = new N3("hvac_stepper_enabled", p3, o3, 0, 24);
        N3 n4 = new N3("status_temp_ext_enabled", p3, o3, 0, 24);
        N3 n5 = new N3("status_battery_enabled", p3, o3, 0, 24);
        N3 n6 = new N3("rvc_black_bg", p3, o3, 0, 24);
        N3 n7 = new N3("hvac_digital_temp", p3, o3, 0, 24);
        N3 n8 = new N3("hvac_digital_batt", p3, o3, 0, 24);
        N3 n9 = new N3("auto_route_on_aa_connect", p3, o3, 0, 24);
        N3 n10 = new N3("auto_proxy_enabled", p3, o3, 0, 24);
        N3 n11 = new N3("restart_aa_on_hu_boot", p3, o3, 0, 24);
        N3 n12 = new N3("telemetry_autostart", p3, o3, 0, 24);
        N3 n13 = new N3("avas_muted_saved", p3, o3, 0, 24);
        N3 n14 = new N3("quick_access_enabled", p3, o3, 0, 24);
        N3 n15 = new N3("aeb_restore_on_boot", p3, o3, 0, 24);
        P3 p4 = P3.b;
        N3 n16 = new N3("fan_speed", p4, o3, 3, 8);
        O3 o4 = O3.b;
        List listT = w0.j.T(n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, new N3("saved_regen", p4, o4, 537003266, 8), new N3("saved_drive", p4, o4, 570491138, 8), new N3("floater_alpha", p4, o4, 100, 8));
        b = listT;
        int iU = w0.u.U(w0.k.V(listT));
        if (iU < 16) {
            iU = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iU);
        for (Object obj : listT) {
            linkedHashMap.put(((N3) obj).f703a, obj);
        }
        f769c = linkedHashMap;
        ConcurrentHashMap.KeySetView keySetViewNewKeySet = ConcurrentHashMap.newKeySet();
        I0.f.d(keySetViewNewKeySet, "newKeySet(...)");
        f770d = keySetViewNewKeySet;
    }

    public static SharedPreferences a(Context context) {
        try {
            return context.createDeviceProtectedStorageContext().getSharedPreferences("drive_regen_prefs", 0);
        } catch (Exception unused) {
            return context.getSharedPreferences("drive_regen_prefs", 0);
        }
    }

    public static SharedPreferences c(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("tela_preta_prefs", 0);
        I0.f.d(sharedPreferences, "getSharedPreferences(...)");
        return sharedPreferences;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [T.M3, android.content.SharedPreferences$OnSharedPreferenceChangeListener] */
    public final synchronized void b(Service service) {
        if (f771e != null) {
            return;
        }
        Context applicationContext = service.getApplicationContext();
        I0.f.b(applicationContext);
        final SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("phone_sync_meta", 0);
        I0.f.d(sharedPreferences, "getSharedPreferences(...)");
        ?? r1 = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: T.M3
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                if (str == null || !Q3.f769c.containsKey(str) || Q3.f770d.remove(str)) {
                    return;
                }
                sharedPreferences.edit().putLong(str, System.currentTimeMillis()).apply();
            }
        };
        c(applicationContext).registerOnSharedPreferenceChangeListener(r1);
        f771e = r1;
        a(applicationContext).registerOnSharedPreferenceChangeListener(new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: T.M3
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str) {
                if (str == null || !Q3.f769c.containsKey(str) || Q3.f770d.remove(str)) {
                    return;
                }
                sharedPreferences.edit().putLong(str, System.currentTimeMillis()).apply();
            }
        });
    }
}

package T;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.SystemClock;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import com.sun.mail.iap.Response;
import com.sun.mail.imap.IMAPStore;
import ecarx.xsf.mediacenter.session.PlaybackState;
import p007e.C0205e;
import p007e.DialogC0209i;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class G2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f591a;
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ G2(int i2, MainActivity mainActivity) {
        this.f591a = i2;
        this.b = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strC1;
        C0089k3 c0089k3Q0;
        String strC2;
        int i2 = 16;
        int i3 = 6;
        boolean zX0 = false;
        boolean zX1 = false;
        boolean zD = false;
        String strV0 = null;
        MainActivity mainActivity = this.b;
        switch (this.f591a) {
            case 0:
                int i4 = MainActivity.u0;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.M2.setText(mainActivity.getString(R.string.k_reiniciar_sem_canal));
                C0081j1 c0081j1 = new C0081j1(mainActivity);
                c0081j1.i(R.string.k_reiniciar_sem_canal_titulo);
                C0205e c0205e = (C0205e) c0081j1.b;
                c0205e.f = c0205e.f2989a.getText(R.string.k_reiniciar_sem_canal);
                c0081j1.g(android.R.string.ok, null);
                c0081j1.j();
                return;
            case 1:
                int i5 = MainActivity.u0;
                try {
                    Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class).invoke(null, "ctl.start", "adbd");
                    Thread.sleep(3000L);
                    String strB = new I1(5555).b(5000, "echo adb_ok");
                    I0.f.b(strB);
                    zX1 = O0.j.x0(strB, "adb_ok", false);
                    break;
                } catch (Exception unused) {
                }
                mainActivity.f2387v.post(new RunnableC0040c2(mainActivity, zX1, i3));
                return;
            case 2:
                int i6 = MainActivity.u0;
                mainActivity.q2();
                return;
            case 3:
                int i7 = MainActivity.u0;
                mainActivity.f2387v.post(new RunnableC0171z2(mainActivity, MainActivity.T(), mainActivity.Y(), mainActivity.f0()));
                return;
            case 4:
                U.a aVar2 = mainActivity.f2384t;
                if (aVar2 != null) {
                    aVar2.f1281R0.f1350s.setText(mainActivity.getString(R.string.k_keyserver_swapping));
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 5:
                U.a aVar3 = mainActivity.f2384t;
                if (aVar3 != null) {
                    aVar3.f1281R0.f1350s.setText(mainActivity.getString(R.string.k_keyserver_mounting));
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 6:
                int i8 = MainActivity.u0;
                L3.f671a.b("Reiniciar", "garantindo o bind do CarplayMonitor");
                try {
                    strC1 = mainActivity.C1(60000, Y.v());
                    break;
                } catch (Exception e2) {
                    strC1 = "erro: " + e2.getMessage();
                }
                L3 l3 = L3.f671a;
                mainActivity.getClass();
                String strD0 = w0.i.d0(N0.h.n0(new N0.c(new N0.c(O0.j.G0(strC1), new C0103n(28), 3), new C0103n(29), 1)), " | ", null, null, null, 62);
                if (strD0.length() == 0) {
                    strD0 = O0.s.v0(O0.j.W0(120, O0.j.X0(strC1).toString()), "\n", " ");
                }
                l3.b("Reiniciar", "bind do monitor: ".concat(strD0));
                mainActivity.f2387v.post(new V1(mainActivity, strC1, 18));
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                int i9 = MainActivity.u0;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                mainActivity.e1();
                return;
            case Response.NO /* 8 */:
                try {
                    c0089k3Q0 = MainActivity.q0(mainActivity, null, 3);
                    break;
                } catch (Exception e3) {
                    mainActivity.v("Update", "dep ConnAdaptor update: " + e3.getMessage());
                    mainActivity.f2387v.post(new RunnableC0156w2(mainActivity, e3, 2));
                    c0089k3Q0 = null;
                }
                if (c0089k3Q0 != null) {
                    String str = c0089k3Q0.f1033a;
                    mainActivity.getClass();
                    strV0 = MainActivity.V0(str);
                }
                mainActivity.f2387v.post(new RunnableC0168z(mainActivity, c0089k3Q0, strV0, 13));
                return;
            case 9:
                int i10 = MainActivity.u0;
                try {
                    zD = C0097m.d(mainActivity, new C0103n(18));
                    break;
                } catch (Throwable th) {
                    mainActivity.v("Update", "dep gestos update: " + th.getMessage());
                }
                mainActivity.f2387v.post(new RunnableC0040c2(mainActivity, zD, 13));
                return;
            case 10:
                int i11 = MainActivity.u0;
                try {
                    strC2 = mainActivity.C1(30000, Y.B());
                    break;
                } catch (Exception e4) {
                    strC2 = "erro: " + e4.getMessage();
                }
                String string = O0.j.X0(O0.s.v0(O0.j.V0(160, strC2), "\n", " ")).toString();
                try {
                    zX0 = O0.j.x0(mainActivity.C1(8000, "grep -F ' /system/bin/CarplayMonitor ' /proc/mounts >/dev/null && echo SIM || echo NAO"), "SIM", false);
                    break;
                } catch (Exception unused2) {
                }
                L3.f671a.b("Modo", zX0 ? O0.j.E0(strC2) ? "modo AA: canal ADB indisponível — o patch do monitor sai só no próximo boot" : M.d0.e("modo AA: o monitor CONTINUA montado — ", string) : "modo AA: patch do monitor desfeito");
                return;
            case 11:
                int i12 = MainActivity.u0;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                L3 l4 = L3.f671a;
                l4.b("Ativar", "início");
                mainActivity.getClass();
                boolean zT = MainActivity.T();
                Handler handler = mainActivity.f2387v;
                if (!zT) {
                    l4.b("Ativar", "ABORTADO: canal do ADB local fora do ar");
                    handler.post(new G2(15, mainActivity));
                    return;
                }
                String strR2 = mainActivity.r2();
                l4.b("Ativar", "md5 do ca_fix conferido em " + ((SystemClock.elapsedRealtime() - jElapsedRealtime) / ((long) IMAPStore.RESPONSE)) + 's');
                handler.post(new V1(strR2, mainActivity, 19));
                return;
            case Response.BAD /* 12 */:
                int i13 = MainActivity.u0;
                Y0 y0 = Y0.f854a;
                SharedPreferences sharedPreferencesB0 = mainActivity.B0();
                I0.f.d(sharedPreferencesB0, "<get-prefs>(...)");
                mainActivity.f2387v.post(new Z1(mainActivity, y0.d(sharedPreferencesB0), 3));
                return;
            case 13:
                U.a aVar4 = mainActivity.f2384t;
                if (aVar4 != null) {
                    aVar4.w2.setText(mainActivity.getString(R.string.k_installing_carplaymonitor));
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 14:
                U.a aVar5 = mainActivity.f2384t;
                if (aVar5 != null) {
                    aVar5.A2.setText(mainActivity.getString(R.string.k_installing_cafix));
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 15:
                int i14 = MainActivity.u0;
                mainActivity.H1(true);
                mainActivity.f2354K = false;
                if (mainActivity.isFinishing() || mainActivity.isDestroyed()) {
                    return;
                }
                C0081j1 c0081j2 = new C0081j1(mainActivity);
                String string2 = mainActivity.getString(R.string.xml_android_auto_carplay);
                C0205e c0205e2 = (C0205e) c0081j2.b;
                c0205e2.f2991d = string2;
                c0205e2.f = mainActivity.getString(R.string.k_sem_canal_adb);
                c0081j2.g(android.R.string.ok, null);
                c0081j2.j();
                return;
            case Response.BYE /* 16 */:
                int i15 = MainActivity.u0;
                mainActivity.f2387v.post(new RunnableC0040c2(mainActivity, C0097m.d(mainActivity, new E2(i2, mainActivity)), i2));
                return;
            case 17:
                int i16 = MainActivity.u0;
                try {
                    DialogC0209i dialogC0209i = mainActivity.h0;
                    if (dialogC0209i != null) {
                        dialogC0209i.dismiss();
                    }
                    break;
                } catch (Throwable unused3) {
                }
                mainActivity.h0 = null;
                mainActivity.f2373g0 = null;
                return;
            case 18:
                int i17 = MainActivity.u0;
                String string3 = mainActivity.B0().getString("auto_connect_preferred_bt", null);
                if (string3 != null && !O0.j.E0(string3)) {
                    strV0 = string3;
                }
                new Thread(new V1(mainActivity, strV0, zX0 ? 1 : 0)).start();
                return;
            case 19:
                int i18 = MainActivity.u0;
                if (mainActivity.isFinishing()) {
                    return;
                }
                U.a aVar6 = mainActivity.f2384t;
                if (aVar6 != null) {
                    aVar6.f1281R0.f1349r.setVisibility(8);
                    return;
                } else {
                    I0.f.h("binding");
                    throw null;
                }
            case 20:
                int i19 = MainActivity.u0;
                Y0 y1 = Y0.f854a;
                SharedPreferences sharedPreferencesB1 = mainActivity.B0();
                I0.f.d(sharedPreferencesB1, "<get-prefs>(...)");
                y1.d(sharedPreferencesB1);
                return;
            case 21:
                int i20 = MainActivity.u0;
                if (mainActivity.isFinishing()) {
                    return;
                }
                mainActivity.f2388w.execute(new U1(i3, mainActivity));
                return;
            default:
                int i21 = MainActivity.u0;
                mainActivity.getClass();
                mainActivity.f2387v.post(new V1(mainActivity, mainActivity.C1(8000, Y.C()), 5));
                return;
        }
    }
}

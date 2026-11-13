package T;

import android.car.hardware.property.CarPropertyManager;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Z1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f868a;
    public final /* synthetic */ MainActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f869c;

    public /* synthetic */ Z1(int i2, MainActivity mainActivity) {
        this.f868a = 2;
        this.f869c = i2;
        this.b = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final int i2 = 0;
        int i3 = this.f869c;
        final MainActivity mainActivity = this.b;
        final int i4 = 1;
        switch (this.f868a) {
            case 0:
                int i5 = MainActivity.u0;
                mainActivity.f2387v.post(new V1(mainActivity.C1(10000, O0.l.n0("\n                mkdir -p /data/local/tmp/avas_preview\n                DIR=/system/etc/avas/sound_type_" + i3 + "\n                F=$(ls \"$DIR\"/*.wav 2>/dev/null | head -1)\n                if [ -z \"$F\" ]; then echo \"SEM_ARQUIVO\"; exit 0; fi\n                cp -f \"$F\" /data/local/tmp/avas_preview/preview.wav 2>&1\n                chmod 644 /data/local/tmp/avas_preview/preview.wav 2>/dev/null || true\n                echo \"OK\"\n            ")), mainActivity, 7));
                break;
            case 1:
                CarPropertyManager carPropertyManager = mainActivity.f2350G;
                if (carPropertyManager == null) {
                    mainActivity.k0();
                } else {
                    int[] iArr = {0, 1, 16777216};
                    while (i2 < 3) {
                        try {
                            carPropertyManager.setIntProperty(570491136, iArr[i2], i3);
                        } catch (Exception unused) {
                            i2++;
                        }
                        break;
                    }
                    mainActivity.k0();
                }
                break;
            case 2:
                int i6 = mainActivity.f2345B;
                final List listF0 = w0.q.f4190a;
                Handler handler = mainActivity.f2387v;
                if (i3 == i6) {
                    try {
                        PackageManager packageManager = mainActivity.getPackageManager();
                        List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(0);
                        I0.f.d(installedApplications, "getInstalledApplications(...)");
                        ArrayList<ApplicationInfo> arrayList = new ArrayList();
                        for (Object obj : installedApplications) {
                            ApplicationInfo applicationInfo = (ApplicationInfo) obj;
                            int i7 = applicationInfo.flags;
                            if ((i7 & 1) == 0 && (i7 & 128) == 0 && !I0.f.a(applicationInfo.packageName, mainActivity.getPackageName())) {
                                arrayList.add(obj);
                            }
                        }
                        ArrayList arrayList2 = new ArrayList(w0.k.V(arrayList));
                        for (ApplicationInfo applicationInfo2 : arrayList) {
                            arrayList2.add(new v0.a(applicationInfo2.packageName, ((Object) packageManager.getApplicationLabel(applicationInfo2)) + " (" + applicationInfo2.packageName + ')'));
                        }
                        listF0 = w0.i.f0(arrayList2, new E(7));
                        break;
                    } catch (Exception unused2) {
                    }
                    handler.post(new Runnable() { // from class: T.D2
                        @Override // java.lang.Runnable
                        public final void run() {
                            String strS0;
                            List<String> list = listF0;
                            MainActivity mainActivity2 = mainActivity;
                            switch (i2) {
                                case 0:
                                    mainActivity2.f2391z.clear();
                                    ArrayList arrayList3 = mainActivity2.f2391z;
                                    ArrayList arrayList4 = new ArrayList(w0.k.V(list));
                                    Iterator it = list.iterator();
                                    while (it.hasNext()) {
                                        arrayList4.add((String) ((v0.a) it.next()).f4155a);
                                    }
                                    arrayList3.addAll(arrayList4);
                                    ArrayList arrayList5 = new ArrayList(w0.k.V(list));
                                    Iterator it2 = list.iterator();
                                    while (it2.hasNext()) {
                                        arrayList5.add((String) ((v0.a) it2.next()).b);
                                    }
                                    String string = mainActivity2.getString(R.string.k_no_user_apps);
                                    I0.f.d(string, "getString(...)");
                                    mainActivity2.I1(arrayList5, string);
                                    break;
                                default:
                                    mainActivity2.f2390y.clear();
                                    mainActivity2.f2390y.addAll(list);
                                    ArrayList arrayList6 = new ArrayList(w0.k.V(list));
                                    for (String str : list) {
                                        if (O0.s.w0(str, "/data/data/com.aurora.store/cache/Downloads")) {
                                            List listN0 = O0.j.N0(O0.j.Z0(str, '/'), new char[]{'/'});
                                            String str2 = (String) w0.i.b0(listN0, listN0.size() - 2);
                                            if (str2 != null) {
                                                str = str2;
                                            }
                                            strS0 = str.concat(" (Aurora)");
                                        } else {
                                            strS0 = O0.j.S0(str, '/');
                                        }
                                        arrayList6.add(strS0);
                                    }
                                    String string2 = mainActivity2.getString(R.string.k_no_apk_files);
                                    I0.f.d(string2, "getString(...)");
                                    mainActivity2.I1(arrayList6, string2);
                                    break;
                            }
                        }
                    });
                } else {
                    try {
                        listF0 = i3 == mainActivity.f2344A ? mainActivity.P0() : w0.i.e0(mainActivity.O0(), mainActivity.N0());
                    } catch (Exception unused3) {
                    }
                    handler.post(new Runnable() { // from class: T.D2
                        @Override // java.lang.Runnable
                        public final void run() {
                            String strS0;
                            List<String> list = listF0;
                            MainActivity mainActivity2 = mainActivity;
                            switch (i4) {
                                case 0:
                                    mainActivity2.f2391z.clear();
                                    ArrayList arrayList3 = mainActivity2.f2391z;
                                    ArrayList arrayList4 = new ArrayList(w0.k.V(list));
                                    Iterator it = list.iterator();
                                    while (it.hasNext()) {
                                        arrayList4.add((String) ((v0.a) it.next()).f4155a);
                                    }
                                    arrayList3.addAll(arrayList4);
                                    ArrayList arrayList5 = new ArrayList(w0.k.V(list));
                                    Iterator it2 = list.iterator();
                                    while (it2.hasNext()) {
                                        arrayList5.add((String) ((v0.a) it2.next()).b);
                                    }
                                    String string = mainActivity2.getString(R.string.k_no_user_apps);
                                    I0.f.d(string, "getString(...)");
                                    mainActivity2.I1(arrayList5, string);
                                    break;
                                default:
                                    mainActivity2.f2390y.clear();
                                    mainActivity2.f2390y.addAll(list);
                                    ArrayList arrayList6 = new ArrayList(w0.k.V(list));
                                    for (String str : list) {
                                        if (O0.s.w0(str, "/data/data/com.aurora.store/cache/Downloads")) {
                                            List listN0 = O0.j.N0(O0.j.Z0(str, '/'), new char[]{'/'});
                                            String str2 = (String) w0.i.b0(listN0, listN0.size() - 2);
                                            if (str2 != null) {
                                                str = str2;
                                            }
                                            strS0 = str.concat(" (Aurora)");
                                        } else {
                                            strS0 = O0.j.S0(str, '/');
                                        }
                                        arrayList6.add(strS0);
                                    }
                                    String string2 = mainActivity2.getString(R.string.k_no_apk_files);
                                    I0.f.d(string2, "getString(...)");
                                    mainActivity2.I1(arrayList6, string2);
                                    break;
                            }
                        }
                    });
                }
                break;
            case 3:
                int i8 = MainActivity.u0;
                if (!mainActivity.isFinishing()) {
                    Toast.makeText(mainActivity, i3 > 0 ? mainActivity.getString(R.string.k_error_report_sent) : mainActivity.getString(R.string.k_error_report_queued), 1).show();
                    break;
                }
                break;
            default:
                ProgressBar progressBar = mainActivity.f2373g0;
                if (progressBar != null) {
                    if (i3 < 0) {
                        progressBar.setIndeterminate(true);
                    } else {
                        progressBar.setIndeterminate(false);
                        progressBar.setProgress(i3);
                    }
                    break;
                }
                break;
        }
    }

    public /* synthetic */ Z1(MainActivity mainActivity, int i2, int i3) {
        this.f868a = i3;
        this.b = mainActivity;
        this.f869c = i2;
    }
}

package T;

import android.app.ActivityManager;
import android.app.AlertDialog;
import android.car.hardware.property.CarPropertyManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: T.k4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0090k4 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1034a;
    public final /* synthetic */ QuickAccessFloaterService b;

    public /* synthetic */ C0090k4(QuickAccessFloaterService quickAccessFloaterService, int i2) {
        this.f1034a = i2;
        this.b = quickAccessFloaterService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String str;
        String str2;
        String str3;
        String str4;
        Iterator it;
        String packageName;
        Field field;
        ApplicationInfo applicationInfo;
        Drawable applicationIcon;
        C0102m4 c0102m4;
        String str5 = "dlg";
        String str6 = "QuickAccessFloater";
        switch (this.f1034a) {
            case 0:
                List list = QuickAccessFloaterService.f2436j0;
                this.b.I();
                return;
            case 1:
                int intExtra = intent != null ? intent.getIntExtra("direction", 0) : 0;
                Log.i("QuickAccessFloater", "fanSwipeReceiver: broadcast recebido, direction=" + intExtra);
                if (intExtra != 0) {
                    List list2 = QuickAccessFloaterService.f2436j0;
                    this.b.c(intExtra);
                    return;
                }
                return;
            case 2:
                Log.i("QuickAccessFloater", "goToLastAppReceiver: broadcast recebido (3 dedos)");
                List list3 = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService = this.b;
                quickAccessFloaterService.getClass();
                String str7 = "goToLastApp: ";
                try {
                    Object systemService = quickAccessFloaterService.getSystemService("activity");
                    I0.f.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    final ActivityManager activityManager = (ActivityManager) systemService;
                    Class cls = Integer.TYPE;
                    Object objInvoke = ActivityManager.class.getMethod("getRecentTasks", cls, cls).invoke(activityManager, 15, 0);
                    I0.f.c(objInvoke, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
                    String packageName2 = quickAccessFloaterService.getPackageName();
                    PackageManager packageManager = quickAccessFloaterService.getPackageManager();
                    HashSet hashSet = new HashSet();
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = ((List) objInvoke).iterator();
                    while (it2.hasNext()) {
                        Object next = it2.next();
                        Object obj = next.getClass().getField("baseIntent").get(next);
                        Intent intent2 = obj instanceof Intent ? (Intent) obj : null;
                        if (intent2 != null) {
                            ComponentName component = intent2.getComponent();
                            if (component == null || (packageName = component.getPackageName()) == null) {
                                it = it2;
                            } else if (!packageName.equals(packageName2) && !packageName.equals("com.flyme.auto.launcher") && hashSet.add(packageName)) {
                                try {
                                    it = it2;
                                    try {
                                        field = next.getClass().getField("id");
                                    } catch (NoSuchFieldException unused) {
                                        field = next.getClass().getField("taskId");
                                    }
                                } catch (NoSuchFieldException unused2) {
                                    it = it2;
                                }
                                int i2 = field.getInt(next);
                                if (i2 >= 0) {
                                    try {
                                        applicationInfo = packageManager.getApplicationInfo(packageName, 0);
                                    } catch (Exception unused3) {
                                        applicationInfo = null;
                                    }
                                    if (applicationInfo != null) {
                                        try {
                                            String string = packageManager.getApplicationLabel(applicationInfo).toString();
                                            if (string != null) {
                                                packageName = string;
                                            }
                                        } catch (Exception unused4) {
                                        }
                                    }
                                    if (applicationInfo != null) {
                                        try {
                                            applicationIcon = packageManager.getApplicationIcon(applicationInfo);
                                        } catch (Exception unused5) {
                                            applicationIcon = null;
                                        }
                                    } else {
                                        applicationIcon = null;
                                    }
                                    arrayList.add(new C0096l4(i2, packageName, applicationIcon));
                                }
                                break;
                            }
                            it2 = it;
                        }
                    }
                    if (arrayList.isEmpty()) {
                        Log.i("QuickAccessFloater", "Gesto 3 dedos: nenhum app recente encontrado");
                        Toast.makeText(quickAccessFloaterService, quickAccessFloaterService.getString(R.string.k_no_recent_app_toast), 0).show();
                        return;
                    }
                    final I0.l lVar = new I0.l(0);
                    I0.k kVar = new I0.k();
                    kVar.f124a = arrayList.size();
                    List<C0096l4> listF0 = w0.i.f0(arrayList, new E(11));
                    ArrayList arrayList2 = new ArrayList(w0.k.V(listF0));
                    for (final C0096l4 c0096l4 : listF0) {
                        try {
                            final I0.l lVar2 = new I0.l(0);
                            str3 = str6;
                            str4 = str7;
                            String str8 = str5;
                            final I0.k kVar2 = kVar;
                            I0.k kVar3 = kVar;
                            try {
                                ViewGroup viewGroupW = quickAccessFloaterService.w(c0096l4.f1042c, c0096l4.b, new H0.a() { // from class: T.W3
                                    @Override // H0.a
                                    public final Object a() {
                                        ActivityManager activityManager2 = activityManager;
                                        C0096l4 c0096l5 = c0096l4;
                                        List list4 = QuickAccessFloaterService.f2436j0;
                                        try {
                                            ActivityManager.class.getMethod("removeTask", Integer.TYPE).invoke(activityManager2, Integer.valueOf(c0096l5.f1041a));
                                            Log.i("QuickAccessFloater", "Gesto 3 dedos: task removida " + c0096l5.b + " (taskId=" + c0096l5.f1041a + ')');
                                        } catch (Exception e2) {
                                            M.d0.n(e2, new StringBuilder("goToLastApp: removeTask falhou: "), "QuickAccessFloater");
                                        }
                                        Object obj2 = lVar2.b;
                                        if (obj2 == null) {
                                            I0.f.h("tileView");
                                            throw null;
                                        }
                                        ((View) obj2).setVisibility(8);
                                        I0.k kVar4 = kVar2;
                                        int i3 = kVar4.f124a - 1;
                                        kVar4.f124a = i3;
                                        if (i3 <= 0) {
                                            Object obj3 = lVar.b;
                                            if (obj3 == null) {
                                                I0.f.h("dlg");
                                                throw null;
                                            }
                                            ((AlertDialog) obj3).dismiss();
                                        }
                                        return v0.e.f4161c;
                                    }
                                }, new O1(activityManager, c0096l4, lVar, 1));
                                lVar2.b = viewGroupW;
                                arrayList2.add(viewGroupW);
                                str7 = str4;
                                str6 = str3;
                                str5 = str8;
                                kVar = kVar3;
                            } catch (Exception e2) {
                                e = e2;
                                str2 = str4;
                                str = str3;
                                M.d0.n(e, new StringBuilder(str2), str);
                                return;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            str3 = str6;
                            str4 = str7;
                            str2 = str4;
                            str = str3;
                            M.d0.n(e, new StringBuilder(str2), str);
                            return;
                        }
                    }
                    str3 = str6;
                    str4 = str7;
                    String str9 = str5;
                    ScrollView scrollView = new ScrollView(quickAccessFloaterService);
                    scrollView.addView(quickAccessFloaterService.h(arrayList2));
                    scrollView.setPadding(quickAccessFloaterService.p(20), quickAccessFloaterService.p(12), quickAccessFloaterService.p(20), quickAccessFloaterService.p(4));
                    AlertDialog.Builder builder = new AlertDialog.Builder(quickAccessFloaterService);
                    String string2 = quickAccessFloaterService.getString(R.string.k_recent_apps_title);
                    I0.f.d(string2, "getString(...)");
                    AlertDialog.Builder view = builder.setCustomTitle(quickAccessFloaterService.o(string2)).setView(scrollView);
                    str2 = null;
                    AlertDialog alertDialogCreate = view.setNegativeButton(quickAccessFloaterService.getString(R.string.common_no), (DialogInterface.OnClickListener) null).create();
                    lVar.b = alertDialogCreate;
                    try {
                        if (alertDialogCreate == null) {
                            I0.f.h(str9);
                            throw null;
                        }
                        Window window = alertDialogCreate.getWindow();
                        if (window != null) {
                            window.setType(2038);
                        }
                        Object obj2 = lVar.b;
                        if (obj2 == null) {
                            I0.f.h(str9);
                            throw null;
                        }
                        Window window2 = ((AlertDialog) obj2).getWindow();
                        if (window2 != null) {
                            window2.setBackgroundDrawableResource(R.drawable.bg_central_ex_card);
                        }
                        try {
                            Object obj3 = lVar.b;
                            if (obj3 == null) {
                                I0.f.h(str9);
                                throw null;
                            }
                            ((AlertDialog) obj3).show();
                            Object obj4 = lVar.b;
                            if (obj4 != null) {
                                QuickAccessFloaterService.n((AlertDialog) obj4);
                                return;
                            } else {
                                I0.f.h(str9);
                                throw null;
                            }
                        } catch (Exception e4) {
                            StringBuilder sb = new StringBuilder();
                            str2 = str4;
                            try {
                                sb.append(str2);
                                sb.append(e4.getMessage());
                                Log.w(str3, sb.toString());
                                return;
                            } catch (Exception e5) {
                                e = e5;
                                str = str3;
                                M.d0.n(e, new StringBuilder(str2), str);
                                return;
                            }
                        }
                    } catch (Exception e6) {
                        e = e6;
                        str = view;
                        M.d0.n(e, new StringBuilder(str2), str);
                        return;
                    }
                } catch (Exception e7) {
                    e = e7;
                    str = "QuickAccessFloater";
                    str2 = "goToLastApp: ";
                }
                break;
            case 3:
                Log.i("QuickAccessFloater", "openFavoritesReceiver: broadcast recebido (5 dedos)");
                List list4 = QuickAccessFloaterService.f2436j0;
                final QuickAccessFloaterService quickAccessFloaterService2 = this.b;
                quickAccessFloaterService2.getClass();
                try {
                    List<String> listY = Y.Y(quickAccessFloaterService2);
                    final PackageManager packageManager2 = quickAccessFloaterService2.getPackageManager();
                    ArrayList arrayList3 = new ArrayList();
                    for (String str10 : listY) {
                        try {
                            ApplicationInfo applicationInfo2 = packageManager2.getApplicationInfo(str10, 0);
                            I0.f.d(applicationInfo2, "getApplicationInfo(...)");
                            String string3 = packageManager2.getApplicationLabel(applicationInfo2).toString();
                            Drawable applicationIcon2 = packageManager2.getApplicationIcon(applicationInfo2);
                            I0.f.d(applicationIcon2, "getApplicationIcon(...)");
                            c0102m4 = new C0102m4(str10, string3, applicationIcon2);
                        } catch (Exception unused6) {
                            c0102m4 = null;
                        }
                        if (c0102m4 != null) {
                            arrayList3.add(c0102m4);
                        }
                        break;
                    }
                    List<C0102m4> listF1 = w0.i.f0(arrayList3, new E(13));
                    final I0.l lVar3 = new I0.l(0);
                    LinearLayout linearLayout = new LinearLayout(quickAccessFloaterService2);
                    linearLayout.setOrientation(1);
                    Button button = new Button(quickAccessFloaterService2);
                    button.setText("⭐ " + quickAccessFloaterService2.getString(R.string.xml_gerenciar_favoritos));
                    button.setAllCaps(false);
                    button.setTextSize(16.0f);
                    button.setBackgroundTintList(ColorStateList.valueOf(quickAccessFloaterService2.getColor(R.color.cx_accent)));
                    button.setTextColor(quickAccessFloaterService2.getColor(R.color.cx_on_accent));
                    button.setOnClickListener(new ViewOnClickListenerC0030a4(quickAccessFloaterService2, lVar3, 0));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, quickAccessFloaterService2.p(48));
                    layoutParams.bottomMargin = quickAccessFloaterService2.p(14);
                    linearLayout.addView(button, layoutParams);
                    if (listF1.isEmpty()) {
                        TextView textView = new TextView(quickAccessFloaterService2);
                        textView.setText(quickAccessFloaterService2.getString(R.string.k_favorites_empty_hint));
                        textView.setTextColor(quickAccessFloaterService2.getColor(R.color.cx_text_secondary));
                        textView.setTextSize(16.0f);
                        linearLayout.addView(textView, new LinearLayout.LayoutParams(quickAccessFloaterService2.p(474), -2));
                    } else {
                        ArrayList arrayList4 = new ArrayList(w0.k.V(listF1));
                        for (final C0102m4 c0102m5 : listF1) {
                            arrayList4.add(quickAccessFloaterService2.w(c0102m5.f1057c, c0102m5.b, null, new H0.a() { // from class: T.b4
                                @Override // H0.a
                                public final Object a() {
                                    PackageManager packageManager3 = packageManager2;
                                    C0102m4 c0102m6 = c0102m5;
                                    QuickAccessFloaterService quickAccessFloaterService3 = quickAccessFloaterService2;
                                    List list5 = QuickAccessFloaterService.f2436j0;
                                    try {
                                        Intent launchIntentForPackage = packageManager3.getLaunchIntentForPackage(c0102m6.f1056a);
                                        if (launchIntentForPackage != null) {
                                            launchIntentForPackage.addFlags(268435456);
                                            quickAccessFloaterService3.startActivity(launchIntentForPackage);
                                            Log.i("QuickAccessFloater", "Gesto 5 dedos: abrindo " + c0102m6.f1056a);
                                        }
                                    } catch (Exception e8) {
                                        M.d0.n(e8, new StringBuilder("showFavoriteAppsPicker: launch falhou: "), "QuickAccessFloater");
                                    }
                                    Object obj5 = lVar3.b;
                                    if (obj5 != null) {
                                        ((AlertDialog) obj5).dismiss();
                                        return v0.e.f4161c;
                                    }
                                    I0.f.h("dlg");
                                    throw null;
                                }
                            }));
                        }
                        linearLayout.addView(quickAccessFloaterService2.h(arrayList4));
                    }
                    ScrollView scrollView2 = new ScrollView(quickAccessFloaterService2);
                    scrollView2.addView(linearLayout);
                    scrollView2.setPadding(quickAccessFloaterService2.p(20), quickAccessFloaterService2.p(12), quickAccessFloaterService2.p(20), quickAccessFloaterService2.p(4));
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(quickAccessFloaterService2);
                    String string4 = quickAccessFloaterService2.getString(R.string.k_favorite_apps_title);
                    I0.f.d(string4, "getString(...)");
                    AlertDialog alertDialogCreate2 = builder2.setCustomTitle(quickAccessFloaterService2.o(string4)).setView(scrollView2).setNegativeButton(quickAccessFloaterService2.getString(R.string.common_no), (DialogInterface.OnClickListener) null).create();
                    lVar3.b = alertDialogCreate2;
                    if (alertDialogCreate2 == null) {
                        I0.f.h("dlg");
                        throw null;
                    }
                    Window window3 = alertDialogCreate2.getWindow();
                    if (window3 != null) {
                        window3.setType(2038);
                    }
                    Object obj5 = lVar3.b;
                    if (obj5 == null) {
                        I0.f.h("dlg");
                        throw null;
                    }
                    Window window4 = ((AlertDialog) obj5).getWindow();
                    if (window4 != null) {
                        window4.setBackgroundDrawableResource(R.drawable.bg_central_ex_card);
                    }
                    try {
                        Object obj6 = lVar3.b;
                        if (obj6 == null) {
                            I0.f.h("dlg");
                            throw null;
                        }
                        ((AlertDialog) obj6).show();
                        Object obj7 = lVar3.b;
                        if (obj7 != null) {
                            QuickAccessFloaterService.n((AlertDialog) obj7);
                            return;
                        } else {
                            I0.f.h("dlg");
                            throw null;
                        }
                    } catch (Exception e8) {
                        Log.w("QuickAccessFloater", "showFavoriteAppsPicker: " + e8.getMessage());
                        return;
                    }
                } catch (Exception e9) {
                    M.d0.n(e9, new StringBuilder("showFavoriteAppsPicker: "), "QuickAccessFloater");
                    return;
                }
            case 4:
                Log.i("QuickAccessFloater", "rearCameraReceiver: broadcast recebido (4 dedos)");
                List list5 = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService3 = this.b;
                quickAccessFloaterService3.getClass();
                try {
                    Intent intent3 = new Intent();
                    intent3.setComponent(new ComponentName("com.ecarx.parking", "com.ecarx.parking.MainAvmActivity"));
                    intent3.addFlags(268435456);
                    quickAccessFloaterService3.startActivity(intent3);
                    Log.i("QuickAccessFloater", "Gesto 4 dedos: abrindo câmera de ré (com.ecarx.parking/.MainAvmActivity)");
                    return;
                } catch (Exception e10) {
                    M.d0.n(e10, new StringBuilder("openRearCamera: "), "QuickAccessFloater");
                    return;
                }
            case 5:
                QuickAccessFloaterService quickAccessFloaterService4 = this.b;
                if (!quickAccessFloaterService4.f2459L || SystemClock.elapsedRealtime() - quickAccessFloaterService4.P < 1500) {
                    return;
                }
                quickAccessFloaterService4.Z();
                return;
            case 6:
                Log.i("QuickAccessFloater", "screenOffCommandReceiver: broadcast recebido (Ei Sapo)");
                List list6 = QuickAccessFloaterService.f2436j0;
                this.b.S(false);
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                int intExtra2 = intent != null ? intent.getIntExtra("direction", 0) : 0;
                Log.i("QuickAccessFloater", "tempSwipeReceiver: broadcast recebido, direction=" + intExtra2);
                if (intExtra2 != 0) {
                    QuickAccessFloaterService quickAccessFloaterService5 = this.b;
                    CarPropertyManager carPropertyManager = quickAccessFloaterService5.f2458K;
                    if (carPropertyManager == null) {
                        quickAccessFloaterService5.z();
                        Toast.makeText(quickAccessFloaterService5, quickAccessFloaterService5.getString(R.string.k_carservice_unavailable), 0).show();
                        return;
                    }
                    try {
                        Float fK = quickAccessFloaterService5.f2485i0;
                        float fFloatValue = (fK == null && (fK = H1.k(carPropertyManager)) == null) ? 22.0f : fK.floatValue();
                        float fN = A.b.n(Math.round(intExtra2 + fFloatValue), 17.0f, 32.0f);
                        if (fN == fFloatValue) {
                            return;
                        }
                        try {
                            carPropertyManager.setFloatProperty(624955446, 1, fN);
                            break;
                        } catch (Throwable unused7) {
                        }
                        try {
                            carPropertyManager.setFloatProperty(624955446, 4, fN);
                            break;
                        } catch (Throwable unused8) {
                        }
                        quickAccessFloaterService5.f2485i0 = Float.valueOf(fN);
                        Log.i("QuickAccessFloater", "Gesto 2 dedos: temperatura " + fFloatValue + " -> " + fN);
                        Toast.makeText(quickAccessFloaterService5, quickAccessFloaterService5.getString(R.string.k_hvac_temp_toast, Float.valueOf(fN)), 0).show();
                        return;
                    } catch (Exception e11) {
                        M.d0.n(e11, new StringBuilder("adjustHvacTemp: "), "QuickAccessFloater");
                        return;
                    }
                }
                return;
            case Response.NO /* 8 */:
                int intExtra3 = intent != null ? intent.getIntExtra("direction", 0) : 0;
                Log.i("QuickAccessFloater", "threeHSwipeReceiver: broadcast recebido, direction=" + intExtra3);
                if (intExtra3 != 0) {
                    List list7 = QuickAccessFloaterService.f2436j0;
                    QuickAccessFloaterService quickAccessFloaterService6 = this.b;
                    quickAccessFloaterService6.getClass();
                    try {
                        Object systemService2 = quickAccessFloaterService6.getSystemService("audio");
                        I0.f.c(systemService2, "null cannot be cast to non-null type android.media.AudioManager");
                        AudioManager audioManager = (AudioManager) systemService2;
                        int i3 = intExtra3 > 0 ? 87 : 88;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        audioManager.dispatchMediaKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, 0, i3, 0));
                        audioManager.dispatchMediaKeyEvent(new KeyEvent(jUptimeMillis, jUptimeMillis, 1, i3, 0));
                        Toast.makeText(quickAccessFloaterService6, intExtra3 > 0 ? "⏭ Próxima faixa" : "⏮ Faixa anterior", 0).show();
                        Log.i("QuickAccessFloater", "Gesto 3 dedos: ".concat(intExtra3 > 0 ? "próxima faixa" : "faixa anterior"));
                        return;
                    } catch (Exception e12) {
                        M.d0.n(e12, new StringBuilder("skipTrack: "), "QuickAccessFloater");
                        return;
                    }
                }
                return;
            default:
                int intExtra4 = intent != null ? intent.getIntExtra("direction", 0) : 0;
                Log.i("QuickAccessFloater", "threeVSwipeReceiver: broadcast recebido, direction=" + intExtra4);
                if (intExtra4 != 0) {
                    List list8 = QuickAccessFloaterService.f2436j0;
                    QuickAccessFloaterService quickAccessFloaterService7 = this.b;
                    quickAccessFloaterService7.getClass();
                    try {
                        Object systemService3 = quickAccessFloaterService7.getSystemService("audio");
                        I0.f.c(systemService3, "null cannot be cast to non-null type android.media.AudioManager");
                        AudioManager audioManager2 = (AudioManager) systemService3;
                        audioManager2.adjustStreamVolume(3, intExtra4 > 0 ? 1 : -1, 5);
                        int streamVolume = audioManager2.getStreamVolume(3);
                        int streamMaxVolume = audioManager2.getStreamMaxVolume(3);
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(intExtra4 > 0 ? "🔊" : "🔉");
                        sb2.append(" Volume: ");
                        sb2.append(streamVolume);
                        sb2.append('/');
                        sb2.append(streamMaxVolume);
                        Toast.makeText(quickAccessFloaterService7, sb2.toString(), 0).show();
                        StringBuilder sb3 = new StringBuilder("Gesto 3 dedos: volume ");
                        sb3.append(intExtra4 > 0 ? "+" : "-");
                        sb3.append(" (");
                        sb3.append(streamVolume);
                        sb3.append('/');
                        sb3.append(streamMaxVolume);
                        sb3.append(')');
                        Log.i("QuickAccessFloater", sb3.toString());
                        return;
                    } catch (Exception e13) {
                        M.d0.n(e13, new StringBuilder("adjustMediaVolume: "), "QuickAccessFloater");
                        return;
                    }
                }
                return;
        }
    }
}

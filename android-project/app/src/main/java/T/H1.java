package T;

import android.app.Service;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.R;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import java.util.Locale;
import java.util.Set;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public abstract class H1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f606a = {1, 4, 16, 64};
    public static final int[] b = {1, 2, 3, 4, 6};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f607c = {570491137, 570491138, 570491139};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f608d = {537003265, 537003266, 537003267};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f609e = {0, 1};
    public static final int[] f = {0, 1, 16777216};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f610g = {1, 49, 5, 0};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Set f611h = AbstractC0201a.P(570491137, 570491138, 570491139);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Set f612i = AbstractC0201a.P(537003265, 537003266, 537003267);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f613j = {0, 20, 40, 60, 80, 100};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f614k = w0.u.V(new v0.a(0, Integer.valueOf(R.drawable.widget_card_bg_000)), new v0.a(20, Integer.valueOf(R.drawable.widget_card_bg_020)), new v0.a(40, Integer.valueOf(R.drawable.widget_card_bg_040)), new v0.a(60, Integer.valueOf(R.drawable.widget_card_bg_060)), new v0.a(80, Integer.valueOf(R.drawable.widget_card_bg_080)), new v0.a(100, Integer.valueOf(R.drawable.widget_card_bg_100)));

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f615l = {0, 1};

    public static int a(Context context) {
        I0.f.e(context, "context");
        return b(A.b.o(context.getSharedPreferences("tela_preta_prefs", 0).getInt("widget_bg_opacity_pct", 100), 0, 100));
    }

    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.Object, java.util.Map] */
    public static int b(int i2) {
        Integer numValueOf;
        int[] iArr = f613j;
        if (iArr.length == 0) {
            numValueOf = null;
        } else {
            int i3 = iArr[0];
            int i4 = 1;
            int length = iArr.length - 1;
            if (length == 0) {
                numValueOf = Integer.valueOf(i3);
            } else {
                int iAbs = Math.abs(i3 - A.b.o(i2, 0, 100));
                if (1 <= length) {
                    while (true) {
                        int i5 = iArr[i4];
                        int iAbs2 = Math.abs(i5 - A.b.o(i2, 0, 100));
                        if (iAbs > iAbs2) {
                            i3 = i5;
                            iAbs = iAbs2;
                        }
                        if (i4 == length) {
                            break;
                        }
                        i4++;
                    }
                }
                numValueOf = Integer.valueOf(i3);
            }
        }
        Integer num = (Integer) f614k.get(Integer.valueOf(numValueOf != null ? numValueOf.intValue() : 100));
        return num != null ? num.intValue() : R.drawable.widget_card_bg_100;
    }

    public static void c(Service service, Integer num, Integer num2) {
        try {
            SharedPreferences.Editor editorEdit = DriveRegenFloaterService.h(service).edit();
            if (num != null) {
                editorEdit.putInt("saved_drive", num.intValue());
            }
            if (num2 != null) {
                editorEdit.putInt("saved_regen", num2.intValue());
            }
            editorEdit.apply();
            service.sendBroadcast(new Intent("UPDATE_DRIVE_REGEN_MODES"));
            int[] iArr = CentralWatchdogService.d2;
            CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
            if (centralWatchdogService == null) {
                return;
            }
            centralWatchdogService.f2190a.post(new RunnableC0139t0(centralWatchdogService, 21));
        } catch (Exception unused) {
        }
    }

    public static Boolean d(CarPropertyManager carPropertyManager) {
        I0.f.e(carPropertyManager, "cpm");
        for (int i2 : AbstractC0121q.f) {
            Boolean boolA = U.a(carPropertyManager, 358613145, i2);
            if (boolA != null) {
                return boolA;
            }
        }
        for (int i3 : AbstractC0121q.f) {
            Integer numC = U.c(carPropertyManager, 358613145, i3);
            if (numC != null) {
                return Boolean.valueOf(numC.intValue() != 0);
            }
        }
        return null;
    }

    public static Integer e(CarPropertyManager carPropertyManager) {
        I0.f.e(carPropertyManager, "cpm");
        int[] iArr = f610g;
        for (int i2 = 0; i2 < 4; i2++) {
            Integer numC = U.c(carPropertyManager, 356517120, iArr[i2]);
            if (numC != null) {
                return Integer.valueOf(numC.intValue());
            }
        }
        return null;
    }

    public static Boolean f(CarPropertyManager carPropertyManager) {
        I0.f.e(carPropertyManager, "cpm");
        return U.a(carPropertyManager, 354419975, 1);
    }

    public static Integer g(CarPropertyManager carPropertyManager, int i2, int[] iArr, Set set) {
        int length = iArr.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                return null;
            }
            Object objE = U.e(carPropertyManager, i2, iArr[i3]);
            Integer num = objE instanceof Integer ? (Integer) objE : null;
            if (num != null && set.contains(num)) {
                return num;
            }
            i3++;
        }
    }

    public static Boolean h(CarPropertyManager carPropertyManager) {
        I0.f.e(carPropertyManager, "cpm");
        return U.a(carPropertyManager, 354419988, 2);
    }

    public static Boolean i(CarPropertyManager carPropertyManager) {
        I0.f.e(carPropertyManager, "cpm");
        return U.a(carPropertyManager, 557846566, 117);
    }

    public static Integer j(CarPropertyManager carPropertyManager, int i2) {
        I0.f.e(carPropertyManager, "cpm");
        return U.c(carPropertyManager, 356517131, i2);
    }

    public static Float k(CarPropertyManager carPropertyManager) {
        I0.f.e(carPropertyManager, "cpm");
        Float fB = U.b(carPropertyManager, 624955446, 1);
        if (fB != null) {
            float fFloatValue = fB.floatValue();
            if (fFloatValue >= 17.0f && fFloatValue <= 32.0f) {
                return fB;
            }
        }
        return null;
    }

    public static Integer l(CarPropertyManager carPropertyManager) {
        I0.f.e(carPropertyManager, "cpm");
        int[] iArr = f606a;
        for (int i2 = 0; i2 < 4; i2++) {
            Integer numC = U.c(carPropertyManager, 356517121, iArr[i2]);
            if (numC != null) {
                return Integer.valueOf(numC.intValue());
            }
        }
        return null;
    }

    public static Boolean m(CarPropertyManager carPropertyManager) {
        I0.f.e(carPropertyManager, "cpm");
        for (int i2 : f615l) {
            Integer numC = U.c(carPropertyManager, 289408269, i2);
            if (numC != null) {
                return Boolean.valueOf(numC.intValue() != 0);
            }
        }
        return null;
    }

    public static Boolean n(CarPropertyManager carPropertyManager) {
        I0.f.e(carPropertyManager, "cpm");
        return U.a(carPropertyManager, 270535680, 117);
    }

    public static Context o(Context context) {
        Locale localeForLanguageTag;
        Locale locale;
        I0.f.e(context, "context");
        p031u.e eVarC = p007e.n.c();
        String languageTag = (eVarC.b() || (locale = eVarC.f4137a.f4138a.get(0)) == null) ? null : locale.toLanguageTag();
        if (languageTag == null) {
            languageTag = context.getSharedPreferences("tela_preta_prefs", 0).getString("app_language_tag", null);
        }
        if (languageTag == null || (localeForLanguageTag = Locale.forLanguageTag(languageTag)) == null) {
            localeForLanguageTag = context.getResources().getConfiguration().getLocales().get(0);
        }
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(localeForLanguageTag);
        Context contextCreateConfigurationContext = context.createConfigurationContext(configuration);
        I0.f.d(contextCreateConfigurationContext, "createConfigurationContext(...)");
        return contextCreateConfigurationContext;
    }

    public static int p(int[] iArr, Integer num, int i2) {
        int length = -1;
        int iIntValue = num != null ? num.intValue() : -1;
        int length2 = iArr.length;
        for (int i3 = 0; i3 < length2; i3++) {
            if (iIntValue == iArr[i3]) {
                length = i3;
                break;
            }
        }
        if (length < 0) {
            length = iArr.length / 2;
        }
        return A.b.o(length + i2, 0, iArr.length - 1);
    }

    public static void q(CarPropertyManager carPropertyManager, boolean z2) {
        I0.f.e(carPropertyManager, "cpm");
        for (int i2 : AbstractC0121q.f) {
            try {
                carPropertyManager.setBooleanProperty(358613145, i2, z2);
                return;
            } catch (Throwable unused) {
            }
        }
        for (int i3 : AbstractC0121q.f) {
            try {
                carPropertyManager.setIntProperty(358613145, i3, z2 ? 1 : 0);
                return;
            } catch (Throwable unused2) {
            }
        }
    }

    public static void r(Service service, CarPropertyManager carPropertyManager, int i2) {
        I0.f.e(carPropertyManager, "cpm");
        c(service, Integer.valueOf(i2), null);
        int[] iArr = f;
        for (int i3 = 0; i3 < 3; i3++) {
            try {
                carPropertyManager.setIntProperty(570491136, iArr[i3], i2);
                return;
            } catch (Throwable unused) {
            }
        }
    }

    public static void s(CarPropertyManager carPropertyManager, int i2) {
        I0.f.e(carPropertyManager, "cpm");
        int[] iArr = f610g;
        for (int i3 = 0; i3 < 4; i3++) {
            try {
                carPropertyManager.setIntProperty(356517120, iArr[i3], i2);
                return;
            } catch (Throwable unused) {
            }
        }
    }

    public static void t(CarPropertyManager carPropertyManager, boolean z2) {
        I0.f.e(carPropertyManager, "cpm");
        try {
            carPropertyManager.setBooleanProperty(557846566, 117, z2);
        } catch (Throwable unused) {
        }
    }

    public static void u(Service service, CarPropertyManager carPropertyManager, int i2) {
        I0.f.e(carPropertyManager, "cpm");
        c(service, null, Integer.valueOf(i2));
        int[] iArr = f609e;
        for (int i3 = 0; i3 < 2; i3++) {
            try {
                carPropertyManager.setIntProperty(537003264, iArr[i3], i2);
                return;
            } catch (Throwable unused) {
            }
        }
    }

    public static void v(CarPropertyManager carPropertyManager, int i2) {
        I0.f.e(carPropertyManager, "cpm");
        try {
            carPropertyManager.setIntProperty(356517121, 1, i2);
        } catch (Throwable unused) {
        }
        try {
            carPropertyManager.setIntProperty(356517121, 4, i2);
        } catch (Throwable unused2) {
        }
    }
}

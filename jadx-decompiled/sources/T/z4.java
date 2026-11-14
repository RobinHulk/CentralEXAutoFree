package T;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class z4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final I0.l f1244a = new I0.l("Stack id=(\\d+)");
    public static final I0.l b = new I0.l("taskId=(\\d+):\\s*(\\S+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final I0.l f1245c = new I0.l("mFocusedStack=ActivityStack\\{[^}]*stackId=(\\d+)");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final I0.l f1246d = new I0.l("(\\d+)x(\\d+)");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final I0.l f1247e = new I0.l("^[A-Za-z0-9._]+/[A-Za-z0-9._$]+$");
    public static volatile String f = "";

    public static String a(int i2, String str) {
        String strV = C0097m.v(str, i2, null, new C0029a3(14));
        StringBuilder sbJ = M.d0.j("adb[", str, "] => ");
        sbJ.append(O0.j.V0(200, O0.s.v0(strV, "\n", " ")));
        Log.i("SplitScreen", sbJ.toString());
        return strV;
    }

    public static void b(x4 x4Var) {
        I0.f.e(x4Var, "win");
        a(6000, "am force-stop " + x4Var.f1209c);
    }

    public static boolean c() {
        String string = O0.j.X0(a(5000, "settings get global development_settings_enabled")).toString();
        String string2 = O0.j.X0(a(5000, "settings get global enable_freeform_support")).toString();
        String string3 = O0.j.X0(a(5000, "settings get global force_resizable_activities")).toString();
        if (I0.f.a(string, "1") && I0.f.a(string2, "1") && I0.f.a(string3, "1")) {
            return false;
        }
        a(5000, "settings put global development_settings_enabled 1");
        a(5000, "settings put global enable_freeform_support 1");
        a(5000, "settings put global force_resizable_activities 1");
        return true;
    }

    public static String d() {
        String string = O0.j.X0(a(5000, "settings get global development_settings_enabled")).toString();
        String string2 = O0.j.X0(a(5000, "settings get global enable_freeform_support")).toString();
        String string3 = O0.j.X0(a(5000, "settings get global force_resizable_activities")).toString();
        boolean z2 = I0.f.a(string, "1") && I0.f.a(string2, "1") && I0.f.a(string3, "1");
        StringBuilder sbK = M.d0.k("development_settings_enabled=", string, ", enable_freeform_support=", string2, ", force_resizable_activities=");
        sbK.append(string3);
        sbK.append(z2 ? " — OK (freeform deve funcionar)" : " — FALTA ALGO (precisa dos 3 = 1, e reboot depois de mudar)");
        return sbK.toString();
    }

    public static y4 e() {
        Object objPrevious;
        O0.e eVarA;
        Object next;
        String str;
        I0.l lVar;
        String strA = a(6000, "wm size");
        if (O0.s.w0(strA, "ADB_FAIL")) {
            f = strA;
            return null;
        }
        List listN0 = N0.h.n0(O0.j.G0(strA));
        ListIterator listIterator = listN0.listIterator(listN0.size());
        do {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
        } while (!O0.j.x0((String) objPrevious, "Override size", true));
        String str2 = (String) objPrevious;
        if (str2 == null) {
            Iterator it = listN0.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                str = (String) next;
                lVar = f1246d;
                lVar.getClass();
                I0.f.e(str, "input");
            } while (!((Pattern) lVar.b).matcher(str).find());
            str2 = (String) next;
        }
        if (str2 == null || (eVarA = I0.l.a(f1246d, str2)) == null) {
            f = "wm size sem resolução: ".concat(strA);
            return null;
        }
        Integer numP0 = O0.r.p0((String) ((O0.d) eVarA.a()).get(1));
        if (numP0 == null) {
            return null;
        }
        int iIntValue = numP0.intValue();
        Integer numP1 = O0.r.p0((String) ((O0.d) eVarA.a()).get(2));
        if (numP1 == null) {
            return null;
        }
        int iIntValue2 = numP1.intValue();
        if (iIntValue <= 0 || iIntValue2 <= 0) {
            return null;
        }
        return new y4(iIntValue, iIntValue2);
    }

    public static boolean f(x4 x4Var) {
        I0.f.e(x4Var, "win");
        String strA = a(6000, "am stack list");
        if (O0.s.w0(strA, "ADB_FAIL")) {
            f = strA;
            return false;
        }
        String str = "taskId=" + x4Var.b + ":.*visible=true";
        I0.f.e(str, "pattern");
        Pattern patternCompile = Pattern.compile(str);
        I0.f.d(patternCompile, "compile(...)");
        return patternCompile.matcher(strA).find();
    }

    public static List g(Context context) {
        I0.f.e(context, "context");
        PackageManager packageManager = context.getPackageManager();
        Intent intentAddCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER");
        I0.f.d(intentAddCategory, "addCategory(...)");
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intentAddCategory, 0);
        I0.f.d(listQueryIntentActivities, "queryIntentActivities(...)");
        return N0.h.n0(new N0.c(new N0.c(new N0.c(new N0.c(new N0.c(new F0.b(listQueryIntentActivities, 3), new C0029a3(15), 3), new A.c(context, 4), 1), new C0029a3(16), 0), new A.c(packageManager, 5), 3), new E(14), 2));
    }

    public static Map h() {
        O0.e eVarA;
        String strA = a(8000, "am stack list");
        if (O0.s.w0(strA, "ADB_FAIL")) {
            f = strA;
            return w0.r.f4191a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        N0.c cVarG0 = O0.j.G0(strA);
        Iterator it = cVarG0.b.iterator();
        Integer numP0 = null;
        while (it.hasNext()) {
            String str = (String) ((H0.l) cVarG0.f398c).b(it.next());
            O0.e eVarA2 = I0.l.a(f1244a, str);
            if (eVarA2 != null) {
                numP0 = O0.r.p0((String) ((O0.d) eVarA2.a()).get(1));
            }
            if (numP0 != null && !linkedHashMap.containsKey(numP0) && (eVarA = I0.l.a(b, str)) != null) {
                linkedHashMap.put(numP0, new v0.a(Integer.valueOf(Integer.parseInt((String) ((O0.d) eVarA.a()).get(1))), ((O0.d) eVarA.a()).get(2)));
            }
        }
        return linkedHashMap;
    }

    public static x4 i(String str, String str2, w4 w4Var) {
        Object next;
        I0.f.e(str, "component");
        I0.f.e(str2, "packageName");
        I0.l lVar = f1247e;
        lVar.getClass();
        x4 x4Var = null;
        if (!((Pattern) lVar.b).matcher(str).matches()) {
            f = "componente inválido: ".concat(str);
            return null;
        }
        a(6000, "am force-stop ".concat(str2));
        Thread.sleep(300L);
        String strA = a(10000, "am start -n " + str + " --windowingMode 5");
        if (O0.s.w0(strA, "ADB_FAIL") || O0.j.x0(strA, "Exception", true) || O0.j.x0(strA, "Error:", true)) {
            f = "falha ao abrir " + str + ": " + strA;
            return null;
        }
        Integer num = null;
        for (int i2 = 0; num == null && i2 < 8; i2++) {
            Thread.sleep(300L);
            Iterator it = h().entrySet().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!O0.s.w0((String) ((v0.a) ((Map.Entry) next).getValue()).b, str2.concat("/")));
            Map.Entry entry = (Map.Entry) next;
            num = entry != null ? (Integer) entry.getKey() : null;
        }
        if (num == null) {
            f = M.d0.f("não encontrei a stack de ", str2, " depois de abrir");
            return null;
        }
        v0.a aVar = (v0.a) h().get(num);
        if (aVar != null) {
            x4Var = new x4(num.intValue(), ((Number) aVar.f4155a).intValue(), str2, str);
            if (!j(x4Var, w4Var)) {
                f = "abriu mas resize falhou: " + f;
            }
        }
        return x4Var;
    }

    public static boolean j(x4 x4Var, w4 w4Var) {
        I0.f.e(x4Var, "win");
        String strA = a(8000, "am task resize " + x4Var.b + ' ' + w4Var.f1196a + ' ' + w4Var.b + ' ' + w4Var.f1197c + ' ' + w4Var.f1198d);
        if (O0.s.w0(strA, "ADB_FAIL") || O0.j.x0(strA, "Exception", false)) {
            f = strA;
            Log.w("SplitScreen", "resize: ".concat(strA));
            return false;
        }
        Thread.sleep(200L);
        if (f(x4Var)) {
            return true;
        }
        f = "resize mandado mas a janela (taskId=" + x4Var.b + ") sumiu/ficou invisível depois";
        Log.w("SplitScreen", f);
        return false;
    }

    public static String k(Context context, String str) {
        ComponentName component;
        I0.f.e(context, "context");
        I0.f.e(str, "packageName");
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null || (component = launchIntentForPackage.getComponent()) == null) {
            return null;
        }
        return component.flattenToShortString();
    }
}

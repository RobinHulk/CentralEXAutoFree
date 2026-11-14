package T;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: T.p4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0120p4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile String f1098a = "";
    public static volatile boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v0.c f1099c = new v0.c(new C0033b1(9));

    public static String a(int i2, String str) {
        try {
            return new I1(5555).b(i2, str);
        } catch (Exception e2) {
            return "ADB_FAIL: " + e2.getMessage();
        }
    }

    public static boolean b(Context context) {
        boolean zX0;
        I0.f.e(context, "context");
        boolean z2 = false;
        b = false;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("mkdir -p ");
            sb.append(c("/data/local/tmp"));
            sb.append(' ');
            sb.append(c("/data/local/tmp/rvc_overlay"));
            sb.append(" 2>/dev/null\n");
            Iterator it = ((List) f1099c.a()).iterator();
            int i2 = 0;
            while (true) {
                boolean z3 = true;
                if (!it.hasNext()) {
                    sb.append("sync 2>/dev/null || true\n");
                    sb.append("[ -f ");
                    sb.append(c("/data/local/tmp/rvc_black_bg.png"));
                    sb.append(" ] && echo SRC_DONE || echo SRC_FAIL\n");
                    String string = sb.toString();
                    I0.f.d(string, "toString(...)");
                    String strV = C0097m.v(string, 25000, null, new C0029a3(12));
                    f1098a = "ensureSources: " + O0.j.W0(1500, O0.j.X0(strV).toString());
                    if (!O0.j.E0(strV) && !O0.j.x0(strV, "ADB_FAIL", false) && !O0.j.x0(strV, "refused", true)) {
                        z3 = false;
                    }
                    b = z3;
                    zX0 = O0.j.x0(strV, "SRC_DONE", false);
                    break;
                }
                Object next = it.next();
                int i3 = i2 + 1;
                if (i2 < 0) {
                    w0.j.U();
                    throw null;
                }
                C0114o4 c0114o4 = (C0114o4) next;
                z3 = i2 != 0 ? z2 : true;
                try {
                    File file = new File(context.getCacheDir(), "rvcstage_" + O0.j.S0(c0114o4.b, '/'));
                    InputStream inputStreamOpen = context.getAssets().open(c0114o4.f1083a);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            I0.f.b(inputStreamOpen);
                            A.b.t(inputStreamOpen, fileOutputStream);
                            A.b.m(fileOutputStream, null);
                            A.b.m(inputStreamOpen, null);
                            String str = z3 ? "2>&1 || exit 20" : "2>/dev/null || true";
                            sb.append("cp -f ");
                            String absolutePath = file.getAbsolutePath();
                            I0.f.d(absolutePath, "getAbsolutePath(...)");
                            sb.append(c(absolutePath));
                            sb.append(' ');
                            sb.append(c(c0114o4.b));
                            sb.append(' ');
                            sb.append(str);
                            sb.append('\n');
                            sb.append("chown root:root ");
                            sb.append(c(c0114o4.b));
                            sb.append(" 2>/dev/null || true\n");
                            sb.append("chmod 644 ");
                            sb.append(c(c0114o4.b));
                            sb.append(" 2>/dev/null || true\n");
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                A.b.m(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            A.b.m(inputStreamOpen, th3);
                            throw th4;
                        }
                    }
                } catch (Throwable th5) {
                    if (z3) {
                        throw th5;
                    }
                    Log.w("RvcBlackBg", "stage skip " + c0114o4.f1083a + ": " + th5.getMessage());
                }
                i2 = i3;
                z2 = false;
            }
        } catch (Throwable th6) {
            f1098a = "ensureSources exceção: " + th6.getMessage();
            M.d0.r(th6, new StringBuilder("ensureSources: "), "RvcBlackBg");
            zX0 = false;
        }
        if (!zX0) {
            Log.w("RvcBlackBg", "apply abortado — " + f1098a + " (adbUnreachable=" + b + ')');
            return false;
        }
        StringBuilder sb2 = new StringBuilder("setenforce 0 2>/dev/null || true\necho \"== rvc overlays bind ==\"\n");
        for (C0114o4 c0114o5 : (List) f1099c.a()) {
            String strC = c(c0114o5.b);
            String strC2 = c(c0114o5.f1084c);
            sb2.append("if [ -f " + strC + " ] && [ -f " + strC2 + " ]; then\n");
            StringBuilder sb3 = new StringBuilder("  _n=0; while grep -F \" ");
            M.d0.q(sb3, c0114o5.f1084c, " \" /proc/mounts >/dev/null 2>&1 && [ $_n -lt 12 ]; do umount ", strC2, " 2>/dev/null || umount -l ");
            sb3.append(strC2);
            sb3.append(" 2>/dev/null || break; _n=$((_n+1)); done\n");
            sb2.append(sb3.toString());
            sb2.append("  chown root:root " + strC + " 2>&1 || true\n");
            sb2.append("  chmod 644 " + strC + " 2>&1 || true\n");
            sb2.append("  restorecon -v " + strC + " 2>&1 || true\n");
            sb2.append("  chcon u:object_r:system_file:s0 " + strC + " 2>&1 || true\n");
            sb2.append("  restorecon -v " + strC2 + " 2>&1 || true\n");
            sb2.append("  mount --bind " + strC + ' ' + strC2 + " 2>&1 && echo \"BOUND:" + c0114o5.f1084c + "\" || echo \"FAILBIND:" + c0114o5.f1084c + "\"\n");
            StringBuilder sb4 = new StringBuilder("  chmod 644 ");
            sb4.append(strC2);
            sb4.append(" 2>&1 || true\n");
            sb2.append(sb4.toString());
            StringBuilder sb5 = new StringBuilder("  restorecon -v ");
            sb5.append(strC2);
            sb5.append(" 2>&1 || true\n");
            sb2.append(sb5.toString());
            sb2.append("fi\n");
        }
        sb2.append("setprop ctl.restart evsapp 2>/dev/null || true\nif grep -F \" /system/etc/automotive/evsapp/rvc/rvc_left_bg.png \" /proc/mounts >/dev/null 2>&1; then echo BIND_OK; else echo BIND_FAIL; fi\n");
        String string2 = sb2.toString();
        I0.f.d(string2, "toString(...)");
        String strV2 = C0097m.v(string2, 40000, null, new C0029a3(11));
        f1098a = O0.j.X0(strV2).toString();
        boolean zX1 = O0.j.x0(strV2, "BIND_OK", false);
        StringBuilder sb6 = new StringBuilder("apply: ");
        sb6.append(zX1 ? "OK" : "FAIL");
        sb6.append(" — ");
        sb6.append(O0.j.X0(O0.j.W0(300, strV2)).toString());
        Log.i("RvcBlackBg", sb6.toString());
        return zX1;
    }

    public static String c(String str) {
        return "'" + O0.s.v0(str, "'", "'\\''") + '\'';
    }

    public static boolean d(Context context) {
        I0.f.e(context, "context");
        StringBuilder sb = new StringBuilder("echo \"== rvc overlays unbind ==\"\n");
        for (C0114o4 c0114o4 : (List) f1099c.a()) {
            String strC = c(c0114o4.f1084c);
            StringBuilder sb2 = new StringBuilder("_n=0; while grep -F \" ");
            M.d0.q(sb2, c0114o4.f1084c, " \" /proc/mounts >/dev/null 2>&1 && [ $_n -lt 12 ]; do umount ", strC, " 2>/dev/null || umount -l ");
            sb2.append(strC);
            sb2.append(" 2>/dev/null || break; _n=$((_n+1)); done\n");
            sb.append(sb2.toString());
            sb.append("restorecon -v " + strC + " 2>/dev/null || true\n");
        }
        sb.append("setprop ctl.restart evsapp 2>/dev/null || true\ngrep -F \" /system/etc/automotive/evsapp/rvc/rvc_left_bg.png \" /proc/mounts >/dev/null 2>&1 && echo AINDA_MONTADO || echo LIVRE\n");
        String string = sb.toString();
        I0.f.d(string, "toString(...)");
        String strA = a(25000, string);
        boolean zX0 = O0.j.x0(strA, "LIVRE", false);
        StringBuilder sb3 = new StringBuilder("remove: ");
        sb3.append(zX0 ? "OK" : "FAIL");
        sb3.append(" — ");
        sb3.append(O0.j.X0(O0.j.W0(120, strA)).toString());
        Log.i("RvcBlackBg", sb3.toString());
        return zX0;
    }
}

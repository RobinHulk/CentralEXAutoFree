package T;

import android.content.ContextWrapper;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class L3 {
    public static volatile File b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final L3 f671a = new L3();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SimpleDateFormat f672c = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US);

    public static void a(ContextWrapper contextWrapper) {
        File filesDir;
        if (b != null) {
            return;
        }
        try {
            filesDir = contextWrapper.getExternalFilesDir(null);
            if (filesDir == null) {
                filesDir = contextWrapper.getFilesDir();
            }
        } catch (Throwable unused) {
            filesDir = contextWrapper.getFilesDir();
        }
        b = filesDir;
    }

    public final synchronized void b(String str, String str2) {
        I0.f.e(str2, "msg");
        Log.i(str, str2);
        try {
            File file = b;
            if (file == null) {
                file = new File("/data/local/tmp/fixes");
            }
            File file2 = new File(file, "central_events.log");
            if (file2.exists() && file2.length() > 262144) {
                try {
                    try {
                        String strB0 = A.b.b0(file2);
                        int length = strB0.length() / 2;
                        int iC0 = O0.j.C0(strB0, '\n', length, false, 4);
                        if (iC0 >= 0) {
                            length = iC0 + 1;
                        }
                        String strSubstring = strB0.substring(length);
                        I0.f.d(strSubstring, "substring(...)");
                        A.b.k0(file2, "== log podado (mantida a metade mais recente) ==\n".concat(strSubstring));
                    } catch (Throwable unused) {
                        file2.delete();
                    }
                } catch (Throwable unused2) {
                }
            }
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.isDirectory()) {
                parentFile.mkdirs();
            }
            String str3 = f672c.format(new Date()) + " [" + str + "] " + str2 + '\n';
            Charset charset = O0.a.f412a;
            I0.f.e(str3, "text");
            I0.f.e(charset, "charset");
            FileOutputStream fileOutputStream = new FileOutputStream(file2, true);
            try {
                A.b.l0(fileOutputStream, str3, charset);
                A.b.m(fileOutputStream, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    A.b.m(fileOutputStream, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            StringBuilder sb = new StringBuilder("não consegui gravar em ");
            File file3 = b;
            if (file3 == null) {
                file3 = new File("/data/local/tmp/fixes");
            }
            sb.append(new File(file3, "central_events.log").getAbsolutePath());
            sb.append(": ");
            sb.append(th3.getMessage());
            Log.w("PersistLog", sb.toString());
        }
    }
}

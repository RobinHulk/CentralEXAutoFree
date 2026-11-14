package T;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f629a;
    public static final Handler b = new Handler(Looper.getMainLooper());

    public static void a(Context context, SharedPreferences sharedPreferences) {
        I0.f.e(context, "context");
        if (f629a) {
            return;
        }
        if (sharedPreferences.getBoolean("device_banned", false) && sharedPreferences.getBoolean("device_ban_avisado", false)) {
            return;
        }
        f629a = true;
        new Thread(new G(sharedPreferences, context, 0)).start();
    }

    public static String b(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        String upperCase = O0.j.X0(str).toString().toUpperCase(Locale.ROOT);
        I0.f.d(upperCase, "toUpperCase(...)");
        byte[] bytes = "aaexinstall.ban.2026".concat(upperCase).getBytes(O0.a.f412a);
        I0.f.d(bytes, "getBytes(...)");
        byte[] bArrDigest = messageDigest.digest(bytes);
        I0.f.d(bArrDigest, "digest(...)");
        return w0.h.X(bArrDigest, new C0103n(1));
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v4 */
    public static String c() {
        HttpURLConnection httpURLConnection;
        StringBuilder sb = O0.j.y0("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/banlist.json") ? new StringBuilder("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/banlist.json&t=") : new StringBuilder("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/banlist.json?t=");
        sb.append(System.currentTimeMillis());
        String string = sb.toString();
        ?? r2 = 0;
        try {
            try {
                URLConnection uRLConnectionOpenConnection = new URL(string).openConnection();
                I0.f.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(15000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestProperty("Cache-Control", "no-cache, no-store");
                try {
                    if (httpURLConnection.getResponseCode() != 200) {
                        try {
                            httpURLConnection.disconnect();
                        } catch (Exception unused) {
                        }
                        return null;
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    I0.f.d(inputStream, "getInputStream(...)");
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, O0.a.f412a), 8192);
                    try {
                        String strA0 = A.b.a0(bufferedReader);
                        A.b.m(bufferedReader, null);
                        try {
                            httpURLConnection.disconnect();
                        } catch (Exception unused2) {
                        }
                        return strA0;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            A.b.m(bufferedReader, th);
                            throw th2;
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    Log.d("BanChecker", "httpGet: " + e.getMessage());
                    if (httpURLConnection == null) {
                        return null;
                    }
                    try {
                        httpURLConnection.disconnect();
                        return null;
                    } catch (Exception unused3) {
                        return null;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                r2 = string;
                if (r2 != 0) {
                    try {
                        r2.disconnect();
                    } catch (Exception unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            httpURLConnection = null;
        } catch (Throwable th4) {
            th = th4;
            if (r2 != 0) {
                r2.disconnect();
            }
            throw th;
        }
    }
}

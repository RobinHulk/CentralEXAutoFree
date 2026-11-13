package T;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes.dex */
public abstract class E3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile boolean f552a;
    public static volatile boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Handler f553c = new Handler(Looper.getMainLooper());

    public static void a(Context context, SharedPreferences sharedPreferences) {
        I0.f.e(context, "context");
        if (f552a || b) {
            return;
        }
        f552a = true;
        new Thread(new G(sharedPreferences, context.getApplicationContext(), 1)).start();
    }

    public static int b(Context context, int i2) {
        return (int) (i2 * context.getResources().getDisplayMetrics().density);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static String c() throws Throwable {
        HttpURLConnection httpURLConnection;
        HttpsURLConnection httpsURLConnection = 0;
        try {
            try {
                URLConnection uRLConnectionOpenConnection = new URL("https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/messages.json").openConnection();
                I0.f.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                httpURLConnection.setConnectTimeout(15000);
                httpURLConnection.setReadTimeout(15000);
                httpURLConnection.setRequestMethod("GET");
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
                    Log.d("MsgMgr", "httpGet: " + e.getMessage());
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
                httpsURLConnection = "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/messages.json";
                if (httpsURLConnection != 0) {
                    try {
                        httpsURLConnection.disconnect();
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
            if (httpsURLConnection != 0) {
                httpsURLConnection.disconnect();
            }
            throw th;
        }
    }

    public static GradientDrawable d(Context context, int i2, int i3, Integer num, int i4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(i2);
        gradientDrawable.setCornerRadius(b(context, i3));
        if (num != null && i4 > 0) {
            gradientDrawable.setStroke(b(context, i4), num.intValue());
        }
        return gradientDrawable;
    }
}

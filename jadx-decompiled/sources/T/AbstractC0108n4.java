package T;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.Settings;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: renamed from: T.n4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0108n4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f1073a = Executors.newSingleThreadExecutor();
    public static final Set b = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile Proxy f1074c;

    public static Bitmap a(Context context, String str) throws IOException {
        URLConnection uRLConnectionOpenConnection;
        if (!O0.s.w0(str, "http://") && !O0.s.w0(str, "https://")) {
            try {
                InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(Uri.parse(str));
                if (inputStreamOpenInputStream == null) {
                    return null;
                }
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream);
                    A.b.m(inputStreamOpenInputStream, null);
                    return bitmapDecodeStream;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        A.b.m(inputStreamOpenInputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                M.d0.r(th3, M.d0.j("content:// '", str, "' sem acesso: "), "RemoteArtwork");
                return null;
            }
        }
        URL url = new URL(str);
        Proxy proxy = f1074c;
        if (proxy == null || (uRLConnectionOpenConnection = url.openConnection(proxy)) == null) {
            uRLConnectionOpenConnection = url.openConnection();
        }
        I0.f.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(6000);
        httpURLConnection.setReadTimeout(6000);
        httpURLConnection.setRequestProperty("User-Agent", "TelaPretaCentral-MediaBridge (com.ex.auto)");
        try {
            if (httpURLConnection.getResponseCode() != 200) {
                Log.w("RemoteArtwork", "HTTP " + httpURLConnection.getResponseCode() + " p/ " + str);
                httpURLConnection.disconnect();
                return null;
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                Bitmap bitmapDecodeStream2 = BitmapFactory.decodeStream(inputStream);
                A.b.m(inputStream, null);
                httpURLConnection.disconnect();
                return bitmapDecodeStream2;
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    A.b.m(inputStream, th4);
                    throw th5;
                }
            }
        } catch (Throwable th6) {
            httpURLConnection.disconnect();
            throw th6;
        }
    }

    public static void b(Context context, String str, H0.l lVar) {
        I0.f.e(context, "context");
        if (b.add(str)) {
            f1073a.execute(new RunnableC0168z(context.getApplicationContext(), str, lVar, 17));
        }
    }

    public static void c(Context context) {
        String string;
        I0.f.e(context, "context");
        Proxy proxy = null;
        try {
            string = Settings.Global.getString(context.getContentResolver(), "http_proxy");
        } catch (Throwable unused) {
            string = null;
        }
        if (string != null && !O0.j.E0(string) && O0.j.x0(string, ":", false)) {
            try {
                String string2 = O0.j.X0(O0.j.T0(string, ":")).toString();
                int i2 = Integer.parseInt(O0.j.X0(O0.j.T0(O0.j.R0(string, ":"), ";")).toString());
                if (string2.length() > 0) {
                    proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(string2, i2));
                }
            } catch (Throwable unused2) {
            }
        }
        f1074c = proxy;
    }
}

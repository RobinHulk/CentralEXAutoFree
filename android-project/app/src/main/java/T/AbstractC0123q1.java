package T;

import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.util.Base64;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.UUID;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;

/* JADX INFO: renamed from: T.q1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0123q1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f1105a;
    public static final byte[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final byte[] f1106c;

    static {
        byte[] bArrDecode = Base64.decode("paVmNcV6WpW+wBhwDnXrMiXVhL7RxhHvjPq93iN5tws=", 0);
        I0.f.d(bArrDecode, "decode(...)");
        f1105a = bArrDecode;
        b = new byte[]{-49, -51, 75, 86, -32, 21, -33, -43, -110, -124, -50, -31, 113, -47, 105, 111, 103, 98, 25, 96, -78, 79, 79, -7, 57, -89, -53, 19, -90, -64, -84, -19, -120, -86, 11, 122, -117, 106, 41, -124, 20, -36, 72, 114, 40, -44, -57, -32, -100, 122, -127, -10, -23, -51, 58, -2, -24, -112, 86, -82, 36, -2, 39, 124};
        f1106c = new byte[]{-83, -7, 42, 101, -41, 32, -67, -19, -90, -68, -84, -39, 71, -28, 81, 11, 84, 4, 47, 2, -123, 45, 126, -56, 0, -59, -88, 32, -109, -7, -103, -114, -80, -99, 50, 79, -18, 83, 74, -79, 114, -71, 124, 75, 24, -28, -16, -46, -91, 72, -79, -49, -40, -12, 12, -104, -116, -11, 53, -54, 17, -58, 68, 78};
    }

    public static C0117p1 a(ContextWrapper contextWrapper, SharedPreferences sharedPreferences, String str, long j2) {
        String string;
        String strOptString = "?";
        I0.f.e(contextWrapper, "context");
        String strB = b("sys.ecarx.xdsn");
        if (O0.j.E0(strB)) {
            Y0 y0 = Y0.f854a;
            strB = Y0.a();
        }
        String strB2 = b("sys.ecarx.vin");
        if (O0.j.E0(strB) || O0.j.E0(strB2)) {
            throw new IllegalStateException("identidade do aparelho indisponivel (xdsn/vin)");
        }
        String str2 = "stable";
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("xdsn", strB);
        jSONObject.put("vin", strB2);
        jSONObject.put("serial", b("ro.serialno"));
        jSONObject.put("pkg", str);
        jSONObject.put("versionCode", j2);
        jSONObject.put("channel", str2);
        jSONObject.put("nonce", UUID.randomUUID().toString());
        jSONObject.put("lang", Locale.getDefault().toLanguageTag());
        jSONObject.put("huBuild", b("ro.build.version.incremental"));
        jSONObject.put("huDisplay", b("ro.build.display.id"));
        try {
            String str3 = contextWrapper.getPackageManager().getPackageInfo("com.njda.aauto", 0).versionName;
            string = str3 != null ? O0.j.X0(str3).toString() : null;
            if (string == null) {
                string = "";
            }
        } catch (Throwable unused) {
        }
        jSONObject.put("caFactory", string);
        String string2 = jSONObject.toString();
        I0.f.d(string2, "toString(...)");
        byte[] bytes = string2.getBytes(O0.a.f412a);
        I0.f.d(bytes, "getBytes(...)");
        URLConnection uRLConnectionOpenConnection = new URL("https://exsapo-dist.appsdecarro.workers.dev/v1/manifest").openConnection();
        I0.f.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty("content-type", "application/json");
        byte[] bArr = b;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr2[i2] = (byte) (bArr[i2] ^ f1106c[i2]);
        }
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(bArr2, "HmacSHA256"));
        byte[] bArrDoFinal = mac.doFinal(bytes);
        I0.f.d(bArrDoFinal, "doFinal(...)");
        httpURLConnection.setRequestProperty("x-sig", w0.h.X(bArrDoFinal, new C0103n(17)));
        httpURLConnection.setRequestProperty("User-Agent", "CentralEXAuto/" + j2 + " (IHU629G)");
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                outputStream.write(bytes);
                A.b.m(outputStream, null);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200) {
                    try {
                        InputStream errorStream = httpURLConnection.getErrorStream();
                        I0.f.d(errorStream, "getErrorStream(...)");
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, O0.a.f412a), 8192);
                        try {
                            String strA0 = A.b.a0(bufferedReader);
                            A.b.m(bufferedReader, null);
                            strOptString = new JSONObject(strA0).optString("error", "?");
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                A.b.m(bufferedReader, th);
                                throw th2;
                            }
                        }
                    } catch (Exception unused2) {
                    }
                    I0.f.b(strOptString);
                    throw new C0111o1("exsapo-dist HTTP " + responseCode + ": " + strOptString);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                I0.f.d(inputStream, "getInputStream(...)");
                Charset charset = O0.a.f412a;
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, charset), 8192);
                try {
                    String strA1 = A.b.a0(bufferedReader2);
                    A.b.m(bufferedReader2, null);
                    JSONObject jSONObject2 = new JSONObject(strA1);
                    String string3 = jSONObject2.getString("payload");
                    byte[] bArrDecode = Base64.decode(jSONObject2.getString("sig"), 0);
                    BigInteger bigInteger = AbstractC0045d1.f925a;
                    byte[] bArr3 = f1105a;
                    I0.f.b(string3);
                    byte[] bytes2 = string3.getBytes(charset);
                    I0.f.d(bytes2, "getBytes(...)");
                    I0.f.b(bArrDecode);
                    if (!AbstractC0045d1.g(bArr3, bytes2, bArrDecode)) {
                        throw new IllegalStateException("assinatura do manifesto invalida — descartado");
                    }
                    JSONObject jSONObject3 = new JSONObject(string3);
                    String strOptString2 = jSONObject3.optString("channel", str2);
                    boolean zOptBoolean = jSONObject3.optBoolean("channelPinned", false);
                    sharedPreferences.edit().putString("canal_efetivo", strOptString2).putBoolean("canal_fixado_servidor", zOptBoolean).apply();
                    long j3 = jSONObject3.getLong("versionCode");
                    String strOptString3 = jSONObject3.optString("versionName", "");
                    I0.f.d(strOptString3, "optString(...)");
                    String string4 = jSONObject3.getString("url");
                    I0.f.d(string4, "getString(...)");
                    String strOptString4 = jSONObject3.optString("notes", "");
                    I0.f.d(strOptString4, "optString(...)");
                    String strOptString5 = jSONObject3.optString("sha256", "");
                    String str4 = strOptString5.length() == 64 ? strOptString5 : null;
                    I0.f.b(strOptString2);
                    C0117p1 c0117p1 = new C0117p1(j3, strOptString3, string4, strOptString4, str4, strOptString2, zOptBoolean);
                    try {
                        httpURLConnection.disconnect();
                    } catch (Exception unused3) {
                    }
                    return c0117p1;
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        A.b.m(bufferedReader2, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    A.b.m(outputStream, th5);
                    throw th6;
                }
            }
        } catch (Throwable th7) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception unused4) {
            }
            throw th7;
        }
    }

    public static String b(String str) {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            String str2 = objInvoke instanceof String ? (String) objInvoke : null;
            String string = str2 != null ? O0.j.X0(str2).toString() : null;
            return string == null ? "" : string;
        } catch (Throwable unused) {
            return "";
        }
    }
}

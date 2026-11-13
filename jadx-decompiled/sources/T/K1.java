package T;

import android.util.Log;
import com.sun.mail.imap.IMAPStore;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class K1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile Proxy f653h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile File f654i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f648a = Executors.newFixedThreadPool(2);
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f649c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f650d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap f651e = new ConcurrentHashMap();
    public static final Set f = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Set f652g = Collections.newSetFromMap(new ConcurrentHashMap());

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long[] f655j = {5000, 15000, 45000};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final I0.l f656k = new I0.l("\\[(\\d{1,2}):(\\d{1,2})(?:[.:](\\d{1,3}))?]\\s?(.*)");

    public static String a(long j2, String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder("artist_name=");
        sb.append(URLEncoder.encode(str2, "UTF-8"));
        sb.append("&track_name=");
        sb.append(URLEncoder.encode(str, "UTF-8"));
        if (j2 > 0) {
            sb.append("&duration=");
            sb.append(j2);
        }
        String strI = i("https://lrclib.net/api/get?" + ((Object) sb));
        if (strI == null) {
            return null;
        }
        String strOptString = new JSONObject(strI).optString("syncedLyrics", "");
        I0.f.b(strOptString);
        if (O0.j.E0(strOptString)) {
            return null;
        }
        return strOptString;
    }

    public static File b(String str) {
        String strValueOf;
        File file = f654i;
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes(O0.a.f412a);
            I0.f.d(bytes, "getBytes(...)");
            byte[] bArrDigest = messageDigest.digest(bytes);
            I0.f.d(bArrDigest, "digest(...)");
            strValueOf = w0.h.X(bArrDigest, new C0103n(23));
        } catch (Throwable unused) {
            strValueOf = String.valueOf(str.hashCode());
        }
        return new File(file, M.d0.g(sb, strValueOf, ".lrc"));
    }

    public static List c(String str, String str2) {
        I0.f.e(str, "title");
        I0.f.e(str2, "artist");
        String strF = f(str, str2);
        ConcurrentHashMap concurrentHashMap = b;
        List list = (List) concurrentHashMap.get(strF);
        if (list != null) {
            return list;
        }
        File fileB = b(strF);
        if (fileB == null || !fileB.exists()) {
            return null;
        }
        try {
            String strB0 = A.b.b0(fileB);
            ArrayList arrayListH = h(strB0);
            if (arrayListH.isEmpty()) {
                return null;
            }
            concurrentHashMap.put(strF, arrayListH);
            f649c.put(strF, strB0);
            fileB.setLastModified(System.currentTimeMillis());
            return arrayListH;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void d(final String str, final String str2, final long j2, final H0.a aVar) {
        I0.f.e(str, "title");
        I0.f.e(str2, "artist");
        if (O0.j.E0(str)) {
            return;
        }
        final String strF = f(str, str2);
        if (b.containsKey(strF)) {
            return;
        }
        Set set = f652g;
        if (set.contains(strF)) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = f650d;
        Integer num = (Integer) concurrentHashMap.get(strF);
        final int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue >= 4) {
            set.add(strF);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Long l2 = (Long) f651e.get(strF);
        if (jCurrentTimeMillis >= (l2 != null ? l2.longValue() : 0L) && f.add(strF)) {
            concurrentHashMap.put(strF, Integer.valueOf(iIntValue + 1));
            f648a.execute(new Runnable() { // from class: T.J1
                @Override // java.lang.Runnable
                public final void run() {
                    String str3 = str;
                    String str4 = str2;
                    long j3 = j2;
                    String str5 = strF;
                    H0.a aVar2 = aVar;
                    Set set2 = K1.f;
                    try {
                        String strE = K1.e(j3 / ((long) IMAPStore.RESPONSE), str3, str4);
                        if (strE != null && !O0.j.E0(strE)) {
                            ArrayList arrayListH = K1.h(strE);
                            if (!arrayListH.isEmpty()) {
                                K1.b.put(str5, arrayListH);
                                K1.f649c.put(str5, strE);
                                K1.j(str5, strE);
                                aVar2.a();
                            }
                        }
                        set2.remove(str5);
                        K1.f652g.add(str5);
                    } catch (Throwable th) {
                        try {
                            long[] jArr = K1.f655j;
                            int i2 = iIntValue;
                            long jY = (i2 < 0 || i2 >= jArr.length) ? w0.h.Y(jArr) : jArr[i2];
                            K1.f651e.put(str5, Long.valueOf(System.currentTimeMillis() + jY));
                            Log.w("LyricsFetcher", "fetch '" + str3 + '/' + str4 + "' falhou (tentativa " + (i2 + 1) + "/4, nova em " + (jY / ((long) IMAPStore.RESPONSE)) + "s): " + th.getMessage());
                        } finally {
                            set2.remove(str5);
                        }
                    }
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00a7 A[EDGE_INSN: B:19:0x00a7->B:57:0x017a BREAK  A[LOOP:2: B:29:0x00fd->B:56:0x0173]] */
    /* JADX WARN: Code duplicated, block: B:80:0x01f5  */
    public static String e(long j2, String str, String str2) throws IOException {
        String strA;
        String str3;
        JSONArray jSONArrayOptJSONArray;
        String strOptString;
        String lowerCase;
        String strOptString2;
        String strA2;
        Pattern patternCompile = Pattern.compile("\\s*[\\(\\[][^)\\]]*\\b(remaster|remastered|live|ao vivo|deluxe|bonus|version|vers[ãa]o|edit|mix|mono|stereo)\\b[^)\\]]*[\\)\\]]", 66);
        I0.f.d(patternCompile, "compile(...)");
        I0.f.e(str, "input");
        String strReplaceAll = patternCompile.matcher(str).replaceAll("");
        I0.f.d(strReplaceAll, "replaceAll(...)");
        Pattern patternCompile2 = Pattern.compile("\\s*-\\s*(remaster|remastered|live|ao vivo|single version|radio edit).*$", 66);
        I0.f.d(patternCompile2, "compile(...)");
        String strReplaceAll2 = patternCompile2.matcher(strReplaceAll).replaceAll("");
        I0.f.d(strReplaceAll2, "replaceAll(...)");
        String string = O0.j.X0(strReplaceAll2).toString();
        Pattern patternCompile3 = Pattern.compile("\\s*(feat\\.?|ft\\.?|part\\.?)\\s+.*$", 66);
        I0.f.d(patternCompile3, "compile(...)");
        I0.f.e(str2, "input");
        String strReplaceAll3 = patternCompile3.matcher(str2).replaceAll("");
        I0.f.d(strReplaceAll3, "replaceAll(...)");
        String string2 = O0.j.X0((String) w0.i.Z(O0.j.O0(strReplaceAll3, new String[]{",", "&"}))).toString();
        String strA3 = a(j2, str, str2);
        if (strA3 != null) {
            return strA3;
        }
        if (j2 > 0 && (strA2 = a(0L, str, str2)) != null) {
            return strA2;
        }
        if ((!I0.f.a(string, str) || !I0.f.a(string2, str2)) && (strA = a(0L, string, string2)) != null) {
            return strA;
        }
        if (O0.j.E0(string)) {
            str3 = null;
            break;
        }
        String strI = i("https://lrclib.net/api/search?q=" + URLEncoder.encode(O0.j.E0(string2) ? string : string2 + ' ' + string, "UTF-8"));
        if (strI == null) {
            str3 = null;
            break;
        }
        try {
            JSONArray jSONArray = new JSONArray(strI);
            Locale locale = Locale.ROOT;
            String lowerCase2 = string.toLowerCase(locale);
            I0.f.d(lowerCase2, "toLowerCase(...)");
            String lowerCase3 = string2.toLowerCase(locale);
            I0.f.d(lowerCase3, "toLowerCase(...)");
            int iMin = Math.min(jSONArray.length(), 20);
            int i2 = 0;
            while (true) {
                if (i2 >= iMin) {
                    str3 = null;
                    break;
                }
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString3 = jSONObjectOptJSONObject.optString("syncedLyrics", "");
                    I0.f.b(strOptString3);
                    if (!O0.j.E0(strOptString3)) {
                        String strOptString4 = jSONObjectOptJSONObject.optString("trackName", "");
                        I0.f.d(strOptString4, "optString(...)");
                        Locale locale2 = Locale.ROOT;
                        String lowerCase4 = strOptString4.toLowerCase(locale2);
                        I0.f.d(lowerCase4, "toLowerCase(...)");
                        String strOptString5 = jSONObjectOptJSONObject.optString("artistName", "");
                        I0.f.d(strOptString5, "optString(...)");
                        String lowerCase5 = strOptString5.toLowerCase(locale2);
                        I0.f.d(lowerCase5, "toLowerCase(...)");
                        boolean z2 = true;
                        boolean z3 = !O0.j.E0(lowerCase4) && (O0.j.x0(lowerCase4, lowerCase2, false) || O0.j.x0(lowerCase2, lowerCase4, false));
                        if (!O0.j.E0(lowerCase3) && (O0.j.E0(lowerCase5) || (!O0.j.x0(lowerCase5, lowerCase3, false) && !O0.j.x0(lowerCase3, lowerCase5, false)))) {
                            z2 = false;
                        }
                        if (z3 && z2) {
                            str3 = strOptString3;
                            break;
                        }
                    } else {
                        continue;
                    }
                }
                i2++;
            }
        } catch (Throwable unused) {
        }
        if (str3 != null) {
            return str3;
        }
        if (!O0.j.E0(string)) {
            String strI2 = i("https://music.163.com/api/search/get?type=1&limit=5&s=" + URLEncoder.encode(O0.j.E0(string2) ? string : string2 + ' ' + string, "UTF-8"));
            if (strI2 != null) {
                try {
                    JSONObject jSONObjectOptJSONObject2 = new JSONObject(strI2).optJSONObject("result");
                    jSONArrayOptJSONArray = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optJSONArray("songs") : null;
                } catch (Throwable unused2) {
                }
                if (jSONArrayOptJSONArray != null) {
                    Locale locale3 = Locale.ROOT;
                    String lowerCase6 = string.toLowerCase(locale3);
                    I0.f.d(lowerCase6, "toLowerCase(...)");
                    String lowerCase7 = string2.toLowerCase(locale3);
                    I0.f.d(lowerCase7, "toLowerCase(...)");
                    int iMin2 = Math.min(jSONArrayOptJSONArray.length(), 5);
                    for (int i3 = 0; i3 < iMin2; i3++) {
                        JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i3);
                        if (jSONObjectOptJSONObject3 != null) {
                            String strOptString6 = jSONObjectOptJSONObject3.optString(IMAPStore.ID_NAME, "");
                            I0.f.d(strOptString6, "optString(...)");
                            String lowerCase8 = strOptString6.toLowerCase(Locale.ROOT);
                            I0.f.d(lowerCase8, "toLowerCase(...)");
                            if (!O0.j.E0(lowerCase8) && (O0.j.x0(lowerCase8, lowerCase6, false) || O0.j.x0(lowerCase6, lowerCase8, false))) {
                                if (!O0.j.E0(lowerCase7)) {
                                    JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject3.optJSONArray("artists");
                                    int length = jSONArrayOptJSONArray2 != null ? jSONArrayOptJSONArray2.length() : 0;
                                    int i4 = 0;
                                    while (true) {
                                        if (i4 < length) {
                                            I0.f.b(jSONArrayOptJSONArray2);
                                            JSONObject jSONObjectOptJSONObject4 = jSONArrayOptJSONArray2.optJSONObject(i4);
                                            if (jSONObjectOptJSONObject4 == null || (strOptString2 = jSONObjectOptJSONObject4.optString(IMAPStore.ID_NAME, "")) == null) {
                                                lowerCase = "";
                                            } else {
                                                lowerCase = strOptString2.toLowerCase(Locale.ROOT);
                                                I0.f.d(lowerCase, "toLowerCase(...)");
                                            }
                                            if (!O0.j.E0(lowerCase) && (O0.j.x0(lowerCase, lowerCase7, false) || O0.j.x0(lowerCase7, lowerCase, false))) {
                                            }
                                            i4++;
                                        }
                                    }
                                }
                                long jOptLong = jSONObjectOptJSONObject3.optLong("id", 0L);
                                if (jOptLong > 0) {
                                    String strI3 = i("https://music.163.com/api/song/lyric?lv=1&kv=1&tv=-1&id=" + jOptLong);
                                    if (strI3 == null) {
                                        continue;
                                    } else {
                                        try {
                                            JSONObject jSONObjectOptJSONObject5 = new JSONObject(strI3).optJSONObject("lrc");
                                            if (jSONObjectOptJSONObject5 == null || (strOptString = jSONObjectOptJSONObject5.optString("lyric", "")) == null) {
                                                strOptString = "";
                                            }
                                        } catch (Throwable unused3) {
                                        }
                                        if (O0.j.E0(strOptString)) {
                                            continue;
                                        } else {
                                            Pattern patternCompile4 = Pattern.compile("\\[\\d{1,2}:\\d{2}");
                                            I0.f.d(patternCompile4, "compile(...)");
                                            if (patternCompile4.matcher(strOptString).find()) {
                                                return strOptString;
                                            }
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public static String f(String str, String str2) {
        String lowerCase = (O0.j.X0(str).toString() + '|' + O0.j.X0(str2).toString()).toLowerCase(Locale.ROOT);
        I0.f.d(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    public static String g(List list, long j2) {
        Iterator it = list.iterator();
        String str = null;
        while (it.hasNext()) {
            v0.a aVar = (v0.a) it.next();
            long jLongValue = ((Number) aVar.f4155a).longValue();
            String str2 = (String) aVar.b;
            if (jLongValue > j2) {
                break;
            }
            str = str2;
        }
        return str;
    }

    public static ArrayList h(String str) {
        CharSequence charSequenceSubSequence;
        long j2;
        ArrayList arrayList = new ArrayList();
        Iterator it = O0.j.O0(str, new String[]{"\n"}).iterator();
        while (true) {
            int i2 = 1;
            if (!it.hasNext()) {
                break;
            }
            O0.e eVarA = I0.l.a(f656k, O0.j.X0((String) it.next()).toString());
            if (eVarA != null) {
                long j3 = Long.parseLong((String) ((O0.d) eVarA.a()).get(1));
                long j4 = Long.parseLong((String) ((O0.d) eVarA.a()).get(2));
                String str2 = (String) ((O0.d) eVarA.a()).get(3);
                if (str2.length() == 0) {
                    j2 = 0;
                } else {
                    if (3 <= str2.length()) {
                        charSequenceSubSequence = str2.subSequence(0, str2.length());
                    } else {
                        StringBuilder sb = new StringBuilder(3);
                        sb.append((CharSequence) str2);
                        int length = 3 - str2.length();
                        if (1 <= length) {
                            while (true) {
                                sb.append('0');
                                if (i2 == length) {
                                    break;
                                }
                                i2++;
                            }
                        }
                        charSequenceSubSequence = sb;
                    }
                    j2 = Long.parseLong(O0.j.V0(3, charSequenceSubSequence.toString()));
                }
                arrayList.add(new v0.a(Long.valueOf((j4 * ((long) IMAPStore.RESPONSE)) + (j3 * ((long) 60000)) + j2), O0.j.X0((String) ((O0.d) eVarA.a()).get(4)).toString()));
            }
        }
        if (arrayList.size() > 1) {
            w0.n.W(arrayList, new E(4));
        }
        return arrayList;
    }

    public static String i(String str) throws IOException {
        URLConnection uRLConnectionOpenConnection;
        URL url = new URL(str);
        Proxy proxy = f653h;
        if (proxy == null || (uRLConnectionOpenConnection = url.openConnection(proxy)) == null) {
            uRLConnectionOpenConnection = url.openConnection();
        }
        I0.f.c(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(5000);
        httpURLConnection.setReadTimeout(5000);
        httpURLConnection.setRequestProperty("User-Agent", "TelaPretaCentral-MediaBridge (com.ex.auto)");
        if (O0.j.x0(str, "music.163.com", false)) {
            httpURLConnection.setRequestProperty("Referer", "https://music.163.com/");
        }
        try {
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 404) {
                httpURLConnection.disconnect();
                return null;
            }
            if (responseCode != 200) {
                throw new IOException("lrclib respondeu HTTP " + responseCode);
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            I0.f.d(inputStream, "getInputStream(...)");
            String strA0 = A.b.a0(new BufferedReader(new InputStreamReader(inputStream, O0.a.f412a), 8192));
            httpURLConnection.disconnect();
            return strA0;
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
    }

    public static void j(String str, String str2) {
        File[] fileArrListFiles;
        File fileB = b(str);
        if (fileB == null) {
            return;
        }
        try {
            A.b.k0(fileB, str2);
            File file = f654i;
            if (file == null || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 5000) {
                return;
            }
            Iterator it = w0.i.g0(w0.h.Z(fileArrListFiles, new E(5)), fileArrListFiles.length - 5000).iterator();
            while (it.hasNext()) {
                ((File) it.next()).delete();
            }
        } catch (Throwable unused) {
        }
    }
}

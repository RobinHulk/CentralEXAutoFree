package t0;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f4125d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashMap f4126a = new HashMap();
    public HashMap b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap f4127c = new HashMap();

    static {
        try {
            f4125d = Boolean.getBoolean("javax.activation.addreverse");
        } catch (Throwable unused) {
        }
    }

    public c(String str) throws Throwable {
        if (b.a()) {
            b.b("new MailcapFile: file " + str);
        }
        FileReader fileReader = null;
        try {
            FileReader fileReader2 = new FileReader(str);
            try {
                d(new BufferedReader(fileReader2));
                try {
                    fileReader2.close();
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                th = th;
                fileReader = fileReader2;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static HashMap c(Map map, Map map2) {
        HashMap map3 = new HashMap(map);
        for (String str : map2.keySet()) {
            List list = (List) map3.get(str);
            if (list == null) {
                map3.put(str, map2.get(str));
            } else {
                List list2 = (List) map2.get(str);
                ArrayList arrayList = new ArrayList(list);
                arrayList.addAll(list2);
                map3.put(str, arrayList);
            }
        }
        return map3;
    }

    public static void f(int i2, int i3, String str) throws d {
        throw new d("Encountered a " + e.b(i3) + " token (" + str + ") while expecting a " + e.b(i2) + " token.");
    }

    public static void g(int i2, int i3, String str) throws d {
        throw new d("Encountered a " + e.b(i3) + " token (" + str + ") while expecting a " + e.b(i2) + " or a " + e.b(59) + " token.");
    }

    public final Map a(String str) {
        HashMap map = this.b;
        Map map2 = (Map) map.get(str);
        int iIndexOf = str.indexOf(47) + 1;
        if (str.substring(iIndexOf).equals("*")) {
            return map2;
        }
        Map map3 = (Map) map.get(str.substring(0, iIndexOf) + "*");
        if (map3 != null) {
            return map2 != null ? c(map2, map3) : map3;
        }
        return map2;
    }

    public final Map b(String str) {
        HashMap map = this.f4126a;
        Map map2 = (Map) map.get(str);
        int iIndexOf = str.indexOf(47) + 1;
        if (str.substring(iIndexOf).equals("*")) {
            return map2;
        }
        Map map3 = (Map) map.get(str.substring(0, iIndexOf) + "*");
        if (map3 != null) {
            return map2 != null ? c(map2, map3) : map3;
        }
        return map2;
    }

    public final void d(Reader reader) throws IOException {
        String strTrim;
        BufferedReader bufferedReader = new BufferedReader(reader);
        while (true) {
            String strSubstring = null;
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return;
                }
                strTrim = line.trim();
                try {
                    if (strTrim.charAt(0) != '#') {
                        if (strTrim.charAt(strTrim.length() - 1) == '\\') {
                            if (strSubstring != null) {
                                strSubstring = strSubstring + strTrim.substring(0, strTrim.length() - 1);
                            } else {
                                strSubstring = strTrim.substring(0, strTrim.length() - 1);
                            }
                        } else if (strSubstring != null) {
                            break;
                        } else {
                            e(strTrim);
                        }
                    }
                } catch (StringIndexOutOfBoundsException | d unused) {
                }
            }
            try {
                e(strSubstring + strTrim);
            } catch (d unused2) {
            }
        }
    }

    public final void e(String str) throws d {
        String lowerCase;
        int iC;
        boolean z2;
        e eVar = new e();
        eVar.f4128a = str;
        eVar.b = 0;
        eVar.f4129c = str.length();
        eVar.f4130d = 1;
        eVar.f4131e = "";
        eVar.f = false;
        if (b.a()) {
            b.b("parse: ".concat(str));
        }
        int iC2 = eVar.c();
        if (iC2 != 2) {
            f(2, iC2, eVar.f4131e);
            throw null;
        }
        String str2 = eVar.f4131e;
        Locale locale = Locale.ENGLISH;
        String lowerCase2 = str2.toLowerCase(locale);
        int iC3 = eVar.c();
        if (iC3 != 47 && iC3 != 59) {
            g(47, iC3, eVar.f4131e);
            throw null;
        }
        if (iC3 == 47) {
            int iC4 = eVar.c();
            if (iC4 != 2) {
                f(2, iC4, eVar.f4131e);
                throw null;
            }
            lowerCase = eVar.f4131e.toLowerCase(locale);
            iC3 = eVar.c();
        } else {
            lowerCase = "*";
        }
        String str3 = lowerCase2 + "/" + lowerCase;
        if (b.a()) {
            b.b("  Type: " + str3);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (iC3 != 59) {
            f(59, iC3, eVar.f4131e);
            throw null;
        }
        eVar.f = true;
        int iC5 = eVar.c();
        eVar.f = false;
        if (iC5 != 2 && iC5 != 59) {
            g(2, iC5, eVar.f4131e);
            throw null;
        }
        if (iC5 == 2) {
            HashMap map = this.f4127c;
            List list = (List) map.get(str3);
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(str);
                map.put(str3, arrayList);
            } else {
                list.add(str);
            }
        }
        if (iC5 != 59) {
            iC5 = eVar.c();
        }
        if (iC5 != 59) {
            if (iC5 == 5) {
                return;
            }
            g(5, iC5, eVar.f4131e);
            throw null;
        }
        boolean z3 = false;
        do {
            int iC6 = eVar.c();
            if (iC6 != 2) {
                f(2, iC6, eVar.f4131e);
                throw null;
            }
            String lowerCase3 = eVar.f4131e.toLowerCase(Locale.ENGLISH);
            iC = eVar.c();
            if (iC != 61 && iC != 59 && iC != 5) {
                String str4 = eVar.f4131e;
                if (b.a()) {
                    b.b("PARSE ERROR: Encountered a " + e.b(iC) + " token (" + str4 + ") while expecting a " + e.b(61) + ", a " + e.b(59) + ", or a " + e.b(5) + " token.");
                }
                throw new d("Encountered a " + e.b(iC) + " token (" + str4 + ") while expecting a " + e.b(61) + ", a " + e.b(59) + ", or a " + e.b(5) + " token.");
            }
            z2 = f4125d;
            if (iC == 61) {
                eVar.f = true;
                int iC7 = eVar.c();
                eVar.f = false;
                if (iC7 != 2) {
                    f(2, iC7, eVar.f4131e);
                    throw null;
                }
                String str5 = eVar.f4131e;
                if (lowerCase3.startsWith("x-java-")) {
                    String strSubstring = lowerCase3.substring(7);
                    if (strSubstring.equals("fallback-entry") && str5.equalsIgnoreCase("true")) {
                        z3 = true;
                    } else {
                        if (b.a()) {
                            b.b("    Command: " + strSubstring + ", Class: " + str5);
                        }
                        List arrayList2 = (List) linkedHashMap.get(strSubstring);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                            linkedHashMap.put(strSubstring, arrayList2);
                        }
                        if (z2) {
                            arrayList2.add(0, str5);
                        } else {
                            arrayList2.add(str5);
                        }
                    }
                }
                iC = eVar.c();
            }
        } while (iC == 59);
        HashMap map2 = z3 ? this.b : this.f4126a;
        Map map3 = (Map) map2.get(str3);
        if (map3 == null) {
            map2.put(str3, linkedHashMap);
            return;
        }
        if (b.a()) {
            b.b("Merging commands for type " + str3);
        }
        for (String str6 : map3.keySet()) {
            List list2 = (List) map3.get(str6);
            List<String> list3 = (List) linkedHashMap.get(str6);
            if (list3 != null) {
                for (String str7 : list3) {
                    if (!list2.contains(str7)) {
                        if (z2) {
                            list2.add(0, str7);
                        } else {
                            list2.add(str7);
                        }
                    }
                }
            }
        }
        for (String str8 : linkedHashMap.keySet()) {
            if (!map3.containsKey(str8)) {
                map3.put(str8, (List) linkedHashMap.get(str8));
            }
        }
    }

    public c(InputStream inputStream) throws IOException {
        if (b.a()) {
            b.b("new MailcapFile: InputStream");
        }
        d(new BufferedReader(new InputStreamReader(inputStream, "iso-8859-1")));
    }
}

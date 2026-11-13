package t0;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Hashtable;
import java.util.StringTokenizer;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Hashtable f4133a = new Hashtable();

    public g(String str) {
        FileReader fileReader = new FileReader(new File(str));
        try {
            a(new BufferedReader(fileReader));
        } finally {
            try {
                fileReader.close();
            } catch (IOException unused) {
            }
        }
    }

    public final void a(BufferedReader bufferedReader) throws IOException {
        String strSubstring;
        String line;
        loop0: while (true) {
            strSubstring = null;
            while (true) {
                line = bufferedReader.readLine();
                if (line == null) {
                    break loop0;
                }
                if (strSubstring != null) {
                    line = strSubstring.concat(line);
                }
                int length = line.length();
                if (line.length() <= 0) {
                    break;
                }
                int i2 = length - 1;
                if (line.charAt(i2) != '\\') {
                    break;
                } else {
                    strSubstring = line.substring(0, i2);
                }
            }
            b(line);
        }
        if (strSubstring != null) {
            b(strSubstring);
        }
    }

    public final void b(String str) {
        String strTrim = str.trim();
        if (strTrim.length() == 0 || strTrim.charAt(0) == '#') {
            return;
        }
        int iIndexOf = strTrim.indexOf(61);
        Hashtable hashtable = this.f4133a;
        if (iIndexOf <= 0) {
            StringTokenizer stringTokenizer = new StringTokenizer(strTrim);
            if (stringTokenizer.countTokens() == 0) {
                return;
            }
            String strNextToken = stringTokenizer.nextToken();
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken2 = stringTokenizer.nextToken();
                f fVar = new f(strNextToken, strNextToken2);
                hashtable.put(strNextToken2, fVar);
                if (b.a()) {
                    b.b("Added: " + fVar.toString());
                }
            }
            return;
        }
        a aVar = new a();
        aVar.f4122d = new Vector();
        aVar.f4120a = 0;
        aVar.f4121c = strTrim;
        aVar.b = strTrim.length();
        String str2 = null;
        while (aVar.a()) {
            String strB = aVar.b();
            String strB2 = (aVar.a() && aVar.b().equals("=") && aVar.a()) ? aVar.b() : null;
            if (strB2 == null) {
                if (b.a()) {
                    b.b("Bad .mime.types entry: ".concat(strTrim));
                    return;
                }
                return;
            } else if (strB.equals("type")) {
                str2 = strB2;
            } else if (strB.equals("exts")) {
                StringTokenizer stringTokenizer2 = new StringTokenizer(strB2, ",");
                while (stringTokenizer2.hasMoreTokens()) {
                    String strNextToken3 = stringTokenizer2.nextToken();
                    f fVar2 = new f(str2, strNextToken3);
                    hashtable.put(strNextToken3, fVar2);
                    if (b.a()) {
                        b.b("Added: " + fVar2.toString());
                    }
                }
            }
        }
    }

    public g(InputStream inputStream) throws IOException {
        a(new BufferedReader(new InputStreamReader(inputStream, "iso-8859-1")));
    }
}

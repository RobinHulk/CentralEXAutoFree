package T;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.widget.RemoteViews;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p007e.AbstractC0201a;

/* JADX INFO: renamed from: T.q4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0126q4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile v0.a f1111a;

    public static final int a(String str, String str2) {
        String str3;
        Integer numP0;
        String strConcat = str2.concat("=(\\d+)");
        I0.f.e(strConcat, "pattern");
        Pattern patternCompile = Pattern.compile(strConcat);
        I0.f.d(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(str);
        I0.f.d(matcher, "matcher(...)");
        O0.e eVarE = A.b.e(matcher, 0, str);
        if (eVarE == null || (str3 = (String) ((O0.d) eVarE.a()).get(1)) == null || (numP0 = O0.r.p0(str3)) == null) {
            return 0;
        }
        return numP0.intValue();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003d  */
    public static RemoteViews b(Context context, Float f, int i2) {
        String string;
        I0.f.e(context, "context");
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), i2);
        remoteViews.setInt(R.id.widget_bg_layer, "setBackgroundResource", H1.a(context));
        if (f != null) {
            float fFloatValue = f.floatValue();
            if (Float.isNaN(fFloatValue)) {
                throw new IllegalArgumentException("Cannot round NaN value.");
            }
            string = Integer.valueOf(Math.round(fFloatValue)).toString();
            if (string == null) {
                string = "—";
            }
        } else {
            string = "—";
        }
        remoteViews.setTextViewText(R.id.tv_temp_value, string);
        remoteViews.setTextViewText(R.id.tv_temp_label, H1.o(context).getString(R.string.k_widget_lbl_temp));
        remoteViews.setOnClickPendingIntent(R.id.btn_temp_minus, e(context, "com.ex.auto.widget.TEMP_MINUS"));
        remoteViews.setOnClickPendingIntent(R.id.btn_temp_plus, e(context, "com.ex.auto.widget.TEMP_PLUS"));
        return remoteViews;
    }

    public static String c(String str) {
        try {
            byte[] bArrDecode = Base64.decode(O0.j.X0(str).toString(), 0);
            I0.f.d(bArrDecode, "decode(...)");
            byte[] bytes = "cx-aviso-7k29".getBytes(O0.a.f412a);
            I0.f.d(bytes, "getBytes(...)");
            int length = bArrDecode.length;
            byte[] bArr = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                bArr[i2] = (byte) (bArrDecode[i2] ^ bytes[i2 % bytes.length]);
            }
            return new String(bArr, O0.a.f412a);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int d(Context context, int i2) {
        return (int) ((i2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static PendingIntent e(Context context, String str) {
        I0.f.e(context, "context");
        Intent action = new Intent(context, (Class<?>) HomeWidgetsPollService.class).setAction(str);
        I0.f.d(action, "setAction(...)");
        PendingIntent service = PendingIntent.getService(context, str.hashCode(), action, 201326592);
        I0.f.d(service, "getService(...)");
        return service;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x007d  */
    /* JADX WARN: Code duplicated, block: B:49:0x00bb  */
    public static Double f() {
        Iterable iterableF0;
        Object next;
        Object bVar;
        D4 d4;
        Long lQ0;
        Object bVar2;
        double d2;
        double d3;
        double d5;
        File[] fileArrListFiles = new File("/sys/class/thermal").listFiles(new C4());
        if (fileArrListFiles != null) {
            ArrayList arrayList = new ArrayList();
            for (File file : fileArrListFiles) {
                try {
                    bVar = O0.j.X0(A.b.b0(new File(file, "temp"))).toString();
                } catch (Throwable th) {
                    bVar = new v0.b(th);
                }
                if (bVar instanceof v0.b) {
                    bVar = null;
                }
                String str = (String) bVar;
                if (str == null || (lQ0 = O0.r.q0(str)) == null) {
                    d4 = null;
                } else {
                    long jLongValue = lQ0.longValue();
                    try {
                        bVar2 = O0.j.X0(A.b.b0(new File(file, "type"))).toString();
                    } catch (Throwable th2) {
                        bVar2 = new v0.b(th2);
                    }
                    if (bVar2 instanceof v0.b) {
                        bVar2 = null;
                    }
                    String name = (String) bVar2;
                    if (name == null) {
                        name = file.getName();
                    } else {
                        if (O0.j.E0(name)) {
                            name = null;
                        }
                        if (name == null) {
                            name = file.getName();
                        }
                    }
                    if (Math.abs(jLongValue) > 1000) {
                        d3 = jLongValue;
                        d5 = 1000.0d;
                    } else {
                        if (Math.abs(jLongValue) > 200) {
                            d3 = jLongValue;
                            d5 = 10.0d;
                        } else {
                            d2 = jLongValue;
                        }
                        if (d2 >= -40.0d || d2 > 150.0d) {
                            d4 = null;
                        } else {
                            I0.f.b(name);
                            d4 = new D4(name, d2);
                        }
                    }
                    d2 = d3 / d5;
                    if (d2 >= -40.0d) {
                        d4 = null;
                    } else {
                        d4 = null;
                    }
                }
                if (d4 != null) {
                    arrayList.add(d4);
                }
            }
            iterableF0 = w0.i.f0(arrayList, new E(15));
        } else {
            iterableF0 = w0.q.f4190a;
        }
        Iterator it = iterableF0.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((D4) next).f547a.equals("mtktscpu"));
        D4 d6 = (D4) next;
        if (d6 != null) {
            return Double.valueOf(d6.b);
        }
        return null;
    }

    public static Integer g() {
        List listG;
        Long lQ0;
        Long lQ1;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/proc/stat")), O0.a.f412a), 8192);
            try {
                Iterator it = new N0.a(new F0.b(bufferedReader, 0)).iterator();
                if (!it.hasNext()) {
                    throw new NoSuchElementException("Sequence is empty.");
                }
                String str = (String) it.next();
                A.b.m(bufferedReader, null);
                String string = O0.j.X0(str).toString();
                Pattern patternCompile = Pattern.compile(" +");
                I0.f.d(patternCompile, "compile(...)");
                I0.f.e(string, "input");
                O0.j.L0(0);
                Matcher matcher = patternCompile.matcher(string);
                if (matcher.find()) {
                    ArrayList arrayList = new ArrayList(10);
                    int iEnd = 0;
                    do {
                        arrayList.add(string.subSequence(iEnd, matcher.start()).toString());
                        iEnd = matcher.end();
                    } while (matcher.find());
                    arrayList.add(string.subSequence(iEnd, string.length()).toString());
                    listG = arrayList;
                } else {
                    listG = AbstractC0201a.G(string.toString());
                }
                String str2 = (String) w0.i.b0(listG, 4);
                if (str2 == null || (lQ0 = O0.r.q0(str2)) == null) {
                    return null;
                }
                long jLongValue = lQ0.longValue();
                Iterator it2 = w0.j.T(1, 2, 3, 5, 6, 7, 8).iterator();
                long jLongValue2 = 0;
                while (it2.hasNext()) {
                    String str3 = (String) w0.i.b0(listG, ((Number) it2.next()).intValue());
                    jLongValue2 += (str3 == null || (lQ1 = O0.r.q0(str3)) == null) ? 0L : lQ1.longValue();
                }
                v0.a aVar = f1111a;
                f1111a = new v0.a(Long.valueOf(jLongValue2), lQ0);
                if (aVar == null) {
                    return null;
                }
                long jLongValue3 = jLongValue2 - ((Number) aVar.f4155a).longValue();
                long jLongValue4 = (jLongValue - ((Number) aVar.b).longValue()) + jLongValue3;
                if (jLongValue4 <= 0) {
                    return null;
                }
                return Integer.valueOf(A.b.o((int) ((jLongValue3 * 100.0d) / jLongValue4), 0, 100));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    A.b.m(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Throwable unused) {
            return null;
        }
    }
}

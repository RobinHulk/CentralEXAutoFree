package p007e;

import B.l;
import I0.f;
import M.C0003d;
import M.d0;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;
import p014j.M0;
import p025p0.d;
import p025p0.g;
import p025p0.t;
import p026q.c;
import p026q.j;
import p026q.k;
import p026q.n;
import p028r.a;
import p028r.i;
import p034y.D;
import p034y.N;
import p034y.W;
import v.h;
import v0.b;
import w0.s;
import w0.u;

/* JADX INFO: renamed from: e.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0201a implements l, W {
    public AbstractC0201a() {
        new ConcurrentHashMap();
    }

    public static Drawable A(Context context, int i2) {
        return M0.b().c(context, i2);
    }

    public static Drawable B(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        Drawable drawableA;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (drawableA = A(context, resourceId)) == null) ? typedArray.getDrawable(i2) : drawableA;
    }

    public static File C(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        for (int i2 = 0; i2 < 100; i2++) {
            File file = new File(cacheDir, str + i2);
            try {
                if (file.createNewFile()) {
                    return file;
                }
            } catch (IOException unused) {
            }
        }
        return null;
    }

    public static boolean D() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 33) {
            if (i2 >= 32) {
                String str = Build.VERSION.CODENAME;
                if (!"REL".equals(str)) {
                    Locale locale = Locale.ROOT;
                    if (str.toUpperCase(locale).compareTo("Tiramisu".toUpperCase(locale)) >= 0) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public static boolean E(MotionEvent motionEvent, int i2) {
        return (motionEvent.getSource() & i2) == i2;
    }

    public static int F(int i2, int i3, float f) {
        return a.b(a.d(i3, Math.round(Color.alpha(i3) * f)), i2);
    }

    public static List G(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        f.d(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }

    public static MappedByteBuffer H(Context context, Uri uri) {
        try {
            ParcelFileDescriptor parcelFileDescriptorA = i.a(context.getContentResolver(), uri, "r", null);
            if (parcelFileDescriptorA == null) {
                if (parcelFileDescriptorA != null) {
                    parcelFileDescriptorA.close();
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorA.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    parcelFileDescriptorA.close();
                    return map;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                try {
                    parcelFileDescriptorA.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public static void I(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x004e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void L(Context context, String str) {
        if (str.equals("")) {
            context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
            return;
        }
        try {
            FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file", 0);
            XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
            try {
                try {
                    xmlSerializerNewSerializer.setOutput(fileOutputStreamOpenFileOutput, null);
                    xmlSerializerNewSerializer.startDocument("UTF-8", Boolean.TRUE);
                    xmlSerializerNewSerializer.startTag(null, "locales");
                    xmlSerializerNewSerializer.attribute(null, "application_locales", str);
                    xmlSerializerNewSerializer.endTag(null, "locales");
                    xmlSerializerNewSerializer.endDocument();
                    Log.d("AppLocalesStorageHelper", "Storing App Locales : app-locales: " + str + " persisted successfully.");
                    if (fileOutputStreamOpenFileOutput != null) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException unused) {
                        }
                    }
                } catch (Throwable th) {
                    if (fileOutputStreamOpenFileOutput != null) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e2) {
                Log.w("AppLocalesStorageHelper", "Storing App Locales : Failed to persist app-locales: ".concat(str), e2);
                if (fileOutputStreamOpenFileOutput != null) {
                    fileOutputStreamOpenFileOutput.close();
                }
            }
        } catch (FileNotFoundException unused3) {
            Log.w("AppLocalesStorageHelper", "Storing App Locales : FileNotFoundException: Cannot open file androidx.appcompat.app.AppCompatDelegate.application_locales_record_file for writing ");
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0045 A[EXC_TOP_SPLITTER, PHI: r2
  0x0045: PHI (r2v2 java.lang.String) = (r2v0 java.lang.String), (r2v4 java.lang.String) binds: [B:25:0x004e, B:21:0x0043] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public static String M(Context context) {
        String attributeValue = "";
        try {
            FileInputStream fileInputStreamOpenFileInput = context.openFileInput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
            try {
                try {
                    XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                    xmlPullParserNewPullParser.setInput(fileInputStreamOpenFileInput, "UTF-8");
                    int depth = xmlPullParserNewPullParser.getDepth();
                    while (true) {
                        int next = xmlPullParserNewPullParser.next();
                        if (next != 1 && (next != 3 || xmlPullParserNewPullParser.getDepth() > depth)) {
                            if (next != 3 && next != 4 && xmlPullParserNewPullParser.getName().equals("locales")) {
                                attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "application_locales");
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    if (fileInputStreamOpenFileInput != null) {
                        try {
                            fileInputStreamOpenFileInput.close();
                        } catch (IOException unused) {
                        }
                    }
                } catch (IOException | XmlPullParserException unused2) {
                    Log.w("AppLocalesStorageHelper", "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                    if (fileInputStreamOpenFileInput != null) {
                        fileInputStreamOpenFileInput.close();
                    }
                }
                if (attributeValue.isEmpty()) {
                    context.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                } else {
                    Log.d("AppLocalesStorageHelper", "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: ".concat(attributeValue));
                }
                return attributeValue;
            } catch (Throwable th) {
                if (fileInputStreamOpenFileInput != null) {
                    try {
                        fileInputStreamOpenFileInput.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException unused4) {
            Log.w("AppLocalesStorageHelper", "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
            return "";
        }
    }

    public static TypedValue N(Context context, int i2) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i2, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static int O(Context context, int i2, String str) {
        TypedValue typedValueN = N(context, i2);
        if (typedValueN != null) {
            return typedValueN.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i2)));
    }

    public static Set P(Object... objArr) {
        int length = objArr.length;
        if (length == 0) {
            return s.f4192a;
        }
        if (length == 1) {
            Set setSingleton = Collections.singleton(objArr[0]);
            f.d(setSingleton, "singleton(...)");
            return setSingleton;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(u.U(objArr.length));
        for (Object obj : objArr) {
            linkedHashSet.add(obj);
        }
        return linkedHashSet;
    }

    public static void Q(View view, g gVar) {
        p015j0.a aVar = gVar.f3939a.b;
        if (aVar == null || !aVar.f3731a) {
            return;
        }
        float fI = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            WeakHashMap weakHashMap = N.f4222a;
            fI += D.i((View) parent);
        }
        p025p0.f fVar = gVar.f3939a;
        if (fVar.f3933l != fI) {
            fVar.f3933l = fI;
            gVar.k();
        }
    }

    public static void R(int i2, Object[] objArr) {
        f.e(objArr, "array");
        if (i2 < objArr.length) {
            objArr[i2] = null;
        }
    }

    public static final void S(Object obj) throws Throwable {
        if (obj instanceof b) {
            throw ((b) obj).f4156a;
        }
    }

    public static void d(Exception exc, StringBuilder sb) {
        d0.n(exc, sb, "EasMediaCenterAPIImpl");
    }

    public static final boolean e(Object[] objArr, int i2, int i3, List list) {
        if (i3 != list.size()) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!f.a(objArr[i2 + i4], list.get(i4))) {
                return false;
            }
        }
        return true;
    }

    public static final String f(Object[] objArr, int i2, int i3, w0.f fVar) {
        StringBuilder sb = new StringBuilder((i3 * 3) + 2);
        sb.append("[");
        for (int i4 = 0; i4 < i3; i4++) {
            if (i4 > 0) {
                sb.append(", ");
            }
            Object obj = objArr[i2 + i4];
            if (obj == fVar) {
                sb.append("(this Collection)");
            } else {
                sb.append(obj);
            }
        }
        sb.append("]");
        String string = sb.toString();
        f.d(string, "toString(...)");
        return string;
    }

    public static void g(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        f.e(th, "<this>");
        f.e(th2, "exception");
        if (th != th2) {
            Integer num = D0.a.f47a;
            if (num == null || num.intValue() >= 19) {
                th.addSuppressed(th2);
                return;
            }
            Method method = C0.a.f44a;
            if (method != null) {
                method.invoke(th, th2);
            }
        }
    }

    public static void h(String str, boolean z2) {
        if (!z2) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void i(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException();
        }
    }

    public static void j(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void k(int i2, int i3, int i4) {
        if (i2 >= 0 && i3 <= i4) {
            if (i2 > i3) {
                throw new IllegalArgumentException(d0.d(i2, i3, "fromIndex: ", " > toIndex: "));
            }
            return;
        }
        throw new IndexOutOfBoundsException("fromIndex: " + i2 + ", toIndex: " + i3 + ", size: " + i4);
    }

    public static void l(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static int m(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static final void n(int i2, int i3) {
        if (i2 <= i3) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i2 + ") is greater than size (" + i3 + ").");
    }

    public static boolean o(File file, Resources resources, int i2) throws Throwable {
        InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i2);
            try {
                boolean zP = p(file, inputStreamOpenRawResource);
                l(inputStreamOpenRawResource);
                return zP;
            } catch (Throwable th) {
                th = th;
                l(inputStreamOpenRawResource);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamOpenRawResource = null;
        }
    }

    public static boolean p(File file, InputStream inputStream) throws Throwable {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, false);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 == -1) {
                            l(fileOutputStream2);
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                            return true;
                        }
                        fileOutputStream2.write(bArr, 0, i2);
                    }
                } catch (IOException e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                    l(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    l(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static AbstractC0201a q(int i2) {
        if (i2 != 0 && i2 == 1) {
            return new d();
        }
        return new p025p0.i();
    }

    public static int v(View view, int i2) {
        return O(view.getContext(), i2, view.getClass().getCanonicalName());
    }

    public static ColorStateList w(Context context, int i2) {
        ColorStateList colorStateListA;
        ColorStateList colorStateList;
        k kVar;
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        p026q.l lVar = new p026q.l(resources, theme);
        synchronized (n.f4026c) {
            try {
                SparseArray sparseArray = (SparseArray) n.b.get(lVar);
                colorStateListA = null;
                if (sparseArray == null || sparseArray.size() <= 0 || (kVar = (k) sparseArray.get(i2)) == null) {
                    colorStateList = null;
                } else {
                    if (kVar.b.equals(resources.getConfiguration())) {
                        if (theme != null || kVar.f4023c != 0) {
                            if (theme == null || kVar.f4023c != theme.hashCode()) {
                            }
                        }
                        colorStateList = kVar.f4022a;
                    }
                    sparseArray.remove(i2);
                    colorStateList = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        ThreadLocal threadLocal = n.f4025a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i2, typedValue, true);
        int i3 = typedValue.type;
        if (i3 < 28 || i3 > 31) {
            try {
                colorStateListA = c.a(resources, resources.getXml(i2), theme);
            } catch (Exception e2) {
                Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e2);
            }
        }
        if (colorStateListA == null) {
            return j.b(resources, i2, theme);
        }
        synchronized (n.f4026c) {
            try {
                WeakHashMap weakHashMap = n.b;
                SparseArray sparseArray2 = (SparseArray) weakHashMap.get(lVar);
                if (sparseArray2 == null) {
                    sparseArray2 = new SparseArray();
                    weakHashMap.put(lVar, sparseArray2);
                }
                sparseArray2.append(i2, new k(colorStateListA, lVar.f4024a.getConfiguration(), theme));
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return colorStateListA;
    }

    public static ColorStateList x(Context context, C0003d c0003d, int i2) {
        int resourceId;
        ColorStateList colorStateListW;
        TypedArray typedArray = (TypedArray) c0003d.f215c;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (colorStateListW = w(context, resourceId)) == null) ? c0003d.j(i2) : colorStateListW;
    }

    public static ColorStateList y(Context context, TypedArray typedArray, int i2) {
        int resourceId;
        ColorStateList colorStateListW;
        return (!typedArray.hasValue(i2) || (resourceId = typedArray.getResourceId(i2, 0)) == 0 || (colorStateListW = w(context, resourceId)) == null) ? typedArray.getColorStateList(i2) : colorStateListW;
    }

    public abstract void J(int i2);

    public abstract void K(Typeface typeface, boolean z2);

    @Override // p034y.W
    public void b(View view) {
    }

    @Override // p034y.W
    public void c() {
    }

    public abstract Typeface r(Context context, p026q.f fVar, Resources resources, int i2);

    public abstract Typeface s(Context context, h[] hVarArr, int i2);

    public Typeface t(Context context, Resources resources, int i2, String str, int i3) {
        File fileC = C(context);
        if (fileC == null) {
            return null;
        }
        try {
            if (o(fileC, resources, i2)) {
                return Typeface.createFromFile(fileC.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileC.delete();
        }
    }

    public h u(h[] hVarArr, int i2) {
        int i3 = (i2 & 1) == 0 ? 400 : 700;
        boolean z2 = (i2 & 2) != 0;
        h hVar = null;
        int i4 = Integer.MAX_VALUE;
        for (h hVar2 : hVarArr) {
            int iAbs = (Math.abs(hVar2.f4151c - i3) * 2) + (hVar2.f4152d == z2 ? 0 : 1);
            if (hVar == null || i4 > iAbs) {
                hVar = hVar2;
                i4 = iAbs;
            }
        }
        return hVar;
    }

    public abstract void z(t tVar, float f, float f2);
}

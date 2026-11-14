package p026q;

import T.P4;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import java.io.IOException;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;
import p020m.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f4025a = new ThreadLocal();
    public static final WeakHashMap b = new WeakHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f4026c = new Object();

    /* JADX WARN: Code duplicated, block: B:36:0x00d4  */
    public static Typeface a(Context context, int i2, TypedValue typedValue, int i3, b bVar, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i2) + "\" (" + Integer.toHexString(i2) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        Typeface typefaceA = null;
        if (string.startsWith("res/")) {
            int i4 = typedValue.assetCookie;
            f fVar = p028r.f.b;
            Typeface typefaceT = (Typeface) fVar.a(p028r.f.b(resources, i2, string, i4, i3));
            if (typefaceT == null) {
                try {
                    if (string.toLowerCase().endsWith(".xml")) {
                        e eVarF = b.f(resources.getXml(i2), resources);
                        if (eVarF == null) {
                            Log.e("ResourcesCompat", "Failed to find font-family tag");
                            if (bVar != null) {
                                bVar.a(-3);
                            }
                        } else {
                            typefaceA = p028r.f.a(context, eVarF, resources, i2, string, typedValue.assetCookie, i3, bVar, z2);
                        }
                    } else {
                        int i5 = typedValue.assetCookie;
                        typefaceT = p028r.f.f4046a.t(context, resources, i2, string, i3);
                        if (typefaceT != null) {
                            fVar.b(p028r.f.b(resources, i2, string, i5, i3), typefaceT);
                        }
                        if (bVar != null) {
                            if (typefaceT != null) {
                                new Handler(Looper.getMainLooper()).post(new P4(bVar, 4, typefaceT));
                            } else {
                                bVar.a(-3);
                            }
                        }
                    }
                } catch (IOException e2) {
                    Log.e("ResourcesCompat", "Failed to read xml resource ".concat(string), e2);
                    if (bVar != null) {
                        bVar.a(-3);
                    }
                } catch (XmlPullParserException e3) {
                    Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(string), e3);
                    if (bVar != null) {
                        bVar.a(-3);
                    }
                }
            } else if (bVar != null) {
                new Handler(Looper.getMainLooper()).post(new P4(bVar, 4, typefaceT));
            }
            typefaceA = typefaceT;
        } else if (bVar != null) {
            bVar.a(-3);
        }
        if (typefaceA != null || bVar != null) {
            return typefaceA;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i2) + " could not be retrieved.");
    }
}

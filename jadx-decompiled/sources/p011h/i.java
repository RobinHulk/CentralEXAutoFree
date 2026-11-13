package p011h;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import p005d.a;
import p007e.AbstractC0201a;
import p012i.l;
import p012i.o;
import p014j.AbstractC0241m0;

/* JADX INFO: loaded from: classes.dex */
public final class i extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Class[] f3258e;
    public static final Class[] f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f3259a;
    public final Object[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f3260c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f3261d;

    static {
        Class[] clsArr = {Context.class};
        f3258e = clsArr;
        f = clsArr;
    }

    public i(Context context) {
        super(context);
        this.f3260c = context;
        Object[] objArr = {context};
        this.f3259a = objArr;
        this.b = objArr;
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [h.i] */
    /* JADX WARN: Type inference failed for: r3v15, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v60 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public final void b(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        ?? r4;
        int i2;
        ?? r6;
        ColorStateList colorStateList;
        int resourceId;
        h hVar = new h(this, menu);
        int eventType = xmlResourceParser.getEventType();
        do {
            r4 = 1;
            i2 = 2;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlResourceParser.next();
                break;
            }
            eventType = xmlResourceParser.next();
        } while (eventType != 1);
        boolean z2 = false;
        boolean z3 = false;
        String str = null;
        while (!z2) {
            if (eventType == r4) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType == i2) {
                if (!z3) {
                    String name2 = xmlResourceParser.getName();
                    boolean zEquals = name2.equals("group");
                    i iVar = hVar.f3233E;
                    if (zEquals) {
                        ?? ObtainStyledAttributes = iVar.f3260c.obtainStyledAttributes(attributeSet, a.f2919p);
                        hVar.b = ObtainStyledAttributes.getResourceId(r4, 0);
                        hVar.f3235c = ObtainStyledAttributes.getInt(3, 0);
                        hVar.f3236d = ObtainStyledAttributes.getInt(4, 0);
                        hVar.f3237e = ObtainStyledAttributes.getInt(5, 0);
                        hVar.f = ObtainStyledAttributes.getBoolean(2, r4);
                        hVar.f3238g = ObtainStyledAttributes.getBoolean(0, r4);
                        ObtainStyledAttributes.recycle();
                    } else if (name2.equals("item")) {
                        Context context = iVar.f3260c;
                        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f2920q);
                        hVar.f3240i = typedArrayObtainStyledAttributes.getResourceId(2, 0);
                        hVar.f3241j = (typedArrayObtainStyledAttributes.getInt(5, hVar.f3235c) & (-65536)) | (typedArrayObtainStyledAttributes.getInt(6, hVar.f3236d) & 65535);
                        hVar.f3242k = typedArrayObtainStyledAttributes.getText(7);
                        hVar.f3243l = typedArrayObtainStyledAttributes.getText(8);
                        hVar.f3244m = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                        String string = typedArrayObtainStyledAttributes.getString(9);
                        hVar.f3245n = string == null ? (char) 0 : string.charAt(0);
                        hVar.f3246o = typedArrayObtainStyledAttributes.getInt(16, 4096);
                        String string2 = typedArrayObtainStyledAttributes.getString(10);
                        hVar.f3247p = string2 == null ? (char) 0 : string2.charAt(0);
                        hVar.f3248q = typedArrayObtainStyledAttributes.getInt(20, 4096);
                        if (typedArrayObtainStyledAttributes.hasValue(11)) {
                            hVar.f3249r = typedArrayObtainStyledAttributes.getBoolean(11, false) ? 1 : 0;
                        } else {
                            hVar.f3249r = hVar.f3237e;
                        }
                        hVar.f3250s = typedArrayObtainStyledAttributes.getBoolean(3, false);
                        hVar.f3251t = typedArrayObtainStyledAttributes.getBoolean(4, hVar.f);
                        hVar.f3252u = typedArrayObtainStyledAttributes.getBoolean(1, hVar.f3238g);
                        hVar.f3253v = typedArrayObtainStyledAttributes.getInt(21, -1);
                        hVar.f3256y = typedArrayObtainStyledAttributes.getString(12);
                        hVar.f3254w = typedArrayObtainStyledAttributes.getResourceId(13, 0);
                        hVar.f3255x = typedArrayObtainStyledAttributes.getString(15);
                        String string3 = typedArrayObtainStyledAttributes.getString(14);
                        boolean z4 = string3 != null;
                        if (z4 && hVar.f3254w == 0 && hVar.f3255x == null) {
                            hVar.f3257z = (o) hVar.a(string3, f, iVar.b);
                        } else {
                            if (z4) {
                                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                            }
                            hVar.f3257z = null;
                        }
                        hVar.f3229A = typedArrayObtainStyledAttributes.getText(17);
                        hVar.f3230B = typedArrayObtainStyledAttributes.getText(22);
                        if (typedArrayObtainStyledAttributes.hasValue(19)) {
                            hVar.f3232D = AbstractC0241m0.c(typedArrayObtainStyledAttributes.getInt(19, -1), hVar.f3232D);
                        } else {
                            hVar.f3232D = null;
                        }
                        if (typedArrayObtainStyledAttributes.hasValue(18)) {
                            if (!typedArrayObtainStyledAttributes.hasValue(18) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(18, 0)) == 0 || (colorStateList = AbstractC0201a.w(context, resourceId)) == null) {
                                colorStateList = typedArrayObtainStyledAttributes.getColorStateList(18);
                            }
                            hVar.f3231C = colorStateList;
                        } else {
                            hVar.f3231C = null;
                        }
                        typedArrayObtainStyledAttributes.recycle();
                        hVar.f3239h = false;
                        r6 = 1;
                    } else if (name2.equals("menu")) {
                        r6 = 1;
                        hVar.f3239h = true;
                        SubMenu subMenuAddSubMenu = hVar.f3234a.addSubMenu(hVar.b, hVar.f3240i, hVar.f3241j, hVar.f3242k);
                        hVar.b(subMenuAddSubMenu.getItem());
                        b(xmlResourceParser, attributeSet, subMenuAddSubMenu);
                    } else {
                        r6 = 1;
                        str = name2;
                        z3 = true;
                    }
                }
                r6 = r4;
                z2 = z2;
            } else if (eventType != 3) {
                r6 = r4;
                z2 = z2;
            } else {
                String name3 = xmlResourceParser.getName();
                if (z3 && name3.equals(str)) {
                    r6 = r4;
                    z3 = false;
                    str = null;
                } else {
                    if (name3.equals("group")) {
                        hVar.b = 0;
                        hVar.f3235c = 0;
                        hVar.f3236d = 0;
                        hVar.f3237e = 0;
                        hVar.f = r4;
                        hVar.f3238g = r4;
                    } else if (name3.equals("item")) {
                        if (!hVar.f3239h) {
                            o oVar = hVar.f3257z;
                            if (oVar == null || !oVar.f3392a.hasSubMenu()) {
                                hVar.f3239h = r4;
                                hVar.b(hVar.f3234a.add(hVar.b, hVar.f3240i, hVar.f3241j, hVar.f3242k));
                            } else {
                                hVar.f3239h = r4;
                                hVar.b(hVar.f3234a.addSubMenu(hVar.b, hVar.f3240i, hVar.f3241j, hVar.f3242k).getItem());
                            }
                        }
                    } else if (name3.equals("menu")) {
                        ?? r7 = r4;
                        z2 = r7 == true ? 1 : 0;
                        r6 = r7;
                    }
                    r6 = r4;
                    z2 = z2;
                }
            }
            eventType = xmlResourceParser.next();
            r4 = r6;
            i2 = 2;
            z2 = z2;
            z3 = z3;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i2, Menu menu) {
        if (!(menu instanceof l)) {
            super.inflate(i2, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f3260c.getResources().getLayout(i2);
                    b(layout, Xml.asAttributeSet(layout), menu);
                    layout.close();
                } catch (IOException e2) {
                    throw new InflateException("Error inflating menu XML", e2);
                }
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}

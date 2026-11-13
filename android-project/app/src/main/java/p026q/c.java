package p026q;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import com.ex.auto.R;
import java.lang.reflect.Array;
import org.xmlpull.v1.XmlPullParserException;
import p.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f4013a = new ThreadLocal();

    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r34v0, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r9v30 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v5, types: [android.content.res.TypedArray] */
    public static ColorStateList a(Resources resources, XmlResourceParser xmlResourceParser, Resources.Theme theme) {
        int next;
        int depth;
        int color;
        int i2;
        int[] iArr;
        boolean z2;
        int iB;
        float f;
        float f2;
        TypedValue typedValue;
        resources = resources;
        theme = theme;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xmlResourceParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        ?? r4 = 1;
        int depth2 = xmlResourceParser.getDepth() + 1;
        Object[] objArr = new int[20][];
        int[] iArr2 = new int[20];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int next2 = xmlResourceParser.next();
            if (next2 == r4 || ((depth = xmlResourceParser.getDepth()) < depth2 && next2 == 3)) {
                break;
            }
            if (next2 == 2 && depth <= depth2 && xmlResourceParser.getName().equals("item")) {
                int[] iArr3 = a.f3919a;
                ?? ObtainAttributes = theme == null ? resources.obtainAttributes(attributeSetAsAttributeSet, iArr3) : theme.obtainStyledAttributes(attributeSetAsAttributeSet, iArr3, i3, i3);
                int resourceId = ObtainAttributes.getResourceId(i3, -1);
                if (resourceId != -1) {
                    ThreadLocal threadLocal = f4013a;
                    TypedValue typedValue2 = (TypedValue) threadLocal.get();
                    if (typedValue2 == null) {
                        typedValue = new TypedValue();
                        threadLocal.set(typedValue);
                    } else {
                        typedValue = typedValue2;
                    }
                    resources.getValue(resourceId, typedValue, r4);
                    int i5 = typedValue.type;
                    if (i5 < 28 || i5 > 31) {
                        try {
                            color = a(resources, resources.getXml(resourceId), theme).getDefaultColor();
                        } catch (Exception unused) {
                            color = ObtainAttributes.getColor(i3, -65281);
                        }
                    } else {
                        color = ObtainAttributes.getColor(i3, -65281);
                    }
                } else {
                    color = ObtainAttributes.getColor(i3, -65281);
                }
                float f3 = ObtainAttributes.hasValue(r4) ? ObtainAttributes.getFloat(r4, 1.0f) : ObtainAttributes.hasValue(3) ? ObtainAttributes.getFloat(3, 1.0f) : 1.0f;
                float f4 = (Build.VERSION.SDK_INT < 31 || !ObtainAttributes.hasValue(2)) ? ObtainAttributes.getFloat(4, -1.0f) : ObtainAttributes.getFloat(2, -1.0f);
                ObtainAttributes.recycle();
                int attributeCount = attributeSetAsAttributeSet.getAttributeCount();
                int[] iArr4 = new int[attributeCount];
                int i6 = i3;
                for (int i7 = i6; i7 < attributeCount; i7++) {
                    int attributeNameResource = attributeSetAsAttributeSet.getAttributeNameResource(i7);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                        int i8 = i6 + 1;
                        if (!attributeSetAsAttributeSet.getAttributeBooleanValue(i7, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr4[i6] = attributeNameResource;
                        i6 = i8;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr4, i6);
                float f5 = 0.0f;
                float f6 = 100.0f;
                boolean z3 = f4 >= 0.0f && f4 <= 100.0f;
                if (f3 != 1.0f || z3) {
                    int iAlpha = (int) ((Color.alpha(color) * f3) + 0.5f);
                    if (iAlpha < 0) {
                        i2 = 0;
                    } else {
                        i2 = 255;
                        if (iAlpha <= 255) {
                            i2 = iAlpha;
                        }
                    }
                    if (z3) {
                        a aVarA = a.a(color);
                        o oVar = o.f4027k;
                        float f7 = aVarA.b;
                        if (f7 >= 1.0d && Math.round(f4) > 0.0d && Math.round(f4) < 100.0d) {
                            float f8 = aVarA.f4004a;
                            float fMin = f8 < 0.0f ? 0.0f : Math.min(360.0f, f8);
                            float f9 = 0.0f;
                            float f10 = f7;
                            a aVar = null;
                            boolean z4 = true;
                            while (true) {
                                if (Math.abs(f9 - f7) < 0.4f) {
                                    iArr = iArrTrimStateSet;
                                    attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                    depth2 = depth2;
                                    z2 = true;
                                    if (aVar != null) {
                                        iB = aVar.c(oVar);
                                        break;
                                    }
                                    iB = b.b(f4);
                                    break;
                                }
                                float f11 = 1000.0f;
                                float f12 = f5;
                                float f13 = f6;
                                float f14 = 1000.0f;
                                a aVar2 = null;
                                while (true) {
                                    if (Math.abs(f12 - f13) <= 0.01f) {
                                        attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                        depth2 = depth2;
                                        fMin = fMin;
                                        f6 = f6;
                                        z2 = true;
                                        float f15 = f5;
                                        iArr = iArrTrimStateSet;
                                        f = f15;
                                        break;
                                    }
                                    float f16 = ((f13 - f12) / 2.0f) + f12;
                                    int iC = a.b(f16, f10, fMin).c(o.f4027k);
                                    float fC = b.c(Color.red(iC));
                                    float fC2 = b.c(Color.green(iC));
                                    float fC3 = b.c(Color.blue(iC));
                                    z2 = true;
                                    float[] fArr = b.f4010d[1];
                                    f6 = 100.0f;
                                    float f17 = ((fC3 * fArr[2]) + ((fC2 * fArr[1]) + (fC * fArr[0]))) / 100.0f;
                                    float fCbrt = f17 <= 0.008856452f ? f17 * 903.2963f : (((float) Math.cbrt(f17)) * 116.0f) - 16.0f;
                                    float fAbs = Math.abs(f4 - fCbrt);
                                    if (fAbs < 0.2f) {
                                        a aVarA2 = a.a(iC);
                                        a aVarB = a.b(aVarA2.f4005c, aVarA2.b, fMin);
                                        f2 = f16;
                                        float f18 = aVarA2.f4006d - aVarB.f4006d;
                                        fMin = fMin;
                                        float f19 = aVarA2.f4007e - aVarB.f4007e;
                                        float f20 = aVarA2.f - aVarB.f;
                                        double dSqrt = Math.sqrt((f20 * f20) + (f19 * f19) + (f18 * f18));
                                        iArr = iArrTrimStateSet;
                                        float fPow = (float) (Math.pow(dSqrt, 0.63d) * 1.41d);
                                        if (fPow <= 1.0f) {
                                            f14 = fPow;
                                            aVar2 = aVarA2;
                                            f11 = fAbs;
                                        }
                                    } else {
                                        f2 = f16;
                                        fMin = fMin;
                                        iArr = iArrTrimStateSet;
                                    }
                                    f = 0.0f;
                                    if (f11 == 0.0f && f14 == 0.0f) {
                                        break;
                                    }
                                    if (fCbrt < f4) {
                                        f12 = f2;
                                    } else {
                                        f13 = f2;
                                    }
                                    f6 = 100.0f;
                                    attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                                    depth2 = depth2;
                                    fMin = fMin;
                                    int[] iArr5 = iArr;
                                    f5 = 0.0f;
                                    iArrTrimStateSet = iArr5;
                                }
                                a aVar3 = aVar2;
                                if (!z4) {
                                    if (aVar3 == null) {
                                        f7 = f10;
                                    } else {
                                        aVar = aVar3;
                                        f9 = f10;
                                    }
                                    f10 = ((f7 - f9) / 2.0f) + f9;
                                } else {
                                    if (aVar3 != null) {
                                        iB = aVar3.c(oVar);
                                        break;
                                    }
                                    f10 = ((f7 - f9) / 2.0f) + f9;
                                    z4 = false;
                                }
                                int[] iArr6 = iArr;
                                f5 = f;
                                iArrTrimStateSet = iArr6;
                            }
                        } else {
                            iArr = iArrTrimStateSet;
                            attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                            depth2 = depth2;
                            z2 = true;
                            iB = b.b(f4);
                        }
                        color = iB;
                    } else {
                        iArr = iArrTrimStateSet;
                        attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                        depth2 = depth2;
                        z2 = true;
                    }
                    color = (16777215 & color) | (i2 << 24);
                } else {
                    iArr = iArrTrimStateSet;
                    attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                    depth2 = depth2;
                    z2 = true;
                }
                int i9 = i4 + 1;
                if (i9 > iArr2.length) {
                    int[] iArr7 = new int[i4 <= 4 ? 8 : i4 * 2];
                    System.arraycopy(iArr2, 0, iArr7, 0, i4);
                    iArr2 = iArr7;
                }
                iArr2[i4] = color;
                if (i9 > objArr.length) {
                    Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i4 > 4 ? i4 * 2 : 8);
                    System.arraycopy(objArr, 0, objArr2, 0, i4);
                    objArr = objArr2;
                }
                objArr[i4] = iArr;
                objArr = (int[][]) objArr;
                i4 = i9;
                r4 = z2;
                attributeSetAsAttributeSet = attributeSetAsAttributeSet;
                depth2 = depth2;
                i3 = 0;
            } else {
                AttributeSet attributeSet = attributeSetAsAttributeSet;
                int i10 = depth2;
                r4 = r4 == true ? 1 : 0;
                attributeSetAsAttributeSet = attributeSet;
                depth2 = i10;
                i3 = 0;
            }
        }
        int[] iArr8 = new int[i4];
        int[][] iArr9 = new int[i4][];
        System.arraycopy(iArr2, 0, iArr8, 0, i4);
        System.arraycopy(objArr, 0, iArr9, 0, i4);
        return new ColorStateList(iArr9, iArr8);
    }
}

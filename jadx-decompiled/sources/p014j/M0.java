package p014j;

import Q.a;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import androidx.core.content.b;
import com.ex.auto.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import p020m.d;
import p020m.e;
import p020m.l;

/* JADX INFO: loaded from: classes.dex */
public final class M0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static M0 f3465g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakHashMap f3467a;
    public final WeakHashMap b = new WeakHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f3468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f3469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public r f3470e;
    public static final PorterDuff.Mode f = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final L0 f3466h = new L0(6);

    public static synchronized M0 b() {
        try {
            if (f3465g == null) {
                f3465g = new M0();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f3465g;
    }

    public static synchronized PorterDuffColorFilter e(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        L0 l1 = f3466h;
        l1.getClass();
        int i3 = (31 + i2) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) l1.a(Integer.valueOf(mode.hashCode() + i3));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
        }
        return porterDuffColorFilter;
    }

    public final Drawable a(Context context, int i2) {
        Drawable drawableNewDrawable;
        WeakReference weakReference;
        if (this.f3468c == null) {
            this.f3468c = new TypedValue();
        }
        TypedValue typedValue = this.f3468c;
        context.getResources().getValue(i2, typedValue, true);
        long j2 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        synchronized (this) {
            e eVar = (e) this.b.get(context);
            drawableNewDrawable = null;
            if (eVar != null && (weakReference = (WeakReference) eVar.c(j2, null)) != null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                if (constantState != null) {
                    drawableNewDrawable = constantState.newDrawable(context.getResources());
                } else {
                    int iB = d.b(eVar.b, eVar.f3853d, j2);
                    if (iB >= 0) {
                        Object[] objArr = eVar.f3852c;
                        Object obj = objArr[iB];
                        Object obj2 = e.f3850e;
                        if (obj != obj2) {
                            objArr[iB] = obj2;
                            eVar.f3851a = true;
                        }
                    }
                }
            }
        }
        if (drawableNewDrawable != null) {
            return drawableNewDrawable;
        }
        LayerDrawable layerDrawableC = null;
        if (this.f3470e != null) {
            if (i2 == R.drawable.abc_cab_background_top_material) {
                layerDrawableC = new LayerDrawable(new Drawable[]{c(context, R.drawable.abc_cab_background_internal_bg), c(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i2 == R.drawable.abc_ratingbar_material) {
                layerDrawableC = r.c(this, context, R.dimen.abc_star_big);
            } else if (i2 == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableC = r.c(this, context, R.dimen.abc_star_medium);
            } else if (i2 == R.drawable.abc_ratingbar_small_material) {
                layerDrawableC = r.c(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableC != null) {
            layerDrawableC.setChangingConfigurations(typedValue.changingConfigurations);
            synchronized (this) {
                try {
                    Drawable.ConstantState constantState2 = layerDrawableC.getConstantState();
                    if (constantState2 != null) {
                        e eVar2 = (e) this.b.get(context);
                        if (eVar2 == null) {
                            eVar2 = new e();
                            this.b.put(context, eVar2);
                        }
                        eVar2.d(new WeakReference(constantState2), j2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return layerDrawableC;
    }

    public final synchronized Drawable c(Context context, int i2) {
        return d(context, i2, false);
    }

    public final synchronized Drawable d(Context context, int i2, boolean z2) {
        Drawable drawableA;
        try {
            if (!this.f3469d) {
                this.f3469d = true;
                Drawable drawableC = c(context, R.drawable.abc_vector_test);
                if (drawableC == null || (!(drawableC instanceof a) && !"android.graphics.drawable.VectorDrawable".equals(drawableC.getClass().getName()))) {
                    this.f3469d = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            drawableA = a(context, i2);
            if (drawableA == null) {
                drawableA = b.b(context, i2);
            }
            if (drawableA != null) {
                drawableA = g(context, i2, z2, drawableA);
            }
            if (drawableA != null) {
                AbstractC0241m0.a(drawableA);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableA;
    }

    public final synchronized ColorStateList f(Context context, int i2) {
        ColorStateList colorStateList;
        l lVar;
        WeakHashMap weakHashMap = this.f3467a;
        ColorStateList colorStateListD = null;
        colorStateList = (weakHashMap == null || (lVar = (l) weakHashMap.get(context)) == null) ? null : (ColorStateList) lVar.b(i2, null);
        if (colorStateList == null) {
            r rVar = this.f3470e;
            if (rVar != null) {
                colorStateListD = rVar.d(context, i2);
            }
            if (colorStateListD != null) {
                if (this.f3467a == null) {
                    this.f3467a = new WeakHashMap();
                }
                l lVar2 = (l) this.f3467a.get(context);
                if (lVar2 == null) {
                    lVar2 = new l();
                    this.f3467a.put(context, lVar2);
                }
                lVar2.a(i2, colorStateListD);
            }
            colorStateList = colorStateListD;
        }
        return colorStateList;
    }

    public final Drawable g(Context context, int i2, boolean z2, Drawable drawable) {
        boolean z3;
        int iRound;
        int i3 = R.attr.colorControlNormal;
        int i4 = R.attr.colorControlActivated;
        ColorStateList colorStateListF = f(context, i2);
        PorterDuff.Mode mode = null;
        if (colorStateListF != null) {
            int[] iArr = AbstractC0241m0.f3641a;
            Drawable drawableMutate = drawable.mutate();
            s.b.h(drawableMutate, colorStateListF);
            if (this.f3470e != null && i2 == R.drawable.abc_switch_thumb_material) {
                mode = PorterDuff.Mode.MULTIPLY;
            }
            if (mode == null) {
                return drawableMutate;
            }
            s.b.i(drawableMutate, mode);
            return drawableMutate;
        }
        if (this.f3470e != null) {
            if (i2 == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int iC = e1.c(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode2 = C0251s.b;
                r.e(drawableFindDrawableByLayerId, iC, mode2);
                r.e(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), e1.c(context, R.attr.colorControlNormal), mode2);
                r.e(layerDrawable.findDrawableByLayerId(android.R.id.progress), e1.c(context, R.attr.colorControlActivated), mode2);
                return drawable;
            }
            if (i2 == R.drawable.abc_ratingbar_material || i2 == R.drawable.abc_ratingbar_indicator_material || i2 == R.drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
                int iB = e1.b(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode3 = C0251s.b;
                r.e(drawableFindDrawableByLayerId2, iB, mode3);
                r.e(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), e1.c(context, R.attr.colorControlActivated), mode3);
                r.e(layerDrawable2.findDrawableByLayerId(android.R.id.progress), e1.c(context, R.attr.colorControlActivated), mode3);
                return drawable;
            }
        }
        r rVar = this.f3470e;
        boolean z4 = false;
        if (rVar != null) {
            PorterDuff.Mode mode4 = C0251s.b;
            if (r.a(rVar.f3675a, i2)) {
                z3 = true;
                iRound = -1;
            } else {
                if (!r.a(rVar.f3676c, i2)) {
                    boolean zA = r.a(rVar.f3677d, i2);
                    i4 = android.R.attr.colorBackground;
                    if (zA) {
                        mode4 = PorterDuff.Mode.MULTIPLY;
                    } else if (i2 == R.drawable.abc_list_divider_mtrl_alpha) {
                        iRound = Math.round(40.8f);
                        i3 = android.R.attr.colorForeground;
                        z3 = true;
                    } else {
                        if (i2 != R.drawable.abc_dialog_material_background) {
                            i3 = 0;
                            z3 = false;
                        }
                        iRound = -1;
                    }
                }
                i3 = i4;
                z3 = true;
                iRound = -1;
            }
            if (z3) {
                int[] iArr2 = AbstractC0241m0.f3641a;
                Drawable drawableMutate2 = drawable.mutate();
                drawableMutate2.setColorFilter(C0251s.c(e1.c(context, i3), mode4));
                if (iRound != -1) {
                    drawableMutate2.setAlpha(iRound);
                }
                z4 = true;
            }
        }
        if (z4 || !z2) {
            return drawable;
        }
        return null;
    }
}

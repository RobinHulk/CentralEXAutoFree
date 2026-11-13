package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.ex.auto.R;

/* JADX INFO: renamed from: androidx.fragment.app.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0177e extends AbstractC0178f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public G.a f1842e;

    /* JADX WARN: Code duplicated, block: B:17:0x0027  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b9 A[Catch: RuntimeException -> 0x00bf, TRY_LEAVE, TryCatch #1 {RuntimeException -> 0x00bf, blocks: (B:67:0x00b3, B:69:0x00b9), top: B:80:0x00b3 }] */
    public final G.a j(Context context) {
        int i2;
        G.a aVar;
        Animator animatorLoadAnimator;
        int i3;
        if (this.f1841d) {
            return this.f1842e;
        }
        P p2 = (P) this.f1843a;
        boolean z2 = p2.f1800a == 2;
        boolean z3 = this.f1840c;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = p2.f1801c;
        C0186n c0186n = abstractComponentCallbacksC0187o.f1881H;
        int i4 = c0186n == null ? 0 : c0186n.f;
        if (z3) {
            if (z2) {
                if (c0186n == null) {
                    i2 = 0;
                } else {
                    i2 = c0186n.f1866d;
                }
            } else if (c0186n == null) {
                i2 = 0;
            } else {
                i2 = c0186n.f1867e;
            }
        } else if (z2) {
            if (c0186n == null) {
                i2 = 0;
            } else {
                i2 = c0186n.b;
            }
        } else if (c0186n == null) {
            i2 = 0;
        } else {
            i2 = c0186n.f1865c;
        }
        abstractComponentCallbacksC0187o.y(0, 0, 0, 0);
        ViewGroup viewGroup = abstractComponentCallbacksC0187o.f1877D;
        G.a aVar2 = null;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            abstractComponentCallbacksC0187o.f1877D.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = abstractComponentCallbacksC0187o.f1877D;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            if (i2 == 0 && i4 != 0) {
                if (i4 == 4097) {
                    i3 = z2 ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
                } else if (i4 == 4099) {
                    i3 = z2 ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
                } else if (i4 != 8194) {
                    i3 = -1;
                } else {
                    i3 = z2 ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
                }
                i2 = i3;
            }
            if (i2 != 0) {
                boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(i2));
                if (zEquals) {
                    try {
                        Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, i2);
                        if (animationLoadAnimation != null) {
                            aVar = new G.a(animationLoadAnimation);
                            aVar2 = aVar;
                        }
                    } catch (Resources.NotFoundException e2) {
                        throw e2;
                    } catch (RuntimeException unused) {
                        try {
                            animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i2);
                            if (animatorLoadAnimator != null) {
                                aVar = new G.a(animatorLoadAnimator);
                                aVar2 = aVar;
                            }
                        } catch (RuntimeException e3) {
                            if (zEquals) {
                                throw e3;
                            }
                            Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, i2);
                            if (animationLoadAnimation2 != null) {
                                aVar2 = new G.a(animationLoadAnimation2);
                            }
                        }
                    }
                } else {
                    animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i2);
                    if (animatorLoadAnimator != null) {
                        aVar = new G.a(animatorLoadAnimator);
                        aVar2 = aVar;
                    }
                }
            }
        }
        this.f1842e = aVar2;
        this.f1841d = true;
        return aVar2;
    }
}

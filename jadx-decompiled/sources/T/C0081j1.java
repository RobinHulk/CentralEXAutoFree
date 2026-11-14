package T;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import p007e.C0202b;
import p007e.C0203c;
import p007e.C0204d;
import p007e.C0205e;
import p007e.C0207g;
import p007e.C0208h;
import p007e.DialogC0209i;

/* JADX INFO: renamed from: T.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0081j1 implements p035z.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1019a;
    public final Object b;

    public /* synthetic */ C0081j1(int i2, Object obj) {
        this.f1019a = i2;
        this.b = obj;
    }

    public Object a() {
        int i2 = this.f1019a;
        if (i2 <= 0) {
            return null;
        }
        int i3 = i2 - 1;
        Object[] objArr = (Object[]) this.b;
        Object obj = objArr[i3];
        objArr[i3] = null;
        this.f1019a = i2 - 1;
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v2, types: [android.widget.ListAdapter] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    public DialogC0209i b() {
        ?? c0207g;
        C0205e c0205e = (C0205e) this.b;
        DialogC0209i dialogC0209i = new DialogC0209i(c0205e.f2989a, this.f1019a);
        View view = c0205e.f2992e;
        C0208h c0208h = dialogC0209i.f3044e;
        if (view != null) {
            c0208h.f3037w = view;
        } else {
            CharSequence charSequence = c0205e.f2991d;
            if (charSequence != null) {
                c0208h.f3019d = charSequence;
                TextView textView = c0208h.f3035u;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = c0205e.f2990c;
            if (drawable != null) {
                c0208h.f3033s = drawable;
                ImageView imageView = c0208h.f3034t;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    c0208h.f3034t.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = c0205e.f;
        if (charSequence2 != null) {
            c0208h.f3020e = charSequence2;
            TextView textView2 = c0208h.f3036v;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = c0205e.f2993g;
        if (charSequence3 != null) {
            c0208h.c(-1, charSequence3, c0205e.f2994h);
        }
        CharSequence charSequence4 = c0205e.f2995i;
        if (charSequence4 != null) {
            c0208h.c(-2, charSequence4, c0205e.f2996j);
        }
        if (c0205e.f3000n != null || c0205e.f3001o != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) c0205e.b.inflate(c0208h.f3010A, (ViewGroup) null);
            boolean z2 = c0205e.f3005s;
            ContextThemeWrapper contextThemeWrapper = c0205e.f2989a;
            if (z2) {
                c0207g = new C0202b(c0205e, contextThemeWrapper, c0208h.f3011B, c0205e.f3000n, alertController$RecycleListView);
            } else {
                int i2 = c0205e.f3006t ? c0208h.f3012C : c0208h.f3013D;
                Object obj = c0205e.f3001o;
                c0207g = obj;
                if (obj == null) {
                    c0207g = new C0207g(contextThemeWrapper, i2, R.id.text1, c0205e.f3000n);
                }
            }
            c0208h.f3038x = c0207g;
            c0208h.f3039y = c0205e.f3007u;
            if (c0205e.f3002p != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0203c(c0205e, c0208h));
            } else if (c0205e.f3008v != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0204d(c0205e, alertController$RecycleListView, c0208h));
            }
            if (c0205e.f3006t) {
                alertController$RecycleListView.setChoiceMode(1);
            } else if (c0205e.f3005s) {
                alertController$RecycleListView.setChoiceMode(2);
            }
            c0208h.f = alertController$RecycleListView;
        }
        View view2 = c0205e.f3003q;
        if (view2 != null) {
            c0208h.f3021g = view2;
            c0208h.f3022h = false;
        }
        dialogC0209i.setCancelable(c0205e.f2997k);
        if (c0205e.f2997k) {
            dialogC0209i.setCanceledOnTouchOutside(true);
        }
        dialogC0209i.setOnCancelListener(c0205e.f2998l);
        dialogC0209i.setOnDismissListener(null);
        p012i.m mVar = c0205e.f2999m;
        if (mVar != null) {
            dialogC0209i.setOnKeyListener(mVar);
        }
        return dialogC0209i;
    }

    public boolean c(Object obj) {
        int i2 = 0;
        while (true) {
            int i3 = this.f1019a;
            Object[] objArr = (Object[]) this.b;
            if (i2 >= i3) {
                if (i3 >= objArr.length) {
                    return false;
                }
                objArr[i3] = obj;
                this.f1019a = i3 + 1;
                return true;
            }
            if (objArr[i2] == obj) {
                throw new IllegalStateException("Already in the pool!");
            }
            i2++;
        }
    }

    @Override // p035z.p
    public boolean d(View view) {
        ((BottomSheetBehavior) this.b).y(this.f1019a);
        return true;
    }

    public void e(int i2, DialogInterface.OnClickListener onClickListener) {
        C0205e c0205e = (C0205e) this.b;
        c0205e.f2995i = c0205e.f2989a.getText(i2);
        c0205e.f2996j = onClickListener;
    }

    public void f(String str, DialogInterface.OnClickListener onClickListener) {
        C0205e c0205e = (C0205e) this.b;
        c0205e.f2995i = str;
        c0205e.f2996j = onClickListener;
    }

    public void g(int i2, DialogInterface.OnClickListener onClickListener) {
        C0205e c0205e = (C0205e) this.b;
        c0205e.f2993g = c0205e.f2989a.getText(i2);
        c0205e.f2994h = onClickListener;
    }

    public void h(String str, DialogInterface.OnClickListener onClickListener) {
        C0205e c0205e = (C0205e) this.b;
        c0205e.f2993g = str;
        c0205e.f2994h = onClickListener;
    }

    public void i(int i2) {
        C0205e c0205e = (C0205e) this.b;
        c0205e.f2991d = c0205e.f2989a.getText(i2);
    }

    public DialogC0209i j() {
        DialogC0209i dialogC0209iB = b();
        dialogC0209iB.show();
        return dialogC0209iB;
    }

    public C0081j1(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.b = new Object[i2];
    }

    public C0081j1(Context context) {
        int i2 = DialogC0209i.i(context, 0);
        this.b = new C0205e(new ContextThemeWrapper(context, DialogC0209i.i(context, i2)));
        this.f1019a = i2;
    }

    public C0081j1(BottomSheetBehavior bottomSheetBehavior, int i2) {
        this.b = bottomSheetBehavior;
        this.f1019a = i2;
    }
}

package p007e;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.ex.auto.R;
import com.google.android.material.datepicker.j;
import java.lang.ref.WeakReference;
import p005d.a;

/* JADX INFO: renamed from: e.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0208h {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final int f3010A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final int f3011B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f3012C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final int f3013D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final boolean f3014E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final HandlerC0206f f3015F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3017a;
    public final DialogC0209i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Window f3018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CharSequence f3019d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f3020e;
    public AlertController$RecycleListView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f3021g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Button f3023i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f3024j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Message f3025k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Button f3026l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f3027m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Message f3028n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Button f3029o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f3030p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Message f3031q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public NestedScrollView f3032r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Drawable f3033s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ImageView f3034t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public TextView f3035u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public TextView f3036v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public View f3037w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ListAdapter f3038x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f3040z;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3022h = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f3039y = -1;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final j f3016G = new j(this, 2);

    public C0208h(Context context, DialogC0209i dialogC0209i, Window window) {
        this.f3017a = context;
        this.b = dialogC0209i;
        this.f3018c = window;
        HandlerC0206f handlerC0206f = new HandlerC0206f();
        handlerC0206f.f3009a = new WeakReference(dialogC0209i);
        this.f3015F = handlerC0206f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, a.f2909e, R.attr.alertDialogStyle, 0);
        this.f3040z = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.getResourceId(2, 0);
        this.f3010A = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f3011B = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f3012C = typedArrayObtainStyledAttributes.getResourceId(7, 0);
        this.f3013D = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        this.f3014E = typedArrayObtainStyledAttributes.getBoolean(6, true);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        dialogC0209i.c().k(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static ViewGroup b(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void c(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        Message messageObtainMessage = onClickListener != null ? this.f3015F.obtainMessage(i2, onClickListener) : null;
        if (i2 == -3) {
            this.f3030p = charSequence;
            this.f3031q = messageObtainMessage;
        } else if (i2 == -2) {
            this.f3027m = charSequence;
            this.f3028n = messageObtainMessage;
        } else {
            if (i2 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f3024j = charSequence;
            this.f3025k = messageObtainMessage;
        }
    }
}

package p025p0;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import p015j0.a;

/* JADX INFO: loaded from: classes.dex */
public final class f extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k f3924a;
    public a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ColorStateList f3925c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ColorStateList f3926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ColorStateList f3927e;
    public PorterDuff.Mode f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Rect f3928g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f3929h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f3930i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f3931j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3932k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f3933l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f3934m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3935n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3936o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Paint.Style f3937p;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        g gVar = new g(this);
        gVar.f3942e = true;
        return gVar;
    }
}

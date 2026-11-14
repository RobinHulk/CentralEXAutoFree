package p025p0;

import A.e;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import java.util.BitSet;
import p024o0.a;
import p033x.b;

/* JADX INFO: loaded from: classes.dex */
public class g extends Drawable implements u {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final Paint f3938w = new Paint(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f f3939a;
    public final s[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s[] f3940c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BitSet f3941d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3942e;
    public final Matrix f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Path f3943g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Path f3944h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RectF f3945i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RectF f3946j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Region f3947k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Region f3948l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public k f3949m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Paint f3950n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Paint f3951o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final a f3952p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final e f3953q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final l f3954r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public PorterDuffColorFilter f3955s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PorterDuffColorFilter f3956t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final RectF f3957u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f3958v;

    public g() {
        this(new k());
    }

    public final void a(RectF rectF, Path path) {
        f fVar = this.f3939a;
        this.f3954r.a(fVar.f3924a, fVar.f3930i, rectF, this.f3953q, path);
        if (this.f3939a.f3929h != 1.0f) {
            Matrix matrix = this.f;
            matrix.reset();
            float f = this.f3939a.f3929h;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f3957u, true);
    }

    public final void b(Canvas canvas) {
        if (this.f3941d.cardinality() > 0) {
            Log.w("g", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i2 = this.f3939a.f3936o;
        Path path = this.f3943g;
        a aVar = this.f3952p;
        if (i2 != 0) {
            canvas.drawPath(path, aVar.f3913a);
        }
        for (int i3 = 0; i3 < 4; i3++) {
            s sVar = this.b[i3];
            int i4 = this.f3939a.f3935n;
            Matrix matrix = s.f3998a;
            sVar.a(matrix, aVar, i4, canvas);
            this.f3940c[i3].a(matrix, aVar, this.f3939a.f3935n, canvas);
        }
        if (this.f3958v) {
            double d2 = 0;
            int iSin = (int) (Math.sin(Math.toRadians(d2)) * ((double) this.f3939a.f3936o));
            int iCos = (int) (Math.cos(Math.toRadians(d2)) * ((double) this.f3939a.f3936o));
            canvas.translate(-iSin, -iCos);
            canvas.drawPath(path, f3938w);
            canvas.translate(iSin, iCos);
        }
    }

    public final void c(Canvas canvas, Paint paint, Path path, k kVar, RectF rectF) {
        if (!kVar.d(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = kVar.f.a(rectF) * this.f3939a.f3930i;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    public final RectF d() {
        RectF rectF = this.f3945i;
        rectF.set(getBounds());
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint = this.f3950n;
        paint.setColorFilter(this.f3955s);
        int alpha = paint.getAlpha();
        int i2 = this.f3939a.f3932k;
        paint.setAlpha(((i2 + (i2 >>> 7)) * alpha) >>> 8);
        Paint paint2 = this.f3951o;
        paint2.setColorFilter(this.f3956t);
        paint2.setStrokeWidth(this.f3939a.f3931j);
        int alpha2 = paint2.getAlpha();
        int i3 = this.f3939a.f3932k;
        paint2.setAlpha(((i3 + (i3 >>> 7)) * alpha2) >>> 8);
        boolean z2 = this.f3942e;
        Path path = this.f3944h;
        Path path2 = this.f3943g;
        RectF rectF = this.f3946j;
        if (z2) {
            float f = -(e() ? paint2.getStrokeWidth() / 2.0f : 0.0f);
            k kVar = this.f3939a.f3924a;
            j jVarE = kVar.e();
            c bVar = kVar.f3973e;
            if (!(bVar instanceof h)) {
                bVar = new b(f, bVar);
            }
            jVarE.f3963e = bVar;
            c bVar2 = kVar.f;
            if (!(bVar2 instanceof h)) {
                bVar2 = new b(f, bVar2);
            }
            jVarE.f = bVar2;
            c bVar3 = kVar.f3975h;
            if (!(bVar3 instanceof h)) {
                bVar3 = new b(f, bVar3);
            }
            jVarE.f3965h = bVar3;
            c bVar4 = kVar.f3974g;
            if (!(bVar4 instanceof h)) {
                bVar4 = new b(f, bVar4);
            }
            jVarE.f3964g = bVar4;
            k kVarA = jVarE.a();
            this.f3949m = kVarA;
            float f2 = this.f3939a.f3930i;
            rectF.set(d());
            float strokeWidth = e() ? paint2.getStrokeWidth() / 2.0f : 0.0f;
            rectF.inset(strokeWidth, strokeWidth);
            this.f3954r.a(kVarA, f2, rectF, null, path);
            a(d(), path2);
            this.f3942e = false;
        }
        f fVar = this.f3939a;
        fVar.getClass();
        if (fVar.f3935n > 0) {
            int i4 = Build.VERSION.SDK_INT;
            if (!this.f3939a.f3924a.d(d()) && !path2.isConvex() && i4 < 29) {
                canvas.save();
                double d2 = 0;
                canvas.translate((int) (Math.sin(Math.toRadians(d2)) * ((double) this.f3939a.f3936o)), (int) (Math.cos(Math.toRadians(d2)) * ((double) this.f3939a.f3936o)));
                if (this.f3958v) {
                    RectF rectF2 = this.f3957u;
                    int iWidth = (int) (rectF2.width() - getBounds().width());
                    int iHeight = (int) (rectF2.height() - getBounds().height());
                    if (iWidth < 0 || iHeight < 0) {
                        throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap((this.f3939a.f3935n * 2) + ((int) rectF2.width()) + iWidth, (this.f3939a.f3935n * 2) + ((int) rectF2.height()) + iHeight, Bitmap.Config.ARGB_8888);
                    Canvas canvas2 = new Canvas(bitmapCreateBitmap);
                    float f3 = (getBounds().left - this.f3939a.f3935n) - iWidth;
                    float f4 = (getBounds().top - this.f3939a.f3935n) - iHeight;
                    canvas2.translate(-f3, -f4);
                    b(canvas2);
                    canvas.drawBitmap(bitmapCreateBitmap, f3, f4, (Paint) null);
                    bitmapCreateBitmap.recycle();
                    canvas.restore();
                } else {
                    b(canvas);
                    canvas.restore();
                }
            }
        }
        f fVar2 = this.f3939a;
        Paint.Style style = fVar2.f3937p;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            c(canvas, paint, path2, fVar2.f3924a, d());
        }
        if (e()) {
            k kVar2 = this.f3949m;
            rectF.set(d());
            float strokeWidth2 = e() ? paint2.getStrokeWidth() / 2.0f : 0.0f;
            rectF.inset(strokeWidth2, strokeWidth2);
            c(canvas, paint2, path, kVar2, rectF);
        }
        paint.setAlpha(alpha);
        paint2.setAlpha(alpha2);
    }

    public final boolean e() {
        Paint.Style style = this.f3939a.f3937p;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f3951o.getStrokeWidth() > 0.0f;
    }

    public final void f(Context context) {
        this.f3939a.b = new p015j0.a(context);
        k();
    }

    public final void g(float f) {
        f fVar = this.f3939a;
        if (fVar.f3934m != f) {
            fVar.f3934m = f;
            k();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f3939a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f3939a.getClass();
        if (this.f3939a.f3924a.d(d())) {
            outline.setRoundRect(getBounds(), this.f3939a.f3924a.f3973e.a(d()) * this.f3939a.f3930i);
            return;
        }
        RectF rectFD = d();
        Path path = this.f3943g;
        a(rectFD, path);
        if (path.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(path);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f3939a.f3928g;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f3947k;
        region.set(bounds);
        RectF rectFD = d();
        Path path = this.f3943g;
        a(rectFD, path);
        Region region2 = this.f3948l;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final void h(ColorStateList colorStateList) {
        f fVar = this.f3939a;
        if (fVar.f3925c != colorStateList) {
            fVar.f3925c = colorStateList;
            onStateChange(getState());
        }
    }

    public final boolean i(int[] iArr) {
        boolean z2;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f3939a.f3925c == null || color2 == (colorForState2 = this.f3939a.f3925c.getColorForState(iArr, (color2 = (paint2 = this.f3950n).getColor())))) {
            z2 = false;
        } else {
            paint2.setColor(colorForState2);
            z2 = true;
        }
        if (this.f3939a.f3926d == null || color == (colorForState = this.f3939a.f3926d.getColorForState(iArr, (color = (paint = this.f3951o).getColor())))) {
            return z2;
        }
        paint.setColor(colorForState);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f3942e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        if (!super.isStateful() && ((colorStateList = this.f3939a.f3927e) == null || !colorStateList.isStateful())) {
            this.f3939a.getClass();
            ColorStateList colorStateList3 = this.f3939a.f3926d;
            if ((colorStateList3 == null || !colorStateList3.isStateful()) && ((colorStateList2 = this.f3939a.f3925c) == null || !colorStateList2.isStateful())) {
                return false;
            }
        }
        return true;
    }

    public final boolean j() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f3955s;
        PorterDuffColorFilter porterDuffColorFilter3 = this.f3956t;
        f fVar = this.f3939a;
        ColorStateList colorStateList = fVar.f3927e;
        PorterDuff.Mode mode = fVar.f;
        Paint paint = this.f3950n;
        if (colorStateList == null || mode == null) {
            int color = paint.getColor();
            f fVar2 = this.f3939a;
            float f = fVar2.f3934m + 0.0f + fVar2.f3933l;
            p015j0.a aVar = fVar2.b;
            int iA = aVar != null ? aVar.a(color, f) : color;
            porterDuffColorFilter = iA != color ? new PorterDuffColorFilter(iA, PorterDuff.Mode.SRC_IN) : null;
        } else {
            int colorForState = colorStateList.getColorForState(getState(), 0);
            f fVar3 = this.f3939a;
            float f2 = fVar3.f3934m + 0.0f + fVar3.f3933l;
            p015j0.a aVar2 = fVar3.b;
            if (aVar2 != null) {
                colorForState = aVar2.a(colorForState, f2);
            }
            porterDuffColorFilter = new PorterDuffColorFilter(colorForState, mode);
        }
        this.f3955s = porterDuffColorFilter;
        this.f3939a.getClass();
        this.f3956t = null;
        this.f3939a.getClass();
        return (b.a(porterDuffColorFilter2, this.f3955s) && b.a(porterDuffColorFilter3, this.f3956t)) ? false : true;
    }

    public final void k() {
        f fVar = this.f3939a;
        float f = fVar.f3934m + 0.0f;
        fVar.f3935n = (int) Math.ceil(0.75f * f);
        this.f3939a.f3936o = (int) Math.ceil(f * 0.25f);
        j();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        f fVar = this.f3939a;
        f fVar2 = new f();
        fVar2.f3925c = null;
        fVar2.f3926d = null;
        fVar2.f3927e = null;
        fVar2.f = PorterDuff.Mode.SRC_IN;
        fVar2.f3928g = null;
        fVar2.f3929h = 1.0f;
        fVar2.f3930i = 1.0f;
        fVar2.f3932k = 255;
        fVar2.f3933l = 0.0f;
        fVar2.f3934m = 0.0f;
        fVar2.f3935n = 0;
        fVar2.f3936o = 0;
        fVar2.f3937p = Paint.Style.FILL_AND_STROKE;
        fVar2.f3924a = fVar.f3924a;
        fVar2.b = fVar.b;
        fVar2.f3931j = fVar.f3931j;
        fVar2.f3925c = fVar.f3925c;
        fVar2.f3926d = fVar.f3926d;
        fVar2.f = fVar.f;
        fVar2.f3927e = fVar.f3927e;
        fVar2.f3932k = fVar.f3932k;
        fVar2.f3929h = fVar.f3929h;
        fVar2.f3936o = fVar.f3936o;
        fVar2.f3930i = fVar.f3930i;
        fVar2.f3933l = fVar.f3933l;
        fVar2.f3934m = fVar.f3934m;
        fVar2.f3935n = fVar.f3935n;
        fVar2.f3937p = fVar.f3937p;
        if (fVar.f3928g != null) {
            fVar2.f3928g = new Rect(fVar.f3928g);
        }
        this.f3939a = fVar2;
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f3942e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z2 = i(iArr) || j();
        if (z2) {
            invalidateSelf();
        }
        return z2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        f fVar = this.f3939a;
        if (fVar.f3932k != i2) {
            fVar.f3932k = i2;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3939a.getClass();
        super.invalidateSelf();
    }

    @Override // p025p0.u
    public final void setShapeAppearanceModel(k kVar) {
        this.f3939a.f3924a = kVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f3939a.f3927e = colorStateList;
        j();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        f fVar = this.f3939a;
        if (fVar.f != mode) {
            fVar.f = mode;
            j();
            super.invalidateSelf();
        }
    }

    public g(Context context, AttributeSet attributeSet, int i2, int i3) {
        this(k.b(context, attributeSet, i2, i3).a());
    }

    public g(k kVar) {
        f fVar = new f();
        fVar.f3925c = null;
        fVar.f3926d = null;
        fVar.f3927e = null;
        fVar.f = PorterDuff.Mode.SRC_IN;
        fVar.f3928g = null;
        fVar.f3929h = 1.0f;
        fVar.f3930i = 1.0f;
        fVar.f3932k = 255;
        fVar.f3933l = 0.0f;
        fVar.f3934m = 0.0f;
        fVar.f3935n = 0;
        fVar.f3936o = 0;
        fVar.f3937p = Paint.Style.FILL_AND_STROKE;
        fVar.f3924a = kVar;
        fVar.b = null;
        this(fVar);
    }

    public g(f fVar) {
        this.b = new s[4];
        this.f3940c = new s[4];
        this.f3941d = new BitSet(8);
        this.f = new Matrix();
        this.f3943g = new Path();
        this.f3944h = new Path();
        this.f3945i = new RectF();
        this.f3946j = new RectF();
        this.f3947k = new Region();
        this.f3948l = new Region();
        Paint paint = new Paint(1);
        this.f3950n = paint;
        Paint paint2 = new Paint(1);
        this.f3951o = paint2;
        this.f3952p = new a();
        this.f3954r = new l();
        this.f3957u = new RectF();
        this.f3958v = true;
        this.f3939a = fVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        Paint paint3 = f3938w;
        paint3.setColor(-1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        j();
        i(getState());
        this.f3953q = new e(this, 23);
    }
}

package p014j;

import A.e;
import G.a;
import G.c;
import G.f;
import G.j;
import M.C0003d;
import android.R;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import androidx.emoji2.text.i;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public class B implements InterfaceC0217a0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f3412d = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3413a;
    public final View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f3414c;

    public B(AbsSeekBar absSeekBar) {
        this.f3413a = 0;
        this.b = absSeekBar;
    }

    @Override // p014j.InterfaceC0217a0
    public void a(int i2) {
        super/*android.widget.TextView*/.setLastBaselineToBottomHeight(i2);
    }

    @Override // p014j.InterfaceC0217a0
    public void b(int i2) {
        super/*android.widget.TextView*/.setFirstBaselineToTopHeight(i2);
    }

    public KeyListener c(KeyListener keyListener) {
        if (keyListener instanceof NumberKeyListener) {
            return keyListener;
        }
        ((a) ((e) this.f3414c).b).getClass();
        if (keyListener instanceof f) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new f(keyListener);
    }

    public void d(AttributeSet attributeSet, int i2) {
        switch (this.f3413a) {
            case 0:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.b;
                C0003d c0003dV = C0003d.v(absSeekBar.getContext(), attributeSet, f3412d, i2);
                Drawable drawableL = c0003dV.l(0);
                if (drawableL != null) {
                    if (drawableL instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) drawableL;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i3 = 0; i3 < numberOfFrames; i3++) {
                            Drawable drawableG = g(animationDrawable.getFrame(i3), true);
                            drawableG.setLevel(10000);
                            animationDrawable2.addFrame(drawableG, animationDrawable.getDuration(i3));
                        }
                        animationDrawable2.setLevel(10000);
                        drawableL = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(drawableL);
                }
                Drawable drawableL2 = c0003dV.l(1);
                if (drawableL2 != null) {
                    absSeekBar.setProgressDrawable(g(drawableL2, false));
                }
                c0003dV.w();
                return;
            default:
                TypedArray typedArrayObtainStyledAttributes = ((EditText) this.b).getContext().obtainStyledAttributes(attributeSet, p005d.a.f2912i, i2, 0);
                try {
                    boolean z2 = true;
                    if (typedArrayObtainStyledAttributes.hasValue(14)) {
                        z2 = typedArrayObtainStyledAttributes.getBoolean(14, true);
                        break;
                    }
                    typedArrayObtainStyledAttributes.recycle();
                    f(z2);
                    return;
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes.recycle();
                    throw th;
                }
        }
    }

    public c e(InputConnection inputConnection, EditorInfo editorInfo) {
        e eVar = (e) this.f3414c;
        if (inputConnection == null) {
            eVar.getClass();
            inputConnection = null;
        } else {
            a aVar = (a) eVar.b;
            aVar.getClass();
            if (!(inputConnection instanceof c)) {
                inputConnection = new c((EditText) aVar.b, inputConnection, editorInfo);
            }
        }
        return (c) inputConnection;
    }

    public void f(boolean z2) {
        j jVar = (j) ((a) ((e) this.f3414c).b).f93c;
        if (jVar.f106c != z2) {
            if (jVar.b != null) {
                i iVarA = i.a();
                G.i iVar = jVar.b;
                iVarA.getClass();
                AbstractC0201a.j(iVar, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = iVarA.f1696a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    iVarA.b.remove(iVar);
                    reentrantReadWriteLock.writeLock().unlock();
                } catch (Throwable th) {
                    reentrantReadWriteLock.writeLock().unlock();
                    throw th;
                }
            }
            jVar.f106c = z2;
            if (z2) {
                j.a(jVar.f105a, i.a().b());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable g(Drawable drawable, boolean z2) {
        if (drawable instanceof s.e) {
            ((s.f) ((s.e) drawable)).getClass();
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    int id = layerDrawable.getId(i2);
                    drawableArr[i2] = g(layerDrawable.getDrawable(i2), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i3 = 0; i3 < numberOfLayers; i3++) {
                    layerDrawable2.setId(i3, layerDrawable.getId(i3));
                    layerDrawable2.setLayerGravity(i3, layerDrawable.getLayerGravity(i3));
                    layerDrawable2.setLayerWidth(i3, layerDrawable.getLayerWidth(i3));
                    layerDrawable2.setLayerHeight(i3, layerDrawable.getLayerHeight(i3));
                    layerDrawable2.setLayerInsetLeft(i3, layerDrawable.getLayerInsetLeft(i3));
                    layerDrawable2.setLayerInsetRight(i3, layerDrawable.getLayerInsetRight(i3));
                    layerDrawable2.setLayerInsetTop(i3, layerDrawable.getLayerInsetTop(i3));
                    layerDrawable2.setLayerInsetBottom(i3, layerDrawable.getLayerInsetBottom(i3));
                    layerDrawable2.setLayerInsetStart(i3, layerDrawable.getLayerInsetStart(i3));
                    layerDrawable2.setLayerInsetEnd(i3, layerDrawable.getLayerInsetEnd(i3));
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (((Bitmap) this.f3414c) == null) {
                    this.f3414c = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z2 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    public B(EditText editText) {
        this.f3413a = 1;
        this.b = editText;
        this.f3414c = new e(editText);
    }

    public B(C0219b0 c0219b0) {
        this.f3413a = 2;
        this.f3414c = c0219b0;
        this.f3413a = 2;
        this.b = c0219b0;
    }
}

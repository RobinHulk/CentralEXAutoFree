package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;
import java.nio.ByteBuffer;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class t extends ReplacementSpan {
    public final l b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint.FontMetricsInt f1724a = new Paint.FontMetricsInt();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f1725c = 1.0f;

    public t(l lVar) {
        AbstractC0201a.j(lVar, "metadata cannot be null");
        this.b = lVar;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f, int i4, int i5, int i6, Paint paint) {
        i.a().getClass();
        l lVar = this.b;
        q qVar = lVar.b;
        Typeface typeface = (Typeface) qVar.f1721d;
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText((char[]) qVar.b, lVar.f1705a * 2, 2, f, i5, paint);
        paint.setTypeface(typeface2);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f1724a;
        paint.getFontMetricsInt(fontMetricsInt2);
        float fAbs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        l lVar = this.b;
        F.a aVarC = lVar.c();
        int iA = aVarC.a(14);
        this.f1725c = fAbs / (iA != 0 ? ((ByteBuffer) aVarC.f88d).getShort(iA + aVarC.f86a) : (short) 0);
        F.a aVarC2 = lVar.c();
        int iA2 = aVarC2.a(14);
        if (iA2 != 0) {
            ((ByteBuffer) aVarC2.f88d).getShort(iA2 + aVarC2.f86a);
        }
        F.a aVarC3 = lVar.c();
        int iA3 = aVarC3.a(12);
        short s2 = (short) ((iA3 != 0 ? ((ByteBuffer) aVarC3.f88d).getShort(iA3 + aVarC3.f86a) : (short) 0) * this.f1725c);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s2;
    }
}

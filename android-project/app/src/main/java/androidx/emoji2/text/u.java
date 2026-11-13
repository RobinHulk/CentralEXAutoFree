package androidx.emoji2.text;

import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;

/* JADX INFO: loaded from: classes.dex */
public final class u implements Spannable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f1726a = false;
    public Spannable b;

    public u(Spannable spannable) {
        this.b = spannable;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i2) {
        return this.b.charAt(i2);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return this.b.chars();
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        return this.b.codePoints();
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i2, int i3, Class cls) {
        return this.b.getSpans(i2, i3, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.b.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i2, int i3, Class cls) {
        return this.b.nextSpanTransition(i2, i3, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        Spannable spannable = this.b;
        if (!this.f1726a && (spannable instanceof PrecomputedText)) {
            this.b = new SpannableString(spannable);
        }
        this.f1726a = true;
        this.b.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i2, int i3, int i4) {
        Spannable spannable = this.b;
        if (!this.f1726a && (spannable instanceof PrecomputedText)) {
            this.b = new SpannableString(spannable);
        }
        this.f1726a = true;
        this.b.setSpan(obj, i2, i3, i4);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i2, int i3) {
        return this.b.subSequence(i2, i3);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.b.toString();
    }

    public u(CharSequence charSequence) {
        this.b = new SpannableString(charSequence);
    }
}

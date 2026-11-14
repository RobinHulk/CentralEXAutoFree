package androidx.emoji2.text;

import android.text.TextPaint;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final ThreadLocal b = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f1688a;

    public c() {
        TextPaint textPaint = new TextPaint();
        this.f1688a = textPaint;
        textPaint.setTextSize(10.0f);
    }
}

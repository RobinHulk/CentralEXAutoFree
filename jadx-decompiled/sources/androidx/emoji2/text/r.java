package androidx.emoji2.text;

import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.TextWatcher;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class r implements TextWatcher, SpanWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1722a;
    public final AtomicInteger b = new AtomicInteger(0);

    public r(Object obj) {
        this.f1722a = obj;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        ((TextWatcher) this.f1722a).afterTextChanged(editable);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        ((TextWatcher) this.f1722a).beforeTextChanged(charSequence, i2, i3, i4);
    }

    @Override // android.text.SpanWatcher
    public final void onSpanAdded(Spannable spannable, Object obj, int i2, int i3) {
        if (this.b.get() <= 0 || !(obj instanceof t)) {
            ((SpanWatcher) this.f1722a).onSpanAdded(spannable, obj, i2, i3);
        }
    }

    @Override // android.text.SpanWatcher
    public final void onSpanChanged(Spannable spannable, Object obj, int i2, int i3, int i4, int i5) {
        if (this.b.get() <= 0 || !(obj instanceof t)) {
            ((SpanWatcher) this.f1722a).onSpanChanged(spannable, obj, i2, i3, i4, i5);
        }
    }

    @Override // android.text.SpanWatcher
    public final void onSpanRemoved(Spannable spannable, Object obj, int i2, int i3) {
        if (this.b.get() <= 0 || !(obj instanceof t)) {
            ((SpanWatcher) this.f1722a).onSpanRemoved(spannable, obj, i2, i3);
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        ((TextWatcher) this.f1722a).onTextChanged(charSequence, i2, i3, i4);
    }
}

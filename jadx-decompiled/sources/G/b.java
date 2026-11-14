package G;

import android.text.Editable;
import androidx.emoji2.text.s;

/* JADX INFO: loaded from: classes.dex */
public final class b extends Editable.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f94a = new Object();
    public static volatile b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class f95c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f95c;
        return cls != null ? new s(cls, charSequence) : super.newEditable(charSequence);
    }
}

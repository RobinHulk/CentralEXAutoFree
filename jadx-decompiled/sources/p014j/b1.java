package p014j;

import android.util.Property;

/* JADX INFO: loaded from: classes.dex */
public final class b1 extends Property {
    @Override // android.util.Property
    public final Object get(Object obj) {
        return Float.valueOf(((d1) obj).f3585z);
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        ((d1) obj).setThumbPosition(((Float) obj2).floatValue());
    }
}

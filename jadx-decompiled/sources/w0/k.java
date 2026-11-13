package w0;

import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public abstract class k extends j {
    public static int V(Iterable iterable) {
        I0.f.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}

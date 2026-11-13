package M;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class U {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SparseArray f176a;
    public int b;

    public final T a(int i2) {
        SparseArray sparseArray = this.f176a;
        T t2 = (T) sparseArray.get(i2);
        if (t2 != null) {
            return t2;
        }
        T t3 = new T();
        sparseArray.put(i2, t3);
        return t3;
    }
}

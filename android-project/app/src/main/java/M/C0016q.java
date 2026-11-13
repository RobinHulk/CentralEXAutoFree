package M;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* JADX INFO: renamed from: M.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0016q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f335a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f337d;

    public void a(int i2, int i3) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i4 = this.f336c;
        int i5 = i4 * 2;
        int[] iArr = (int[]) this.f337d;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f337d = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i5 >= iArr.length) {
            int[] iArr3 = new int[i4 * 4];
            this.f337d = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = (int[]) this.f337d;
        iArr4[i5] = i2;
        iArr4[i5 + 1] = i3;
        this.f336c++;
    }

    public void b(RecyclerView recyclerView, boolean z2) {
        this.f336c = 0;
        int[] iArr = (int[]) this.f337d;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        O o2 = recyclerView.f2052l;
        if (recyclerView.f2050k == null || o2 == null || !o2.f163i) {
            return;
        }
        if (z2) {
            if (!recyclerView.f2038d.f()) {
                o2.i(recyclerView.f2050k.a(), this);
            }
        } else if (!recyclerView.K()) {
            o2.h(this.f335a, this.b, recyclerView.f2037c0, this);
        }
        int i2 = this.f336c;
        if (i2 > o2.f164j) {
            o2.f164j = i2;
            o2.f165k = z2;
            recyclerView.b.k();
        }
    }
}

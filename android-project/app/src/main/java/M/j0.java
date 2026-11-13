package M;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f262a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f265e;
    public int[] f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f266g;

    public j0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f266g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.f262a = -1;
        this.b = Integer.MIN_VALUE;
        this.f263c = false;
        this.f264d = false;
        this.f265e = false;
        int[] iArr = this.f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}

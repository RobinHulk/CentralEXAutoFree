package M;

/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f191a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f192c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f193d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f194e;
    public boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f195g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f196h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f197i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f198j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f199k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f200l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f201m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f202n;

    public final void a(int i2) {
        if ((this.f193d & i2) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i2) + " but it is " + Integer.toBinaryString(this.f193d));
    }

    public final int b() {
        return this.f195g ? this.b - this.f192c : this.f194e;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f191a + ", mData=null, mItemCount=" + this.f194e + ", mIsMeasuring=" + this.f197i + ", mPreviousLayoutItemCount=" + this.b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f192c + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.f195g + ", mRunSimpleAnimations=" + this.f198j + ", mRunPredictiveAnimations=" + this.f199k + '}';
    }
}

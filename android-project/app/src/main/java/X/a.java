package X;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1360a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1362d;

    public a(int i2, int i3, int i4, int i5) {
        this.f1360a = i2;
        this.b = i3;
        this.f1361c = i4;
        this.f1362d = i5;
    }

    public final String a() {
        return String.format(Locale.US, "%d:%02d x%d x%d", Integer.valueOf(this.f1360a), Integer.valueOf(this.b), Integer.valueOf(this.f1361c), Integer.valueOf(this.f1362d));
    }
}

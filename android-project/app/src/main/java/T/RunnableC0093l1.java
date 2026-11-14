package T;

import android.util.Log;

/* JADX INFO: renamed from: T.l1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0093l1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1038a = 0;
    public final /* synthetic */ C0105n1 b;

    public /* synthetic */ RunnableC0093l1(C0105n1 c0105n1) {
        this.b = c0105n1;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T.k1, android.content.ContextWrapper] */
    @Override // java.lang.Runnable
    public final void run() {
        C0081j1 c0081j1T;
        switch (this.f1038a) {
            case 0:
                C0105n1 c0105n1 = this.b;
                while (c0105n1.f1063d && (c0081j1T = C0097m.t(c0105n1.b)) != null) {
                    try {
                        try {
                            int i2 = c0081j1T.f1019a;
                            if (i2 == 1) {
                                c0105n1.c((byte[]) c0081j1T.b);
                            } else if (i2 == 2) {
                                c0105n1.a((byte[]) c0081j1T.b);
                            } else if (i2 == 3) {
                                c0105n1.b((byte[]) c0081j1T.b);
                            } else if (i2 == 33) {
                                C0097m.A(c0105n1.f1062c, 34, (byte[]) c0081j1T.b);
                            }
                        } catch (Exception e2) {
                            if (c0105n1.f1063d) {
                                Log.w("ExSapoCast", "readLoop: " + e2.getMessage());
                            }
                        }
                    } catch (Throwable th) {
                        c0105n1.g("stream-end");
                        throw th;
                    }
                    break;
                }
                c0105n1.g("stream-end");
                return;
            default:
                C0105n1 c0105n2 = this.b;
                ?? r1 = C0097m.f1044c;
                if (r1 != 0) {
                    r1.a(c0105n2.f1065g, c0105n2.f1066h);
                    return;
                }
                return;
        }
    }

    public /* synthetic */ RunnableC0093l1(C0105n1 c0105n1, int i2) {
        this.b = c0105n1;
    }
}

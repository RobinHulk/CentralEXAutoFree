package T;

import android.graphics.Bitmap;
import android.os.Handler;

/* JADX INFO: renamed from: T.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0109o implements H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1075a;
    public final /* synthetic */ String b;

    public /* synthetic */ C0109o(String str, int i2) {
        this.f1075a = i2;
        this.b = str;
    }

    @Override // H0.l
    public final Object b(Object obj) {
        switch (this.f1075a) {
            case 0:
                C0115p c0115p = (C0115p) obj;
                I0.f.e(c0115p, "b");
                StringBuilder sb = new StringBuilder("  ");
                String str = c0115p.f1087d;
                sb.append(str);
                sb.append(") ");
                sb.append(this.b);
                sb.append('=');
                sb.append(str);
                sb.append("; echo \"MONITOR_BUILD=");
                return M.d0.g(sb, c0115p.f1085a, "\" ;;");
            default:
                String str2 = this.b;
                Bitmap bitmap = (Bitmap) obj;
                if (bitmap != null) {
                    B3 b3 = B3.f492a;
                    if (B3.m(bitmap, str2) != null) {
                        B3.f511v = true;
                        Handler handler = B3.f500k;
                        if (handler != null) {
                            handler.post(new RunnableC0026a0(3));
                        }
                    }
                }
                return v0.e.f4161c;
        }
    }
}

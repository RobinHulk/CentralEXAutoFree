package v;

import M.C0001b;
import T.C0081j1;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p020m.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p020m.f f4147a = new p020m.f(16);
    public static final ThreadPoolExecutor b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f4148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final k f4149d;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new j());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        f4148c = new Object();
        f4149d = new k();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0020 A[EDGE_INSN: B:10:0x0020->B:24:0x003d BREAK  A[LOOP:0: B:17:0x002d->B:23:0x003a]] */
    public static f a(String str, Context context, C0001b c0001b, int i2) {
        p020m.f fVar = f4147a;
        Typeface typeface = (Typeface) fVar.a(str);
        if (typeface != null) {
            return new f(typeface);
        }
        try {
            C0081j1 c0081j1A = c.a(context, c0001b);
            int i3 = 1;
            h[] hVarArr = (h[]) c0081j1A.b;
            int i4 = c0081j1A.f1019a;
            if (i4 != 0) {
                if (i4 != 1) {
                    i3 = -3;
                    break;
                }
                i3 = -2;
            } else if (hVarArr != null && hVarArr.length != 0) {
                i3 = 0;
                for (h hVar : hVarArr) {
                    int i5 = hVar.f4153e;
                    if (i5 != 0) {
                        if (i5 >= 0) {
                            i3 = i5;
                            break;
                        }
                        i3 = -3;
                        break;
                    }
                }
            }
            if (i3 != 0) {
                return new f(i3);
            }
            Typeface typefaceS = p028r.f.f4046a.s(context, hVarArr, i2);
            if (typefaceS == null) {
                return new f(-3);
            }
            fVar.b(str, typefaceS);
            return new f(typefaceS);
        } catch (PackageManager.NameNotFoundException unused) {
            return new f(-1);
        }
    }
}

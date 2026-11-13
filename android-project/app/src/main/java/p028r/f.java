package p028r;

import G.a;
import M.C0001b;
import T.G1;
import T.P4;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p002b0.c;
import p007e.AbstractC0201a;
import p020m.k;
import p026q.b;
import p026q.e;
import p026q.h;
import v.d;
import v.g;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AbstractC0201a f4046a;
    public static final p020m.f b;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f4046a = new h();
        } else {
            f4046a = new g();
        }
        b = new p020m.f(16);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0032  */
    public static Typeface a(Context context, e eVar, Resources resources, int i2, String str, int i3, int i4, b bVar, boolean z2) {
        Typeface typefaceR;
        Typeface typefaceCreate;
        Typeface typeface;
        int i5 = 1;
        int i6 = 0;
        int i7 = 2;
        int i8 = -3;
        if (eVar instanceof h) {
            h hVar = (h) eVar;
            String str2 = hVar.f4021d;
            typefaceR = null;
            if (str2 == null || str2.isEmpty()) {
                typefaceCreate = null;
            } else {
                typefaceCreate = Typeface.create(str2, 0);
                Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
                if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
                    typefaceCreate = null;
                }
            }
            if (typefaceCreate != null) {
                if (bVar != null) {
                    new Handler(Looper.getMainLooper()).post(new P4(bVar, 4, typefaceCreate));
                }
                return typefaceCreate;
            }
            boolean z3 = !z2 ? bVar != null : hVar.f4020c != 0;
            int i9 = z2 ? hVar.b : -1;
            Handler handler = new Handler(Looper.getMainLooper());
            A.e eVar2 = new A.e(25);
            eVar2.b = bVar;
            C0001b c0001b = hVar.f4019a;
            a aVar = new a(eVar2, handler);
            if (z3) {
                p020m.f fVar = g.f4147a;
                String str3 = ((String) c0001b.f) + "-" + i4;
                typeface = (Typeface) g.f4147a.a(str3);
                if (typeface != null) {
                    handler.post(new c(eVar2, i7, typeface));
                    typefaceR = typeface;
                } else if (i9 == -1) {
                    v.f fVarA = g.a(str3, context, c0001b, i4);
                    aVar.B(fVarA);
                    typefaceR = fVarA.f4146a;
                } else {
                    try {
                        try {
                            try {
                                v.f fVar2 = (v.f) g.b.submit(new d(str3, context, c0001b, i4, 0)).get(i9, TimeUnit.MILLISECONDS);
                                aVar.B(fVar2);
                                typefaceR = fVar2.f4146a;
                            } catch (InterruptedException e2) {
                                throw e2;
                            }
                        } catch (ExecutionException e3) {
                            throw new RuntimeException(e3);
                        } catch (TimeoutException unused) {
                            throw new InterruptedException("timeout");
                        }
                    } catch (InterruptedException unused2) {
                        ((Handler) aVar.f93c).post(new androidx.emoji2.text.g((A.e) aVar.b, i8, i7));
                    }
                }
            } else {
                p020m.f fVar3 = g.f4147a;
                String str4 = ((String) c0001b.f) + "-" + i4;
                typeface = (Typeface) g.f4147a.a(str4);
                if (typeface != null) {
                    handler.post(new c(eVar2, i7, typeface));
                    typefaceR = typeface;
                } else {
                    v.e eVar3 = new v.e(aVar, i6);
                    synchronized (g.f4148c) {
                        try {
                            k kVar = g.f4149d;
                            ArrayList arrayList = (ArrayList) kVar.getOrDefault(str4, null);
                            if (arrayList != null) {
                                arrayList.add(eVar3);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(eVar3);
                                kVar.put(str4, arrayList2);
                                d dVar = new d(str4, context, c0001b, i4, 1);
                                ThreadPoolExecutor threadPoolExecutor = g.b;
                                v.e eVar4 = new v.e(str4, i5);
                                Handler handler2 = Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
                                G1 g1 = new G1();
                                g1.b = dVar;
                                g1.f589c = eVar4;
                                g1.f590d = handler2;
                                threadPoolExecutor.execute(g1);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        } else {
            typefaceR = f4046a.r(context, (p026q.f) eVar, resources, i4);
            if (bVar != null) {
                if (typefaceR != null) {
                    new Handler(Looper.getMainLooper()).post(new P4(bVar, 4, typefaceR));
                } else {
                    bVar.a(-3);
                }
            }
        }
        if (typefaceR != null) {
            b.b(b(resources, i2, str, i3, i4), typefaceR);
        }
        return typefaceR;
    }

    public static String b(Resources resources, int i2, String str, int i3, int i4) {
        return resources.getResourcePackageName(i2) + '-' + str + '-' + i3 + '-' + i2 + '-' + i4;
    }
}

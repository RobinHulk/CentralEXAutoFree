package androidx.fragment.app;

import M.C0003d;
import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1928a;
    public final /* synthetic */ E b;

    public /* synthetic */ w(E e2, int i2) {
        this.f1928a = i2;
        this.b = e2;
    }

    public final void a(Object obj) {
        switch (this.f1928a) {
            case 0:
                androidx.activity.result.a aVar = (androidx.activity.result.a) obj;
                E e2 = this.b;
                B b = (B) e2.f1757w.pollFirst();
                if (b == null) {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                } else {
                    C0003d c0003d = e2.f1738c;
                    String str = b.f1728a;
                    AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187oF = c0003d.f(str);
                    if (abstractComponentCallbacksC0187oF == null) {
                        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
                    } else {
                        abstractComponentCallbacksC0187oF.k(b.b, aVar.f1436a, aVar.b);
                    }
                }
                break;
            case 1:
                Map map = (Map) obj;
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    iArr[i2] = ((Boolean) arrayList.get(i2)).booleanValue() ? 0 : -1;
                }
                E e3 = this.b;
                B b2 = (B) e3.f1757w.pollFirst();
                if (b2 == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                } else {
                    C0003d c0003d2 = e3.f1738c;
                    String str2 = b2.f1728a;
                    if (c0003d2.f(str2) == null) {
                        Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                    }
                }
                break;
            default:
                androidx.activity.result.a aVar2 = (androidx.activity.result.a) obj;
                E e4 = this.b;
                B b3 = (B) e4.f1757w.pollFirst();
                if (b3 == null) {
                    Log.w("FragmentManager", "No Activities were started for result for " + this);
                } else {
                    C0003d c0003d3 = e4.f1738c;
                    String str3 = b3.f1728a;
                    AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187oF2 = c0003d3.f(str3);
                    if (abstractComponentCallbacksC0187oF2 == null) {
                        Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str3);
                    } else {
                        abstractComponentCallbacksC0187oF2.k(b3.b, aVar2.f1436a, aVar2.b);
                    }
                }
                break;
        }
    }
}

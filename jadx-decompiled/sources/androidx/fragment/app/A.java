package androidx.fragment.app;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class A extends A.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1727c;

    public /* synthetic */ A(int i2) {
        this.f1727c = i2;
    }

    @Override // A.b
    public final Object W(int i2, Intent intent) {
        switch (this.f1727c) {
            case 0:
                return new androidx.activity.result.a(i2, intent);
            case 1:
                w0.r rVar = w0.r.f4191a;
                if (i2 != -1 || intent == null) {
                    return rVar;
                }
                String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                if (intArrayExtra == null || stringArrayExtra == null) {
                    return rVar;
                }
                ArrayList arrayList = new ArrayList(intArrayExtra.length);
                for (int i3 : intArrayExtra) {
                    arrayList.add(Boolean.valueOf(i3 == 0));
                }
                ArrayList arrayList2 = new ArrayList();
                for (String str : stringArrayExtra) {
                    if (str != null) {
                        arrayList2.add(str);
                    }
                }
                Iterator it = arrayList2.iterator();
                Iterator it2 = arrayList.iterator();
                ArrayList arrayList3 = new ArrayList(Math.min(w0.k.V(arrayList2), w0.k.V(arrayList)));
                while (it.hasNext() && it2.hasNext()) {
                    arrayList3.add(new v0.a(it.next(), it2.next()));
                }
                return w0.u.W(arrayList3);
            default:
                return new androidx.activity.result.a(i2, intent);
        }
    }
}

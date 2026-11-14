package N0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p007e.AbstractC0201a;
import w0.q;

/* JADX INFO: loaded from: classes.dex */
public abstract class h extends i {
    public static String m0(f fVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i2 = 0;
        for (Object obj : fVar) {
            i2++;
            if (i2 > 1) {
                sb.append((CharSequence) str);
            }
            A.b.f(sb, obj, null);
        }
        sb.append((CharSequence) "");
        String string = sb.toString();
        I0.f.d(string, "toString(...)");
        return string;
    }

    public static List n0(f fVar) {
        Iterator it = fVar.iterator();
        if (!it.hasNext()) {
            return q.f4190a;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return AbstractC0201a.G(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}

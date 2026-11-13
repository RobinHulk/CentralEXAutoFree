package w0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public abstract class u extends AbstractC0201a {
    public static Object T(LinkedHashMap linkedHashMap, Object obj) {
        Object obj2 = linkedHashMap.get(obj);
        if (obj2 != null || linkedHashMap.containsKey(obj)) {
            return obj2;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }

    public static int U(int i2) {
        if (i2 < 0) {
            return i2;
        }
        if (i2 < 3) {
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return (int) ((i2 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map V(v0.a... aVarArr) {
        if (aVarArr.length <= 0) {
            return r.f4191a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(U(aVarArr.length));
        for (v0.a aVar : aVarArr) {
            linkedHashMap.put(aVar.f4155a, aVar.b);
        }
        return linkedHashMap;
    }

    public static Map W(ArrayList arrayList) {
        r rVar = r.f4191a;
        int size = arrayList.size();
        if (size == 0) {
            return rVar;
        }
        if (size == 1) {
            v0.a aVar = (v0.a) arrayList.get(0);
            I0.f.e(aVar, "pair");
            Map mapSingletonMap = Collections.singletonMap(aVar.f4155a, aVar.b);
            I0.f.d(mapSingletonMap, "singletonMap(...)");
            return mapSingletonMap;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(U(arrayList.size()));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            v0.a aVar2 = (v0.a) it.next();
            linkedHashMap.put(aVar2.f4155a, aVar2.b);
        }
        return linkedHashMap;
    }
}

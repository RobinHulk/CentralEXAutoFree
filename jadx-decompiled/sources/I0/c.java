package I0;

import H0.o;
import H0.p;
import H0.q;
import H0.r;
import H0.s;
import H0.t;
import H0.u;
import H0.v;
import H0.w;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c implements M0.a, b {
    public static final Map b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f114a;

    static {
        List listT = w0.j.T(H0.a.class, H0.l.class, p.class, q.class, r.class, s.class, t.class, u.class, v.class, w.class, H0.b.class, H0.c.class, H0.d.class, H0.e.class, H0.f.class, H0.g.class, H0.h.class, H0.i.class, H0.j.class, H0.k.class, H0.m.class, H0.n.class, o.class);
        ArrayList arrayList = new ArrayList(w0.k.V(listT));
        int i2 = 0;
        for (Object obj : listT) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                w0.j.U();
                throw null;
            }
            arrayList.add(new v0.a((Class) obj, Integer.valueOf(i2)));
            i2 = i3;
        }
        b = w0.u.W(arrayList);
        HashMap map = new HashMap();
        map.put("boolean", "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put("float", "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        HashMap map2 = new HashMap();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        HashMap map3 = new HashMap();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        f.d(collectionValues, "<get-values>(...)");
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            f.b(str);
            sb.append(O0.j.S0(str, '.'));
            sb.append("CompanionObject");
            map3.put(sb.toString(), str.concat(".Companion"));
        }
        for (Map.Entry entry : b.entrySet()) {
            Class cls = (Class) entry.getKey();
            int iIntValue = ((Number) entry.getValue()).intValue();
            map3.put(cls.getName(), "kotlin.Function" + iIntValue);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(w0.u.U(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), O0.j.S0((String) entry2.getValue(), '.'));
        }
    }

    public c(Class cls) {
        this.f114a = cls;
    }

    @Override // I0.b
    public final Class a() {
        return this.f114a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && A.b.z(this).equals(A.b.z((M0.a) obj));
    }

    public final int hashCode() {
        return A.b.z(this).hashCode();
    }

    public final String toString() {
        return this.f114a.toString() + " (Kotlin reflection is not available)";
    }
}

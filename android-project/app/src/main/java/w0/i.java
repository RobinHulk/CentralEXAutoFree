package w0;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public abstract class i extends o {
    public static ArrayList X(List list, int i2) {
        ArrayList arrayList;
        Iterator it;
        if (i2 <= 0 || i2 <= 0) {
            throw new IllegalArgumentException(("size " + i2 + " must be greater than zero.").toString());
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            arrayList = new ArrayList((size / i2) + (size % i2 == 0 ? 0 : 1));
            int i3 = 0;
            while (i3 >= 0 && i3 < size) {
                int i4 = size - i3;
                if (i2 <= i4) {
                    i4 = i2;
                }
                ArrayList arrayList2 = new ArrayList(i4);
                for (int i5 = 0; i5 < i4; i5++) {
                    arrayList2.add(list.get(i5 + i3));
                }
                arrayList.add(arrayList2);
                i3 += i2;
            }
        } else {
            arrayList = new ArrayList();
            Iterator it2 = list.iterator();
            I0.f.e(it2, "iterator");
            if (it2.hasNext()) {
                N0.g gVar = new N0.g();
                x xVar = new x(i2, i2, it2, gVar);
                xVar.f = gVar;
                gVar.f405c = xVar;
                it = gVar;
            } else {
                it = p.f4189a;
            }
            while (it.hasNext()) {
                arrayList.add((List) it.next());
            }
        }
        return arrayList;
    }

    public static List Y(Iterable iterable) {
        I0.f.e(iterable, "<this>");
        return i0(k0(iterable));
    }

    public static Object Z(List list) {
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static Object a0(List list) {
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Object b0(List list, int i2) {
        I0.f.e(list, "<this>");
        if (i2 < 0 || i2 >= list.size()) {
            return null;
        }
        return list.get(i2);
    }

    public static final void c0(Iterable iterable, StringBuilder sb, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, H0.l lVar) {
        I0.f.e(iterable, "<this>");
        I0.f.e(charSequence, "separator");
        I0.f.e(charSequence2, "prefix");
        I0.f.e(charSequence3, "postfix");
        I0.f.e(charSequence4, "truncated");
        sb.append(charSequence2);
        int i3 = 0;
        for (Object obj : iterable) {
            i3++;
            if (i3 > 1) {
                sb.append(charSequence);
            }
            if (i2 >= 0 && i3 > i2) {
                break;
            } else {
                A.b.f(sb, obj, lVar);
            }
        }
        if (i2 >= 0 && i3 > i2) {
            sb.append(charSequence4);
        }
        sb.append(charSequence3);
    }

    public static String d0(Iterable iterable, String str, String str2, String str3, H0.l lVar, int i2) {
        if ((i2 & 1) != 0) {
            str = ", ";
        }
        String str4 = str;
        String str5 = (i2 & 2) != 0 ? "" : str2;
        String str6 = (i2 & 4) != 0 ? "" : str3;
        if ((i2 & 32) != 0) {
            lVar = null;
        }
        I0.f.e(iterable, "<this>");
        I0.f.e(str4, "separator");
        I0.f.e(str5, "prefix");
        I0.f.e(str6, "postfix");
        StringBuilder sb = new StringBuilder();
        c0(iterable, sb, str4, str5, str6, -1, "...", lVar);
        String string = sb.toString();
        I0.f.d(string, "toString(...)");
        return string;
    }

    public static ArrayList e0(List list, List list2) {
        ArrayList arrayList = new ArrayList(list2.size() + list.size());
        arrayList.addAll(list);
        arrayList.addAll(list2);
        return arrayList;
    }

    public static List f0(Iterable iterable, Comparator comparator) {
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return i0(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        I0.f.e(array, "<this>");
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        return h.T(array);
    }

    public static List g0(List list, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i2 + " is less than zero.").toString());
        }
        q qVar = q.f4190a;
        if (i2 == 0) {
            return qVar;
        }
        if (i2 >= list.size()) {
            return i0(list);
        }
        if (i2 == 1) {
            return AbstractC0201a.G(Z(list));
        }
        ArrayList arrayList = new ArrayList(i2);
        Iterator it = list.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i3++;
            if (i3 == i2) {
                break;
            }
        }
        int size = arrayList.size();
        if (size != 0) {
            return size != 1 ? arrayList : AbstractC0201a.G(arrayList.get(0));
        }
        return qVar;
    }

    public static final void h0(Iterable iterable, AbstractCollection abstractCollection) {
        I0.f.e(iterable, "<this>");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static List i0(Iterable iterable) {
        ArrayList arrayListJ0;
        I0.f.e(iterable, "<this>");
        boolean z2 = iterable instanceof Collection;
        q qVar = q.f4190a;
        if (z2) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return qVar;
            }
            if (size != 1) {
                return j0(collection);
            }
            return AbstractC0201a.G(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        }
        if (z2) {
            arrayListJ0 = j0((Collection) iterable);
        } else {
            ArrayList arrayList = new ArrayList();
            h0(iterable, arrayList);
            arrayListJ0 = arrayList;
        }
        int size2 = arrayListJ0.size();
        if (size2 != 0) {
            return size2 != 1 ? arrayListJ0 : AbstractC0201a.G(arrayListJ0.get(0));
        }
        return qVar;
    }

    public static ArrayList j0(Collection collection) {
        I0.f.e(collection, "<this>");
        return new ArrayList(collection);
    }

    public static Set k0(Iterable iterable) {
        I0.f.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        h0(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static Set l0(Iterable iterable) {
        s sVar = s.f4192a;
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return sVar;
        }
        if (size != 1) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(u.U(collection.size()));
            h0(iterable, linkedHashSet);
            return linkedHashSet;
        }
        Set setSingleton = Collections.singleton(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
        I0.f.d(setSingleton, "singleton(...)");
        return setSingleton;
    }
}

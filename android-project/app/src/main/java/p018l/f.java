package p018l;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class f implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f3831a;
    public c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakHashMap f3832c = new WeakHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3833d = 0;

    public c a(Object obj) {
        c cVar = this.f3831a;
        while (cVar != null && !cVar.f3826a.equals(obj)) {
            cVar = cVar.f3827c;
        }
        return cVar;
    }

    public Object b(Object obj) {
        c cVarA = a(obj);
        if (cVarA == null) {
            return null;
        }
        this.f3833d--;
        WeakHashMap weakHashMap = this.f3832c;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((e) it.next()).a(cVarA);
            }
        }
        c cVar = cVarA.f3828d;
        if (cVar != null) {
            cVar.f3827c = cVarA.f3827c;
        } else {
            this.f3831a = cVarA.f3827c;
        }
        c cVar2 = cVarA.f3827c;
        if (cVar2 != null) {
            cVar2.f3828d = cVar;
        } else {
            this.b = cVar;
        }
        cVarA.f3827c = null;
        cVarA.f3828d = null;
        return cVarA.b;
    }

    public final boolean equals(Object obj) {
        b bVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f3833d != fVar.f3833d) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = fVar.iterator();
        while (true) {
            bVar = (b) it;
            if (!bVar.hasNext()) {
                break;
            }
            b bVar2 = (b) it2;
            if (!bVar2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) bVar.next();
            Object next = bVar2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return (bVar.hasNext() || ((b) it2).hasNext()) ? false : true;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                return iHashCode;
            }
            iHashCode += ((Map.Entry) bVar.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        b bVar = new b(this.f3831a, this.b, 0);
        this.f3832c.put(bVar, Boolean.FALSE);
        return bVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) bVar.next()).toString());
            if (bVar.hasNext()) {
                sb.append(", ");
            }
        }
    }
}

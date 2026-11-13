package w0;

import com.sun.mail.imap.IMAPStore;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class x implements H0.p, z0.d, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z0.d f4200a;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Iterator f4201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4203e;
    public /* synthetic */ Object f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f4204g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f4205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Iterator f4206i;

    public x(int i2, int i3, Iterator it, z0.d dVar) {
        this.f4204g = i2;
        this.f4205h = i3;
        this.f4206i = it;
        this.f4200a = dVar;
        if (dVar.a() != z0.j.f4284a) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
    }

    @Override // z0.d
    public final z0.i a() {
        return z0.j.f4284a;
    }

    @Override // z0.d
    public final void b(Object obj) {
        z0.d dVar = this;
        while (true) {
            x xVar = (x) dVar;
            z0.d dVar2 = xVar.f4200a;
            try {
                obj = xVar.d(obj);
                if (obj == A0.a.f5a) {
                    return;
                }
            } catch (Throwable th) {
                obj = new v0.b(th);
            }
            xVar.getClass();
            if (!(dVar2 instanceof x)) {
                dVar2.b(obj);
                return;
            }
            dVar = dVar2;
        }
    }

    @Override // H0.p
    public final Object c(Object obj, Object obj2) {
        Iterator it = this.f4206i;
        x xVar = new x(this.f4204g, this.f4205h, it, (z0.d) obj2);
        xVar.f = (N0.g) obj;
        return xVar.d(v0.e.f4161c);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0083  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:60:0x012c  */
    /* JADX WARN: Code duplicated, block: B:62:0x013d  */
    /* JADX WARN: Code duplicated, block: B:64:0x0143  */
    /* JADX WARN: Code duplicated, block: B:69:0x011e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x010d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x008c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x007d A[SYNTHETIC] */
    public final Object d(Object obj) throws Throwable {
        int i2;
        w wVar;
        N0.g gVar;
        Iterator it;
        ArrayList arrayList;
        N0.g gVar2;
        Iterator it2;
        int i3;
        Object next;
        w wVar2;
        N0.g gVar3;
        Object next2;
        int iA;
        int i4;
        Object[] objArr;
        int i5;
        Object[] array;
        A0.a aVar = A0.a.f5a;
        int i6 = this.f4203e;
        int i7 = this.f4205h;
        int i8 = this.f4204g;
        if (i6 == 0) {
            AbstractC0201a.S(obj);
            N0.g gVar4 = (N0.g) this.f;
            int i9 = i8 <= 1024 ? i8 : 1024;
            i2 = i7 - i8;
            Iterator it3 = this.f4206i;
            if (i2 >= 0) {
                arrayList = new ArrayList(i9);
                gVar2 = gVar4;
                it2 = it3;
                i3 = 0;
                while (it2.hasNext()) {
                    next = it2.next();
                    if (i3 > 0) {
                        i3--;
                    } else {
                        arrayList.add(next);
                        if (arrayList.size() == i8) {
                            this.f = gVar2;
                            this.b = arrayList;
                            this.f4201c = it2;
                            this.f4202d = i2;
                            this.f4203e = 1;
                            gVar2.d(arrayList, this);
                            return aVar;
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.f = null;
                    this.b = null;
                    this.f4201c = null;
                    this.f4203e = 2;
                    gVar2.d(arrayList, this);
                    return aVar;
                }
            } else {
                wVar = new w(0, new Object[i9]);
                gVar = gVar4;
                it = it3;
                while (it.hasNext()) {
                    next2 = it.next();
                    iA = wVar.a();
                    i4 = wVar.b;
                    if (iA != i4) {
                        throw new IllegalStateException("ring buffer is full");
                    }
                    int i10 = wVar.f4198c;
                    int i11 = wVar.f4199d;
                    objArr = wVar.f4197a;
                    objArr[(i10 + i11) % i4] = next2;
                    wVar.f4199d = i11 + 1;
                    if (wVar.a() != i4) {
                        if (wVar.f4199d < i8) {
                            ArrayList arrayList2 = new ArrayList(wVar);
                            this.f = gVar;
                            this.b = wVar;
                            this.f4201c = it;
                            this.f4203e = 3;
                            gVar.d(arrayList2, this);
                            return aVar;
                        }
                        i5 = i4 + (i4 >> 1) + 1;
                        if (i5 > i8) {
                            i5 = i8;
                        }
                        if (wVar.f4198c == 0) {
                            array = Arrays.copyOf(objArr, i5);
                            I0.f.d(array, "copyOf(...)");
                        } else {
                            array = wVar.toArray(new Object[i5]);
                        }
                        wVar = new w(wVar.f4199d, array);
                    }
                }
                wVar2 = wVar;
                gVar3 = gVar;
                if (wVar2.f4199d > i7) {
                    ArrayList arrayList3 = new ArrayList(wVar2);
                    this.f = gVar3;
                    this.b = wVar2;
                    this.f4201c = null;
                    this.f4203e = 4;
                    gVar3.d(arrayList3, this);
                    return aVar;
                }
                if (!wVar2.isEmpty()) {
                    this.f = null;
                    this.b = null;
                    this.f4201c = null;
                    this.f4203e = 5;
                    gVar3.d(wVar2, this);
                    return aVar;
                }
            }
        } else if (i6 != 1) {
            if (i6 != 2) {
                if (i6 == 3) {
                    it = this.f4201c;
                    wVar = (w) this.b;
                    gVar = (N0.g) this.f;
                    AbstractC0201a.S(obj);
                    wVar.b(i7);
                    while (it.hasNext()) {
                        next2 = it.next();
                        iA = wVar.a();
                        i4 = wVar.b;
                        if (iA != i4) {
                            throw new IllegalStateException("ring buffer is full");
                        }
                        int i12 = wVar.f4198c;
                        int i13 = wVar.f4199d;
                        objArr = wVar.f4197a;
                        objArr[(i12 + i13) % i4] = next2;
                        wVar.f4199d = i13 + 1;
                        if (wVar.a() != i4) {
                            if (wVar.f4199d < i8) {
                                ArrayList arrayList4 = new ArrayList(wVar);
                                this.f = gVar;
                                this.b = wVar;
                                this.f4201c = it;
                                this.f4203e = 3;
                                gVar.d(arrayList4, this);
                                return aVar;
                            }
                            i5 = i4 + (i4 >> 1) + 1;
                            if (i5 > i8) {
                                i5 = i8;
                            }
                            if (wVar.f4198c == 0) {
                                array = Arrays.copyOf(objArr, i5);
                                I0.f.d(array, "copyOf(...)");
                            } else {
                                array = wVar.toArray(new Object[i5]);
                            }
                            wVar = new w(wVar.f4199d, array);
                        }
                    }
                    wVar2 = wVar;
                    gVar3 = gVar;
                } else if (i6 == 4) {
                    wVar2 = (w) this.b;
                    gVar3 = (N0.g) this.f;
                    AbstractC0201a.S(obj);
                    wVar2.b(i7);
                } else if (i6 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                if (wVar2.f4199d > i7) {
                    ArrayList arrayList5 = new ArrayList(wVar2);
                    this.f = gVar3;
                    this.b = wVar2;
                    this.f4201c = null;
                    this.f4203e = 4;
                    gVar3.d(arrayList5, this);
                    return aVar;
                }
                if (!wVar2.isEmpty()) {
                    this.f = null;
                    this.b = null;
                    this.f4201c = null;
                    this.f4203e = 5;
                    gVar3.d(wVar2, this);
                    return aVar;
                }
            }
            AbstractC0201a.S(obj);
        } else {
            i3 = this.f4202d;
            it2 = this.f4201c;
            gVar2 = (N0.g) this.f;
            AbstractC0201a.S(obj);
            arrayList = new ArrayList(i8);
            i2 = i3;
            while (it2.hasNext()) {
                next = it2.next();
                if (i3 > 0) {
                    i3--;
                } else {
                    arrayList.add(next);
                    if (arrayList.size() == i8) {
                        this.f = gVar2;
                        this.b = arrayList;
                        this.f4201c = it2;
                        this.f4202d = i2;
                        this.f4203e = 1;
                        gVar2.d(arrayList, this);
                        return aVar;
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                this.f = null;
                this.b = null;
                this.f4201c = null;
                this.f4203e = 2;
                gVar2.d(arrayList, this);
                return aVar;
            }
        }
        return v0.e.f4161c;
    }

    public void e() {
    }

    public String toString() {
        int iIntValue;
        String strC;
        StringBuilder sb = new StringBuilder("Continuation at ");
        B0.a aVar = (B0.a) getClass().getAnnotation(B0.a.class);
        Object name = null;
        str = null;
        str = null;
        str = null;
        String str = null;
        if (aVar != null) {
            int iV = aVar.v();
            if (iV > 1) {
                throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + iV + ". Please update the Kotlin standard library.").toString());
            }
            try {
                Field declaredField = getClass().getDeclaredField("label");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(this);
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                iIntValue = (num != null ? num.intValue() : 0) - 1;
            } catch (Exception unused) {
                iIntValue = -1;
            }
            int i2 = iIntValue >= 0 ? aVar.l()[iIntValue] : -1;
            B0.b bVar = B0.c.b;
            B0.b bVar2 = B0.c.f35a;
            if (bVar == null) {
                try {
                    B0.b bVar3 = new B0.b(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod(IMAPStore.ID_NAME, null));
                    B0.c.b = bVar3;
                    bVar = bVar3;
                } catch (Exception unused2) {
                    B0.c.b = bVar2;
                    bVar = bVar2;
                }
            }
            if (bVar != bVar2) {
                Method method = bVar.f33a;
                Object objInvoke = method != null ? method.invoke(getClass(), null) : null;
                if (objInvoke != null) {
                    Method method2 = bVar.b;
                    Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, null) : null;
                    if (objInvoke2 != null) {
                        Method method3 = bVar.f34c;
                        Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, null) : null;
                        if (objInvoke3 instanceof String) {
                            str = (String) objInvoke3;
                        }
                    }
                }
            }
            if (str == null) {
                strC = aVar.c();
            } else {
                strC = str + '/' + aVar.c();
            }
            name = new StackTraceElement(strC, aVar.m(), aVar.f(), i2);
        }
        if (name == null) {
            name = getClass().getName();
        }
        sb.append(name);
        return sb.toString();
    }
}

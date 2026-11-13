package O0;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class t extends I0.g implements H0.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f429a;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f430c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t(Object obj, boolean z2, int i2) {
        super(2);
        this.f429a = i2;
        this.f430c = obj;
        this.b = z2;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x009c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x009e A[LOOP:0: B:26:0x006b->B:37:0x009e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:50:0x00cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d1 A[LOOP:2: B:40:0x00a4->B:51:0x00d1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:52:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:61:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x00d4 A[SYNTHETIC] */
    @Override // H0.p
    public final Object c(Object obj, Object obj2) {
        Object next;
        String str;
        v0.a aVar;
        String str2;
        Object next2;
        String str3;
        String str4;
        switch (this.f429a) {
            case 0:
                CharSequence charSequence = (CharSequence) obj;
                int iIntValue = ((Number) obj2).intValue();
                I0.f.e(charSequence, "$this$$receiver");
                int iD0 = j.D0(charSequence, (char[]) this.f430c, iIntValue, this.b);
                if (iD0 < 0) {
                    return null;
                }
                return new v0.a(Integer.valueOf(iD0), 1);
            default:
                CharSequence charSequence2 = (CharSequence) obj;
                int iIntValue2 = ((Number) obj2).intValue();
                I0.f.e(charSequence2, "$this$$receiver");
                List list = (List) this.f430c;
                boolean z2 = this.b;
                if (z2 || list.size() != 1) {
                    if (iIntValue2 < 0) {
                        iIntValue2 = 0;
                    }
                    boolean z3 = charSequence2 instanceof String;
                    int i2 = new L0.c(iIntValue2, charSequence2.length(), 1).b;
                    if (z3) {
                        if (iIntValue2 > i2) {
                            aVar = null;
                        } else {
                            while (true) {
                                Iterator it = list.iterator();
                                do {
                                    if (it.hasNext()) {
                                        next2 = it.next();
                                        str4 = (String) next2;
                                    } else {
                                        next2 = null;
                                    }
                                    str3 = (String) next2;
                                    if (str3 != null) {
                                        aVar = new v0.a(Integer.valueOf(iIntValue2), str3);
                                    } else if (iIntValue2 != i2) {
                                        iIntValue2++;
                                    } else {
                                        aVar = null;
                                    }
                                } while (!s.t0(0, iIntValue2, str4.length(), str4, (String) charSequence2, z2));
                                str3 = (String) next2;
                                if (str3 != null) {
                                    aVar = new v0.a(Integer.valueOf(iIntValue2), str3);
                                } else if (iIntValue2 != i2) {
                                    iIntValue2++;
                                } else {
                                    aVar = null;
                                }
                            }
                        }
                    } else if (iIntValue2 > i2) {
                        aVar = null;
                    } else {
                        while (true) {
                            Iterator it2 = list.iterator();
                            do {
                                if (it2.hasNext()) {
                                    next = it2.next();
                                    str2 = (String) next;
                                } else {
                                    next = null;
                                }
                                str = (String) next;
                                if (str != null) {
                                    aVar = new v0.a(Integer.valueOf(iIntValue2), str);
                                } else if (iIntValue2 != i2) {
                                    iIntValue2++;
                                } else {
                                    aVar = null;
                                }
                            } while (!j.J0(str2, charSequence2, iIntValue2, str2.length(), z2));
                            str = (String) next;
                            if (str != null) {
                                aVar = new v0.a(Integer.valueOf(iIntValue2), str);
                            } else if (iIntValue2 != i2) {
                                iIntValue2++;
                            } else {
                                aVar = null;
                            }
                        }
                    }
                } else {
                    int size = list.size();
                    if (size == 0) {
                        throw new NoSuchElementException("List is empty.");
                    }
                    if (size != 1) {
                        throw new IllegalArgumentException("List has more than one element.");
                    }
                    String str5 = (String) list.get(0);
                    int iB0 = j.B0(charSequence2, str5, iIntValue2, false, 4);
                    if (iB0 < 0) {
                        aVar = null;
                    } else {
                        aVar = new v0.a(Integer.valueOf(iB0), str5);
                    }
                }
                if (aVar == null) {
                    return null;
                }
                return new v0.a(aVar.f4155a, Integer.valueOf(((String) aVar.b).length()));
        }
    }
}

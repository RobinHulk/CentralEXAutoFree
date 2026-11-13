package M;

import T.C0081j1;
import android.util.Base64;
import androidx.recyclerview.widget.RecyclerView;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: M.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0001b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f203a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Serializable f204c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Serializable f205d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f206e;
    public final Object f;

    public C0001b(String str, String str2, String str3, List list) {
        this.f203a = 1;
        str.getClass();
        this.b = str;
        str2.getClass();
        this.f204c = str2;
        this.f205d = str3;
        list.getClass();
        this.f206e = list;
        this.f = str + "-" + str2 + "-" + str3;
    }

    public boolean a(int i2) {
        ArrayList arrayList = (ArrayList) this.f205d;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            C0000a c0000a = (C0000a) arrayList.get(i3);
            int i4 = c0000a.f189a;
            if (i4 == 8) {
                if (e(c0000a.f190c, i3 + 1) == i2) {
                    return true;
                }
            } else if (i4 == 1) {
                int i5 = c0000a.b;
                int i6 = c0000a.f190c + i5;
                while (i5 < i6) {
                    if (e(i5, i3 + 1) == i2) {
                        return true;
                    }
                    i5++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public void b() {
        ArrayList arrayList = (ArrayList) this.f205d;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((E) this.f206e).a((C0000a) arrayList.get(i2));
        }
        i(arrayList);
        ArrayList arrayList2 = (ArrayList) this.f204c;
        int size2 = arrayList2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            C0000a c0000a = (C0000a) arrayList2.get(i3);
            int i4 = c0000a.f189a;
            E e2 = (E) this.f206e;
            if (i4 == 1) {
                e2.a(c0000a);
                e2.d(c0000a.b, c0000a.f190c);
            } else if (i4 == 2) {
                e2.a(c0000a);
                int i5 = c0000a.b;
                int i6 = c0000a.f190c;
                RecyclerView recyclerView = e2.f146a;
                recyclerView.O(i5, i6, true);
                recyclerView.f2042f0 = true;
                recyclerView.f2037c0.f192c += i6;
            } else if (i4 == 4) {
                e2.a(c0000a);
                e2.c(c0000a.b, c0000a.f190c);
            } else if (i4 == 8) {
                e2.a(c0000a);
                e2.e(c0000a.b, c0000a.f190c);
            }
        }
        i(arrayList2);
    }

    public void c(C0000a c0000a) {
        int i2;
        C0081j1 c0081j1;
        int i3 = c0000a.f189a;
        if (i3 == 1 || i3 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iJ = j(c0000a.b, i3);
        int i4 = c0000a.b;
        int i5 = c0000a.f189a;
        if (i5 == 2) {
            i2 = 0;
        } else {
            if (i5 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + c0000a);
            }
            i2 = 1;
        }
        int i6 = 1;
        int i7 = 1;
        while (true) {
            int i8 = c0000a.f190c;
            c0081j1 = (C0081j1) this.b;
            if (i6 >= i8) {
                break;
            }
            int iJ2 = j((i2 * i6) + c0000a.b, c0000a.f189a);
            int i9 = c0000a.f189a;
            if (i9 == 2 ? iJ2 != iJ : !(i9 == 4 && iJ2 == iJ + 1)) {
                C0000a c0000aG = g(i9, iJ, i7);
                d(c0000aG, i4);
                c0081j1.c(c0000aG);
                if (c0000a.f189a == 4) {
                    i4 += i7;
                }
                i7 = 1;
                iJ = iJ2;
            } else {
                i7++;
            }
            i6++;
        }
        c0081j1.c(c0000a);
        if (i7 > 0) {
            C0000a c0000aG2 = g(c0000a.f189a, iJ, i7);
            d(c0000aG2, i4);
            c0081j1.c(c0000aG2);
        }
    }

    public void d(C0000a c0000a, int i2) {
        E e2 = (E) this.f206e;
        e2.a(c0000a);
        int i3 = c0000a.f189a;
        if (i3 != 2) {
            if (i3 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            e2.c(i2, c0000a.f190c);
        } else {
            int i4 = c0000a.f190c;
            RecyclerView recyclerView = e2.f146a;
            recyclerView.O(i2, i4, true);
            recyclerView.f2042f0 = true;
            recyclerView.f2037c0.f192c += i4;
        }
    }

    public int e(int i2, int i3) {
        ArrayList arrayList = (ArrayList) this.f205d;
        int size = arrayList.size();
        while (i3 < size) {
            C0000a c0000a = (C0000a) arrayList.get(i3);
            int i4 = c0000a.f189a;
            if (i4 == 8) {
                int i5 = c0000a.b;
                if (i5 == i2) {
                    i2 = c0000a.f190c;
                } else {
                    if (i5 < i2) {
                        i2--;
                    }
                    if (c0000a.f190c <= i2) {
                        i2++;
                    }
                }
            } else {
                int i6 = c0000a.b;
                if (i6 > i2) {
                    continue;
                } else if (i4 == 2) {
                    int i7 = c0000a.f190c;
                    if (i2 < i6 + i7) {
                        return -1;
                    }
                    i2 -= i7;
                } else if (i4 == 1) {
                    i2 += c0000a.f190c;
                }
            }
            i3++;
        }
        return i2;
    }

    public boolean f() {
        return ((ArrayList) this.f204c).size() > 0;
    }

    public C0000a g(int i2, int i3, int i4) {
        C0000a c0000a = (C0000a) ((C0081j1) this.b).a();
        if (c0000a != null) {
            c0000a.f189a = i2;
            c0000a.b = i3;
            c0000a.f190c = i4;
            return c0000a;
        }
        C0000a c0000a2 = new C0000a();
        c0000a2.f189a = i2;
        c0000a2.b = i3;
        c0000a2.f190c = i4;
        return c0000a2;
    }

    public void h(C0000a c0000a) {
        ((ArrayList) this.f205d).add(c0000a);
        int i2 = c0000a.f189a;
        E e2 = (E) this.f206e;
        if (i2 == 1) {
            e2.d(c0000a.b, c0000a.f190c);
            return;
        }
        if (i2 == 2) {
            int i3 = c0000a.b;
            int i4 = c0000a.f190c;
            RecyclerView recyclerView = e2.f146a;
            recyclerView.O(i3, i4, false);
            recyclerView.f2042f0 = true;
            return;
        }
        if (i2 == 4) {
            e2.c(c0000a.b, c0000a.f190c);
        } else if (i2 == 8) {
            e2.e(c0000a.b, c0000a.f190c);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + c0000a);
        }
    }

    public void i(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0000a c0000a = (C0000a) arrayList.get(i2);
            c0000a.getClass();
            ((C0081j1) this.b).c(c0000a);
        }
        arrayList.clear();
    }

    public int j(int i2, int i3) {
        int i4;
        int i5;
        ArrayList arrayList = (ArrayList) this.f205d;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0000a c0000a = (C0000a) arrayList.get(size);
            int i6 = c0000a.f189a;
            if (i6 == 8) {
                int i7 = c0000a.b;
                int i8 = c0000a.f190c;
                if (i7 < i8) {
                    i5 = i7;
                    i4 = i8;
                } else {
                    i4 = i7;
                    i5 = i8;
                }
                if (i2 < i5 || i2 > i4) {
                    if (i2 < i7) {
                        if (i3 == 1) {
                            c0000a.b = i7 + 1;
                            c0000a.f190c = i8 + 1;
                        } else if (i3 == 2) {
                            c0000a.b = i7 - 1;
                            c0000a.f190c = i8 - 1;
                        }
                    }
                } else if (i5 == i7) {
                    if (i3 == 1) {
                        c0000a.f190c = i8 + 1;
                    } else if (i3 == 2) {
                        c0000a.f190c = i8 - 1;
                    }
                    i2++;
                } else {
                    if (i3 == 1) {
                        c0000a.b = i7 + 1;
                    } else if (i3 == 2) {
                        c0000a.b = i7 - 1;
                    }
                    i2--;
                }
            } else {
                int i9 = c0000a.b;
                if (i9 <= i2) {
                    if (i6 == 1) {
                        i2 -= c0000a.f190c;
                    } else if (i6 == 2) {
                        i2 += c0000a.f190c;
                    }
                } else if (i3 == 1) {
                    c0000a.b = i9 + 1;
                } else if (i3 == 2) {
                    c0000a.b = i9 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            C0000a c0000a2 = (C0000a) arrayList.get(size2);
            int i10 = c0000a2.f189a;
            C0081j1 c0081j1 = (C0081j1) this.b;
            if (i10 == 8) {
                int i11 = c0000a2.f190c;
                if (i11 == c0000a2.b || i11 < 0) {
                    arrayList.remove(size2);
                    c0081j1.c(c0000a2);
                }
            } else if (c0000a2.f190c <= 0) {
                arrayList.remove(size2);
                c0081j1.c(c0000a2);
            }
        }
        return i2;
    }

    public String toString() {
        switch (this.f203a) {
            case 1:
                StringBuilder sb = new StringBuilder();
                sb.append("FontRequest {mProviderAuthority: " + ((String) this.b) + ", mProviderPackage: " + ((String) this.f204c) + ", mQuery: " + ((String) this.f205d) + ", mCertificates:");
                int i2 = 0;
                while (true) {
                    List list = (List) this.f206e;
                    if (i2 >= list.size()) {
                        sb.append("}mCertificatesArray: 0");
                        return sb.toString();
                    }
                    sb.append(" [");
                    List list2 = (List) list.get(i2);
                    for (int i3 = 0; i3 < list2.size(); i3++) {
                        sb.append(" \"");
                        sb.append(Base64.encodeToString((byte[]) list2.get(i3), 0));
                        sb.append("\"");
                    }
                    sb.append(" ]");
                    i2++;
                }
                break;
            default:
                return super.toString();
        }
    }

    public C0001b(E e2) {
        this.f203a = 0;
        this.b = new C0081j1(30);
        this.f204c = new ArrayList();
        this.f205d = new ArrayList();
        this.f206e = e2;
        this.f = new A.e(this, 4);
    }
}

package androidx.fragment.app;

import android.util.Log;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: renamed from: androidx.fragment.app.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0173a implements C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1806a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1807c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1809e;
    public int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1810g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f1811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1812i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f1813j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1814k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f1815l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList f1816m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList f1817n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1818o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final E f1819p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1820q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1821r;

    public C0173a(E e2) {
        e2.A();
        r rVar = e2.f1748n;
        if (rVar != null) {
            rVar.f1916d.getClassLoader();
        }
        this.f1806a = new ArrayList();
        this.f1818o = false;
        this.f1821r = -1;
        this.f1819p = e2;
    }

    @Override // androidx.fragment.app.C
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f1810g) {
            return true;
        }
        E e2 = this.f1819p;
        if (e2.f1739d == null) {
            e2.f1739d = new ArrayList();
        }
        e2.f1739d.add(this);
        return true;
    }

    public final void b(L l2) {
        this.f1806a.add(l2);
        l2.f1790c = this.b;
        l2.f1791d = this.f1807c;
        l2.f1792e = this.f1808d;
        l2.f = this.f1809e;
    }

    public final void c(int i2) {
        if (this.f1810g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i2);
            }
            ArrayList arrayList = this.f1806a;
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                L l2 = (L) arrayList.get(i3);
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o = l2.b;
                if (abstractComponentCallbacksC0187o != null) {
                    abstractComponentCallbacksC0187o.f1903q += i2;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Bump nesting of " + l2.b + " to " + l2.b.f1903q);
                    }
                }
            }
        }
    }

    public final void d(String str, PrintWriter printWriter, boolean z2) {
        String str2;
        if (z2) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f1811h);
            printWriter.print(" mIndex=");
            printWriter.print(this.f1821r);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f1820q);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
            }
            if (this.b != 0 || this.f1807c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1807c));
            }
            if (this.f1808d != 0 || this.f1809e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1808d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1809e));
            }
            if (this.f1812i != 0 || this.f1813j != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1812i));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f1813j);
            }
            if (this.f1814k != 0 || this.f1815l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1814k));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f1815l);
            }
        }
        ArrayList arrayList = this.f1806a;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            L l2 = (L) arrayList.get(i2);
            switch (l2.f1789a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case PlaybackState.STATE_ERROR /* 7 */:
                    str2 = "ATTACH";
                    break;
                case Response.NO /* 8 */:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + l2.f1789a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i2);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(l2.b);
            if (z2) {
                if (l2.f1790c != 0 || l2.f1791d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(l2.f1790c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(l2.f1791d));
                }
                if (l2.f1792e != 0 || l2.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(l2.f1792e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(l2.f));
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f1821r >= 0) {
            sb.append(" #");
            sb.append(this.f1821r);
        }
        if (this.f1811h != null) {
            sb.append(" ");
            sb.append(this.f1811h);
        }
        sb.append("}");
        return sb.toString();
    }
}

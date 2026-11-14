package androidx.emoji2.text;

import T.C0081j1;
import android.content.Context;
import android.graphics.Typeface;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import p007e.AbstractC0201a;
import p012i.B;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1719a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1721d;

    public q() {
        this.f1719a = new C0081j1(10);
        this.b = new p020m.k();
        this.f1720c = new ArrayList();
        this.f1721d = new HashSet();
    }

    public void a(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((p020m.k) this.b).getOrDefault(obj, null);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                a(arrayList2.get(i2), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public p011h.f b(p011h.a aVar) {
        ArrayList arrayList = (ArrayList) this.f1720c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            p011h.f fVar = (p011h.f) arrayList.get(i2);
            if (fVar != null && fVar.b == aVar) {
                return fVar;
            }
        }
        p011h.f fVar2 = new p011h.f((Context) this.b, aVar);
        arrayList.add(fVar2);
        return fVar2;
    }

    public boolean c(p011h.a aVar, MenuItem menuItem) {
        return ((ActionMode.Callback) this.f1719a).onActionItemClicked(b(aVar), new p012i.s((Context) this.b, (p030t.a) menuItem));
    }

    public boolean d(p011h.a aVar, p012i.l lVar) {
        p011h.f fVarB = b(aVar);
        p020m.k kVar = (p020m.k) this.f1721d;
        Menu b = (Menu) kVar.getOrDefault(lVar, null);
        if (b == null) {
            b = new B((Context) this.b, lVar);
            kVar.put(lVar, b);
        }
        return ((ActionMode.Callback) this.f1719a).onCreateActionMode(fVarB, b);
    }

    public q(Typeface typeface, F.b bVar) {
        int i2;
        int i3;
        this.f1721d = typeface;
        this.f1719a = bVar;
        this.f1720c = new p(1024);
        int iA = bVar.a(6);
        if (iA != 0) {
            int i4 = iA + bVar.f86a;
            i2 = ((ByteBuffer) bVar.f88d).getInt(((ByteBuffer) bVar.f88d).getInt(i4) + i4);
        } else {
            i2 = 0;
        }
        this.b = new char[i2 * 2];
        int iA2 = bVar.a(6);
        if (iA2 != 0) {
            int i5 = iA2 + bVar.f86a;
            i3 = ((ByteBuffer) bVar.f88d).getInt(((ByteBuffer) bVar.f88d).getInt(i5) + i5);
        } else {
            i3 = 0;
        }
        for (int i6 = 0; i6 < i3; i6++) {
            l lVar = new l(this, i6);
            F.a aVarC = lVar.c();
            int iA3 = aVarC.a(4);
            Character.toChars(iA3 != 0 ? ((ByteBuffer) aVarC.f88d).getInt(iA3 + aVarC.f86a) : 0, (char[]) this.b, i6 * 2);
            AbstractC0201a.h("invalid metadata codepoint length", lVar.b() > 0);
            ((p) this.f1720c).a(lVar, 0, lVar.b() - 1);
        }
    }

    public q(Context context, ActionMode.Callback callback) {
        this.b = context;
        this.f1719a = callback;
        this.f1720c = new ArrayList();
        this.f1721d = new p020m.k();
    }
}

package androidx.activity;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Random f1411a = new Random();
    public final HashMap b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f1412c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f1413d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f1414e = new ArrayList();
    public final transient HashMap f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap f1415g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Bundle f1416h = new Bundle();

    public final boolean a(int i2, int i3, Intent intent) {
        String str = (String) this.b.get(Integer.valueOf(i2));
        if (str == null) {
            return false;
        }
        androidx.activity.result.b bVar = (androidx.activity.result.b) this.f.get(str);
        if (bVar != null) {
            w wVar = bVar.f1437a;
            if (this.f1414e.contains(str)) {
                wVar.a(bVar.b.W(i3, intent));
                this.f1414e.remove(str);
                return true;
            }
        }
        this.f1415g.remove(str);
        this.f1416h.putParcelable(str, new androidx.activity.result.a(i3, intent));
        return true;
    }

    public final G.a b(String str, A.b bVar, w wVar) {
        int i2;
        HashMap map;
        HashMap map2 = this.f1412c;
        if (((Integer) map2.get(str)) == null) {
            int iNextInt = this.f1411a.nextInt(2147418112);
            while (true) {
                i2 = iNextInt + 65536;
                map = this.b;
                if (!map.containsKey(Integer.valueOf(i2))) {
                    break;
                }
                iNextInt = this.f1411a.nextInt(2147418112);
            }
            map.put(Integer.valueOf(i2), str);
            map2.put(str, Integer.valueOf(i2));
        }
        this.f.put(str, new androidx.activity.result.b(wVar, bVar));
        HashMap map3 = this.f1415g;
        if (map3.containsKey(str)) {
            Object obj = map3.get(str);
            map3.remove(str);
            wVar.a(obj);
        }
        Bundle bundle = this.f1416h;
        androidx.activity.result.a aVar = (androidx.activity.result.a) bundle.getParcelable(str);
        if (aVar != null) {
            bundle.remove(str);
            wVar.a(bVar.W(aVar.f1436a, aVar.b));
        }
        return new G.a(this, 6, str);
    }
}

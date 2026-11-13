package p014j;

import android.content.Context;
import android.graphics.RectF;
import android.os.Build;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0227f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3593a = 0;
    public float b = -1.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f3594c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f3595d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f3596e = new int[0];
    public boolean f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final TextView f3597g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f3598h;

    static {
        new RectF();
        new ConcurrentHashMap();
        new ConcurrentHashMap();
    }

    public C0227f0(TextView textView) {
        this.f3597g = textView;
        this.f3598h = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            new C0223d0();
        } else {
            new C0221c0();
        }
    }

    public static int[] a(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            if (i2 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i2)) < 0) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            iArr2[i3] = ((Integer) arrayList.get(i3)).intValue();
        }
        return iArr2;
    }

    public final boolean b() {
        return !(this.f3597g instanceof C0255u);
    }
}

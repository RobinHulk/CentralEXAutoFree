package p006d0;

import E.e;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.WeakHashMap;
import p034y.AbstractC0290y;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f2938a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2939c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f2940d;

    public d(BottomSheetBehavior bottomSheetBehavior, View view, int i2) {
        this.f2940d = bottomSheetBehavior;
        this.f2938a = view;
        this.f2939c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BottomSheetBehavior bottomSheetBehavior = this.f2940d;
        e eVar = bottomSheetBehavior.f2709z;
        if (eVar == null || !eVar.f()) {
            bottomSheetBehavior.z(this.f2939c);
        } else {
            WeakHashMap weakHashMap = N.f4222a;
            AbstractC0290y.m(this.f2938a, this);
        }
        this.b = false;
    }
}

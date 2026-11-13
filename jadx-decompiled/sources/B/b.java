package B;

import M.C0005f;
import M.C0008i;
import M.C0009j;
import M.C0010k;
import M.C0014o;
import M.K;
import M.RunnableC0004e;
import M.e0;
import T.B;
import T.H;
import T.H1;
import T.RunnableC0052e2;
import T.x4;
import android.animation.ValueAnimator;
import android.appwidget.AppWidgetManager;
import android.car.hardware.property.CarPropertyManager;
import android.content.ComponentName;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.AnimationAnimationListenerC0176d;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0184l;
import androidx.fragment.app.E;
import androidx.lifecycle.z;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.ex.auto.AppPipFloaterService;
import com.ex.auto.DriveModeVerticalWidgetProvider;
import com.ex.auto.DriveRegenWidgetProvider;
import com.ex.auto.FanSpeedVerticalWidgetProvider;
import com.ex.auto.FanSpeedWidgetProvider;
import com.ex.auto.HeatingTestWidgetProvider;
import com.ex.auto.HomeWidgetsPollService;
import com.ex.auto.HvacDirectionFanWidgetProvider;
import com.ex.auto.HvacDirectionVerticalWidgetProvider;
import com.ex.auto.HvacDirectionWidgetProvider;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.RegenVerticalWidgetProvider;
import com.ex.auto.TemperatureVerticalWidgetProvider;
import com.ex.auto.TemperatureWidgetProvider;
import com.ex.auto.TimerFloaterService;
import com.geely.driveregenfloater.DriveRegenFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import p014j.C0234j;
import p014j.C0252s0;
import p034y.AbstractC0290y;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13a;
    public final /* synthetic */ Object b;

    public /* synthetic */ b(Object obj, int i2) {
        this.f13a = i2;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2;
        boolean z2;
        String str;
        C0234j c0234j;
        int i3 = 0;
        Object obj = this.b;
        switch (this.f13a) {
            case 0:
                h hVar = (h) obj;
                if (hVar.f27o) {
                    boolean z3 = hVar.f25m;
                    a aVar = hVar.f15a;
                    if (z3) {
                        hVar.f25m = false;
                        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                        aVar.f9e = jCurrentAnimationTimeMillis;
                        aVar.f10g = -1L;
                        aVar.f = jCurrentAnimationTimeMillis;
                        aVar.f11h = 0.5f;
                    }
                    if ((aVar.f10g > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar.f10g + ((long) aVar.f12i)) || !hVar.e()) {
                        hVar.f27o = false;
                        return;
                    }
                    boolean z4 = hVar.f26n;
                    ListView listView = hVar.f16c;
                    if (z4) {
                        hVar.f26n = false;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                        listView.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (aVar.f == 0) {
                        throw new RuntimeException("Cannot compute scroll delta before calling start()");
                    }
                    long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                    float fA = aVar.a(jCurrentAnimationTimeMillis2);
                    long j2 = jCurrentAnimationTimeMillis2 - aVar.f;
                    aVar.f = jCurrentAnimationTimeMillis2;
                    i.b(hVar.f29q, (int) (j2 * ((fA * 4.0f) + ((-4.0f) * fA * fA)) * aVar.f8d));
                    WeakHashMap weakHashMap = N.f4222a;
                    AbstractC0290y.m(listView, this);
                    return;
                }
                return;
            case 1:
                ((E.e) obj).n(0);
                return;
            case 2:
                C0014o c0014o = (C0014o) obj;
                int i4 = c0014o.f301A;
                ValueAnimator valueAnimator = c0014o.f326z;
                if (i4 != 1) {
                    i2 = 2;
                    if (i4 != 2) {
                        return;
                    }
                } else {
                    i2 = 2;
                    valueAnimator.cancel();
                }
                c0014o.f301A = 3;
                float[] fArr = new float[i2];
                fArr[0] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                fArr[1] = 0.0f;
                valueAnimator.setFloatValues(fArr);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                return;
            case 3:
                RecyclerView recyclerView = (RecyclerView) obj;
                K k2 = recyclerView.f2020H;
                if (k2 != null) {
                    C0010k c0010k = (C0010k) k2;
                    ArrayList arrayList = c0010k.f269h;
                    boolean zIsEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = c0010k.f271j;
                    boolean zIsEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = c0010k.f272k;
                    boolean zIsEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = c0010k.f270i;
                    boolean zIsEmpty4 = arrayList4.isEmpty();
                    if (!zIsEmpty || !zIsEmpty2 || !zIsEmpty4 || !zIsEmpty3) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            boolean zHasNext = it.hasNext();
                            long j3 = c0010k.f151d;
                            if (zHasNext) {
                                e0 e0Var = (e0) it.next();
                                View view = e0Var.f220a;
                                ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                                c0010k.f278q.add(e0Var);
                                viewPropertyAnimatorAnimate.setDuration(j3).alpha(0.0f).setListener(new C0005f(c0010k, e0Var, viewPropertyAnimatorAnimate, view)).start();
                            } else {
                                arrayList.clear();
                                if (!zIsEmpty2) {
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList5.addAll(arrayList2);
                                    c0010k.f274m.add(arrayList5);
                                    arrayList2.clear();
                                    RunnableC0004e runnableC0004e = new RunnableC0004e(c0010k, arrayList5, 0);
                                    if (zIsEmpty) {
                                        runnableC0004e.run();
                                    } else {
                                        View view2 = ((C0009j) arrayList5.get(0)).f258a.f220a;
                                        WeakHashMap weakHashMap2 = N.f4222a;
                                        AbstractC0290y.n(view2, runnableC0004e, j3);
                                    }
                                }
                                if (!zIsEmpty3) {
                                    ArrayList arrayList6 = new ArrayList();
                                    arrayList6.addAll(arrayList3);
                                    c0010k.f275n.add(arrayList6);
                                    arrayList3.clear();
                                    RunnableC0004e runnableC0004e2 = new RunnableC0004e(c0010k, arrayList6, 1);
                                    if (zIsEmpty) {
                                        runnableC0004e2.run();
                                    } else {
                                        View view3 = ((C0008i) arrayList6.get(0)).f253a.f220a;
                                        WeakHashMap weakHashMap3 = N.f4222a;
                                        AbstractC0290y.n(view3, runnableC0004e2, j3);
                                    }
                                }
                                if (!zIsEmpty4) {
                                    ArrayList arrayList7 = new ArrayList();
                                    arrayList7.addAll(arrayList4);
                                    c0010k.f273l.add(arrayList7);
                                    arrayList4.clear();
                                    RunnableC0004e runnableC0004e3 = new RunnableC0004e(c0010k, arrayList7, 2);
                                    if (zIsEmpty && zIsEmpty2 && zIsEmpty3) {
                                        runnableC0004e3.run();
                                    } else {
                                        if (zIsEmpty) {
                                            j3 = 0;
                                        }
                                        long jMax = Math.max(!zIsEmpty2 ? c0010k.f152e : 0L, !zIsEmpty3 ? c0010k.f : 0L) + j3;
                                        View view4 = ((e0) arrayList7.get(0)).f220a;
                                        WeakHashMap weakHashMap4 = N.f4222a;
                                        AbstractC0290y.n(view4, runnableC0004e3, jMax);
                                    }
                                }
                            }
                        }
                    }
                    z2 = false;
                } else {
                    z2 = false;
                }
                recyclerView.f2047i0 = z2;
                return;
            case 4:
                ((StaggeredGridLayoutManager) obj).w0();
                return;
            case 5:
                AppPipFloaterService appPipFloaterService = (AppPipFloaterService) obj;
                x4 x4Var = appPipFloaterService.f2121i;
                if (x4Var == null) {
                    return;
                }
                new Thread(new B(x4Var, appPipFloaterService, this)).start();
                return;
            case 6:
                HomeWidgetsPollService homeWidgetsPollService = (HomeWidgetsPollService) obj;
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(homeWidgetsPollService);
                I0.f.b(appWidgetManager);
                int i5 = HomeWidgetsPollService.f2303r;
                homeWidgetsPollService.getClass();
                List listT = w0.j.T(DriveRegenWidgetProvider.class, DriveModeVerticalWidgetProvider.class, RegenVerticalWidgetProvider.class, FanSpeedWidgetProvider.class, FanSpeedVerticalWidgetProvider.class, TemperatureWidgetProvider.class, TemperatureVerticalWidgetProvider.class, HvacDirectionWidgetProvider.class, HvacDirectionVerticalWidgetProvider.class, HvacDirectionFanWidgetProvider.class, HeatingTestWidgetProvider.class);
                if (!listT.isEmpty()) {
                    Iterator it2 = listT.iterator();
                    while (it2.hasNext()) {
                        int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(homeWidgetsPollService, (Class<?>) it2.next()));
                        I0.f.d(appWidgetIds, "getAppWidgetIds(...)");
                        if (appWidgetIds.length != 0) {
                            CarPropertyManager carPropertyManager = homeWidgetsPollService.f2305c;
                            if (carPropertyManager != null) {
                                int[] iArr = H1.f606a;
                                homeWidgetsPollService.f2306d = H1.g(carPropertyManager, 570491136, H1.f, H1.f611h);
                                homeWidgetsPollService.f2307e = H1.g(carPropertyManager, 537003264, H1.f609e, H1.f612i);
                                homeWidgetsPollService.f = H1.e(carPropertyManager);
                                homeWidgetsPollService.f2308g = H1.k(carPropertyManager);
                                homeWidgetsPollService.f2309h = H1.l(carPropertyManager);
                                homeWidgetsPollService.f2310i = H1.h(carPropertyManager);
                                homeWidgetsPollService.f2311j = H1.i(carPropertyManager);
                                homeWidgetsPollService.f2312k = H1.m(carPropertyManager);
                                homeWidgetsPollService.f2313l = H1.f(carPropertyManager);
                                homeWidgetsPollService.f2314m = H1.n(carPropertyManager);
                                homeWidgetsPollService.f2315n = H1.j(carPropertyManager, 1);
                                homeWidgetsPollService.f2316o = H1.j(carPropertyManager, 4);
                                homeWidgetsPollService.f2317p = H1.d(carPropertyManager);
                            }
                            homeWidgetsPollService.d(appWidgetManager);
                            homeWidgetsPollService.e(appWidgetManager);
                            homeWidgetsPollService.g(appWidgetManager);
                            homeWidgetsPollService.i(appWidgetManager);
                            homeWidgetsPollService.h(appWidgetManager);
                            homeWidgetsPollService.f(appWidgetManager);
                            homeWidgetsPollService.f2304a.postDelayed(this, 3000L);
                            return;
                        }
                    }
                }
                homeWidgetsPollService.stopSelf();
                return;
            case PlaybackState.STATE_ERROR /* 7 */:
                Set set = LyricsFloaterService.f2324v;
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) obj;
                lyricsFloaterService.q();
                lyricsFloaterService.f2326c.postDelayed(this, 350L);
                return;
            case Response.NO /* 8 */:
                MainActivity mainActivity = (MainActivity) obj;
                if (mainActivity.f2352I) {
                    U.a aVar2 = mainActivity.f2384t;
                    if (aVar2 == null) {
                        I0.f.h("binding");
                        throw null;
                    }
                    try {
                        str = String.format("%.1f GB", Arrays.copyOf(new Object[]{Double.valueOf(new StatFs(Environment.getDataDirectory().getPath()).getAvailableBytes() / 1.073741824E9d)}, 1));
                        break;
                    } catch (Exception unused) {
                        str = "n/d";
                    }
                    aVar2.G2.setText(str);
                    CarPropertyManager carPropertyManager2 = mainActivity.f2350G;
                    if (carPropertyManager2 == null) {
                        U.a aVar3 = mainActivity.f2384t;
                        if (aVar3 == null) {
                            I0.f.h("binding");
                            throw null;
                        }
                        aVar3.v2.setText("n/d");
                    } else {
                        mainActivity.f2388w.execute(new RunnableC0052e2(carPropertyManager2, mainActivity, i3));
                    }
                    mainActivity.f2387v.postDelayed(this, 1000L);
                    return;
                }
                return;
            case 9:
                new Thread(new H((MediaBarFloaterService) obj, 21, this)).start();
                return;
            case 10:
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) obj;
                TextView textView = quickAccessFloaterService.f2465T;
                if (textView != null) {
                    textView.setText(DateFormat.format("HH:mm", System.currentTimeMillis()));
                }
                quickAccessFloaterService.f2471a.postDelayed(this, 1000L);
                return;
            case 11:
                TimerFloaterService timerFloaterService = (TimerFloaterService) obj;
                if (timerFloaterService.b == null) {
                    return;
                }
                timerFloaterService.b();
                timerFloaterService.f2548d.postDelayed(this, 33L);
                return;
            case Response.BAD /* 12 */:
                if (DriveRegenFloaterService.f2579J) {
                    DriveRegenFloaterService driveRegenFloaterService = (DriveRegenFloaterService) obj;
                    driveRegenFloaterService.k();
                    driveRegenFloaterService.f2607s.postDelayed(this, 3000L);
                    return;
                }
                return;
            case 13:
                try {
                    super/*android.app.Activity*/.onBackPressed();
                    return;
                } catch (IllegalStateException e2) {
                    if (!TextUtils.equals(e2.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        throw e2;
                    }
                    return;
                }
            case 14:
                AnimationAnimationListenerC0176d animationAnimationListenerC0176d = (AnimationAnimationListenerC0176d) obj;
                animationAnimationListenerC0176d.f1838a.endViewTransition(animationAnimationListenerC0176d.b);
                animationAnimationListenerC0176d.f1839c.d();
                return;
            case 15:
                DialogInterfaceOnCancelListenerC0184l dialogInterfaceOnCancelListenerC0184l = (DialogInterfaceOnCancelListenerC0184l) obj;
                dialogInterfaceOnCancelListenerC0184l.S.onDismiss(dialogInterfaceOnCancelListenerC0184l.f1859a0);
                return;
            case Response.BYE /* 16 */:
                ((E) obj).w(true);
                return;
            case 17:
                z zVar = (z) obj;
                int i6 = zVar.b;
                androidx.lifecycle.s sVar = zVar.f;
                if (i6 == 0) {
                    zVar.f1983c = true;
                    sVar.d(androidx.lifecycle.k.ON_PAUSE);
                }
                if (zVar.f1982a == 0 && zVar.f1983c) {
                    sVar.d(androidx.lifecycle.k.ON_STOP);
                    zVar.f1984d = true;
                    return;
                }
                return;
            case 18:
                C0252s0 c0252s0 = (C0252s0) obj;
                c0252s0.f3691l = null;
                c0252s0.drawableStateChanged();
                return;
            default:
                ActionMenuView actionMenuView = ((Toolbar) obj).f1594a;
                if (actionMenuView == null || (c0234j = actionMenuView.f1521t) == null) {
                    return;
                }
                c0234j.l();
                return;
        }
    }
}

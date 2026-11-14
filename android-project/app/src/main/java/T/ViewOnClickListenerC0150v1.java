package T;

import android.app.AlertDialog;
import android.app.Service;
import android.content.ContextWrapper;
import android.content.Intent;
import android.media.AudioManager;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import java.lang.reflect.Method;
import java.util.List;
import java.util.NoSuchElementException;
import p034y.C0272f;

/* JADX INFO: renamed from: T.v1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0150v1 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1179a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1181d;

    public /* synthetic */ ViewOnClickListenerC0150v1(ContextWrapper contextWrapper, String str, Object obj, int i2) {
        this.f1179a = i2;
        this.f1180c = contextWrapper;
        this.f1181d = str;
        this.b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x013e  */
    /* JADX WARN: Code duplicated, block: B:66:0x0154  */
    /* JADX WARN: Code duplicated, block: B:68:0x015a  */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2;
        int iF;
        int iD;
        int i3 = 0;
        int i4 = 1;
        Object obj = this.f1181d;
        Object obj2 = this.b;
        Object obj3 = this.f1180c;
        switch (this.f1179a) {
            case 0:
                Intent intent = (Intent) obj3;
                HomeFloatingWidgetsService homeFloatingWidgetsService = (HomeFloatingWidgetsService) obj2;
                List list = HomeFloatingWidgetsService.f2262Q;
                try {
                    intent.addFlags(268435456);
                    homeFloatingWidgetsService.startActivity(intent);
                    return;
                } catch (Exception e2) {
                    Log.w("HomeFloatingWidgets", "launch " + ((String) obj) + ": " + e2.getMessage());
                    return;
                }
            case 1:
                List list2 = HomeFloatingWidgetsService.f2262Q;
                C0272f c0272f = (C0272f) obj3;
                if (c0272f.e()) {
                    boolean zI = c0272f.i();
                    boolean z2 = !zI;
                    Object obj4 = c0272f.f;
                    if (obj4 == null) {
                        i2 = i4;
                        if (zI) {
                            iD = c0272f.f4250d;
                            if (iD <= 0 && (iD = c0272f.d() / 3) < i2) {
                                iD = i2;
                            }
                            c0272f.f4250d = -1;
                            c0272f.o(iD);
                        } else {
                            iF = c0272f.f();
                            if (iF < i2) {
                                iF = i2;
                            }
                            c0272f.f4250d = iF;
                            c0272f.o(0);
                        }
                    } else {
                        String[] strArr = {"setGroupMute", "setGroupMuteState"};
                        int i5 = 0;
                        while (true) {
                            int i6 = 2;
                            if (i5 < 2) {
                                String str = strArr[i5];
                                Method[] methods = obj4.getClass().getMethods();
                                I0.f.e(methods, "array");
                                int i7 = i3;
                                while (true) {
                                    if ((i7 < methods.length ? i4 : 0) != 0) {
                                        int i8 = i7 + 1;
                                        try {
                                            Method method = methods[i7];
                                            if (I0.f.a(method.getName(), str)) {
                                                Class<?>[] parameterTypes = method.getParameterTypes();
                                                try {
                                                    if (parameterTypes.length == i6 && I0.f.a(parameterTypes[0], Integer.TYPE) && I0.f.a(parameterTypes[1], Boolean.TYPE)) {
                                                        method.invoke(obj4, Integer.valueOf(c0272f.f4249c), Boolean.valueOf(z2));
                                                    } else if (parameterTypes.length == 3 && I0.f.a(parameterTypes[2], Boolean.TYPE)) {
                                                        method.invoke(obj4, 0, Integer.valueOf(c0272f.f4249c), Boolean.valueOf(z2));
                                                    } else {
                                                        if (parameterTypes.length == 3 && I0.f.a(parameterTypes[1], Boolean.TYPE)) {
                                                            method.invoke(obj4, Integer.valueOf(c0272f.f4249c), Boolean.valueOf(z2), 0);
                                                        }
                                                        i7 = i8;
                                                        i4 = 1;
                                                        i6 = 2;
                                                    }
                                                    if (zI) {
                                                        c0272f.f4250d = -1;
                                                    }
                                                } catch (Throwable unused) {
                                                }
                                            } else {
                                                i7 = i8;
                                                i4 = 1;
                                            }
                                        } catch (ArrayIndexOutOfBoundsException e3) {
                                            throw new NoSuchElementException(e3.getMessage());
                                        }
                                    } else {
                                        i5 += i4;
                                        i3 = 0;
                                    }
                                }
                            } else {
                                i2 = i4;
                                if (zI) {
                                    iD = c0272f.f4250d;
                                    if (iD <= 0) {
                                        iD = i2;
                                    }
                                    c0272f.f4250d = -1;
                                    c0272f.o(iD);
                                } else {
                                    iF = c0272f.f();
                                    if (iF < i2) {
                                        iF = i2;
                                    }
                                    c0272f.f4250d = iF;
                                    c0272f.o(0);
                                }
                            }
                        }
                    }
                } else {
                    try {
                        ((AudioManager) c0272f.b).adjustStreamVolume(3, 101, 0);
                        break;
                    } catch (Throwable unused2) {
                    }
                }
                HomeFloatingWidgetsService.l(c0272f, (ImageView) obj);
                SeekBar seekBar = ((HomeFloatingWidgetsService) obj2).f2272I;
                if (seekBar != null) {
                    seekBar.setProgress(c0272f.f());
                    return;
                }
                return;
            case 2:
                int i9 = MainActivity.u0;
                MainActivity mainActivity = (MainActivity) obj3;
                String str2 = (String) obj;
                M.d0.m(mainActivity, str2, !mainActivity.B0().getBoolean(str2, false));
                MainActivity.N(mainActivity, str2, (I0.l) obj2);
                List list3 = HomeFloatingWidgetsService.f2262Q;
                Y.E(mainActivity);
                return;
            case 3:
                List list4 = QuickAccessFloaterService.f2436j0;
                ((QuickAccessFloaterService) obj3).F((TextView) obj2, (String) obj);
                return;
            default:
                List list5 = QuickAccessFloaterService.f2436j0;
                Object obj5 = ((I0.l) obj3).b;
                if (obj5 == null) {
                    I0.f.h("dlg");
                    throw null;
                }
                ((AlertDialog) obj5).dismiss();
                ((QuickAccessFloaterService) obj2).M(400L);
                ((H0.a) obj).a();
                return;
        }
    }

    public /* synthetic */ ViewOnClickListenerC0150v1(Object obj, Service service, Object obj2, int i2) {
        this.f1179a = i2;
        this.f1180c = obj;
        this.b = service;
        this.f1181d = obj2;
    }
}

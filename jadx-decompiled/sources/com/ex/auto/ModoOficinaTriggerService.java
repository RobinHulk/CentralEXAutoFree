package com.ex.auto;

import I0.f;
import T.L3;
import T.ViewOnTouchListenerC0138t;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.view.View;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public final class ModoOficinaTriggerService extends Service {
    public static volatile ModoOficinaTriggerService f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2412a;
    public View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f2414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f2415e;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Object systemService = getSystemService("window");
        f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f2412a = (WindowManager) systemService;
        View view = new View(this);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(44, 44, 2038, 264, -3);
        layoutParams.gravity = 8388691;
        layoutParams.x = 0;
        layoutParams.y = 0;
        view.setOnTouchListener(new ViewOnTouchListenerC0138t(this, 5));
        try {
            WindowManager windowManager = this.f2412a;
            if (windowManager == null) {
                f.h("windowManager");
                throw null;
            }
            windowManager.addView(view, layoutParams);
            this.b = view;
            f = this;
            L3.f671a.b("ModoOficinaTrigger", "alvo secreto ativo (canto inferior esquerdo, 44px)");
        } catch (Throwable th) {
            L3.f671a.b("ModoOficinaTrigger", "não consegui desenhar o alvo secreto: " + th.getMessage());
            stopSelf();
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        View view = this.b;
        if (view != null) {
            try {
                WindowManager windowManager = this.f2412a;
                if (windowManager == null) {
                    f.h("windowManager");
                    throw null;
                }
                windowManager.removeView(view);
            } catch (Throwable unused) {
            }
        }
        this.b = null;
        f = null;
        super.onDestroy();
    }
}

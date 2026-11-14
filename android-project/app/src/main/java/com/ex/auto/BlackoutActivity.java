package com.ex.auto;

import A.b;
import I0.f;
import T.ViewOnTouchListenerC0138t;
import android.content.Intent;
import android.os.Bundle;
import android.view.WindowManager;
import p007e.AbstractActivityC0210j;

/* JADX INFO: loaded from: classes.dex */
public final class BlackoutActivity extends AbstractActivityC0210j {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f2134t = 0;

    @Override // p007e.AbstractActivityC0210j, androidx.activity.g, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_blackout);
        s();
    }

    @Override // p007e.AbstractActivityC0210j, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        sendBroadcast(new Intent("com.ex.auto.action.BLACKOUT_DISMISSED"));
    }

    @Override // p007e.AbstractActivityC0210j, androidx.activity.g, android.app.Activity
    public final void onNewIntent(Intent intent) {
        f.e(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        s();
    }

    public final void s() {
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        if (f.a(intent.getAction(), "com.ex.auto.action.HIDE_BLACKOUT")) {
            finish();
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("mode_full_cover", true);
        float fN = b.n(intent.getFloatExtra("dim_brightness", 0.0f), 0.0f, 1.0f);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.screenBrightness = fN;
        getWindow().setAttributes(attributes);
        if (booleanExtra) {
            getWindow().clearFlags(16);
            getWindow().clearFlags(8);
            getWindow().getDecorView().setBackgroundColor(-16777216);
            getWindow().getDecorView().setOnTouchListener(new ViewOnTouchListenerC0138t(this, 1));
        } else {
            getWindow().addFlags(16);
            getWindow().addFlags(8);
            getWindow().getDecorView().setBackgroundColor(0);
        }
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }
}

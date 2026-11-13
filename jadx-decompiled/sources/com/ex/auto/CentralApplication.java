package com.ex.auto;

import O0.j;
import android.app.Application;
import android.content.SharedPreferences;
import p007e.n;
import p031u.e;

/* JADX INFO: loaded from: classes.dex */
public final class CentralApplication extends Application {
    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        SharedPreferences sharedPreferences = getSharedPreferences("tela_preta_prefs", 0);
        n.q(sharedPreferences.getBoolean("light_mode", false) ? 1 : 2);
        String string = sharedPreferences.getString("app_language_tag", null);
        if (string == null || j.E0(string)) {
            return;
        }
        n.l(e.a(string));
    }
}

package com.ex.auto;

import I0.f;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class CentralBootReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        f.e(context, "context");
        f.e(intent, "intent");
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        boolean zEquals = action.equals("android.intent.action.BOOT_COMPLETED");
        boolean zEquals2 = action.equals("android.intent.action.ACTION_BOOT_HU");
        boolean zEquals3 = action.equals("android.intent.action.MY_PACKAGE_REPLACED");
        if (zEquals || zEquals2 || zEquals3) {
            if (context.getSharedPreferences("tela_preta_prefs", 0).getBoolean("device_banned", false)) {
                Log.i("CentralBoot", action.concat(" recebido — aparelho bloqueado, watchdog NÃO sobe"));
            } else {
                Log.i("CentralBoot", action.concat(" recebido — iniciando CentralWatchdogService"));
                context.startForegroundService(new Intent(context, (Class<?>) CentralWatchdogService.class).putExtra("motivo_inicio", zEquals3 ? "update" : "boot"));
            }
        }
    }
}

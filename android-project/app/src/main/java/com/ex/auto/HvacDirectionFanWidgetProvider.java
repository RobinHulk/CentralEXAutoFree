package com.ex.auto;

import I0.f;
import T.Y;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes.dex */
public final class HvacDirectionFanWidgetProvider extends AppWidgetProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f2319a = {R.id.dot_fan_1, R.id.dot_fan_2, R.id.dot_fan_3, R.id.dot_fan_4, R.id.dot_fan_5, R.id.dot_fan_6, R.id.dot_fan_7};

    @Override // android.appwidget.AppWidgetProvider
    public final void onEnabled(Context context) {
        f.e(context, "context");
        int i2 = HomeWidgetsPollService.f2303r;
        Y.D(context);
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        f.e(context, "context");
        f.e(appWidgetManager, "appWidgetManager");
        f.e(iArr, "appWidgetIds");
        RemoteViews remoteViewsI = Y.i(context, null, null, null, null);
        for (int i2 : iArr) {
            appWidgetManager.updateAppWidget(i2, remoteViewsI);
        }
        int i3 = HomeWidgetsPollService.f2303r;
        Y.D(context);
    }
}

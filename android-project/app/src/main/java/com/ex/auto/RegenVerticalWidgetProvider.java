package com.ex.auto;

import I0.f;
import T.Y;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.widget.RemoteViews;

/* JADX INFO: loaded from: classes.dex */
public final class RegenVerticalWidgetProvider extends AppWidgetProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2503a = 0;

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
        RemoteViews remoteViewsK = Y.k(context, null);
        for (int i2 : iArr) {
            appWidgetManager.updateAppWidget(i2, remoteViewsK);
        }
        int i3 = HomeWidgetsPollService.f2303r;
        Y.D(context);
    }
}

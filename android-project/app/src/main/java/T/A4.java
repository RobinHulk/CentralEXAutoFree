package T;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.car.hardware.property.CarPropertyManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.util.Log;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class A4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f474a = new HashMap();

    public static Icon a(Context context, String str, String str2, int i2, int i3, boolean z2, boolean z3, float f) {
        float fMeasureText;
        float fH;
        int iMax;
        Paint paint = new Paint(129);
        paint.setColor(i2);
        Typeface typeface = Typeface.DEFAULT;
        paint.setTypeface(typeface);
        float fH2 = h(context, 56);
        float f2 = f * fH2;
        paint.setTextSize(fH2);
        float fMeasureText2 = paint.measureText(str);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        float f3 = fontMetrics.descent - fontMetrics.ascent;
        if (str2.length() == 0) {
            fMeasureText = 0.0f;
            fH = 0.0f;
        } else {
            paint.setTextSize(f2);
            fMeasureText = paint.measureText(str2);
            fH = h(context, f < 0.5f ? 1 : 3);
        }
        int i4 = (int) (f3 / 0.61f);
        if (i4 < 1) {
            i4 = 1;
        }
        int iH = h(context, i3);
        int i5 = (iH * 2) + ((int) (fMeasureText2 + fH + fMeasureText));
        if (z3) {
            Paint paint2 = new Paint(129);
            paint2.setTypeface(typeface);
            float fH3 = h(context, 56);
            paint2.setTextSize(fH3);
            float fMeasureText3 = paint2.measureText("99999");
            paint2.setTextSize(fH3 * 0.55f);
            iMax = (int) (paint2.measureText("km") + h(context, 1) + fMeasureText3);
        } else if (z2) {
            Paint paint3 = new Paint(129);
            paint3.setTypeface(typeface);
            float fH4 = h(context, 56);
            float f4 = 0.82f * fH4;
            float fH5 = h(context, 3);
            int iH2 = h(context, 10);
            paint3.setTextSize(fH4);
            float fMeasureText4 = paint3.measureText("-40");
            paint3.setTextSize(f4);
            int i6 = iH2 * 2;
            int iMeasureText = ((int) (fMeasureText4 + fH5 + paint3.measureText("°C"))) + i6;
            paint3.setTextSize(fH4);
            float fMeasureText5 = paint3.measureText("100");
            paint3.setTextSize(f4);
            iMax = Math.max(iMeasureText, i6 + ((int) (fMeasureText5 + fH5 + paint3.measureText("%"))));
        } else {
            iMax = 0;
        }
        int iMax2 = Math.max(i5, iMax);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax2 >= 1 ? iMax2 : 1, i4, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f5 = ((i4 - f3) / 2.0f) - fontMetrics.ascent;
        paint.setTextSize(fH2);
        float f6 = (iMax2 - i5) / 2.0f;
        float f7 = f6 < 0.0f ? 0.0f : f6;
        float f8 = iH;
        canvas.drawText(str, f8 + f7, f5, paint);
        if (str2.length() > 0) {
            paint.setTextSize(f2);
            canvas.drawText(str2, f8 + fMeasureText2 + fH + f7, f5, paint);
        }
        Icon iconCreateWithBitmap = Icon.createWithBitmap(bitmapCreateBitmap);
        I0.f.d(iconCreateWithBitmap, "createWithBitmap(...)");
        return iconCreateWithBitmap;
    }

    public static void c(Context context) {
        I0.f.e(context, "context");
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15021);
            notificationManager.cancel(15020);
        }
        HashMap map = f474a;
        map.remove(15021);
        map.remove(15020);
    }

    public static void d(Context context) {
        I0.f.e(context, "context");
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15020);
        }
        f474a.remove(15020);
    }

    public static void e(Context context) {
        I0.f.e(context, "context");
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15021);
        }
        f474a.remove(15021);
    }

    public static void f(Context context) {
        I0.f.e(context, "context");
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15028);
        }
        f474a.remove(15028);
    }

    public static void g(Context context) {
        I0.f.e(context, "context");
        NotificationManager notificationManager = (NotificationManager) context.getApplicationContext().getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.cancel(15026);
        }
        f474a.remove(15026);
    }

    public static int h(Context context, int i2) {
        return (int) ((i2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String i(float f) {
        float fRound = Math.round(f * 10.0f) / 10.0f;
        int i2 = (int) fRound;
        return fRound == ((float) i2) ? String.valueOf(i2) : String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(fRound)}, 1));
    }

    public static void j(Context context, int i2, int i3, int i4, String str, String str2, String str3, Icon icon, PendingIntent pendingIntent) {
        Context applicationContext = context.getApplicationContext();
        NotificationManager notificationManager = (NotificationManager) applicationContext.getSystemService(NotificationManager.class);
        if (notificationManager == null) {
            return;
        }
        NotificationChannel notificationChannel = new NotificationChannel("central_ex_status_temp", applicationContext.getString(R.string.k_temp_icon_channel), 2);
        notificationChannel.setShowBadge(false);
        notificationManager.createNotificationChannel(notificationChannel);
        HashMap map = f474a;
        Integer num = (Integer) map.get(Integer.valueOf(i2));
        if (num != null && num.intValue() != i4) {
            try {
                notificationManager.cancel(i2);
            } catch (Throwable unused) {
            }
        }
        map.put(Integer.valueOf(i2), Integer.valueOf(i4));
        Log.i("KmIconProbe", "postStatusIcon " + str + " notifId=" + i2 + " iconId=" + i3 + " rank=" + i4 + " text=\"" + str3 + '\"');
        if (pendingIntent == null) {
            pendingIntent = PendingIntent.getActivity(applicationContext, i3, new Intent(applicationContext, (Class<?>) MainActivity.class), 201326592);
        }
        Notification notificationBuild = new Notification.Builder(applicationContext, "central_ex_status_temp").setSmallIcon(icon).setContentTitle(str2).setContentText(str3).setContentIntent(pendingIntent).setOngoing(true).setShowWhen(false).build();
        I0.f.d(notificationBuild, "build(...)");
        Bundle bundle = notificationBuild.extras;
        bundle.putBoolean("flag_status_icon_notification", true);
        bundle.putInt("flag_status_icon_id", i3);
        bundle.putString("flag_status_icon_describe", str);
        bundle.putParcelable("flag_status_icon_icon", icon);
        bundle.putParcelable("flag_status_icon_pressed_icon", icon);
        bundle.putBoolean("flag_status_icon_hide", false);
        bundle.putInt("flag_status_icon_rank", i4);
        bundle.putInt("flag_status_icon_space_x", 1);
        bundle.putBoolean("flag_status_icon_is_pick_on", false);
        bundle.putInt("flag_status_icon_specific_width", 0);
        try {
            notificationManager.notify(i2, notificationBuild);
        } catch (Throwable unused2) {
        }
    }

    public static Float k(CarPropertyManager carPropertyManager, int i2) {
        String string;
        Integer numC = U.c(carPropertyManager, i2, 0);
        Float fValueOf = numC != null ? Float.valueOf(numC.intValue()) : U.b(carPropertyManager, i2, 0);
        Integer numValueOf = Integer.valueOf(i2);
        if (fValueOf == null || (string = fValueOf.toString()) == null) {
            string = "null";
        }
        Log.i("OdoProbe", String.format("0x%x -> %s", Arrays.copyOf(new Object[]{numValueOf, string}, 2)));
        if (fValueOf != null) {
            float fFloatValue = fValueOf.floatValue();
            if (fFloatValue >= 1.0f && fFloatValue <= 2000000.0f) {
                return fValueOf;
            }
        }
        return null;
    }

    public static Float l(CarPropertyManager carPropertyManager) {
        Integer numC;
        if (carPropertyManager == null || (numC = U.c(carPropertyManager, 557884279, 0)) == null) {
            return null;
        }
        float fIntValue = (numC.intValue() - 80) / 2.0f;
        if (fIntValue <= -50.0f || fIntValue >= 70.0f) {
            return null;
        }
        return Float.valueOf(fIntValue);
    }

    public static Float m(CarPropertyManager carPropertyManager) {
        Float fB;
        if (carPropertyManager == null || (fB = U.b(carPropertyManager, 557885165, 0)) == null) {
            return null;
        }
        float fFloatValue = fB.floatValue();
        if (fFloatValue > 100.0f) {
            fFloatValue /= 10.0f;
        }
        if (0.0f > fFloatValue || fFloatValue > 100.0f) {
            return null;
        }
        return Float.valueOf(fFloatValue);
    }
}

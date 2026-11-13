package com.ex.auto;

import B.b;
import H0.l;
import I0.f;
import M.d0;
import O0.j;
import T.AbstractC0108n4;
import T.C0162x3;
import T.Q1;
import T.S1;
import T.T0;
import T.Y;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.ex.auto.MediaBarFloaterService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import p007e.AbstractC0201a;
import w0.i;
import w0.k;
import w0.q;

/* JADX INFO: loaded from: classes.dex */
public final class MediaBarFloaterService extends Service {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Set f2392u = AbstractC0201a.P("com.spotify.music", "ru.yandex.music", "deezer.android.app", "com.google.android.apps.youtube.music", "app.rvx.android.apps.youtube.music", "app.revanced.android.apps.youtube.music", "com.vanced.android.apps.youtube.music", "com.google.android.youtube", "app.rvx.android.youtube", "app.revanced.android.youtube", "com.njda.aauto", "com.google.android.projection.gearhead");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2393a;
    public MediaSessionManager b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public FrameLayout f2395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ImageView f2396e;
    public ImageView f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TextView f2397g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f2398h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView f2399i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ImageView f2400j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MediaController f2401k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile PlaybackState.CustomAction f2402l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f2403m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Bitmap f2404n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile Boolean f2405o;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile boolean f2409s;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f2394c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final HashMap f2406p = new HashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Q1 f2407q = new Q1(this, 1);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final S1 f2408r = new S1(this, 1);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final b f2410t = new b(this, 9);

    public final int a() {
        return g() ? -1 : -15591908;
    }

    public final void b() {
        FrameLayout frameLayout = this.f2395d;
        if (frameLayout != null && frameLayout.getParent() != null) {
            try {
                WindowManager windowManager = this.f2393a;
                if (windowManager == null) {
                    f.h("wm");
                    throw null;
                }
                windowManager.removeView(frameLayout);
            } catch (Throwable unused) {
            }
        }
        this.f2395d = null;
        this.f2396e = null;
        this.f = null;
        this.f2397g = null;
        this.f2398h = null;
        this.f2399i = null;
        this.f2400j = null;
    }

    public final void c() {
        MediaController mediaController = this.f2401k;
        if (mediaController == null) {
            return;
        }
        PendingIntent sessionActivity = mediaController.getSessionActivity();
        if (sessionActivity != null) {
            try {
                sessionActivity.send();
                return;
            } catch (PendingIntent.CanceledException unused) {
            }
        }
        String packageName = mediaController.getPackageName();
        f.d(packageName, "getPackageName(...)");
        if (f.a(packageName, "com.njda.aauto") || f.a(packageName, "com.google.android.projection.gearhead")) {
            try {
                sendBroadcast(new Intent("com.bd.systemui.aa.foreground"));
                Log.i("MediaBarFloater", "launchAndroidAuto(" + packageName + "): broadcast com.bd.systemui.aa.foreground enviado");
                return;
            } catch (Exception e2) {
                d0.n(e2, d0.j("launchAndroidAuto(", packageName, "): "), "MediaBarFloater");
                return;
            }
        }
        try {
            Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(mediaController.getPackageName());
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(268435456);
                startActivity(launchIntentForPackage);
            }
        } catch (Exception e3) {
            Log.e("MediaBarFloater", "launchApp falhou: " + e3.getMessage());
        }
    }

    public final void d() {
        List<MediaController> activeSessions;
        S1 s1;
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                f.h("msm");
                throw null;
            }
            activeSessions = mediaSessionManager.getActiveSessions(null);
            ArrayList arrayList = new ArrayList();
            for (Object obj : activeSessions) {
                if (f2392u.contains(((MediaController) obj).getPackageName())) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(k.V(arrayList));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((MediaController) it.next()).getSessionToken());
            }
            Set setL0 = i.l0(arrayList2);
            HashMap map = this.f2406p;
            Iterator it2 = map.entrySet().iterator();
            while (true) {
                boolean zHasNext = it2.hasNext();
                s1 = this.f2408r;
                if (!zHasNext) {
                    break;
                }
                Object next = it2.next();
                f.d(next, "next(...)");
                Map.Entry entry = (Map.Entry) next;
                if (!setL0.contains(entry.getKey())) {
                    try {
                        ((MediaController) entry.getValue()).unregisterCallback(s1);
                    } catch (Exception unused) {
                    }
                    it2.remove();
                }
            }
            for (Object obj2 : arrayList) {
                f.d(obj2, "next(...)");
                MediaController mediaController = (MediaController) obj2;
                if (!map.containsKey(mediaController.getSessionToken())) {
                    try {
                        mediaController.registerCallback(s1, this.f2394c);
                        map.put(mediaController.getSessionToken(), mediaController);
                    } catch (Exception unused2) {
                    }
                }
            }
            f(arrayList);
        } catch (Exception e2) {
            Log.e("MediaBarFloater", "getActiveSessions falhou: " + e2.getMessage());
            activeSessions = q.f4190a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:111:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:112:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:115:0x03c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:117:0x03ce  */
    /* JADX WARN: Code duplicated, block: B:144:0x0477  */
    /* JADX WARN: Code duplicated, block: B:146:0x047a  */
    /* JADX WARN: Code duplicated, block: B:149:0x0480  */
    /* JADX WARN: Code duplicated, block: B:151:0x0484  */
    /* JADX WARN: Code duplicated, block: B:152:0x048a  */
    /* JADX WARN: Code duplicated, block: B:186:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void e() {
        final String string;
        Drawable drawable;
        Bitmap bitmap;
        ImageView imageView;
        boolean z2;
        ImageView imageView2;
        PlaybackState.CustomAction customAction;
        ImageView imageView3;
        PlaybackState.CustomAction customAction2;
        String lowerCase;
        List<PlaybackState.CustomAction> customActions;
        Object obj;
        int i2;
        Drawable applicationIcon;
        String string2;
        if (this.f2405o == null) {
            this.f2405o = Boolean.valueOf(g());
        }
        if (this.f2409s) {
            b();
            return;
        }
        MediaController mediaController = this.f2401k;
        if (mediaController == null) {
            b();
            return;
        }
        MediaMetadata metadata = mediaController.getMetadata();
        PlaybackState playbackState = mediaController.getPlaybackState();
        int state = playbackState != null ? playbackState.getState() : 0;
        if (metadata == null || !(state == 3 || state == 2 || state == 6)) {
            b();
            return;
        }
        if (this.f2395d == null) {
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setBackgroundColor(g() ? -15262946 : -854793);
            LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            linearLayout.setPadding(26, 0, 18, 0);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            ImageView imageView4 = new ImageView(this);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(0);
            gradientDrawable.setStroke(3, g() ? -419430401 : -435022308);
            imageView4.setImageDrawable(gradientDrawable);
            imageView4.setLayoutParams(new LinearLayout.LayoutParams(44, 44));
            final int i3 = 1;
            imageView4.setOnClickListener(new View.OnClickListener(this) { // from class: T.v3
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    MediaController.TransportControls transportControls3;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls4;
                    switch (i3) {
                        case 0:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService.f2402l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController2 = mediaBarFloaterService.f2401k;
                                    if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                                        transportControls.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 1:
                            Set set = MediaBarFloaterService.f2392u;
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            mediaBarFloaterService2.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService2.startActivity(intent);
                            } catch (Exception e2) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e2.getMessage());
                                return;
                            }
                            break;
                        case 2:
                            Set set2 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 3:
                            Set set3 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 4:
                            MediaController mediaController3 = this.b.f2401k;
                            if (mediaController3 != null && (transportControls2 = mediaController3.getTransportControls()) != null) {
                                transportControls2.skipToPrevious();
                                break;
                            }
                            break;
                        case 5:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            MediaController mediaController4 = mediaBarFloaterService3.f2401k;
                            if (mediaController4 != null && (transportControls3 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService3.f2401k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls3.play();
                                } else {
                                    transportControls3.pause();
                                }
                                break;
                            }
                            break;
                        default:
                            MediaController mediaController6 = this.b.f2401k;
                            if (mediaController6 != null && (transportControls4 = mediaController6.getTransportControls()) != null) {
                                transportControls4.skipToNext();
                                break;
                            }
                            break;
                    }
                }
            });
            linearLayout.addView(imageView4);
            View view = new View(this);
            view.setBackgroundColor(g() ? 872415231 : 520093696);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(2, 40);
            layoutParams.setMarginStart(16);
            layoutParams.setMarginEnd(16);
            view.setLayoutParams(layoutParams);
            linearLayout.addView(view);
            FrameLayout frameLayout2 = new FrameLayout(this);
            frameLayout2.setLayoutParams(new LinearLayout.LayoutParams(64, 64));
            ImageView imageView5 = new ImageView(this);
            imageView5.setScaleType(ImageView.ScaleType.CENTER_CROP);
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setShape(0);
            gradientDrawable2.setCornerRadius(4.0f);
            gradientDrawable2.setColor(-6114875);
            imageView5.setImageDrawable(gradientDrawable2);
            imageView5.setClipToOutline(true);
            imageView5.setOutlineProvider(new C0162x3(0));
            imageView5.setLayoutParams(new FrameLayout.LayoutParams(64, 64));
            final int i4 = 2;
            imageView5.setOnClickListener(new View.OnClickListener(this) { // from class: T.v3
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    MediaController.TransportControls transportControls3;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls4;
                    switch (i4) {
                        case 0:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService.f2402l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController2 = mediaBarFloaterService.f2401k;
                                    if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                                        transportControls.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 1:
                            Set set = MediaBarFloaterService.f2392u;
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            mediaBarFloaterService2.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService2.startActivity(intent);
                            } catch (Exception e2) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e2.getMessage());
                                return;
                            }
                            break;
                        case 2:
                            Set set2 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 3:
                            Set set3 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 4:
                            MediaController mediaController3 = this.b.f2401k;
                            if (mediaController3 != null && (transportControls2 = mediaController3.getTransportControls()) != null) {
                                transportControls2.skipToPrevious();
                                break;
                            }
                            break;
                        case 5:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            MediaController mediaController4 = mediaBarFloaterService3.f2401k;
                            if (mediaController4 != null && (transportControls3 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService3.f2401k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls3.play();
                                } else {
                                    transportControls3.pause();
                                }
                                break;
                            }
                            break;
                        default:
                            MediaController mediaController6 = this.b.f2401k;
                            if (mediaController6 != null && (transportControls4 = mediaController6.getTransportControls()) != null) {
                                transportControls4.skipToNext();
                                break;
                            }
                            break;
                    }
                }
            });
            frameLayout2.addView(imageView5);
            ImageView imageView6 = new ImageView(this);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(32, 32);
            layoutParams2.gravity = 8388693;
            imageView6.setLayoutParams(layoutParams2);
            frameLayout2.addView(imageView6);
            linearLayout.addView(frameLayout2);
            LinearLayout linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(1);
            linearLayout2.setGravity(16);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams3.setMarginStart(16);
            layoutParams3.setMarginEnd(6);
            linearLayout2.setLayoutParams(layoutParams3);
            final int i5 = 3;
            linearLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: T.v3
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    MediaController.TransportControls transportControls3;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls4;
                    switch (i5) {
                        case 0:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService.f2402l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController2 = mediaBarFloaterService.f2401k;
                                    if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                                        transportControls.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 1:
                            Set set = MediaBarFloaterService.f2392u;
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            mediaBarFloaterService2.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService2.startActivity(intent);
                            } catch (Exception e2) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e2.getMessage());
                                return;
                            }
                            break;
                        case 2:
                            Set set2 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 3:
                            Set set3 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 4:
                            MediaController mediaController3 = this.b.f2401k;
                            if (mediaController3 != null && (transportControls2 = mediaController3.getTransportControls()) != null) {
                                transportControls2.skipToPrevious();
                                break;
                            }
                            break;
                        case 5:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            MediaController mediaController4 = mediaBarFloaterService3.f2401k;
                            if (mediaController4 != null && (transportControls3 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService3.f2401k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls3.play();
                                } else {
                                    transportControls3.pause();
                                }
                                break;
                            }
                            break;
                        default:
                            MediaController mediaController6 = this.b.f2401k;
                            if (mediaController6 != null && (transportControls4 = mediaController6.getTransportControls()) != null) {
                                transportControls4.skipToNext();
                                break;
                            }
                            break;
                    }
                }
            });
            TextView textView = new TextView(this);
            textView.setTextColor(a());
            textView.setTextSize(15.0f);
            textView.setMaxLines(1);
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView.setEllipsize(truncateAt);
            TextView textView2 = new TextView(this);
            textView2.setTextColor(g() ? -7695720 : -11380122);
            textView2.setTextSize(12.0f);
            textView2.setMaxLines(1);
            textView2.setEllipsize(truncateAt);
            linearLayout2.addView(textView);
            linearLayout2.addView(textView2);
            linearLayout.addView(linearLayout2);
            ImageView imageView7 = new ImageView(this);
            imageView7.setImageResource(R.drawable.ic_floater_prev);
            imageView7.setColorFilter(a());
            ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
            imageView7.setScaleType(scaleType);
            imageView7.setPadding(10, 10, 10, 10);
            imageView7.setLayoutParams(new LinearLayout.LayoutParams(56, 56));
            final int i6 = 4;
            imageView7.setOnClickListener(new View.OnClickListener(this) { // from class: T.v3
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    MediaController.TransportControls transportControls3;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls4;
                    switch (i6) {
                        case 0:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService.f2402l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController2 = mediaBarFloaterService.f2401k;
                                    if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                                        transportControls.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 1:
                            Set set = MediaBarFloaterService.f2392u;
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            mediaBarFloaterService2.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService2.startActivity(intent);
                            } catch (Exception e2) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e2.getMessage());
                                return;
                            }
                            break;
                        case 2:
                            Set set2 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 3:
                            Set set3 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 4:
                            MediaController mediaController3 = this.b.f2401k;
                            if (mediaController3 != null && (transportControls2 = mediaController3.getTransportControls()) != null) {
                                transportControls2.skipToPrevious();
                                break;
                            }
                            break;
                        case 5:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            MediaController mediaController4 = mediaBarFloaterService3.f2401k;
                            if (mediaController4 != null && (transportControls3 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService3.f2401k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls3.play();
                                } else {
                                    transportControls3.pause();
                                }
                                break;
                            }
                            break;
                        default:
                            MediaController mediaController6 = this.b.f2401k;
                            if (mediaController6 != null && (transportControls4 = mediaController6.getTransportControls()) != null) {
                                transportControls4.skipToNext();
                                break;
                            }
                            break;
                    }
                }
            });
            linearLayout.addView(imageView7);
            ImageView imageView8 = new ImageView(this);
            imageView8.setImageResource(R.drawable.ic_floater_play);
            imageView8.setColorFilter(a());
            imageView8.setScaleType(scaleType);
            imageView8.setPadding(10, 10, 10, 10);
            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(56, 56);
            layoutParams4.setMarginStart(6);
            imageView8.setLayoutParams(layoutParams4);
            final int i7 = 5;
            imageView8.setOnClickListener(new View.OnClickListener(this) { // from class: T.v3
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    MediaController.TransportControls transportControls3;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls4;
                    switch (i7) {
                        case 0:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService.f2402l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController2 = mediaBarFloaterService.f2401k;
                                    if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                                        transportControls.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 1:
                            Set set = MediaBarFloaterService.f2392u;
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            mediaBarFloaterService2.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService2.startActivity(intent);
                            } catch (Exception e2) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e2.getMessage());
                                return;
                            }
                            break;
                        case 2:
                            Set set2 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 3:
                            Set set3 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 4:
                            MediaController mediaController3 = this.b.f2401k;
                            if (mediaController3 != null && (transportControls2 = mediaController3.getTransportControls()) != null) {
                                transportControls2.skipToPrevious();
                                break;
                            }
                            break;
                        case 5:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            MediaController mediaController4 = mediaBarFloaterService3.f2401k;
                            if (mediaController4 != null && (transportControls3 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService3.f2401k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls3.play();
                                } else {
                                    transportControls3.pause();
                                }
                                break;
                            }
                            break;
                        default:
                            MediaController mediaController6 = this.b.f2401k;
                            if (mediaController6 != null && (transportControls4 = mediaController6.getTransportControls()) != null) {
                                transportControls4.skipToNext();
                                break;
                            }
                            break;
                    }
                }
            });
            linearLayout.addView(imageView8);
            ImageView imageView9 = new ImageView(this);
            imageView9.setImageResource(R.drawable.ic_floater_next);
            imageView9.setColorFilter(a());
            imageView9.setScaleType(scaleType);
            imageView9.setPadding(10, 10, 10, 10);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(56, 56);
            layoutParams5.setMarginStart(6);
            imageView9.setLayoutParams(layoutParams5);
            final int i8 = 6;
            imageView9.setOnClickListener(new View.OnClickListener(this) { // from class: T.v3
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    MediaController.TransportControls transportControls3;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls4;
                    switch (i8) {
                        case 0:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService.f2402l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController2 = mediaBarFloaterService.f2401k;
                                    if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                                        transportControls.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 1:
                            Set set = MediaBarFloaterService.f2392u;
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            mediaBarFloaterService2.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService2.startActivity(intent);
                            } catch (Exception e2) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e2.getMessage());
                                return;
                            }
                            break;
                        case 2:
                            Set set2 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 3:
                            Set set3 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 4:
                            MediaController mediaController3 = this.b.f2401k;
                            if (mediaController3 != null && (transportControls2 = mediaController3.getTransportControls()) != null) {
                                transportControls2.skipToPrevious();
                                break;
                            }
                            break;
                        case 5:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            MediaController mediaController4 = mediaBarFloaterService3.f2401k;
                            if (mediaController4 != null && (transportControls3 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService3.f2401k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls3.play();
                                } else {
                                    transportControls3.pause();
                                }
                                break;
                            }
                            break;
                        default:
                            MediaController mediaController6 = this.b.f2401k;
                            if (mediaController6 != null && (transportControls4 = mediaController6.getTransportControls()) != null) {
                                transportControls4.skipToNext();
                                break;
                            }
                            break;
                    }
                }
            });
            linearLayout.addView(imageView9);
            ImageView imageView10 = new ImageView(this);
            imageView10.setImageResource(R.drawable.ic_floater_heart);
            imageView10.setColorFilter(a());
            imageView10.setScaleType(scaleType);
            imageView10.setPadding(10, 10, 10, 10);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(48, 48);
            layoutParams6.setMarginStart(6);
            imageView10.setLayoutParams(layoutParams6);
            imageView10.setVisibility(8);
            final int i9 = 0;
            imageView10.setOnClickListener(new View.OnClickListener(this) { // from class: T.v3
                public final /* synthetic */ MediaBarFloaterService b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    MediaController.TransportControls transportControls;
                    MediaController.TransportControls transportControls2;
                    MediaController.TransportControls transportControls3;
                    PlaybackState playbackState2;
                    MediaController.TransportControls transportControls4;
                    switch (i9) {
                        case 0:
                            MediaBarFloaterService mediaBarFloaterService = this.b;
                            PlaybackState.CustomAction customAction3 = mediaBarFloaterService.f2402l;
                            if (customAction3 != null) {
                                try {
                                    MediaController mediaController2 = mediaBarFloaterService.f2401k;
                                    if (mediaController2 != null && (transportControls = mediaController2.getTransportControls()) != null) {
                                        transportControls.sendCustomAction(customAction3, (Bundle) null);
                                        break;
                                    }
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            break;
                        case 1:
                            Set set = MediaBarFloaterService.f2392u;
                            MediaBarFloaterService mediaBarFloaterService2 = this.b;
                            mediaBarFloaterService2.getClass();
                            try {
                                Intent intent = new Intent("android.intent.action.MAIN");
                                intent.addCategory("android.intent.category.HOME");
                                intent.addFlags(268435456);
                                mediaBarFloaterService2.startActivity(intent);
                            } catch (Exception e2) {
                                Log.e("MediaBarFloater", "goHome falhou: " + e2.getMessage());
                                return;
                            }
                            break;
                        case 2:
                            Set set2 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 3:
                            Set set3 = MediaBarFloaterService.f2392u;
                            this.b.c();
                            break;
                        case 4:
                            MediaController mediaController3 = this.b.f2401k;
                            if (mediaController3 != null && (transportControls2 = mediaController3.getTransportControls()) != null) {
                                transportControls2.skipToPrevious();
                                break;
                            }
                            break;
                        case 5:
                            MediaBarFloaterService mediaBarFloaterService3 = this.b;
                            MediaController mediaController4 = mediaBarFloaterService3.f2401k;
                            if (mediaController4 != null && (transportControls3 = mediaController4.getTransportControls()) != null) {
                                MediaController mediaController5 = mediaBarFloaterService3.f2401k;
                                if (mediaController5 == null || (playbackState2 = mediaController5.getPlaybackState()) == null || playbackState2.getState() != 3) {
                                    transportControls3.play();
                                } else {
                                    transportControls3.pause();
                                }
                                break;
                            }
                            break;
                        default:
                            MediaController mediaController6 = this.b.f2401k;
                            if (mediaController6 != null && (transportControls4 = mediaController6.getTransportControls()) != null) {
                                transportControls4.skipToNext();
                                break;
                            }
                            break;
                    }
                }
            });
            linearLayout.addView(imageView10);
            frameLayout.addView(linearLayout);
            this.f2396e = imageView5;
            this.f = imageView6;
            this.f2397g = textView;
            this.f2398h = textView2;
            this.f2399i = imageView8;
            this.f2400j = imageView10;
            WindowManager.LayoutParams layoutParams7 = new WindowManager.LayoutParams(612, 112, 2024, 776, -3);
            layoutParams7.gravity = 8388691;
            layoutParams7.x = 0;
            layoutParams7.y = 0;
            try {
                WindowManager windowManager = this.f2393a;
                if (windowManager == null) {
                    f.h("wm");
                    throw null;
                }
                windowManager.addView(frameLayout, layoutParams7);
                this.f2395d = frameLayout;
            } catch (Throwable th) {
                Log.e("MediaBarFloater", "addView floater falhou: " + th.getMessage());
            }
        }
        CharSequence text = metadata.getText("android.media.metadata.TITLE");
        final String string3 = "";
        if (text == null || (string = text.toString()) == null) {
            string = "";
        }
        CharSequence text2 = metadata.getText("android.media.metadata.ARTIST");
        if (text2 == null || (string2 = text2.toString()) == null) {
            CharSequence text3 = metadata.getText("android.media.metadata.ALBUM_ARTIST");
            if (text3 != null) {
                string3 = text3.toString();
            }
        } else {
            string3 = string2;
        }
        TextView textView3 = this.f2397g;
        if (textView3 != null) {
            textView3.setText(string);
        }
        TextView textView4 = this.f2398h;
        if (textView4 != null) {
            textView4.setText(string3);
        }
        Bitmap bitmap2 = metadata.getBitmap("android.media.metadata.ALBUM_ART");
        if (bitmap2 == null && (bitmap2 = metadata.getBitmap("android.media.metadata.ART")) == null) {
            bitmap2 = metadata.getBitmap("android.media.metadata.DISPLAY_ICON");
        }
        final String str = string + '|' + string3;
        if (bitmap2 != null) {
            ImageView imageView11 = this.f2396e;
            if (imageView11 != null) {
                imageView11.setImageBitmap(bitmap2);
            }
        } else {
            if (!f.a(this.f2403m, str) || (bitmap = this.f2404n) == null) {
                ImageView imageView12 = this.f2396e;
                if (imageView12 != null) {
                    GradientDrawable gradientDrawable3 = new GradientDrawable();
                    gradientDrawable3.setShape(0);
                    gradientDrawable3.setCornerRadius(4.0f);
                    gradientDrawable3.setColor(-6114875);
                    imageView12.setImageDrawable(gradientDrawable3);
                }
                if (!f.a(this.f2403m, str)) {
                    this.f2403m = str;
                    drawable = null;
                    this.f2404n = null;
                    String string4 = metadata.getString("android.media.metadata.ALBUM_ART_URI");
                    if (string4 == null && (string4 = metadata.getString("android.media.metadata.ART_URI")) == null) {
                        string4 = metadata.getString("android.media.metadata.DISPLAY_ICON_URI");
                    }
                    if (string4 != null) {
                        AbstractC0108n4.c(this);
                        AbstractC0108n4.b(this, string4, new l() { // from class: T.w3
                            @Override // H0.l
                            public final Object b(Object obj2) {
                                Bitmap bitmap3 = (Bitmap) obj2;
                                MediaBarFloaterService mediaBarFloaterService = this.f1193a;
                                mediaBarFloaterService.f2394c.post(new RunnableC0035b3(bitmap3, mediaBarFloaterService, str, string, string3, 1));
                                return v0.e.f4161c;
                            }
                        });
                    }
                }
                imageView = this.f;
                if (imageView != null) {
                    String packageName = mediaController.getPackageName();
                    f.d(packageName, "getPackageName(...)");
                    try {
                        applicationIcon = getPackageManager().getApplicationIcon(packageName);
                    } catch (Exception unused) {
                        applicationIcon = drawable;
                    }
                    imageView.setImageDrawable(applicationIcon);
                }
                if (state == 3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                imageView2 = this.f2399i;
                if (imageView2 != null) {
                    if (z2) {
                        i2 = R.drawable.ic_floater_pause;
                    } else {
                        i2 = R.drawable.ic_floater_play;
                    }
                    imageView2.setImageResource(i2);
                }
                if (playbackState != null || (customActions = playbackState.getCustomActions()) == null) {
                    customAction = drawable;
                } else {
                    Iterator<T> it = customActions.iterator();
                    loop0: while (true) {
                        if (!it.hasNext()) {
                            obj = drawable;
                            break;
                        }
                        Object next = it.next();
                        PlaybackState.CustomAction customAction3 = (PlaybackState.CustomAction) next;
                        f.b(customAction3);
                        String lowerCase2 = (customAction3.getAction() + ' ' + ((Object) customAction3.getName())).toLowerCase(Locale.ROOT);
                        f.d(lowerCase2, "toLowerCase(...)");
                        if (!j.x0(lowerCase2, "não gost", false) && !j.x0(lowerCase2, "nao gost", false) && !j.x0(lowerCase2, "dislike", false)) {
                            List listT = w0.j.T("coleç", "colecao", "collection", "biblioteca", "library", "favorit", "curtir", "like", "gostei", "gosto", "salvar", "saved", "heart");
                            if (listT.isEmpty()) {
                                continue;
                            } else {
                                Iterator it2 = listT.iterator();
                                while (it2.hasNext()) {
                                    if (j.x0(lowerCase2, (String) it2.next(), false)) {
                                        obj = next;
                                        break loop0;
                                    }
                                }
                            }
                        }
                    }
                    customAction = (PlaybackState.CustomAction) obj;
                }
                if (customAction != 0) {
                    this.f2402l = customAction;
                }
                imageView3 = this.f2400j;
                if (imageView3 != null) {
                    customAction2 = this.f2402l;
                    if (customAction2 == null) {
                        imageView3.setVisibility(8);
                        return;
                    }
                    imageView3.setVisibility(0);
                    lowerCase = customAction2.getName().toString().toLowerCase(Locale.ROOT);
                    f.d(lowerCase, "toLowerCase(...)");
                    if (!j.x0(lowerCase, "remov", false) || j.x0(lowerCase, "remove", false) || j.x0(lowerCase, "saved", false) || j.x0(lowerCase, "salvo", false) || j.x0(lowerCase, "unsave", false) || j.x0(lowerCase, "marcado", false)) {
                        imageView3.setImageResource(R.drawable.ic_floater_heart_filled);
                        imageView3.clearColorFilter();
                    } else {
                        imageView3.setImageResource(R.drawable.ic_floater_heart);
                        imageView3.setColorFilter(a());
                        return;
                    }
                }
            }
            ImageView imageView13 = this.f2396e;
            if (imageView13 != null) {
                imageView13.setImageBitmap(bitmap);
            }
        }
        drawable = null;
        imageView = this.f;
        if (imageView != null) {
            String packageName2 = mediaController.getPackageName();
            f.d(packageName2, "getPackageName(...)");
            applicationIcon = getPackageManager().getApplicationIcon(packageName2);
            imageView.setImageDrawable(applicationIcon);
        }
        if (state == 3) {
            z2 = true;
        } else {
            z2 = false;
        }
        imageView2 = this.f2399i;
        if (imageView2 != null) {
            if (z2) {
                i2 = R.drawable.ic_floater_pause;
            } else {
                i2 = R.drawable.ic_floater_play;
            }
            imageView2.setImageResource(i2);
        }
        if (playbackState != null) {
            customAction = drawable;
        } else {
            customAction = drawable;
        }
        if (customAction != 0) {
            this.f2402l = customAction;
        }
        imageView3 = this.f2400j;
        if (imageView3 != null) {
            customAction2 = this.f2402l;
            if (customAction2 == null) {
                imageView3.setVisibility(8);
                return;
            }
            imageView3.setVisibility(0);
            lowerCase = customAction2.getName().toString().toLowerCase(Locale.ROOT);
            f.d(lowerCase, "toLowerCase(...)");
            if (j.x0(lowerCase, "remov", false)) {
            }
            imageView3.setImageResource(R.drawable.ic_floater_heart_filled);
            imageView3.clearColorFilter();
        }
    }

    public final void f(ArrayList arrayList) {
        Object next;
        Object next2;
        Object next3;
        List listI0 = arrayList;
        if (arrayList == null) {
            Collection collectionValues = this.f2406p.values();
            f.d(collectionValues, "<get-values>(...)");
            listI0 = i.i0(collectionValues);
        }
        Iterator it = listI0.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            PlaybackState playbackState = ((MediaController) next).getPlaybackState();
            if (playbackState != null && playbackState.getState() == 3) {
                break;
            }
        }
        MediaController mediaController = (MediaController) next;
        if (mediaController == null) {
            Iterator it2 = listI0.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
                MediaController mediaController2 = (MediaController) next2;
                MediaSession.Token sessionToken = mediaController2.getSessionToken();
                MediaController mediaController3 = this.f2401k;
                if (f.a(sessionToken, mediaController3 != null ? mediaController3.getSessionToken() : null) && mediaController2.getMetadata() != null) {
                    break;
                }
            }
            mediaController = (MediaController) next2;
            if (mediaController == null) {
                Iterator it3 = listI0.iterator();
                do {
                    if (!it3.hasNext()) {
                        next3 = null;
                        break;
                    }
                    next3 = it3.next();
                } while (((MediaController) next3).getMetadata() == null);
                mediaController = (MediaController) next3;
                if (mediaController == null) {
                    mediaController = (MediaController) i.a0(listI0);
                }
            }
        }
        if (mediaController == null) {
            this.f2401k = null;
            this.f2402l = null;
            this.f2403m = null;
            this.f2404n = null;
            b();
            return;
        }
        MediaSession.Token sessionToken2 = mediaController.getSessionToken();
        MediaController mediaController4 = this.f2401k;
        if (!f.a(sessionToken2, mediaController4 != null ? mediaController4.getSessionToken() : null)) {
            this.f2401k = mediaController;
            mediaController.getPackageName();
            this.f2402l = null;
            this.f2403m = null;
            this.f2404n = null;
        }
        e();
    }

    public final boolean g() {
        return (getResources().getConfiguration().uiMode & 48) == 32;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        f.e(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        boolean z2 = (configuration.uiMode & 48) == 32;
        if (Boolean.valueOf(z2).equals(this.f2405o)) {
            return;
        }
        this.f2405o = Boolean.valueOf(z2);
        Log.i("MediaBarFloater", "tema mudou (escuro=" + z2 + ") — redesenhando o floater");
        this.f2394c.post(new T0(this, 6));
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.f2394c.post(this.f2410t);
        Object systemService = getSystemService("window");
        f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f2393a = (WindowManager) systemService;
        Object systemService2 = getSystemService("media_session");
        f.c(systemService2, "null cannot be cast to non-null type android.media.session.MediaSessionManager");
        this.b = (MediaSessionManager) systemService2;
        startForeground(15072, Y.I(this, "media_bar_floater", "Mídia na barra", "Spotify/YT Music na barra", android.R.drawable.ic_media_play, null, 1, 16));
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                f.h("msm");
                throw null;
            }
            mediaSessionManager.addOnActiveSessionsChangedListener(this.f2407q, null);
            d();
        } catch (Exception e2) {
            Log.e("MediaBarFloater", "addOnActiveSessionsChangedListener falhou: " + e2.getMessage());
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f2394c.removeCallbacks(this.f2410t);
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                f.h("msm");
                throw null;
            }
            mediaSessionManager.removeOnActiveSessionsChangedListener(this.f2407q);
            Iterator it = this.f2406p.values().iterator();
            while (it.hasNext()) {
                try {
                    ((MediaController) it.next()).unregisterCallback(this.f2408r);
                } catch (Exception unused) {
                }
            }
            this.f2406p.clear();
            this.f2401k = null;
            this.f2402l = null;
            this.f2403m = null;
            this.f2404n = null;
            b();
            super.onDestroy();
        } catch (Exception unused2) {
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        d();
        return 1;
    }
}

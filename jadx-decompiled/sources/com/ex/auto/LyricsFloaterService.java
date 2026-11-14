package com.ex.auto;

import B.b;
import H0.a;
import H0.l;
import I0.f;
import O0.j;
import T.A;
import T.C0136s3;
import T.H;
import T.K1;
import T.K3;
import T.L1;
import T.M1;
import T.N1;
import T.O1;
import T.Q1;
import T.S1;
import T.ViewOnClickListenerC0160x1;
import T.ViewOnClickListenerC0165y1;
import T.Y;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.ex.auto.LyricsFloaterService;
import java.io.File;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import w0.i;
import w0.k;
import w0.q;

/* JADX INFO: loaded from: classes.dex */
public final class LyricsFloaterService extends Service {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final Set f2324v = MediaBarFloaterService.f2392u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowManager f2325a;
    public MediaSessionManager b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MediaController f2328e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f2330h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public FrameLayout f2332j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f2333k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public WindowManager.LayoutParams f2334l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public FrameLayout f2335m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public FrameLayout f2336n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public LinearLayout f2337o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ScrollView f2338p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2339q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f2326c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f2327d = new HashMap();
    public String f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f2329g = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2331i = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Q1 f2340r = new Q1(this, 0);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final S1 f2341s = new S1(this, 0);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final b f2342t = new b(this, 7);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final long f2343u = 100;

    public static final TextView m(LyricsFloaterService lyricsFloaterService, String str) {
        TextView textView = new TextView(lyricsFloaterService);
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(15.0f);
        textView.setPadding(0, lyricsFloaterService.d(14), 0, lyricsFloaterService.d(4));
        return textView;
    }

    public static final TextView o(LyricsFloaterService lyricsFloaterService, float f, String str, a aVar) {
        TextView textView = new TextView(lyricsFloaterService);
        textView.setText(str);
        textView.setTextColor(-855638017);
        textView.setTextSize(f * 13.0f);
        textView.setGravity(17);
        textView.setOnClickListener(new A(aVar, 3));
        return textView;
    }

    public final void a(long j2) {
        long jP;
        if (j.E0(this.f)) {
            return;
        }
        ExecutorService executorService = K1.f648a;
        String str = this.f;
        String str2 = this.f2329g;
        f.e(str, "title");
        f.e(str2, "artist");
        try {
            SharedPreferences sharedPreferences = getSharedPreferences("lyrics_sync_offsets", 0);
            String strF = K1.f(str, str2);
            jP = A.b.p(sharedPreferences.getLong(strF, 0L) + j2, -10000L, 10000L);
            sharedPreferences.edit().putLong(strF, jP).apply();
        } catch (Throwable unused) {
            jP = 0;
        }
        this.f2331i = -1;
        String str3 = jP > 0 ? "+" : "";
        TextView textView = this.f2333k;
        if (textView != null) {
            textView.setText("⏱ " + str3 + jP + " ms");
        }
        this.f2326c.postDelayed(new L1(this, 2), 500L);
    }

    public final void b() {
        FrameLayout frameLayout = this.f2335m;
        if (frameLayout != null && frameLayout.getParent() != null) {
            try {
                WindowManager windowManager = this.f2325a;
                if (windowManager == null) {
                    f.h("wm");
                    throw null;
                }
                windowManager.removeView(frameLayout);
            } catch (Throwable unused) {
            }
        }
        this.f2335m = null;
    }

    public final void c() {
        FrameLayout frameLayout = this.f2336n;
        if (frameLayout != null && frameLayout.getParent() != null) {
            try {
                WindowManager windowManager = this.f2325a;
                if (windowManager == null) {
                    f.h("wm");
                    throw null;
                }
                windowManager.removeView(frameLayout);
            } catch (Throwable unused) {
            }
        }
        this.f2336n = null;
        this.f2337o = null;
        this.f2338p = null;
        this.f2339q = false;
    }

    public final int d(int i2) {
        return (int) ((i2 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final void e() {
        FrameLayout frameLayout = this.f2332j;
        if (frameLayout != null && frameLayout.getParent() != null) {
            try {
                WindowManager windowManager = this.f2325a;
                if (windowManager == null) {
                    f.h("wm");
                    throw null;
                }
                windowManager.removeView(frameLayout);
            } catch (Throwable unused) {
            }
        }
        this.f2332j = null;
        this.f2333k = null;
        this.f2334l = null;
    }

    public final void f(int i2) {
        ScrollView scrollView;
        int i3;
        LinearLayout linearLayout = this.f2337o;
        if (linearLayout == null) {
            return;
        }
        int i4 = 0;
        int i5 = getSharedPreferences("lyrics_style_config", 0).getInt("font", -14829228);
        float fN = A.b.n(getSharedPreferences("lyrics_style_config", 0).getFloat("scale", 1.0f), 0.6f, 2.0f);
        int childCount = linearLayout.getChildCount();
        while (i4 < childCount) {
            View childAt = linearLayout.getChildAt(i4);
            TextView textView = childAt instanceof TextView ? (TextView) childAt : null;
            if (textView != null) {
                if (i4 == i2) {
                    i3 = i5;
                } else {
                    i3 = Math.abs(i4 - i2) <= 2 ? -6642775 : -10854041;
                }
                textView.setTextColor(i3);
                textView.setTextSize((i4 == i2 ? 23.0f : 19.0f) * fN);
            }
            i4++;
        }
        View childAt2 = linearLayout.getChildAt(i2);
        if (childAt2 == null || (scrollView = this.f2338p) == null) {
            return;
        }
        scrollView.post(new H(this, 12, childAt2));
    }

    public final void g() {
        LinearLayout linearLayout = this.f2337o;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        List<v0.a> list = this.f2330h;
        if (list == null) {
            return;
        }
        int i2 = 0;
        for (v0.a aVar : list) {
            int i3 = i2 + 1;
            TextView textView = new TextView(this);
            CharSequence charSequence = (CharSequence) aVar.b;
            if (charSequence.length() == 0) {
                charSequence = "♪";
            }
            textView.setText(charSequence);
            textView.setTextColor(-10854041);
            textView.setTextSize(19.0f);
            textView.setPadding(0, 14, 0, 14);
            textView.setTag(Integer.valueOf(i2));
            linearLayout.addView(textView);
            i2 = i3;
        }
        f(this.f2331i);
    }

    public final void h() {
        List<MediaController> activeSessions;
        S1 s1;
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                f.h("msm");
                throw null;
            }
            activeSessions = mediaSessionManager.getActiveSessions(null);
            ArrayList<MediaController> arrayList = new ArrayList();
            for (Object obj : activeSessions) {
                if (f2324v.contains(((MediaController) obj).getPackageName())) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(k.V(arrayList));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((MediaController) it.next()).getSessionToken());
            }
            Set setL0 = i.l0(arrayList2);
            HashMap map = this.f2327d;
            Iterator it2 = map.entrySet().iterator();
            while (true) {
                boolean zHasNext = it2.hasNext();
                s1 = this.f2341s;
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
            for (MediaController mediaController : arrayList) {
                if (!map.containsKey(mediaController.getSessionToken())) {
                    try {
                        mediaController.registerCallback(s1, this.f2326c);
                        map.put(mediaController.getSessionToken(), mediaController);
                    } catch (Exception unused2) {
                    }
                }
            }
            i();
        } catch (Exception unused3) {
            activeSessions = q.f4190a;
        }
    }

    public final void i() {
        CharSequence text;
        Object next;
        String string;
        String string2;
        CharSequence text2;
        CharSequence text3;
        Object next2;
        MediaSession.Token sessionToken;
        MediaController mediaController;
        Collection collectionValues = this.f2327d.values();
        f.d(collectionValues, "<get-values>(...)");
        List listI0 = i.i0(collectionValues);
        Iterator it = listI0.iterator();
        while (true) {
            text = null;
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
        MediaController mediaController2 = (MediaController) next;
        if (mediaController2 == null) {
            Iterator it2 = listI0.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                } else {
                    next2 = it2.next();
                    sessionToken = ((MediaController) next2).getSessionToken();
                    mediaController = this.f2328e;
                }
            } while (!f.a(sessionToken, mediaController != null ? mediaController.getSessionToken() : null));
            mediaController2 = (MediaController) next2;
        }
        this.f2328e = mediaController2;
        MediaMetadata metadata = mediaController2 != null ? mediaController2.getMetadata() : null;
        String str = "";
        if (metadata == null || (text3 = metadata.getText("android.media.metadata.TITLE")) == null || (string = text3.toString()) == null) {
            string = "";
        }
        if (metadata != null && (text2 = metadata.getText("android.media.metadata.ARTIST")) != null) {
            text = text2;
        } else if (metadata != null) {
            text = metadata.getText("android.media.metadata.ALBUM_ARTIST");
        }
        if (text != null && (string2 = text.toString()) != null) {
            str = string2;
        }
        if (string.equals(this.f) && str.equals(this.f2329g)) {
            return;
        }
        this.f = string;
        this.f2329g = str;
        this.f2331i = -1;
        List listC = K1.c(string, str);
        this.f2330h = listC;
        if (listC == null && string.length() > 0) {
            r();
            K1.d(string, str, metadata != null ? metadata.getLong("android.media.metadata.DURATION") : 0L, new O1(this, string, str, 0));
        }
        g();
    }

    public final void j() {
        float fM = Y.M(this);
        TextView textView = this.f2333k;
        if (textView != null) {
            textView.setTextSize(17.0f * fM);
            textView.setTextColor(Y.L(this));
        }
        FrameLayout frameLayout = this.f2332j;
        Drawable background = frameLayout != null ? frameLayout.getBackground() : null;
        GradientDrawable gradientDrawable = background instanceof GradientDrawable ? (GradientDrawable) background : null;
        if (gradientDrawable != null) {
            gradientDrawable.setColor((A.b.o(getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255) << 24) | (getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425) & 16777215));
        }
        WindowManager.LayoutParams layoutParams = this.f2334l;
        if (layoutParams != null) {
            layoutParams.width = (int) (612 * fM);
            layoutParams.height = (int) (60 * fM);
            FrameLayout frameLayout2 = this.f2332j;
            if (frameLayout2 != null) {
                try {
                    WindowManager windowManager = this.f2325a;
                    if (windowManager != null) {
                        windowManager.updateViewLayout(frameLayout2, layoutParams);
                    } else {
                        f.h("wm");
                        throw null;
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public final void k() {
        if (this.f2339q) {
            FrameLayout frameLayout = this.f2336n;
            Drawable background = frameLayout != null ? frameLayout.getBackground() : null;
            GradientDrawable gradientDrawable = background instanceof GradientDrawable ? (GradientDrawable) background : null;
            if (gradientDrawable != null) {
                gradientDrawable.setColor((A.b.o(getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255) << 24) | (getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425) & 16777215));
            }
            f(this.f2331i);
        }
    }

    public final void l() {
        if (this.f2335m != null) {
            return;
        }
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(d(20), d(16), d(20), d(16));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(d(18));
        gradientDrawable.setColor(-266724063);
        linearLayout.setBackground(gradientDrawable);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        TextView textView = new TextView(this);
        textView.setText("Ajustar letra");
        textView.setTextColor(-1);
        textView.setTextSize(18.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setText("✕");
        textView2.setTextColor(-6642775);
        textView2.setTextSize(20.0f);
        textView2.setPadding(d(16), d(4), d(4), d(4));
        textView2.setOnClickListener(new N1(this, 4));
        linearLayout2.addView(textView2);
        linearLayout.addView(linearLayout2);
        linearLayout.addView(m(this, "Tamanho"));
        SeekBar seekBar = new SeekBar(this);
        seekBar.setMax(140);
        seekBar.setProgress((int) ((Y.M(this) - 0.6f) * 100));
        final int i2 = 0;
        seekBar.setOnSeekBarChangeListener(new C0136s3(new l(this) { // from class: T.R1
            public final /* synthetic */ LyricsFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.l
            public final Object b(Object obj) {
                LyricsFloaterService lyricsFloaterService = this.b;
                int i3 = i2;
                int iIntValue = ((Integer) obj).intValue();
                switch (i3) {
                    case 0:
                        Set set = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putFloat("scale", A.b.n((iIntValue / 100.0f) + 0.6f, 0.6f, 2.0f)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 1:
                        Set set2 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("alpha", A.b.o(255 - iIntValue, 0, 255)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 2:
                        Set set3 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("font", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    default:
                        Set set4 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("bg", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                }
                return v0.e.f4161c;
            }
        }, 2));
        linearLayout.addView(seekBar);
        linearLayout.addView(m(this, "Transparência do fundo"));
        SeekBar seekBar2 = new SeekBar(this);
        seekBar2.setMax(255);
        seekBar2.setProgress(255 - A.b.o(getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255));
        final int i3 = 1;
        seekBar2.setOnSeekBarChangeListener(new C0136s3(new l(this) { // from class: T.R1
            public final /* synthetic */ LyricsFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.l
            public final Object b(Object obj) {
                LyricsFloaterService lyricsFloaterService = this.b;
                int i4 = i3;
                int iIntValue = ((Integer) obj).intValue();
                switch (i4) {
                    case 0:
                        Set set = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putFloat("scale", A.b.n((iIntValue / 100.0f) + 0.6f, 0.6f, 2.0f)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 1:
                        Set set2 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("alpha", A.b.o(255 - iIntValue, 0, 255)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 2:
                        Set set3 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("font", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    default:
                        Set set4 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("bg", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                }
                return v0.e.f4161c;
            }
        }, 2));
        linearLayout.addView(seekBar2);
        linearLayout.addView(m(this, "Cor da letra"));
        final int i4 = 2;
        linearLayout.addView(p(Y.f846c, Y.L(this), new l(this) { // from class: T.R1
            public final /* synthetic */ LyricsFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.l
            public final Object b(Object obj) {
                LyricsFloaterService lyricsFloaterService = this.b;
                int i5 = i4;
                int iIntValue = ((Integer) obj).intValue();
                switch (i5) {
                    case 0:
                        Set set = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putFloat("scale", A.b.n((iIntValue / 100.0f) + 0.6f, 0.6f, 2.0f)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 1:
                        Set set2 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("alpha", A.b.o(255 - iIntValue, 0, 255)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 2:
                        Set set3 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("font", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    default:
                        Set set4 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("bg", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                }
                return v0.e.f4161c;
            }
        }));
        linearLayout.addView(m(this, "Cor do fundo"));
        final int i5 = 3;
        linearLayout.addView(p(Y.f847d, getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425), new l(this) { // from class: T.R1
            public final /* synthetic */ LyricsFloaterService b;

            {
                this.b = this;
            }

            @Override // H0.l
            public final Object b(Object obj) {
                LyricsFloaterService lyricsFloaterService = this.b;
                int i6 = i5;
                int iIntValue = ((Integer) obj).intValue();
                switch (i6) {
                    case 0:
                        Set set = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putFloat("scale", A.b.n((iIntValue / 100.0f) + 0.6f, 0.6f, 2.0f)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 1:
                        Set set2 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("alpha", A.b.o(255 - iIntValue, 0, 255)).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    case 2:
                        Set set3 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("font", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                    default:
                        Set set4 = LyricsFloaterService.f2324v;
                        I0.f.e(lyricsFloaterService, "<this>");
                        lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).edit().putInt("bg", iIntValue).apply();
                        lyricsFloaterService.j();
                        lyricsFloaterService.k();
                        break;
                }
                return v0.e.f4161c;
            }
        }));
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(0);
        frameLayout.setClickable(true);
        frameLayout.setOnClickListener(new N1(this, 5));
        linearLayout.setClickable(true);
        linearLayout.setOnClickListener(new ViewOnClickListenerC0160x1(1));
        frameLayout.addView(linearLayout, new FrameLayout.LayoutParams(d(360), -2, 17));
        ViewGroup.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2038, 264, -3);
        try {
            WindowManager windowManager = this.f2325a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            windowManager.addView(frameLayout, layoutParams);
            this.f2335m = frameLayout;
        } catch (Throwable th) {
            Log.e("LyricsFloater", "addView config: " + th.getMessage());
        }
    }

    public final void n() {
        if (this.f2332j != null) {
            j();
            return;
        }
        float fM = Y.M(this);
        TextView textView = new TextView(this);
        textView.setTextColor(Y.L(this));
        textView.setTextSize(17.0f * fM);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity(17);
        textView.setPadding((int) (d(126) * fM), 0, (int) (d(30) * fM), 0);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        int iD = (int) (d(34) * fM);
        int iD2 = (int) (d(6) * fM);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iD, -1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iD, -1);
        layoutParams2.setMarginStart(iD2);
        layoutParams2.setMarginEnd(iD2);
        linearLayout.addView(o(this, fM, "◀", new M1(this, 1)), layoutParams);
        linearLayout.addView(o(this, fM, "↺", new M1(this, 2)), layoutParams2);
        linearLayout.addView(o(this, fM, "▶", new M1(this, 3)), layoutParams);
        TextView textView2 = new TextView(this);
        textView2.setText("✕");
        textView2.setTextColor(-855638017);
        textView2.setTextSize(13.0f * fM);
        textView2.setGravity(17);
        textView2.setPadding(d(8), d(2), d(8), d(2));
        textView2.setOnClickListener(new N1(this, 1));
        final FrameLayout frameLayout = new FrameLayout(this);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(d(12));
        gradientDrawable.setColor((A.b.o(getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255) << 24) | (getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425) & 16777215));
        frameLayout.setBackground(gradientDrawable);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams3.gravity = 17;
        frameLayout.addView(textView, layoutParams3);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 8388661;
        frameLayout.addView(textView2, layoutParams4);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams5.gravity = 8388627;
        frameLayout.addView(linearLayout, layoutParams5);
        K3 k3U = Y.U(this, "lyrics_line", 8388659, 0, getResources().getDisplayMetrics().heightPixels - d(290));
        final WindowManager.LayoutParams layoutParams6 = new WindowManager.LayoutParams((int) (612 * fM), (int) (60 * fM), 2038, 264, -3);
        layoutParams6.gravity = k3U.f659a;
        layoutParams6.x = k3U.b;
        layoutParams6.y = k3U.f660c;
        final I0.j jVar = new I0.j();
        final I0.j jVar2 = new I0.j();
        final I0.k kVar = new I0.k();
        final I0.k kVar2 = new I0.k();
        final I0.i iVar = new I0.i();
        final I0.i iVar2 = new I0.i();
        final H h2 = new H(iVar2, 13, this);
        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: T.P1
            /* JADX WARN: Code duplicated, block: B:25:0x0080  */
            /* JADX WARN: Code duplicated, block: B:26:0x008c  */
            /* JADX WARN: Code duplicated, block: B:28:0x0090  */
            /* JADX WARN: Code duplicated, block: B:30:0x0094  */
            /* JADX WARN: Code duplicated, block: B:31:0x0098  */
            /* JADX WARN: Code duplicated, block: B:41:0x0181 A[Catch: all -> 0x0196, TryCatch #1 {all -> 0x0196, blocks: (B:39:0x017d, B:41:0x0181, B:44:0x0198, B:45:0x019b), top: B:51:0x017d }] */
            /* JADX WARN: Code duplicated, block: B:44:0x0198 A[Catch: all -> 0x0196, TryCatch #1 {all -> 0x0196, blocks: (B:39:0x017d, B:41:0x0181, B:44:0x0198, B:45:0x019b), top: B:51:0x017d }] */
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                List list;
                ScrollView scrollView;
                LinearLayout linearLayout2;
                FrameLayout frameLayout2;
                WindowManager.LayoutParams layoutParams7;
                WindowManager windowManager;
                FrameLayout frameLayout3 = frameLayout;
                Set set = LyricsFloaterService.f2324v;
                int action = motionEvent.getAction();
                I0.j jVar3 = jVar;
                I0.j jVar4 = jVar2;
                I0.k kVar3 = kVar;
                WindowManager.LayoutParams layoutParams8 = layoutParams6;
                I0.k kVar4 = kVar2;
                I0.i iVar3 = iVar;
                I0.i iVar4 = iVar2;
                H h3 = h2;
                LyricsFloaterService lyricsFloaterService = this;
                if (action == 0) {
                    jVar3.f123a = motionEvent.getRawX();
                    jVar4.f123a = motionEvent.getRawY();
                    kVar3.f124a = layoutParams8.x;
                    kVar4.f124a = layoutParams8.y;
                    iVar3.f122a = false;
                    iVar4.f122a = false;
                    lyricsFloaterService.f2326c.postDelayed(h3, 550L);
                } else if (action == 1) {
                    lyricsFloaterService.f2326c.removeCallbacks(h3);
                    if (iVar3.f122a) {
                        Y.d0(lyricsFloaterService, "lyrics_line", layoutParams8.gravity, layoutParams8.x, layoutParams8.y);
                    } else if (!iVar4.f122a) {
                        if (lyricsFloaterService.f2339q) {
                            lyricsFloaterService.c();
                        } else if (lyricsFloaterService.f2336n == null && (list = lyricsFloaterService.f2330h) != null && !list.isEmpty()) {
                            scrollView = new ScrollView(lyricsFloaterService);
                            scrollView.setVerticalScrollBarEnabled(false);
                            linearLayout2 = new LinearLayout(lyricsFloaterService);
                            linearLayout2.setOrientation(1);
                            linearLayout2.setPadding(40, 40, 40, 40);
                            scrollView.addView(linearLayout2);
                            TextView textView3 = new TextView(lyricsFloaterService);
                            textView3.setText("✕");
                            textView3.setTextColor(-6642775);
                            textView3.setTextSize(22.0f);
                            textView3.setPadding(24, 12, 24, 12);
                            textView3.setOnClickListener(new N1(lyricsFloaterService, 2));
                            TextView textView4 = new TextView(lyricsFloaterService);
                            textView4.setText("⚙");
                            textView4.setTextColor(-6642775);
                            textView4.setTextSize(22.0f);
                            textView4.setPadding(24, 12, 24, 12);
                            textView4.setOnClickListener(new N1(lyricsFloaterService, 3));
                            frameLayout2 = new FrameLayout(lyricsFloaterService);
                            GradientDrawable gradientDrawable2 = new GradientDrawable();
                            gradientDrawable2.setCornerRadius(20.0f);
                            gradientDrawable2.setColor((A.b.o(lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255) << 24) | (lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425) & 16777215));
                            frameLayout2.setBackground(gradientDrawable2);
                            frameLayout2.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
                            FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams9.gravity = 8388661;
                            layoutParams9.setMarginEnd(lyricsFloaterService.d(52));
                            frameLayout2.addView(textView4, layoutParams9);
                            FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams10.gravity = 8388661;
                            frameLayout2.addView(textView3, layoutParams10);
                            layoutParams7 = new WindowManager.LayoutParams(760, 520, 2038, 264, -3);
                            layoutParams7.gravity = 17;
                            layoutParams7.y = -60;
                            try {
                                windowManager = lyricsFloaterService.f2325a;
                                if (windowManager != null) {
                                    I0.f.h("wm");
                                    throw null;
                                }
                                windowManager.addView(frameLayout2, layoutParams7);
                                lyricsFloaterService.f2336n = frameLayout2;
                                lyricsFloaterService.f2337o = linearLayout2;
                                lyricsFloaterService.f2338p = scrollView;
                                lyricsFloaterService.f2339q = true;
                                lyricsFloaterService.g();
                                lyricsFloaterService.f(lyricsFloaterService.f2331i);
                            } catch (Throwable th) {
                                Log.e("LyricsFloater", "addView painel: " + th.getMessage());
                            }
                        }
                    }
                } else if (action != 2) {
                    if (action != 3) {
                        return false;
                    }
                    lyricsFloaterService.f2326c.removeCallbacks(h3);
                    if (iVar3.f122a) {
                        Y.d0(lyricsFloaterService, "lyrics_line", layoutParams8.gravity, layoutParams8.x, layoutParams8.y);
                    } else if (!iVar4.f122a) {
                        if (lyricsFloaterService.f2339q) {
                            lyricsFloaterService.c();
                        } else if (lyricsFloaterService.f2336n == null) {
                            scrollView = new ScrollView(lyricsFloaterService);
                            scrollView.setVerticalScrollBarEnabled(false);
                            linearLayout2 = new LinearLayout(lyricsFloaterService);
                            linearLayout2.setOrientation(1);
                            linearLayout2.setPadding(40, 40, 40, 40);
                            scrollView.addView(linearLayout2);
                            TextView textView5 = new TextView(lyricsFloaterService);
                            textView5.setText("✕");
                            textView5.setTextColor(-6642775);
                            textView5.setTextSize(22.0f);
                            textView5.setPadding(24, 12, 24, 12);
                            textView5.setOnClickListener(new N1(lyricsFloaterService, 2));
                            TextView textView6 = new TextView(lyricsFloaterService);
                            textView6.setText("⚙");
                            textView6.setTextColor(-6642775);
                            textView6.setTextSize(22.0f);
                            textView6.setPadding(24, 12, 24, 12);
                            textView6.setOnClickListener(new N1(lyricsFloaterService, 3));
                            frameLayout2 = new FrameLayout(lyricsFloaterService);
                            GradientDrawable gradientDrawable3 = new GradientDrawable();
                            gradientDrawable3.setCornerRadius(20.0f);
                            gradientDrawable3.setColor((A.b.o(lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getInt("alpha", 204), 0, 255) << 24) | (lyricsFloaterService.getSharedPreferences("lyrics_style_config", 0).getInt("bg", -15592425) & 16777215));
                            frameLayout2.setBackground(gradientDrawable3);
                            frameLayout2.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
                            FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams11.gravity = 8388661;
                            layoutParams11.setMarginEnd(lyricsFloaterService.d(52));
                            frameLayout2.addView(textView6, layoutParams11);
                            FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-2, -2);
                            layoutParams12.gravity = 8388661;
                            frameLayout2.addView(textView5, layoutParams12);
                            layoutParams7 = new WindowManager.LayoutParams(760, 520, 2038, 264, -3);
                            layoutParams7.gravity = 17;
                            layoutParams7.y = -60;
                            windowManager = lyricsFloaterService.f2325a;
                            if (windowManager != null) {
                                I0.f.h("wm");
                                throw null;
                            }
                            windowManager.addView(frameLayout2, layoutParams7);
                            lyricsFloaterService.f2336n = frameLayout2;
                            lyricsFloaterService.f2337o = linearLayout2;
                            lyricsFloaterService.f2338p = scrollView;
                            lyricsFloaterService.f2339q = true;
                            lyricsFloaterService.g();
                            lyricsFloaterService.f(lyricsFloaterService.f2331i);
                        }
                    }
                } else {
                    int rawX = (int) (motionEvent.getRawX() - jVar3.f123a);
                    int rawY = (int) (motionEvent.getRawY() - jVar4.f123a);
                    if (Math.abs(rawX) > lyricsFloaterService.d(6) || Math.abs(rawY) > lyricsFloaterService.d(6)) {
                        iVar3.f122a = true;
                        lyricsFloaterService.f2326c.removeCallbacks(h3);
                    }
                    if (iVar3.f122a) {
                        layoutParams8.x = kVar3.f124a + rawX;
                        layoutParams8.y = kVar4.f124a + rawY;
                        WindowManager windowManager2 = lyricsFloaterService.f2325a;
                        if (windowManager2 == null) {
                            I0.f.h("wm");
                            throw null;
                        }
                        windowManager2.updateViewLayout(frameLayout3, layoutParams8);
                    }
                }
                return true;
            }
        });
        try {
            WindowManager windowManager = this.f2325a;
            if (windowManager == null) {
                f.h("wm");
                throw null;
            }
            windowManager.addView(frameLayout, layoutParams6);
            this.f2332j = frameLayout;
            this.f2333k = textView;
            this.f2334l = layoutParams6;
        } catch (Throwable th) {
            Log.e("LyricsFloater", "addView linha: " + th.getMessage());
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        Object systemService = getSystemService("window");
        f.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f2325a = (WindowManager) systemService;
        Object systemService2 = getSystemService("media_session");
        f.c(systemService2, "null cannot be cast to non-null type android.media.session.MediaSessionManager");
        this.b = (MediaSessionManager) systemService2;
        ExecutorService executorService = K1.f648a;
        K1.f654i = new File(getFilesDir(), "lyrics_cache");
        startForeground(15073, Y.I(this, "lyrics_floater", "Letra", "Letra sincronizada na barra", android.R.drawable.ic_menu_edit, null, 1, 16));
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                f.h("msm");
                throw null;
            }
            mediaSessionManager.addOnActiveSessionsChangedListener(this.f2340r, null);
            h();
            this.f2326c.post(this.f2342t);
        } catch (Exception e2) {
            Log.e("LyricsFloater", "listener falhou: " + e2.getMessage());
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f2326c.removeCallbacks(this.f2342t);
        try {
            MediaSessionManager mediaSessionManager = this.b;
            if (mediaSessionManager == null) {
                f.h("msm");
                throw null;
            }
            mediaSessionManager.removeOnActiveSessionsChangedListener(this.f2340r);
            HashMap map = this.f2327d;
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                try {
                    ((MediaController) it.next()).unregisterCallback(this.f2341s);
                } catch (Exception unused) {
                }
            }
            map.clear();
            e();
            c();
            b();
            super.onDestroy();
        } catch (Exception unused2) {
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        if (f.a(intent != null ? intent.getAction() : null, "com.ex.auto.LYRICS_CONFIG")) {
            this.f2326c.post(new L1(this, 0));
        }
        h();
        return 1;
    }

    public final LinearLayout p(int[] iArr, int i2, l lVar) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        int length = iArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = iArr[i3];
            View view = new View(this);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(i4);
            gradientDrawable.setStroke(d(i4 == i2 ? 3 : 1), i4 == i2 ? -1 : 1728053247);
            view.setBackground(gradientDrawable);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(d(40), d(40));
            layoutParams.setMarginEnd(d(12));
            view.setLayoutParams(layoutParams);
            view.setOnClickListener(new ViewOnClickListenerC0165y1(lVar, i4, this, 1));
            linearLayout.addView(view);
        }
        return linearLayout;
    }

    public final void q() {
        PlaybackState playbackState;
        int state;
        TextView textView;
        MediaMetadata metadata;
        PlaybackState playbackState2;
        int i2 = 0;
        MediaController mediaController = this.f2328e;
        if (mediaController == null || (playbackState = mediaController.getPlaybackState()) == null || !((state = playbackState.getState()) == 3 || state == 2 || state == 6)) {
            e();
            if (this.f2339q) {
                c();
                return;
            }
            return;
        }
        if (this.f2330h == null) {
            ExecutorService executorService = K1.f648a;
            List listC = K1.c(this.f, this.f2329g);
            if (listC != null) {
                this.f2330h = listC;
                this.f2331i = -1;
                if (this.f2339q) {
                    g();
                }
            }
        }
        List list = this.f2330h;
        if (list == null || list.isEmpty()) {
            ExecutorService executorService2 = K1.f648a;
            String str = this.f;
            String str2 = this.f2329g;
            f.e(str, "title");
            f.e(str2, "artist");
            String strF = K1.f(str, str2);
            if (K1.f652g.contains(strF) && !K1.b.containsKey(strF)) {
                e();
                if (this.f2339q) {
                    c();
                    return;
                }
                return;
            }
            MediaController mediaController2 = this.f2328e;
            if (mediaController2 != null && (metadata = mediaController2.getMetadata()) != null) {
                r();
                K1.d(this.f, this.f2329g, metadata.getLong("android.media.metadata.DURATION"), new M1(this, 0));
            }
            n();
            if (this.f2331i != -2) {
                this.f2331i = -2;
                TextView textView2 = this.f2333k;
                if (textView2 != null) {
                    textView2.setText("🎤 buscando letra…");
                }
            }
            TextView textView3 = this.f2333k;
            if (textView3 != null) {
                textView3.setClickable(true);
            }
            TextView textView4 = this.f2333k;
            if ((textView4 != null ? textView4.isClickable() : false) || (textView = this.f2333k) == null) {
                return;
            }
            textView.setOnClickListener(new N1(this, i2));
            return;
        }
        n();
        MediaController mediaController3 = this.f2328e;
        long j2 = 0;
        long position = (mediaController3 == null || (playbackState2 = mediaController3.getPlaybackState()) == null) ? 0L : playbackState2.getState() != 3 ? playbackState2.getPosition() : playbackState2.getPosition() + ((long) (playbackState2.getPlaybackSpeed() * (SystemClock.elapsedRealtime() - playbackState2.getLastPositionUpdateTime())));
        ExecutorService executorService3 = K1.f648a;
        String str3 = this.f;
        String str4 = this.f2329g;
        f.e(str3, "title");
        f.e(str4, "artist");
        try {
            j2 = getSharedPreferences("lyrics_sync_offsets", 0).getLong(K1.f(str3, str4), 0L);
        } catch (Throwable unused) {
        }
        long j3 = position + j2;
        int size = list.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size && ((Number) ((v0.a) list.get(i4)).f4155a).longValue() <= j3; i4++) {
            i3 = i4;
        }
        if (i3 == this.f2331i) {
            return;
        }
        this.f2331i = i3;
        String str5 = i3 >= 0 ? (String) ((v0.a) list.get(i3)).b : "♪";
        TextView textView5 = this.f2333k;
        if (textView5 != null) {
            textView5.setOnClickListener(null);
        }
        TextView textView6 = this.f2333k;
        if (textView6 != null) {
            textView6.setClickable(false);
        }
        TextView textView7 = this.f2333k;
        if (textView7 != null) {
            textView7.setText(str5.length() != 0 ? str5 : "♪");
        }
        if (this.f2339q) {
            f(i3);
        }
    }

    public final void r() {
        String string;
        Proxy proxy = null;
        try {
            string = Settings.Global.getString(getContentResolver(), "http_proxy");
        } catch (Throwable unused) {
            string = null;
        }
        ExecutorService executorService = K1.f648a;
        if (string != null && !j.E0(string) && j.x0(string, ":", false)) {
            try {
                String string2 = j.X0(j.T0(string, ":")).toString();
                int i2 = Integer.parseInt(j.X0(j.T0(j.R0(string, ":"), ";")).toString());
                if (string2.length() > 0) {
                    proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(string2, i2));
                }
            } catch (Throwable unused2) {
            }
        }
        K1.f653h = proxy;
    }
}

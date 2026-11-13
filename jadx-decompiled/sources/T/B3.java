package T;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Log;
import com.ecarx.eas.sdk.mediacenter.MediaCenterAPI;
import com.ecarx.eas.sdk.mediacenter.MusicPlaybackInfo;
import com.ex.auto.MediaCenterArtworkProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class B3 {

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static volatile boolean f487C;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static volatile String f489E;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static String f491G;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Context f493c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static MediaCenterAPI f494d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Object f495e;
    public static volatile boolean f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static volatile boolean f496g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static MediaSessionManager f497h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static C0172z3 f498i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static HandlerThread f499j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Handler f500k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static volatile MediaController f501l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static S1 f502m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f503n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static String f504o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static long f506q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static String f507r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static String f508s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile PlaybackState.CustomAction f509t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static String f510u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static volatile boolean f511v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static volatile boolean f514y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static volatile boolean f515z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final B3 f492a = new B3();
    public static final Set b = AbstractC0201a.P("ecarx.xsf.mediacenter", "com.ecarx.mediacenter", "com.ecarx.multimedia", "com.android.bluetooth", "com.android.server.telecom");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static int f505p = -1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final List f512w = w0.j.T("com.njda.carplay", "com.njda.adapter/.view.CarplayMainActivity");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final List f513x = AbstractC0201a.G("com.njda.");

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final A3 f485A = new A3(0);

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static volatile String f486B = "nenhuma";

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final C0167y3 f488D = new C0167y3();

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public static final A3 f490F = new A3(1);

    public static String b() {
        String str = f491G;
        if (str != null) {
            return str;
        }
        Context context = f493c;
        if (context == null) {
            return "";
        }
        String str2 = "android.resource://" + context.getPackageName() + "/mipmap/ic_launcher";
        f491G = str2;
        I0.f.b(str2);
        return str2;
    }

    public static void c() {
        MediaController mediaController = f501l;
        S1 s1 = f502m;
        if (mediaController != null && s1 != null) {
            try {
                mediaController.unregisterCallback(s1);
            } catch (Throwable unused) {
            }
        }
        f501l = null;
        f502m = null;
    }

    public static String d(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes(O0.a.f412a);
            I0.f.d(bytes, "getBytes(...)");
            byte[] bArrDigest = messageDigest.digest(bytes);
            I0.f.d(bArrDigest, "digest(...)");
            String strSubstring = w0.h.X(bArrDigest, new C0029a3(6)).substring(0, 12);
            I0.f.d(strSubstring, "substring(...)");
            return strSubstring;
        } catch (Throwable unused) {
            return String.valueOf(str.hashCode());
        }
    }

    public static void e() {
        Context context;
        if (f496g || (context = f493c) == null) {
            return;
        }
        try {
            MediaCenterAPI mediaCenterAPI = MediaCenterAPI.get(context);
            f494d = mediaCenterAPI;
            mediaCenterAPI.init(context, new C0029a3(5));
        } catch (Throwable th) {
            M.d0.r(th, new StringBuilder("initSdk falhou: "), "MediaCenterBridge");
            Handler handler = f500k;
            if (handler != null) {
                handler.postDelayed(new RunnableC0026a0(2), 2000L);
            }
        }
    }

    public static long f(PlaybackState playbackState) {
        if (playbackState == null) {
            return 0L;
        }
        long position = playbackState.getPosition();
        if (playbackState.getState() != 3) {
            return position;
        }
        return position + ((long) (playbackState.getPlaybackSpeed() * (SystemClock.elapsedRealtime() - playbackState.getLastPositionUpdateTime())));
    }

    public static void g(List list) {
        Object next;
        Object next2;
        if (f496g) {
            return;
        }
        if (list == null) {
            list = w0.q.f4190a;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next3 = it.next();
            MediaController mediaController = (MediaController) next3;
            if (!b.contains(mediaController.getPackageName())) {
                String packageName = mediaController.getPackageName();
                Context context = f493c;
                if (!I0.f.a(packageName, context != null ? context.getPackageName() : null)) {
                    arrayList.add(next3);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            MediaController mediaController2 = (MediaController) next;
            PlaybackState playbackState = mediaController2.getPlaybackState();
            if (playbackState != null && playbackState.getState() == 3 && mediaController2.getMetadata() != null) {
                break;
            }
        }
        MediaController mediaController3 = (MediaController) next;
        if (mediaController3 == null) {
            Iterator it3 = arrayList.iterator();
            do {
                if (!it3.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it3.next();
            } while (((MediaController) next2).getMetadata() == null);
            mediaController3 = (MediaController) next2;
        }
        if (mediaController3 == null) {
            return;
        }
        MediaController mediaController4 = f501l;
        if (I0.f.a(mediaController4 != null ? mediaController4.getSessionToken() : null, mediaController3.getSessionToken())) {
            return;
        }
        c();
        f501l = mediaController3;
        S1 s1 = new S1(mediaController3, 2);
        f502m = s1;
        try {
            Handler handler = f500k;
            I0.f.b(handler);
            mediaController3.registerCallback(s1, handler);
        } catch (Throwable th) {
            M.d0.r(th, new StringBuilder("registerCallback controller: "), "MediaCenterBridge");
        }
        Log.i("MediaCenterBridge", "espelhando " + mediaController3.getPackageName());
        j(mediaController3);
    }

    public static MusicPlaybackInfo i(String str) {
        MusicPlaybackInfo musicPlaybackInfo = new MusicPlaybackInfo();
        musicPlaybackInfo.setTitle("—");
        musicPlaybackInfo.setArtist("—");
        musicPlaybackInfo.setAlbum("");
        musicPlaybackInfo.setAppName("EX Sapo");
        musicPlaybackInfo.setPackageName(str);
        musicPlaybackInfo.setPlaybackStatus(0);
        musicPlaybackInfo.setSourceType(6);
        musicPlaybackInfo.setMediaType("music");
        musicPlaybackInfo.setAppIcon(b());
        musicPlaybackInfo.setPlayingMediaListId(str.concat("-play-list-common"));
        musicPlaybackInfo.setUuid(r("", "", null));
        return musicPlaybackInfo;
    }

    /* JADX WARN: Code duplicated, block: B:173:0x0283  */
    /* JADX WARN: Code duplicated, block: B:213:0x0372  */
    public static void j(MediaController mediaController) {
        MediaCenterAPI mediaCenterAPI;
        Object obj;
        String string;
        CharSequence text;
        String string2;
        String string3;
        Bitmap bitmap;
        String string4;
        String strM;
        String str;
        PlaybackState.CustomAction customAction;
        boolean z2;
        String packageName;
        PendingIntent broadcast;
        Intent launchIntentForPackage;
        List<PlaybackState.CustomAction> customActions;
        Object next;
        String strG;
        CharSequence text2;
        CharSequence text3;
        if (!f || f496g || (mediaCenterAPI = f494d) == null || (obj = f495e) == null) {
            return;
        }
        if (!mediaCenterAPI.isServiceAlive()) {
            k();
            return;
        }
        MediaMetadata metadata = mediaController.getMetadata();
        PlaybackState playbackState = mediaController.getPlaybackState();
        int state = playbackState != null ? playbackState.getState() : 0;
        int i2 = (state == 3 || state == 6 || state == 4 || state == 5) ? 1 : 0;
        String str2 = "";
        if (metadata == null || (text3 = metadata.getText("android.media.metadata.TITLE")) == null || (string = text3.toString()) == null) {
            string = "";
        }
        if (metadata == null || (text = metadata.getText("android.media.metadata.ARTIST")) == null) {
            text = metadata != null ? metadata.getText("android.media.metadata.ALBUM_ARTIST") : null;
            if (text == null) {
                text = metadata != null ? metadata.getText("android.media.metadata.DISPLAY_SUBTITLE") : null;
            }
        }
        if (text == null || (string2 = text.toString()) == null) {
            string2 = "";
        }
        if (metadata == null || (text2 = metadata.getText("android.media.metadata.ALBUM")) == null || (string3 = text2.toString()) == null) {
            string3 = "";
        }
        long j2 = metadata != null ? metadata.getLong("android.media.metadata.DURATION") : 0L;
        long position = playbackState != null ? playbackState.getPosition() : 0L;
        if (string.equals(f503n) && string2.equals(f504o) && i2 == f505p && !f511v && f503n != null) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - f506q >= 1000) {
                f506q = jElapsedRealtime;
                long j3 = position;
                if (j3 > 0) {
                    try {
                        mediaCenterAPI.updateCurrentProgress(obj, j3);
                    } catch (Throwable unused) {
                    }
                }
                long jF = f(playbackState);
                List list = (List) K1.b.get(K1.f(string, string2));
                if (list != null && (strG = K1.g(list, jF)) != null && !strG.equals(f510u)) {
                    f510u = strG;
                    try {
                        mediaCenterAPI.updateCurrentLyric(obj, strG);
                    } catch (Throwable unused2) {
                    }
                }
                if (i2 != 0) {
                    l(mediaCenterAPI, obj);
                    return;
                }
                return;
            }
            return;
        }
        f511v = false;
        String str3 = string + '|' + string2;
        if (!I0.f.a(str3, f507r) || (strM = f508s) == null) {
            if (metadata == null || (bitmap = metadata.getBitmap("android.media.metadata.ALBUM_ART")) == null) {
                bitmap = metadata != null ? metadata.getBitmap("android.media.metadata.ART") : null;
                if (bitmap == null) {
                    bitmap = metadata != null ? metadata.getBitmap("android.media.metadata.DISPLAY_ICON") : null;
                }
            }
            if (bitmap == null || (strM = m(bitmap, str3)) == null) {
                if (metadata == null || (string4 = metadata.getString("android.media.metadata.ALBUM_ART_URI")) == null) {
                    string4 = metadata != null ? metadata.getString("android.media.metadata.ART_URI") : null;
                    if (string4 == null) {
                        string4 = metadata != null ? metadata.getString("android.media.metadata.DISPLAY_ICON_URI") : null;
                    }
                }
                Context context = f493c;
                if (string4 != null && context != null) {
                    AbstractC0108n4.c(context);
                    AbstractC0108n4.b(context, string4, new C0109o(str3, 1));
                }
                strM = null;
            }
        }
        if (playbackState == null || (customActions = playbackState.getCustomActions()) == null) {
            str = "";
            customAction = null;
        } else {
            Iterator<T> it = customActions.iterator();
            loop0: while (true) {
                if (!it.hasNext()) {
                    str = str2;
                    next = null;
                    break;
                }
                next = it.next();
                PlaybackState.CustomAction customAction2 = (PlaybackState.CustomAction) next;
                I0.f.b(customAction2);
                StringBuilder sb = new StringBuilder();
                str = str2;
                sb.append(customAction2.getAction());
                sb.append(' ');
                sb.append((Object) customAction2.getName());
                String lowerCase = sb.toString().toLowerCase(Locale.ROOT);
                I0.f.d(lowerCase, "toLowerCase(...)");
                if (!O0.j.x0(lowerCase, "não gost", false) && !O0.j.x0(lowerCase, "nao gost", false) && !O0.j.x0(lowerCase, "dislike", false)) {
                    List listT = w0.j.T("coleç", "colecao", "collection", "biblioteca", "library", "favorit", "curtir", "like", "gostei", "gosto", "salvar", "saved", "heart");
                    if (listT.isEmpty()) {
                        continue;
                    } else {
                        Iterator it2 = listT.iterator();
                        while (it2.hasNext()) {
                            Iterator it3 = it2;
                            if (O0.j.x0(lowerCase, (String) it2.next(), false)) {
                                break loop0;
                            } else {
                                it2 = it3;
                            }
                        }
                    }
                }
                str2 = str;
            }
            customAction = (PlaybackState.CustomAction) next;
        }
        f509t = customAction;
        if (customAction != null) {
            String lowerCase2 = customAction.getName().toString().toLowerCase(Locale.ROOT);
            I0.f.d(lowerCase2, "toLowerCase(...)");
            if (O0.j.x0(lowerCase2, "remov", false) || O0.j.x0(lowerCase2, "remove", false) || O0.j.x0(lowerCase2, "saved", false) || O0.j.x0(lowerCase2, "salvo", false) || O0.j.x0(lowerCase2, "unsave", false) || O0.j.x0(lowerCase2, "marcado", false)) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        List list2 = (List) K1.b.get(K1.f(string, string2));
        if (list2 == null && string.length() > 0) {
            K1.d(string, string2, j2, new C0033b1(8));
        }
        Context context2 = f493c;
        if (context2 == null) {
            return;
        }
        String packageName2 = context2.getPackageName();
        MusicPlaybackInfo musicPlaybackInfo = new MusicPlaybackInfo();
        musicPlaybackInfo.setTitle(string.length() == 0 ? "—" : string);
        musicPlaybackInfo.setArtist(string2.length() == 0 ? "—" : string2);
        musicPlaybackInfo.setAlbum(string3);
        if (strM != null) {
            musicPlaybackInfo.setArtwork(Uri.parse(strM));
        }
        musicPlaybackInfo.setDuration(j2);
        musicPlaybackInfo.setPlaybackStatus(i2);
        musicPlaybackInfo.setSourceType(6);
        String packageName3 = mediaController.getPackageName();
        if (packageName3 == null) {
            packageName3 = "EX Sapo";
        } else {
            try {
                Context context3 = f493c;
                I0.f.b(context3);
                PackageManager packageManager = context3.getPackageManager();
                packageName3 = packageManager.getApplicationLabel(packageManager.getApplicationInfo(packageName3, 0)).toString();
            } catch (Throwable unused3) {
            }
        }
        musicPlaybackInfo.setAppName(packageName3);
        musicPlaybackInfo.setPackageName(packageName2);
        musicPlaybackInfo.setAppIcon(b());
        musicPlaybackInfo.setSupportLoopModeSwitch(true);
        musicPlaybackInfo.setSupportVrCtrlPlayStatus(true);
        musicPlaybackInfo.setMediaType("music");
        musicPlaybackInfo.setPlayingMediaListId(packageName2 + "-play-list-common");
        musicPlaybackInfo.setUuid(r(string, string2, string3));
        if (customAction != null) {
            musicPlaybackInfo.setSupportCollect(true);
            musicPlaybackInfo.setCollected(z2);
        }
        if (list2 != null) {
            String str4 = (String) K1.f649c.get(K1.f(string, string2));
            if (str4 == null) {
                str4 = str;
            }
            musicPlaybackInfo.setLyricContent(str4);
            String strG2 = K1.g(list2, f(playbackState));
            if (strG2 == null) {
                strG2 = str;
            }
            musicPlaybackInfo.setCurrentLyricSentence(strG2);
            musicPlaybackInfo.setLyric(Uri.EMPTY);
        }
        PendingIntent sessionActivity = mediaController.getSessionActivity();
        if (sessionActivity == null) {
            Context context4 = f493c;
            if (context4 == null || (packageName = mediaController.getPackageName()) == null) {
                sessionActivity = null;
            } else {
                if (packageName.equals("com.njda.aauto") || packageName.equals("com.google.android.projection.gearhead")) {
                    try {
                        broadcast = PendingIntent.getBroadcast(context4, packageName.hashCode() & 65535, new Intent("com.bd.systemui.aa.foreground"), 201326592);
                    } catch (Throwable unused4) {
                        broadcast = null;
                    }
                } else {
                    broadcast = null;
                }
                if (broadcast != null) {
                    sessionActivity = broadcast;
                } else {
                    try {
                        launchIntentForPackage = context4.getPackageManager().getLaunchIntentForPackage(packageName);
                    } catch (Throwable unused5) {
                        launchIntentForPackage = null;
                    }
                    if (launchIntentForPackage == null) {
                        sessionActivity = null;
                    } else {
                        try {
                            sessionActivity = PendingIntent.getActivity(context4, packageName.hashCode() & 65535, launchIntentForPackage, 201326592);
                        } catch (Throwable unused6) {
                            sessionActivity = null;
                        }
                    }
                }
            }
        }
        if (sessionActivity != null) {
            musicPlaybackInfo.setLaunchIntent(sessionActivity);
            musicPlaybackInfo.setPlayerIntent(sessionActivity);
        }
        if (i2 != 0) {
            try {
                l(mediaCenterAPI, obj);
            } catch (Throwable th) {
                Log.w("MediaCenterBridge", "publish IPC falhou: " + th.getMessage());
                k();
                return;
            }
        }
        Log.i("MediaCenterBridge", "publish " + mediaController.getPackageName() + " status=" + i2 + " [" + string + '/' + string2 + ']');
        C0172z3 c0172z3 = f498i;
        if (c0172z3 != null) {
            musicPlaybackInfo.setPlayingItemPositionInQueue(0);
            c0172z3.f1243a = musicPlaybackInfo;
        }
        mediaCenterAPI.updateMusicPlaybackState(obj, musicPlaybackInfo);
        mediaCenterAPI.updateCurrentProgress(obj, 0L);
        mediaCenterAPI.updatePlayState(packageName2, i2, 0);
        if (!string.equals(f503n) || !string2.equals(f504o)) {
            f510u = null;
        }
        f503n = string;
        f504o = string2;
        f505p = i2;
        f506q = SystemClock.elapsedRealtime();
    }

    public static void k() {
        if (f496g) {
            return;
        }
        Log.w("MediaCenterBridge", "sessão obsoleta — re-registrando");
        f = false;
        f495e = null;
        f503n = null;
        f504o = null;
        f505p = -1;
        MediaCenterAPI mediaCenterAPI = f494d;
        if (mediaCenterAPI != null) {
            Handler handler = f500k;
            if (handler != null) {
                handler.post(new T0(mediaCenterAPI, 8));
                return;
            }
            return;
        }
        Handler handler2 = f500k;
        if (handler2 != null) {
            handler2.post(new RunnableC0026a0(8));
        }
    }

    public static void l(MediaCenterAPI mediaCenterAPI, Object obj) {
        try {
            String strQueryCurrentFocusClient = mediaCenterAPI.queryCurrentFocusClient(obj);
            Context context = f493c;
            String packageName = context != null ? context.getPackageName() : null;
            if (strQueryCurrentFocusClient == null || strQueryCurrentFocusClient.length() == 0 || O0.s.w0(strQueryCurrentFocusClient, "android.uid.system")) {
                return;
            }
            if (packageName == null || !O0.s.w0(strQueryCurrentFocusClient, packageName)) {
                if (!f514y) {
                    List list = f513x;
                    if (list == null || !list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (O0.s.w0(strQueryCurrentFocusClient, (String) it.next())) {
                                }
                            }
                        }
                    }
                    if (mediaCenterAPI.requestPlay(obj)) {
                        mediaCenterAPI.updateCurrentSourceType(obj, 6);
                        return;
                    }
                    return;
                }
                if (strQueryCurrentFocusClient.equals(f489E)) {
                    return;
                }
                f489E = strQueryCurrentFocusClient;
                Log.i("MediaCenterBridge", "foco com " + strQueryCurrentFocusClient + " (projeção) — não reivindico");
            }
        } catch (Throwable unused) {
        }
    }

    public static String m(Bitmap bitmap, String str) {
        Context context = f493c;
        if (context == null) {
            return null;
        }
        try {
            int i2 = MediaCenterArtworkProvider.f2411a;
            File file = new File(context.getFilesDir(), "mediabridge_artwork");
            if (!file.exists()) {
                file.mkdirs();
            }
            String str2 = "art_" + d(str) + ".png";
            File file2 = new File(file, str2);
            if (!file2.exists()) {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    A.b.m(fileOutputStream, null);
                    try {
                        File[] fileArrListFiles = file.listFiles();
                        if (fileArrListFiles != null && fileArrListFiles.length > 10) {
                            for (File file3 : w0.i.g0(w0.h.Z(fileArrListFiles, new E(9)), fileArrListFiles.length - 10)) {
                                if (!I0.f.a(file3.getName(), str2)) {
                                    file3.delete();
                                }
                            }
                        }
                    } catch (Throwable unused) {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        A.b.m(fileOutputStream, th);
                        throw th2;
                    }
                }
            }
            int i3 = MediaCenterArtworkProvider.f2411a;
            I0.f.e(str2, "fileName");
            Uri uri = Uri.parse("content://com.ex.auto.mediabridge.artwork/".concat(str2));
            I0.f.d(uri, "parse(...)");
            String string = uri.toString();
            I0.f.d(string, "toString(...)");
            f507r = str;
            f508s = string;
            return string;
        } catch (Throwable th3) {
            M.d0.r(th3, new StringBuilder("saveArtBitmap falhou: "), "MediaCenterBridge");
            return null;
        }
    }

    public static void n(boolean z2) {
        if (f514y == z2) {
            return;
        }
        f514y = z2;
        Log.i("MediaCenterBridge", "CarPlay conectado=" + z2);
        Handler handler = f500k;
        if (handler != null) {
            handler.post(new RunnableC0144u0(1, z2));
        }
    }

    public static void q() {
        MediaController.TransportControls transportControls;
        PlaybackState.CustomAction customAction = f509t;
        if (customAction == null) {
            return;
        }
        try {
            MediaController mediaController = f501l;
            if (mediaController == null || (transportControls = mediaController.getTransportControls()) == null) {
                return;
            }
            transportControls.sendCustomAction(customAction, (Bundle) null);
        } catch (Throwable unused) {
        }
    }

    public static String r(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append('|');
        sb.append(str2);
        sb.append('|');
        if (str3 == null) {
            str3 = "";
        }
        sb.append(str3);
        String string = sb.toString();
        try {
            byte[] bytes = string.getBytes(O0.a.f412a);
            I0.f.d(bytes, "getBytes(...)");
            return UUID.nameUUIDFromBytes(bytes).toString();
        } catch (Throwable unused) {
            return String.valueOf(string.hashCode());
        }
    }

    public final void a(String str) {
        String str2;
        boolean z2;
        if (f496g) {
            return;
        }
        boolean z3 = true;
        if (!f514y) {
            Context context = f493c;
            if (context == null) {
                z2 = f515z;
            } else {
                try {
                    Object systemService = context.getSystemService("activity");
                    I0.f.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(1);
                    I0.f.d(runningTasks, "getRunningTasks(...)");
                    ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) w0.i.a0(runningTasks);
                    ComponentName componentName = runningTaskInfo != null ? runningTaskInfo.topActivity : null;
                    if (componentName != null) {
                        String strFlattenToShortString = componentName.flattenToShortString();
                        I0.f.d(strFlattenToShortString, "flattenToShortString(...)");
                        f486B = "tasks";
                        List list = f512w;
                        if (list == null || !list.isEmpty()) {
                            Iterator it = list.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (O0.j.x0(strFlattenToShortString, (String) it.next(), false)) {
                                        z2 = true;
                                    }
                                }
                            }
                        }
                        z2 = false;
                    } else {
                        try {
                            String strB = new I1(5555).b(3000, "dumpsys activity activities 2>/dev/null | grep mResumedActivity");
                            f486B = "adb";
                            List list2 = f512w;
                            if (list2 == null || !list2.isEmpty()) {
                                Iterator it2 = list2.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        String str3 = (String) it2.next();
                                        I0.f.b(strB);
                                        if (O0.j.x0(strB, str3, false)) {
                                            z2 = true;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable unused) {
                            if (f515z && !f514y) {
                                z2 = true;
                            }
                        }
                        z2 = false;
                    }
                } catch (Throwable unused2) {
                }
            }
            if (!z2) {
                z3 = false;
            }
        }
        if (z3 == f515z) {
            return;
        }
        f515z = z3;
        if (!z3) {
            Log.i("MediaCenterBridge", "sem projeção (" + str + ") — voltando a registrar no MediaCenter");
            L3.f671a.b("MediaCenterBridge", "ponte MediaCenter religada (sem projeção)");
            h();
            return;
        }
        if (f514y) {
            str2 = "CarPlay conectado";
        } else {
            str2 = "projeção em tela cheia (sonda " + f486B + ')';
        }
        Log.i("MediaCenterBridge", str2 + " (" + str + ") — saindo do registro do MediaCenter");
        L3 l3 = L3.f671a;
        StringBuilder sb = new StringBuilder("ponte MediaCenter suspensa (");
        sb.append(str2);
        sb.append(')');
        l3.b("MediaCenterBridge", sb.toString());
        MediaCenterAPI mediaCenterAPI = f494d;
        Object obj = f495e;
        if (mediaCenterAPI != null && obj != null) {
            try {
                mediaCenterAPI.unregister(obj);
            } catch (Throwable unused3) {
            }
        }
        f495e = null;
        f = false;
        f487C = false;
    }

    public final void h() {
        MediaCenterAPI mediaCenterAPI;
        Context context;
        if (f515z || f || f496g || (mediaCenterAPI = f494d) == null || (context = f493c) == null) {
            return;
        }
        String packageName = context.getPackageName();
        try {
            Object objRegisterMusic = mediaCenterAPI.registerMusic(packageName, f498i);
            if (objRegisterMusic == null) {
                Log.e("MediaCenterBridge", "registerMusic devolveu null — reagenda");
                Handler handler = f500k;
                if (handler != null) {
                    handler.postDelayed(new T0(this, 7), 2000L);
                    return;
                }
                return;
            }
            f495e = objRegisterMusic;
            f = true;
            mediaCenterAPI.updateMediaSourceTypeList(objRegisterMusic, new int[]{6});
            mediaCenterAPI.declareMediaCenterCapability(objRegisterMusic, new int[]{0, 2, 3});
            mediaCenterAPI.declareSupportCollectTypes(objRegisterMusic, new int[]{0, 3, 4});
            Log.i("MediaCenterBridge", "registrado no MediaCenter (token=" + objRegisterMusic + ')');
            Handler handler2 = f500k;
            if (handler2 != null) {
                handler2.removeCallbacks(f485A);
            }
            Handler handler3 = f500k;
            if (handler3 != null) {
                handler3.postDelayed(f485A, 5000L);
            }
            C0172z3 c0172z3 = f498i;
            if (c0172z3 != null) {
                I0.f.b(packageName);
                MusicPlaybackInfo musicPlaybackInfoI = i(packageName);
                musicPlaybackInfoI.setPlayingItemPositionInQueue(0);
                c0172z3.f1243a = musicPlaybackInfoI;
            }
            MediaSessionManager mediaSessionManager = f497h;
            if (mediaSessionManager != null) {
                try {
                    C0167y3 c0167y3 = f488D;
                    Handler handler4 = f500k;
                    I0.f.b(handler4);
                    mediaSessionManager.addOnActiveSessionsChangedListener(c0167y3, null, handler4);
                    g(mediaSessionManager.getActiveSessions(null));
                } catch (Throwable th) {
                    M.d0.r(th, new StringBuilder("addOnActiveSessionsChangedListener falhou: "), "MediaCenterBridge");
                }
            }
            Handler handler5 = f500k;
            if (handler5 != null) {
                handler5.postDelayed(f490F, 10000L);
            }
        } catch (Throwable th2) {
            M.d0.r(th2, new StringBuilder("performRegistration falhou: "), "MediaCenterBridge");
            f = false;
            f495e = null;
            Handler handler6 = f500k;
            if (handler6 != null) {
                handler6.postDelayed(new RunnableC0026a0(6), 2000L);
            }
        }
    }

    public final synchronized void o(Context context) {
        I0.f.e(context, "context");
        if (f493c != null) {
            Log.i("MediaCenterBridge", "start: já ativo");
            return;
        }
        f496g = false;
        f515z = f514y;
        Context applicationContext = context.getApplicationContext();
        f493c = applicationContext;
        I0.f.b(applicationContext);
        HandlerThread handlerThread = new HandlerThread("MediaCenterBridge");
        handlerThread.start();
        f499j = handlerThread;
        HandlerThread handlerThread2 = f499j;
        I0.f.b(handlerThread2);
        f500k = new Handler(handlerThread2.getLooper());
        Object systemService = applicationContext.getSystemService("media_session");
        f497h = systemService instanceof MediaSessionManager ? (MediaSessionManager) systemService : null;
        f498i = new C0172z3();
        Log.i("MediaCenterBridge", "start: inicializando SDK MediaCenter");
        Handler handler = f500k;
        I0.f.b(handler);
        handler.post(new RunnableC0026a0(7));
    }

    public final synchronized void p() {
        if (f493c == null) {
            return;
        }
        Log.i("MediaCenterBridge", "stop");
        f496g = true;
        Handler handler = f500k;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        try {
            c();
        } catch (Throwable unused) {
        }
        try {
            MediaSessionManager mediaSessionManager = f497h;
            if (mediaSessionManager != null) {
                mediaSessionManager.removeOnActiveSessionsChangedListener(f488D);
            }
        } catch (Throwable unused2) {
        }
        MediaCenterAPI mediaCenterAPI = f494d;
        Object obj = f495e;
        Handler handler2 = f500k;
        if (handler2 != null) {
            handler2.post(new H(mediaCenterAPI, 22, obj));
        }
        HandlerThread handlerThread = f499j;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        f499j = null;
        f500k = null;
        f494d = null;
        f495e = null;
        f = false;
        f487C = false;
        f501l = null;
        f502m = null;
        f497h = null;
        f498i = null;
        f493c = null;
        f503n = null;
        f504o = null;
        f505p = -1;
    }
}

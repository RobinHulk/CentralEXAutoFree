package androidx.emoji2.text;

import android.os.Handler;
import android.os.Looper;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p007e.AbstractC0201a;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f1694i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile i f1695j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReentrantReadWriteLock f1696a;
    public final p020m.c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f1697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Handler f1698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f1699e;
    public final h f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1700g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c f1701h;

    public i(o oVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f1696a = reentrantReadWriteLock;
        this.f1697c = 3;
        h hVar = (h) oVar.b;
        this.f = hVar;
        int i2 = oVar.f144a;
        this.f1700g = i2;
        this.f1701h = (c) oVar.f145c;
        this.f1698d = new Handler(Looper.getMainLooper());
        this.b = new p020m.c();
        e eVar = new e(this);
        this.f1699e = eVar;
        reentrantReadWriteLock.writeLock().lock();
        if (i2 == 0) {
            try {
                this.f1697c = 0;
            } catch (Throwable th) {
                this.f1696a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (b() == 0) {
            try {
                hVar.q(new d(eVar));
            } catch (Throwable th2) {
                d(th2);
            }
        }
    }

    public static i a() {
        i iVar;
        synchronized (f1694i) {
            try {
                iVar = f1695j;
                if (!(iVar != null)) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iVar;
    }

    public final int b() {
        this.f1696a.readLock().lock();
        try {
            return this.f1697c;
        } finally {
            this.f1696a.readLock().unlock();
        }
    }

    public final void c() {
        if (!(this.f1700g == 1)) {
            throw new IllegalStateException("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        }
        if (b() == 1) {
            return;
        }
        this.f1696a.writeLock().lock();
        try {
            if (this.f1697c == 0) {
                this.f1696a.writeLock().unlock();
                return;
            }
            this.f1697c = 0;
            this.f1696a.writeLock().unlock();
            e eVar = this.f1699e;
            i iVar = eVar.f1690a;
            try {
                iVar.f.q(new d(eVar));
            } catch (Throwable th) {
                iVar.d(th);
            }
        } catch (Throwable th2) {
            this.f1696a.writeLock().unlock();
            throw th2;
        }
    }

    public final void d(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f1696a.writeLock().lock();
        try {
            this.f1697c = 2;
            arrayList.addAll(this.b);
            this.b.clear();
            this.f1696a.writeLock().unlock();
            this.f1698d.post(new g(arrayList, this.f1697c, th));
        } catch (Throwable th2) {
            this.f1696a.writeLock().unlock();
            throw th2;
        }
    }

    public final CharSequence e(CharSequence charSequence, int i2, int i3) {
        int iCharCount;
        t[] tVarArr;
        if (!(b() == 1)) {
            throw new IllegalStateException("Not initialized yet");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("start cannot be negative");
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("end cannot be negative");
        }
        AbstractC0201a.h("start should be <= than end", i2 <= i3);
        u uVar = null;
        if (charSequence == null) {
            return null;
        }
        AbstractC0201a.h("start should be < than charSequence length", i2 <= charSequence.length());
        AbstractC0201a.h("end should be < than charSequence length", i3 <= charSequence.length());
        if (charSequence.length() == 0 || i2 == i3) {
            return charSequence;
        }
        G.a aVar = this.f1699e.b;
        aVar.getClass();
        boolean z2 = charSequence instanceof s;
        if (z2) {
            ((s) charSequence).a();
        }
        if (z2) {
            uVar = new u((Spannable) charSequence);
        } else {
            try {
                if (charSequence instanceof Spannable) {
                    uVar = new u((Spannable) charSequence);
                } else if ((charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(i2 - 1, i3 + 1, t.class) <= i3) {
                    uVar = new u(charSequence);
                }
            } finally {
                if (z2) {
                    ((s) charSequence).b();
                }
            }
        }
        if (uVar != null && (tVarArr = (t[]) uVar.b.getSpans(i2, i3, t.class)) != null && tVarArr.length > 0) {
            for (t tVar : tVarArr) {
                int spanStart = uVar.b.getSpanStart(tVar);
                int spanEnd = uVar.b.getSpanEnd(tVar);
                if (spanStart != i3) {
                    uVar.removeSpan(tVar);
                }
                i2 = Math.min(spanStart, i2);
                i3 = Math.max(spanEnd, i3);
            }
        }
        if (i2 != i3 && i2 < charSequence.length()) {
            m mVar = new m((p) ((q) aVar.b).f1720c);
            int iCodePointAt = Character.codePointAt(charSequence, i2);
            int i4 = 0;
            u uVar2 = uVar;
            loop1: while (true) {
                iCharCount = i2;
                while (true) {
                    if (i2 >= i3 || i4 >= Integer.MAX_VALUE) {
                        break loop1;
                    }
                    int iA = mVar.a(iCodePointAt);
                    if (iA == 1) {
                        iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                        if (iCharCount < i3) {
                            iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                        }
                        i2 = iCharCount;
                    } else if (iA == 2) {
                        i2 += Character.charCount(iCodePointAt);
                        if (i2 < i3) {
                            iCodePointAt = Character.codePointAt(charSequence, i2);
                        }
                    } else if (iA != 3) {
                    }
                }
                if (!aVar.u(charSequence, iCharCount, i2, mVar.f1709d.b)) {
                    if (uVar2 == null) {
                        uVar2 = new u((Spannable) new SpannableString(charSequence));
                    }
                    uVar2.setSpan(new t(mVar.f1709d.b), iCharCount, i2, 33);
                    i4++;
                }
            }
            if (mVar.f1707a == 2 && mVar.f1708c.b != null && ((mVar.f > 1 || mVar.c()) && i4 < Integer.MAX_VALUE && !aVar.u(charSequence, iCharCount, i2, mVar.f1708c.b))) {
                if (uVar2 == null) {
                    uVar2 = new u(charSequence);
                }
                uVar2.setSpan(new t(mVar.f1708c.b), iCharCount, i2, 33);
            }
            if (uVar2 != null) {
                return uVar2.b;
            }
            if (!z2) {
                return charSequence;
            }
        } else if (!z2) {
            return charSequence;
        }
        return charSequence;
    }

    public final void f(f fVar) {
        AbstractC0201a.j(fVar, "initCallback cannot be null");
        this.f1696a.writeLock().lock();
        try {
            if (this.f1697c == 1 || this.f1697c == 2) {
                this.f1698d.post(new g(Arrays.asList(fVar), this.f1697c, (Throwable) null));
            } else {
                this.b.add(fVar);
            }
        } finally {
            this.f1696a.writeLock().unlock();
        }
    }
}

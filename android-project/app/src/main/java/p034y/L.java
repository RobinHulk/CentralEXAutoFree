package p034y;

import A.e;
import B.u;
import android.view.ContentInfo;
import android.view.OnReceiveContentListener;
import android.view.View;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class L implements OnReceiveContentListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f4221a;

    public L(r rVar) {
        this.f4221a = rVar;
    }

    public final ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
        C0274h c0274h = new C0274h(new e(contentInfo));
        C0274h c0274hA = ((u) this.f4221a).a(view, c0274h);
        if (c0274hA == null) {
            return null;
        }
        if (c0274hA == c0274h) {
            return contentInfo;
        }
        ContentInfo contentInfoK = c0274hA.f4253a.k();
        Objects.requireNonNull(contentInfoK);
        return AbstractC0270d.e(contentInfoK);
    }
}

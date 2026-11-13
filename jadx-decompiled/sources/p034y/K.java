package p034y;

import A.e;
import android.view.ContentInfo;
import android.view.View;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class K {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static C0274h b(View view, C0274h c0274h) {
        ContentInfo contentInfoK = c0274h.f4253a.k();
        Objects.requireNonNull(contentInfoK);
        ContentInfo contentInfoE = AbstractC0270d.e(contentInfoK);
        ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfoE);
        if (contentInfoPerformReceiveContent == null) {
            return null;
        }
        return contentInfoPerformReceiveContent == contentInfoE ? c0274h : new C0274h(new e(contentInfoPerformReceiveContent));
    }

    public static void c(View view, String[] strArr, r rVar) {
        if (rVar == null) {
            view.setOnReceiveContentListener(strArr, null);
        } else {
            view.setOnReceiveContentListener(strArr, new L(rVar));
        }
    }
}

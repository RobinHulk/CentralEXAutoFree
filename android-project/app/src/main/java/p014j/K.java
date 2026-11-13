package p014j;

import android.content.res.Resources;
import android.widget.ThemedSpinnerAdapter;
import p033x.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class K {
    public static void a(ThemedSpinnerAdapter themedSpinnerAdapter, Resources.Theme theme) {
        if (b.a(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
            return;
        }
        themedSpinnerAdapter.setDropDownViewTheme(theme);
    }
}

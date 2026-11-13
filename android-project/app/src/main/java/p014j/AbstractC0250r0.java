package p014j;

import android.widget.AbsListView;
import java.lang.reflect.Field;

/* JADX INFO: renamed from: j.r0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0250r0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Field f3679a;

    static {
        Field declaredField = null;
        try {
            declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
        f3679a = declaredField;
    }
}

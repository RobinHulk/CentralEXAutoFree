package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class Q {
    public static final void a(View view, int i2) {
        int iE = e(i2);
        if (iE == 0) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                }
                viewGroup.removeView(view);
                return;
            }
            return;
        }
        if (iE == 1) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            view.setVisibility(0);
            return;
        }
        if (iE == 2) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (iE != 3) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }

    public static int b(int i2) {
        if (i2 == 0) {
            return 2;
        }
        if (i2 == 4) {
            return 4;
        }
        if (i2 == 8) {
            return 3;
        }
        throw new IllegalArgumentException("Unknown visibility " + i2);
    }

    public static int c(View view) {
        if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
            return 4;
        }
        return b(view.getVisibility());
    }

    public static String d(String str, String str2) {
        return str + str2;
    }

    public static /* synthetic */ int e(int i2) {
        if (i2 != 0) {
            return i2 - 1;
        }
        throw null;
    }

    public static /* synthetic */ String f(int i2) {
        if (i2 == 1) {
            return "NONE";
        }
        if (i2 != 2) {
            return i2 != 3 ? "null" : "REMOVING";
        }
        return "ADDING";
    }

    public static /* synthetic */ String g(int i2) {
        if (i2 == 1) {
            return "REMOVED";
        }
        if (i2 == 2) {
            return "VISIBLE";
        }
        if (i2 != 3) {
            return i2 != 4 ? "null" : "INVISIBLE";
        }
        return "GONE";
    }
}

package T;

import android.app.Activity;
import android.view.View;
import android.widget.CheckBox;
import com.ex.auto.BackgroundKeepAliveActivity;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.CloseAppsWhitelistActivity;
import com.ex.auto.FavoriteAppsActivity;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class F implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f555a;
    public final /* synthetic */ CheckBox b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Set f556c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f557d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Activity f558e;

    public /* synthetic */ F(CheckBox checkBox, Set set, String str, Activity activity, int i2) {
        this.f555a = i2;
        this.b = checkBox;
        this.f556c = set;
        this.f557d = str;
        this.f558e = activity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f555a) {
            case 0:
                CheckBox checkBox = this.b;
                Set set = this.f556c;
                String str = this.f557d;
                BackgroundKeepAliveActivity backgroundKeepAliveActivity = (BackgroundKeepAliveActivity) this.f558e;
                int i2 = BackgroundKeepAliveActivity.f2133a;
                boolean zIsChecked = checkBox.isChecked();
                checkBox.setChecked(!zIsChecked);
                if (zIsChecked) {
                    set.remove(str);
                } else {
                    I0.f.b(str);
                    set.add(str);
                }
                I0.f.e(backgroundKeepAliveActivity, "ctx");
                backgroundKeepAliveActivity.getSharedPreferences("background_keep_alive_prefs", 0).edit().putString("packages", w0.i.d0(w0.i.Y(set), ",", null, null, null, 62)).apply();
                int[] iArr = CentralWatchdogService.d2;
                CentralWatchdogService centralWatchdogService = CentralWatchdogService.g2;
                if (centralWatchdogService != null) {
                    centralWatchdogService.f2190a.post(new RunnableC0139t0(centralWatchdogService, 24));
                }
                break;
            case 1:
                int i3 = CloseAppsWhitelistActivity.f2236a;
                CheckBox checkBox2 = this.b;
                boolean zIsChecked2 = checkBox2.isChecked();
                checkBox2.setChecked(!zIsChecked2);
                Set set2 = this.f556c;
                String str2 = this.f557d;
                if (zIsChecked2) {
                    set2.remove(str2);
                } else {
                    I0.f.b(str2);
                    set2.add(str2);
                }
                CloseAppsWhitelistActivity closeAppsWhitelistActivity = (CloseAppsWhitelistActivity) this.f558e;
                I0.f.e(closeAppsWhitelistActivity, "ctx");
                closeAppsWhitelistActivity.getSharedPreferences("close_apps_whitelist_prefs", 0).edit().putString("packages", w0.i.d0(w0.i.Y(set2), ",", null, null, null, 62)).apply();
                break;
            default:
                int i4 = FavoriteAppsActivity.f2260a;
                CheckBox checkBox3 = this.b;
                boolean zIsChecked3 = checkBox3.isChecked();
                checkBox3.setChecked(!zIsChecked3);
                Set set3 = this.f556c;
                String str3 = this.f557d;
                if (zIsChecked3) {
                    set3.remove(str3);
                } else {
                    I0.f.b(str3);
                    set3.add(str3);
                }
                FavoriteAppsActivity favoriteAppsActivity = (FavoriteAppsActivity) this.f558e;
                I0.f.e(favoriteAppsActivity, "ctx");
                favoriteAppsActivity.getSharedPreferences("favorite_apps_prefs", 0).edit().putString("packages", w0.i.d0(w0.i.Y(set3), ",", null, null, null, 62)).apply();
                break;
        }
    }
}

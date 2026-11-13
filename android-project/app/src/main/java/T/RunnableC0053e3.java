package T;

import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import java.util.List;

/* JADX INFO: renamed from: T.e3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0053e3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f950a;
    public final /* synthetic */ TextView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f951c;

    public /* synthetic */ RunnableC0053e3(TextView textView, String str, int i2) {
        this.f950a = i2;
        this.b = textView;
        this.f951c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f951c;
        TextView textView = this.b;
        switch (this.f950a) {
            case 0:
                int i2 = MainActivity.u0;
                textView.setText(str);
                break;
            case 1:
                List list = QuickAccessFloaterService.f2436j0;
                textView.setText(str);
                break;
            default:
                List list2 = QuickAccessFloaterService.f2436j0;
                textView.setText(str);
                break;
        }
    }
}

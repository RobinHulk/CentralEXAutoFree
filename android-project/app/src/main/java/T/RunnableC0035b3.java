package T;

import android.content.ContextWrapper;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.ex.auto.MainActivity;
import com.ex.auto.MediaBarFloaterService;
import com.ex.auto.R;
import java.util.ListIterator;
import java.util.Set;

/* JADX INFO: renamed from: T.b3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0035b3 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f902a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContextWrapper f903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f905e;
    public final /* synthetic */ Object f;

    public /* synthetic */ RunnableC0035b3(Object obj, ContextWrapper contextWrapper, Object obj2, Object obj3, Object obj4, int i2) {
        this.f902a = i2;
        this.b = obj;
        this.f903c = contextWrapper;
        this.f904d = obj2;
        this.f905e = obj3;
        this.f = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ImageView imageView;
        Object obj = this.f;
        Object obj2 = this.f905e;
        Object obj3 = this.f904d;
        ContextWrapper contextWrapper = this.f903c;
        Object obj4 = this.b;
        switch (this.f902a) {
            case 0:
                int i2 = MainActivity.u0;
                MainActivity mainActivity = (MainActivity) contextWrapper;
                TextView textView = (TextView) obj4;
                textView.setText(mainActivity.getString(R.string.k_app_abrindo_oficial));
                x0.c cVar = new x0.c(10);
                String str = ((C0077i3) obj3).f1009e;
                if (O0.s.w0(str, "https://play.google.com/store/apps/details?id=")) {
                    cVar.add(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=".concat(O0.j.R0(str, "?id=")))));
                }
                cVar.add(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                cVar.f();
                cVar.f4218c = true;
                if (cVar.b <= 0) {
                    cVar = x0.c.f4216d;
                }
                ListIterator listIterator = cVar.listIterator(0);
                while (true) {
                    x0.a aVar = (x0.a) listIterator;
                    if (aVar.hasNext()) {
                        mainActivity.startActivity(((Intent) aVar.next()).addFlags(268435456));
                    } else {
                        textView.setText(mainActivity.getString(R.string.k_app_sem_navegador, str));
                    }
                }
                ((Button) obj2).setEnabled(true);
                ((Button) obj).setEnabled(true);
                break;
            default:
                Bitmap bitmap = (Bitmap) obj4;
                if (bitmap == null) {
                    Set set = MediaBarFloaterService.f2392u;
                    break;
                } else {
                    MediaBarFloaterService mediaBarFloaterService = (MediaBarFloaterService) contextWrapper;
                    if (I0.f.a(mediaBarFloaterService.f2403m, (String) obj3)) {
                        mediaBarFloaterService.f2404n = bitmap;
                        TextView textView2 = mediaBarFloaterService.f2397g;
                        if (I0.f.a(textView2 != null ? textView2.getText() : null, (String) obj2)) {
                            TextView textView3 = mediaBarFloaterService.f2398h;
                            if (I0.f.a(textView3 != null ? textView3.getText() : null, (String) obj) && (imageView = mediaBarFloaterService.f2396e) != null) {
                                imageView.setImageBitmap(bitmap);
                                break;
                            }
                        }
                    }
                }
                break;
        }
    }
}

package T;

import android.content.res.ColorStateList;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import com.ex.auto.HomeFloatingWidgetsService;
import com.ex.auto.LyricsFloaterService;
import com.ex.auto.MainActivity;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import p007e.DialogC0209i;
import p034y.C0272f;

/* JADX INFO: renamed from: T.y1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0165y1 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1216a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1217c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1218d;

    public /* synthetic */ ViewOnClickListenerC0165y1(int i2, MainActivity mainActivity, List list) {
        this.f1216a = 2;
        this.b = i2;
        this.f1217c = list;
        this.f1218d = mainActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.b;
        Object obj = this.f1217c;
        Object obj2 = this.f1218d;
        switch (this.f1216a) {
            case 0:
                List list = HomeFloatingWidgetsService.f2262Q;
                C0272f c0272f = (C0272f) obj;
                c0272f.o(c0272f.f() + i2);
                HomeFloatingWidgetsService.l(c0272f, (ImageView) obj2);
                return;
            case 1:
                Set set = LyricsFloaterService.f2324v;
                ((H0.l) obj).b(Integer.valueOf(i2));
                LyricsFloaterService lyricsFloaterService = (LyricsFloaterService) obj2;
                lyricsFloaterService.b();
                lyricsFloaterService.l();
                return;
            case 2:
                int i3 = MainActivity.u0;
                int i4 = 0;
                for (Object obj3 : (List) obj) {
                    int i5 = i4 + 1;
                    if (i4 < 0) {
                        w0.j.U();
                        throw null;
                    }
                    v0.a aVar = (v0.a) obj3;
                    Button button = (Button) aVar.f4155a;
                    View view2 = (View) aVar.b;
                    boolean z2 = i4 == i2;
                    view2.setVisibility(z2 ? 0 : 8);
                    MainActivity mainActivity = (MainActivity) obj2;
                    button.setBackgroundTintList(ColorStateList.valueOf(mainActivity.getColor(z2 ? R.color.cx_accent : R.color.cx_surface_alt)));
                    button.setTextColor(mainActivity.getColor(z2 ? R.color.cx_on_accent : R.color.cx_text_hi));
                    i4 = i5;
                }
                return;
            default:
                int i6 = MainActivity.u0;
                MainActivity mainActivity2 = (MainActivity) obj;
                I0.f.e(mainActivity2, "ctx");
                int i7 = ((C) obj2).f522a;
                if (i7 >= 0 && i7 < 5 && i2 >= 0 && i2 < 5 && i7 != i2) {
                    ArrayList arrayListR = C0097m.r(mainActivity2);
                    C c2 = (C) arrayListR.get(i7);
                    C c3 = (C) arrayListR.get(i2);
                    C0097m.w(mainActivity2, C.a(c2, i2, null, false, 6));
                    C0097m.w(mainActivity2, C.a(c3, i7, null, false, 6));
                }
                DialogC0209i dialogC0209i = mainActivity2.f2376k0;
                if (dialogC0209i != null) {
                    dialogC0209i.dismiss();
                }
                mainActivity2.v0();
                return;
        }
    }

    public /* synthetic */ ViewOnClickListenerC0165y1(MainActivity mainActivity, C c2, int i2) {
        this.f1216a = 3;
        this.f1217c = mainActivity;
        this.f1218d = c2;
        this.b = i2;
    }

    public /* synthetic */ ViewOnClickListenerC0165y1(Object obj, int i2, Object obj2, int i3) {
        this.f1216a = i3;
        this.f1217c = obj;
        this.b = i2;
        this.f1218d = obj2;
    }
}

package T;

import android.content.DialogInterface;
import android.widget.NumberPicker;
import android.widget.Toast;
import com.ex.auto.AcProgramEditActivity;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.ex.auto.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: T.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC0067h implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f980a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f982d;

    public /* synthetic */ DialogInterfaceOnClickListenerC0067h(Object obj, Object obj2, Object obj3, int i2) {
        this.f980a = i2;
        this.b = obj;
        this.f981c = obj2;
        this.f982d = obj3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        Object obj = this.f981c;
        Object obj2 = this.f982d;
        Object obj3 = this.b;
        switch (this.f980a) {
            case 0:
                int i3 = AcProgramEditActivity.f2106y;
                int value = ((NumberPicker) obj).getValue() + (((NumberPicker) obj3).getValue() * 60);
                if (value > 0) {
                    AcProgramEditActivity acProgramEditActivity = (AcProgramEditActivity) obj2;
                    acProgramEditActivity.f2108u.add(new C0091l("wait", value));
                    acProgramEditActivity.t();
                    return;
                }
                return;
            case 1:
                MainActivity mainActivity = (MainActivity) obj3;
                U.a aVar = mainActivity.f2384t;
                if (aVar == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar.f1307l.setEnabled(false);
                U.a aVar2 = mainActivity.f2384t;
                if (aVar2 == null) {
                    I0.f.h("binding");
                    throw null;
                }
                aVar2.w2.setText(mainActivity.getString(R.string.k_downloading_carplaymonitor));
                mainActivity.f2388w.execute(new RunnableC0168z(mainActivity, (C0083j3) obj, (String) obj2, 12));
                return;
            default:
                List list = QuickAccessFloaterService.f2436j0;
                ArrayList arrayList = new ArrayList();
                int i4 = 0;
                for (Object obj4 : (List) obj3) {
                    int i5 = i4 + 1;
                    if (i4 < 0) {
                        w0.j.U();
                        throw null;
                    }
                    if (((boolean[]) obj2)[i4]) {
                        arrayList.add(obj4);
                    }
                    i4 = i5;
                }
                ArrayList arrayList2 = new ArrayList(w0.k.V(arrayList));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add((String) ((v0.d) it.next()).f4159a);
                }
                QuickAccessFloaterService quickAccessFloaterService = (QuickAccessFloaterService) obj;
                if (arrayList2.isEmpty()) {
                    Toast.makeText(quickAccessFloaterService, quickAccessFloaterService.getString(R.string.k_close_apps_none_selected), 0).show();
                    return;
                } else {
                    quickAccessFloaterService.getClass();
                    new Thread(new RunnableC0084j4(arrayList2, quickAccessFloaterService)).start();
                    return;
                }
        }
    }
}

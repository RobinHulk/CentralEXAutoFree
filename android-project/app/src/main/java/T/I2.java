package T;

import android.content.DialogInterface;
import com.ex.auto.MainActivity;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class I2 implements DialogInterface.OnMultiChoiceClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List f625a;
    public final /* synthetic */ ArrayList b;

    public /* synthetic */ I2(List list, ArrayList arrayList) {
        this.f625a = list;
        this.b = arrayList;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public final void onClick(DialogInterface dialogInterface, int i2, boolean z2) {
        int i3 = MainActivity.u0;
        String str = (String) ((v0.a) this.f625a.get(i2)).f4155a;
        ArrayList arrayList = this.b;
        if (!z2) {
            arrayList.remove(str);
        } else {
            if (arrayList.contains(str)) {
                return;
            }
            I0.f.b(str);
            arrayList.add(str);
        }
    }
}

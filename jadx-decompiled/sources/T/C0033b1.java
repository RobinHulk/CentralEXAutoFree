package T;

import android.os.Handler;
import com.ex.auto.ExSapoCastActivity;
import com.ex.auto.ExSapoCastFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: T.b1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0033b1 implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f892a;

    public /* synthetic */ C0033b1(int i2) {
        this.f892a = i2;
    }

    @Override // H0.a
    public final Object a() {
        switch (this.f892a) {
            case 0:
                C0039c1 c0039c1F = AbstractC0045d1.f(AbstractC0045d1.f931i, false);
                if (c0039c1F != null) {
                    return c0039c1F;
                }
                throw new IllegalStateException("ponto base inválido");
            case 1:
                int i2 = ExSapoCastActivity.f2246e;
                C0105n1 c0105n1 = C0097m.f1049i;
                if (c0105n1 != null && c0105n1.f1063d) {
                    c0105n1.i(new byte[]{(byte) 0}, 17);
                }
                return v0.e.f4161c;
            case 2:
                int i3 = ExSapoCastActivity.f2246e;
                C0105n1 c0105n2 = C0097m.f1049i;
                if (c0105n2 != null && c0105n2.f1063d) {
                    c0105n2.i(new byte[]{(byte) 1}, 17);
                }
                return v0.e.f4161c;
            case 3:
                int i4 = ExSapoCastActivity.f2246e;
                C0105n1 c0105n3 = C0097m.f1049i;
                if (c0105n3 != null && c0105n3.f1063d) {
                    c0105n3.i(new byte[]{(byte) 2}, 17);
                }
                return v0.e.f4161c;
            case 4:
                int i5 = ExSapoCastFloaterService.f2250j;
                C0105n1 c0105n4 = C0097m.f1049i;
                if (c0105n4 != null && c0105n4.f1063d) {
                    c0105n4.i(new byte[]{(byte) 0}, 17);
                }
                return v0.e.f4161c;
            case 5:
                int i6 = ExSapoCastFloaterService.f2250j;
                C0105n1 c0105n5 = C0097m.f1049i;
                if (c0105n5 != null && c0105n5.f1063d) {
                    c0105n5.i(new byte[]{(byte) 1}, 17);
                }
                return v0.e.f4161c;
            case 6:
                int i7 = ExSapoCastFloaterService.f2250j;
                C0105n1 c0105n6 = C0097m.f1049i;
                if (c0105n6 != null && c0105n6.f1063d) {
                    c0105n6.i(new byte[]{(byte) 2}, 17);
                }
                return v0.e.f4161c;
            case PlaybackState.STATE_ERROR /* 7 */:
                return v0.e.f4161c;
            case Response.NO /* 8 */:
                B3.f511v = true;
                Handler handler = B3.f500k;
                if (handler != null) {
                    handler.post(new RunnableC0026a0(9));
                }
                return v0.e.f4161c;
            default:
                ArrayList arrayList = new ArrayList();
                arrayList.add(new C0114o4("rvc_black_bg.png", "/data/local/tmp/rvc_black_bg.png", "/system/etc/automotive/evsapp/rvc/rvc_left_bg.png"));
                ArrayList arrayList2 = new ArrayList();
                for (int i8 = 0; i8 < 10; i8++) {
                    arrayList2.add("avm_obstacle_distance_num" + i8 + ".png");
                }
                arrayList2.add("avm_obstacle_distance_cm.png");
                Iterator it = arrayList2.iterator();
                I0.f.d(it, "iterator(...)");
                while (it.hasNext()) {
                    Object next = it.next();
                    I0.f.d(next, "next(...)");
                    String str = (String) next;
                    arrayList.add(new C0114o4("rvc_yellow/".concat(str), "/data/local/tmp/rvc_overlay/".concat(str), "/system/etc/automotive/evsapp/rvc/".concat(str)));
                }
                return arrayList;
        }
    }
}

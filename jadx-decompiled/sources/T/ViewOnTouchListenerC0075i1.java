package T;

import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import com.ex.auto.ExSapoCastFloaterService;
import com.ex.auto.MainActivity;

/* JADX INFO: renamed from: T.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnTouchListenerC0075i1 implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1001a;
    public final /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1002c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1004e;

    public /* synthetic */ ViewOnTouchListenerC0075i1(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f1001a = i2;
        this.b = obj;
        this.f1002c = obj2;
        this.f1003d = obj3;
        this.f1004e = obj4;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        Object obj = this.f1004e;
        Object obj2 = this.f1003d;
        Object obj3 = this.f1002c;
        Object obj4 = this.b;
        switch (this.f1001a) {
            case 0:
                int i2 = ExSapoCastFloaterService.f2250j;
                int action = motionEvent.getAction();
                I0.j jVar = (I0.j) obj4;
                I0.j jVar2 = (I0.j) obj3;
                I0.j jVar3 = (I0.j) obj2;
                ExSapoCastFloaterService exSapoCastFloaterService = (ExSapoCastFloaterService) obj;
                if (action == 0) {
                    jVar.f123a = motionEvent.getRawX();
                    jVar2.f123a = motionEvent.getRawY();
                    jVar3.f123a = exSapoCastFloaterService.f2257i;
                } else if (action == 1) {
                    exSapoCastFloaterService.getSharedPreferences("tela_preta_prefs", 0).edit().putFloat("exsapocast_pip_scale", exSapoCastFloaterService.f2257i).apply();
                } else {
                    if (action != 2) {
                        return false;
                    }
                    v0.a aVarI = exSapoCastFloaterService.i(exSapoCastFloaterService.f2255g, exSapoCastFloaterService.f2256h);
                    float fFloatValue = ((Number) aVarI.f4155a).floatValue();
                    float fFloatValue2 = ((Number) aVarI.b).floatValue();
                    float f = jVar3.f123a;
                    exSapoCastFloaterService.f2257i = A.b.n(((((motionEvent.getRawY() - jVar2.f123a) + (f * fFloatValue2)) / fFloatValue2) + (((motionEvent.getRawX() - jVar.f123a) + (fFloatValue * f)) / fFloatValue)) / 2.0f, 0.3f, 1.0f);
                    exSapoCastFloaterService.c();
                }
                return true;
            default:
                int i3 = MainActivity.u0;
                if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                    ((MainActivity) obj4).f2387v.removeCallbacks((RunnableC0147u3) obj3);
                    Button button = (Button) obj2;
                    button.setText((String) obj);
                    button.setOnTouchListener(null);
                }
                return false;
        }
    }
}

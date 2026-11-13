package T;

import android.widget.ImageView;
import com.ex.auto.HomeFloatingWidgetsService;
import p034y.C0272f;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class D1 extends I0.d implements H0.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ C0272f f539h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ImageView f540i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public D1(C0272f c0272f, ImageView imageView) {
        super(0, I0.e.class, "refreshMuteIcon", "addVolumeView$refreshMuteIcon(Lcom/ex/auto/CarMediaVolume;Landroid/widget/ImageView;)V");
        this.f539h = c0272f;
        this.f540i = imageView;
    }

    @Override // H0.a
    public final Object a() {
        HomeFloatingWidgetsService.l(this.f539h, this.f540i);
        return v0.e.f4161c;
    }
}

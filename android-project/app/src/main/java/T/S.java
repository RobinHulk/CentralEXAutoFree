package T;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class S implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f785a;
    public final /* synthetic */ CarPropertyManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f787d;

    public /* synthetic */ S(CarPropertyManager carPropertyManager, int i2, int i3, int i4) {
        this.f785a = i4;
        this.b = carPropertyManager;
        this.f786c = i2;
        this.f787d = i3;
    }

    @Override // H0.a
    public final Object a() {
        switch (this.f785a) {
            case 0:
                return Float.valueOf(this.b.getFloatProperty(this.f786c, this.f787d));
            case 1:
                return Integer.valueOf(this.b.getIntProperty(this.f786c, this.f787d));
            case 2:
                CarPropertyValue property = this.b.getProperty(Integer.class, this.f786c, this.f787d);
                if (property != null) {
                    return property.getValue();
                }
                return null;
            case 3:
                return Boolean.valueOf(this.b.getBooleanProperty(this.f786c, this.f787d));
            default:
                return this.b.getProperty(Integer.class, this.f786c, this.f787d);
        }
    }
}

package T;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import android.os.Handler;
import android.util.Log;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class Q0 implements CarPropertyManager.CarPropertyEventCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f761a = 1;

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onChangeEvent(CarPropertyValue carPropertyValue) {
        Handler handler;
        switch (this.f761a) {
            case 0:
                I0.f.e(carPropertyValue, "value");
                Log.i("CentralWatchdog", String.format("swcMedia: onChangeEvent prop=0x%x status=" + carPropertyValue.getStatus() + " value=" + carPropertyValue.getValue(), Arrays.copyOf(new Object[]{Integer.valueOf(carPropertyValue.getPropertyId())}, 1)));
                if (!Y.f) {
                    Object value = carPropertyValue.getValue();
                    Integer num = value instanceof Integer ? (Integer) value : null;
                    if (num != null) {
                        int iIntValue = num.intValue();
                        int propertyId = carPropertyValue.getPropertyId();
                        if ((propertyId == 1090651136 || propertyId == 1090650624) && iIntValue == 2) {
                            int propertyId2 = carPropertyValue.getPropertyId();
                            int i2 = propertyId2 == 1090650624 ? 87 : 88;
                            Log.i("SwcMediaControl", String.format("dispatch: prop=0x%x -> keyevent " + i2, Arrays.copyOf(new Object[]{Integer.valueOf(propertyId2)}, 1)));
                            new Thread(new RunnableC0154w0(i2, 2)).start();
                        }
                    }
                    break;
                }
                break;
            default:
                I0.f.e(carPropertyValue, "value");
                Object value2 = carPropertyValue.getValue();
                Integer num2 = value2 instanceof Integer ? (Integer) value2 : null;
                if (num2 != null) {
                    int iIntValue2 = num2.intValue();
                    int propertyId3 = carPropertyValue.getPropertyId();
                    if (Y.f) {
                        if ((propertyId3 == 1090651392 || propertyId3 == 557884981) && (handler = Y.f849g) != null) {
                            handler.post(new RunnableC0154w0(iIntValue2, 3));
                        }
                        break;
                    }
                }
                break;
        }
    }

    @Override // android.car.hardware.property.CarPropertyManager.CarPropertyEventCallback
    public final void onErrorEvent(int i2, int i3) {
        switch (this.f761a) {
            case 0:
                Log.w("CentralWatchdog", String.format("swcMedia: onErrorEvent prop=" + i2 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
                break;
            default:
                Log.w("CentralWatchdog", String.format("swcModes: onErrorEvent prop=" + i2 + " área=0x%x", Arrays.copyOf(new Object[]{Integer.valueOf(i3)}, 1)));
                break;
        }
    }
}

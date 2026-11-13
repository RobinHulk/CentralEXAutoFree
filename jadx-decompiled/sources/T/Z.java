package T;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class Z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f866a = w0.i.d0(w0.j.T("0000110a-0000-1000-8000-00805f9b34fb", "0000110b-0000-1000-8000-00805f9b34fb", "0000110c-0000-1000-8000-00805f9b34fb", "0000110e-0000-1000-8000-00805f9b34fb", "00001112-0000-1000-8000-00805f9b34fb", "0000111f-0000-1000-8000-00805f9b34fb", "00001200-0000-1000-8000-00805f9b34fb", "1a29eaab-0173-bc88-1c45-4de166248d2d"), ",", null, null, null, 62);

    /* JADX WARN: Code duplicated, block: B:24:0x006e  */
    public static boolean a(Context context, String str, String str2) {
        boolean zBindService;
        I0.f.e(context, "ctx");
        boolean z2 = false;
        ServiceConnectionC0037c serviceConnectionC0037c = null;
        try {
            ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
            ServiceConnectionC0037c serviceConnectionC0037c2 = new ServiceConnectionC0037c(arrayBlockingQueue, 2);
            try {
                try {
                    zBindService = context.bindService(new Intent("carplay.connection.service").setPackage("com.njda.carplay"), serviceConnectionC0037c2, 1);
                } catch (Throwable th) {
                    th = th;
                    serviceConnectionC0037c = serviceConnectionC0037c2;
                    try {
                        Log.w("CarplayIdentity", "inject falhou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
                        return false;
                    } finally {
                        if (serviceConnectionC0037c != null) {
                            try {
                                context.unbindService(serviceConnectionC0037c);
                            } catch (Throwable unused) {
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                Log.w("CarplayIdentity", "bindService lançou: " + th2.getMessage());
                zBindService = false;
            }
            if (!zBindService) {
                Log.w("CarplayIdentity", "bindService recusou (carplay.connection.service em com.njda.carplay)");
                return false;
            }
            IBinder iBinder = (IBinder) arrayBlockingQueue.poll(6000L, TimeUnit.MILLISECONDS);
            if (iBinder == null) {
                Log.w("CarplayIdentity", "serviço não conectou em 6000ms");
                try {
                    context.unbindService(serviceConnectionC0037c2);
                } catch (Throwable unused2) {
                }
                return false;
            }
            if (str2 == null) {
                str2 = "iPhone";
            } else {
                if (O0.j.E0(str2)) {
                    str2 = null;
                }
                if (str2 == null) {
                    str2 = "iPhone";
                }
            }
            boolean zC = c(iBinder, str, str2, f866a);
            boolean zB = b(str, iBinder);
            Log.i("CarplayIdentity", "injeção em " + str + " (" + str2 + "): uuid=" + zC + " bond=" + zB);
            if (zC && zB) {
                z2 = true;
            }
            try {
                context.unbindService(serviceConnectionC0037c2);
            } catch (Throwable unused3) {
            }
            return z2;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static boolean b(String str, IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        I0.f.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        I0.f.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.carplay.connection.IConnectionManager");
            parcelObtain.writeInt(1);
            parcelObtain.writeString(str);
            parcelObtain.writeString("00000000-DECA-FADE-DECA-DEAFDECACAFE");
            iBinder.transact(11, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return true;
        } catch (Throwable th) {
            try {
                Log.w("CarplayIdentity", "notifyBtBondState(txn 11): " + th.getClass().getSimpleName() + ": " + th.getMessage());
                return false;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    public static boolean c(IBinder iBinder, String str, String str2, String str3) {
        Parcel parcelObtain = Parcel.obtain();
        I0.f.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        I0.f.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.carplay.connection.IConnectionManager");
            parcelObtain.writeString(str);
            parcelObtain.writeString(str2);
            parcelObtain.writeString(str3);
            iBinder.transact(12, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return true;
        } catch (Throwable th) {
            try {
                Log.w("CarplayIdentity", "notifyBtDeviceUuid(txn 12): " + th.getClass().getSimpleName() + ": " + th.getMessage());
                return false;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }
}

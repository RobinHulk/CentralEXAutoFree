package T;

import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class O implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f711a;
    public final /* synthetic */ BluetoothDevice b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Context f713d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ A.c f714e;

    public O(BluetoothDevice bluetoothDevice, String str, Context context, A.c cVar) {
        this.b = bluetoothDevice;
        this.f712c = str;
        this.f713d = context;
        this.f714e = cVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        boolean zA;
        try {
            zA = C0097m.a(iBinder, this.b);
        } catch (Throwable th) {
            Log.w("BtHfpClient", "transact falhou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
            zA = false;
        }
        L3 l3 = L3.f671a;
        StringBuilder sb = new StringBuilder("connect direto no HFP-Client de ");
        sb.append(this.f712c);
        sb.append(" → ");
        sb.append(zA ? "aceito" : "recusado");
        l3.b("BtHfpClient", sb.toString());
        try {
            this.f713d.unbindService(this);
        } catch (Throwable unused) {
        }
        if (this.f711a) {
            return;
        }
        this.f711a = true;
        this.f714e.b(Boolean.valueOf(zA));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (this.f711a) {
            return;
        }
        this.f711a = true;
        this.f714e.b(Boolean.FALSE);
    }
}

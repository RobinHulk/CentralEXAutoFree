package T;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.util.Log;
import com.ex.auto.BlackoutFloaterService;
import com.ex.auto.CentralWatchdogService;
import com.ex.auto.QuickAccessFloaterService;
import com.sun.mail.imap.IMAPStore;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class G0 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f587a;
    public final /* synthetic */ CentralWatchdogService b;

    public /* synthetic */ G0(CentralWatchdogService centralWatchdogService, int i2) {
        this.f587a = i2;
        this.b = centralWatchdogService;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        BluetoothDevice bluetoothDevice;
        String stringExtra;
        address = null;
        address = null;
        BluetoothDevice bluetoothDevice2 = null;
        String address = null;
        String address2 = null;
        BluetoothDevice bluetoothDevice3 = null;
        boolean z2 = true;
        switch (this.f587a) {
            case 0:
                if (I0.f.a(intent != null ? intent.getAction() : null, "android.net.wifi.WIFI_AP_STATE_CHANGED")) {
                    int intExtra = intent.getIntExtra("wifi_state", 11);
                    if (intExtra == 14) {
                        this.b.Z0 = SystemClock.elapsedRealtime();
                    }
                    if (intExtra == 11 || intExtra == 14) {
                        CentralWatchdogService centralWatchdogService = this.b;
                        int[] iArr = CentralWatchdogService.d2;
                        if (centralWatchdogService.M().getBoolean("ap_sempre_aberto", false) && !this.b.M().getBoolean("wifi_auto_enable_on_wake", false)) {
                            if (this.b.H0()) {
                                L3.f671a.b("CentralWatchdog", "AP caiu (estado=" + intExtra + ") — não reabro: o WiFi cliente está ligado e a rádio é uma só");
                            } else if (SystemClock.elapsedRealtime() - this.b.f1 <= this.b.g1) {
                                long jElapsedRealtime = SystemClock.elapsedRealtime();
                                long j2 = jElapsedRealtime - this.b.e1;
                                CentralWatchdogService centralWatchdogService2 = this.b;
                                if (j2 >= centralWatchdogService2.h1) {
                                    centralWatchdogService2.e1 = jElapsedRealtime;
                                    L3.f671a.b("CentralWatchdog", "AP caiu (estado=" + intExtra + ") — reabrindo para o próximo telefone achar a rede pronta");
                                    CentralWatchdogService centralWatchdogService3 = this.b;
                                    centralWatchdogService3.f2190a.postDelayed(new RunnableC0169z0(centralWatchdogService3, 13), 3000L);
                                } else {
                                    L3 l3 = L3.f671a;
                                    StringBuilder sbH = M.d0.h("AP caiu (estado=", intExtra, ") — não reabro: última reabertura há ");
                                    sbH.append((jElapsedRealtime - this.b.e1) / ((long) IMAPStore.RESPONSE));
                                    sbH.append('s');
                                    l3.b("CentralWatchdog", sbH.toString());
                                }
                            } else {
                                L3 l4 = L3.f671a;
                                StringBuilder sbH2 = M.d0.h("AP caiu (estado=", intExtra, ") — fora da janela de arranque (");
                                sbH2.append(this.b.g1 / ((long) 60000));
                                sbH2.append(" min); só reabro no boot, ao acordar ou quando o celular chegar");
                                l4.b("CentralWatchdog", sbH2.toString());
                            }
                        }
                    }
                    break;
                }
                break;
            case 1:
                String action = intent != null ? intent.getAction() : null;
                if (action != null) {
                    switch (action.hashCode()) {
                        case -377527494:
                            if (action.equals("android.bluetooth.device.action.UUID")) {
                                try {
                                    bluetoothDevice3 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                                } catch (Throwable unused) {
                                }
                                if (bluetoothDevice3 != null) {
                                    CentralWatchdogService centralWatchdogService4 = this.b;
                                    int[] iArr2 = CentralWatchdogService.d2;
                                    centralWatchdogService4.T(bluetoothDevice3, "ACTION_UUID");
                                }
                                break;
                            }
                            break;
                        case -301431627:
                            if (action.equals("android.bluetooth.device.action.ACL_CONNECTED")) {
                                try {
                                    bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                                } catch (Throwable unused2) {
                                    bluetoothDevice = null;
                                }
                                CentralWatchdogService centralWatchdogService5 = this.b;
                                if (bluetoothDevice != null) {
                                    try {
                                        address2 = bluetoothDevice.getAddress();
                                        break;
                                    } catch (Throwable unused3) {
                                    }
                                }
                                centralWatchdogService5.f2174M0 = address2;
                                if (bluetoothDevice != null) {
                                    this.b.T(bluetoothDevice, "ACL_CONNECTED");
                                }
                                this.b.W("conexão BT");
                                this.b.y("conexão BT");
                                z2 = bluetoothDevice != null && this.b.X(bluetoothDevice);
                                this.b.A1 = z2;
                                if (z2 && this.b.C()) {
                                    CentralWatchdogService centralWatchdogService6 = this.b;
                                    centralWatchdogService6.f2190a.postDelayed(new RunnableC0169z0(centralWatchdogService6, 16), 4000L);
                                }
                                if (!z2 && this.b.m()) {
                                    ExecutorService executorService = U0.f805a;
                                    U0.a(new C0050e0(this.b, 5));
                                }
                                if (!z2 && this.b.m()) {
                                    CentralWatchdogService centralWatchdogService7 = this.b;
                                    centralWatchdogService7.f2190a.postDelayed(new RunnableC0169z0(centralWatchdogService7, 17), 1500L);
                                    break;
                                }
                            }
                            break;
                        case 1821585647:
                            if (action.equals("android.bluetooth.device.action.ACL_DISCONNECTED")) {
                                CentralWatchdogService centralWatchdogService8 = this.b;
                                int[] iArr3 = CentralWatchdogService.d2;
                                centralWatchdogService8.f2190a.removeCallbacks(centralWatchdogService8.f2172L0);
                                centralWatchdogService8.G0 = false;
                                centralWatchdogService8.f2164H0 = 0;
                                centralWatchdogService8.f2166I0 = 0;
                                centralWatchdogService8.f2168J0 = 0;
                                this.b.A1 = false;
                                try {
                                    BluetoothDevice bluetoothDevice4 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                                    if (bluetoothDevice4 != null) {
                                        address = bluetoothDevice4.getAddress();
                                    }
                                    break;
                                } catch (Throwable unused4) {
                                }
                                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                                CentralWatchdogService centralWatchdogService9 = this.b;
                                long j3 = jElapsedRealtime2 - (centralWatchdogService9.k1 - centralWatchdogService9.l1);
                                if (address == null) {
                                    Set setKeySet = centralWatchdogService9.j1.keySet();
                                    I0.f.d(setKeySet, "<get-keys>(...)");
                                    List listI0 = w0.i.i0(setKeySet);
                                    CentralWatchdogService centralWatchdogService10 = this.b;
                                    Iterator it = listI0.iterator();
                                    while (it.hasNext()) {
                                        centralWatchdogService10.j1.put((String) it.next(), Long.valueOf(j3));
                                    }
                                } else {
                                    this.b.j1.put(address, Long.valueOf(j3));
                                    Log.i("CentralWatchdog", "CarPlay identity: " + address + " desconectou — próxima injeção liberada em " + (this.b.l1 / ((long) IMAPStore.RESPONSE)) + 's');
                                }
                                break;
                            }
                            break;
                        case 2116862345:
                            if (action.equals("android.bluetooth.device.action.BOND_STATE_CHANGED") && intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", -1) == 12) {
                                try {
                                    bluetoothDevice2 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                                } catch (Throwable unused5) {
                                }
                                if (bluetoothDevice2 != null) {
                                    CentralWatchdogService centralWatchdogService11 = this.b;
                                    int[] iArr4 = CentralWatchdogService.d2;
                                    centralWatchdogService11.T(bluetoothDevice2, "pareamento");
                                }
                            }
                            break;
                    }
                }
                break;
            case 2:
                if (intent != null && (stringExtra = intent.getStringExtra("notification")) != null) {
                    L3 l5 = L3.f671a;
                    l5.b("CentralWatchdog", "CarPlay broadcast: notification=".concat(stringExtra));
                    if (stringExtra.equalsIgnoreCase("disable_bluetooth")) {
                        this.b.V0 = true;
                        l5.b("CentralWatchdog", "BT: o CarPlay desligou o Bluetooth de propósito — não vou religar");
                    }
                    if (!stringExtra.equalsIgnoreCase("connected") && !stringExtra.equalsIgnoreCase("foreground") && !stringExtra.equalsIgnoreCase("background")) {
                        z2 = stringExtra.equalsIgnoreCase("disconnected") ? false : this.b.z1;
                    }
                    try {
                        B3 b3 = B3.f492a;
                        B3.n(z2);
                        break;
                    } catch (Throwable unused6) {
                    }
                    if (z2 != this.b.z1) {
                        this.b.z1 = z2;
                        L3.f671a.b("CentralWatchdog", "CarPlay sessão: ".concat(stringExtra));
                        if (z2) {
                            CentralWatchdogService centralWatchdogService12 = this.b;
                            if (centralWatchdogService12.G0) {
                                centralWatchdogService12.y0("CarPlay conectado");
                            }
                        }
                    }
                    break;
                }
                break;
            case 3:
                CentralWatchdogService centralWatchdogService13 = this.b;
                if (centralWatchdogService13.f2223s0) {
                    Log.i("CentralWatchdog", "Volume (broadcast) alterado — restaurando brilho anterior");
                    centralWatchdogService13.g0();
                }
                break;
            case 4:
                int intExtra2 = intent != null ? intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1) : -1;
                long jElapsedRealtime3 = SystemClock.elapsedRealtime();
                if (intExtra2 == 10) {
                    CentralWatchdogService centralWatchdogService14 = this.b;
                    int[] iArr5 = CentralWatchdogService.d2;
                    centralWatchdogService14.getClass();
                    if (jElapsedRealtime3 >= 0) {
                        this.b.V0 = true;
                        L3.f671a.b("CentralWatchdog", "BT: desligado por FORA (usuário ou CarPlay) — não vou religar");
                    } else {
                        L3.f671a.b("CentralWatchdog", "BT: desligou por pedido NOSSO");
                    }
                    break;
                } else if (intExtra2 == 12) {
                    if (this.b.V0) {
                        this.b.V0 = false;
                        L3.f671a.b("CentralWatchdog", "BT: ligado de novo — volto a poder religar quando fizer falta");
                    }
                    this.b.M().edit().putBoolean("bt_desligado_por_nos", false).apply();
                    break;
                }
                break;
            case 5:
                final CentralWatchdogService centralWatchdogService15 = this.b;
                int[] iArr6 = CentralWatchdogService.d2;
                centralWatchdogService15.getClass();
                if (CentralWatchdogService.f2) {
                    List list = QuickAccessFloaterService.f2436j0;
                    if (QuickAccessFloaterService.n0 || BlackoutFloaterService.f2136q) {
                        Log.w("CentralWatchdog", "applyStatusBrightnessFromSlider: tela já apagada por outro mecanismo — ignorando");
                    } else {
                        boolean z3 = centralWatchdogService15.M().getBoolean("status_brightness2_enabled", false);
                        int i2 = centralWatchdogService15.f2225t0;
                        final int i3 = i2 != 0 ? (i2 == 1 && z3) ? 2 : 0 : 1;
                        if (i3 != 0) {
                            final int i4 = centralWatchdogService15.M().getInt(i3 == 1 ? "status_brightness_pct" : "status_brightness_pct2", 50);
                            final int iO = i4 > 0 ? A.b.o((((i4 - 1) * 254) / 99) + 1, 1, 255) : 0;
                            final boolean z4 = centralWatchdogService15.f2223s0;
                            new Thread(new Runnable() { // from class: T.r0
                                /* JADX WARN: Code duplicated, block: B:14:0x0032  */
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Integer numP0;
                                    int iIntValue;
                                    int[] iArr7 = CentralWatchdogService.d2;
                                    boolean z5 = z4;
                                    CentralWatchdogService centralWatchdogService16 = centralWatchdogService15;
                                    if (!z5) {
                                        try {
                                            numP0 = O0.r.p0(O0.j.X0(A.b.b0(new File("/sys/class/leds/lcd-backlight/brightness"))).toString());
                                        } catch (Throwable unused7) {
                                            numP0 = null;
                                        }
                                        if (numP0 == null) {
                                            iIntValue = 166;
                                        } else {
                                            Integer num = numP0.intValue() > 0 ? numP0 : null;
                                            if (num != null) {
                                                iIntValue = num.intValue();
                                            } else {
                                                iIntValue = 166;
                                            }
                                        }
                                        centralWatchdogService16.u0 = iIntValue;
                                    }
                                    Y.b(iO);
                                    centralWatchdogService16.f2190a.post(new RunnableC0159x0(centralWatchdogService16, i3, i4, 0));
                                }
                            }).start();
                        } else {
                            centralWatchdogService15.g0();
                        }
                    }
                    break;
                }
                break;
            case 6:
                new Thread(new RunnableC0169z0(this.b, 20)).start();
                break;
            case PlaybackState.STATE_ERROR /* 7 */:
                I0.f.e(context, "context");
                I0.f.e(intent, "intent");
                if (I0.f.a(intent.getAction(), "android.intent.action.SCREEN_ON")) {
                    int[] iArr7 = CentralWatchdogService.d2;
                    this.b.J("ACTION_SCREEN_ON");
                    break;
                }
                break;
            default:
                I0.f.e(context, "context");
                I0.f.e(intent, "intent");
                if (I0.f.a(intent.getAction(), "android.net.wifi.STATE_CHANGE")) {
                    NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                    z2 = networkInfo != null && networkInfo.isConnected();
                    boolean z5 = this.b.S;
                    this.b.S = z2;
                    if (z2 && !z5 && !this.b.x("WiFi automático")) {
                        Log.i("CentralWatchdog", "WiFi reconectado — reaplicando drive/regen");
                        if (this.b.f2200g != null) {
                            new Thread(new RunnableC0169z0(this.b, 23)).start();
                        } else {
                            this.b.O();
                        }
                        break;
                    }
                }
                break;
        }
    }
}

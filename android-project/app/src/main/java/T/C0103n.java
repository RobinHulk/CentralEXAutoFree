package T;

import com.ex.auto.CentralWatchdogService;
import com.ex.auto.MainActivity;
import com.ex.auto.QuickAccessFloaterService;
import com.sun.mail.iap.Response;
import ecarx.xsf.mediacenter.session.PlaybackState;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: T.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0103n implements H0.p, H0.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1058a;

    public /* synthetic */ C0103n(int i2) {
        this.f1058a = i2;
    }

    @Override // H0.l
    public Object b(Object obj) {
        boolean z2 = false;
        switch (this.f1058a) {
            case 1:
                Byte b = (Byte) obj;
                b.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case 2:
                String str = (String) obj;
                I0.f.e(str, "it");
                return O0.j.X0(str).toString();
            case 3:
                String str2 = (String) obj;
                I0.f.e(str2, "it");
                if (str2.length() > 0 && !O0.s.w0(str2, "#")) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 4:
                String str3 = (String) obj;
                I0.f.e(str3, "s");
                return "'" + O0.s.v0(str3, "'", "'\\''") + '\'';
            case 5:
                String str4 = (String) obj;
                I0.f.e(str4, "s");
                return "'" + O0.s.v0(str4, "'", "'\\''") + '\'';
            case 6:
                String str5 = (String) obj;
                int[] iArr = CentralWatchdogService.d2;
                I0.f.e(str5, "it");
                return O0.j.X0(str5).toString();
            case PlaybackState.STATE_ERROR /* 7 */:
                String str6 = (String) obj;
                int[] iArr2 = CentralWatchdogService.d2;
                I0.f.e(str6, "it");
                return Boolean.valueOf(str6.length() > 0);
            case Response.NO /* 8 */:
                String str7 = (String) obj;
                int[] iArr3 = CentralWatchdogService.d2;
                I0.f.e(str7, "it");
                return O0.j.X0(str7).toString();
            case 9:
                String str8 = (String) obj;
                int[] iArr4 = CentralWatchdogService.d2;
                I0.f.e(str8, "it");
                return Boolean.valueOf(O0.s.w0(str8, "MONITOR_") || O0.s.w0(str8, "SEM_") || O0.j.x0(str8, "FALHOU", false));
            case 10:
                String str9 = (String) obj;
                int[] iArr5 = CentralWatchdogService.d2;
                I0.f.e(str9, "it");
                return O0.j.X0(str9).toString();
            case 11:
                String str10 = (String) obj;
                int[] iArr6 = CentralWatchdogService.d2;
                I0.f.e(str10, "it");
                return Boolean.valueOf(str10.length() > 0);
            case Response.BAD /* 12 */:
                String str11 = (String) obj;
                int[] iArr7 = CentralWatchdogService.d2;
                I0.f.e(str11, "it");
                return O0.j.X0(str11).toString();
            case 13:
                String str12 = (String) obj;
                int[] iArr8 = CentralWatchdogService.d2;
                I0.f.e(str12, "l");
                return Boolean.valueOf(O0.s.w0(str12, "MONITOR_") || O0.s.w0(str12, "CARPLAY_") || O0.s.w0(str12, "SEM_") || O0.s.w0(str12, "CONNADAPTOR=") || O0.s.w0(str12, "HVAC=") || O0.s.w0(str12, "HVAC_") || O0.j.x0(str12, "FALHOU", false) || O0.j.x0(str12, "INESPERADO", false) || O0.j.x0(str12, "ERRO", false));
            case 14:
                Byte b2 = (Byte) obj;
                b2.byteValue();
                int[] iArr9 = CentralWatchdogService.d2;
                return String.format("%02x", Arrays.copyOf(new Object[]{b2}, 1));
            case 15:
                Byte b3 = (Byte) obj;
                b3.byteValue();
                int[] iArr10 = CentralWatchdogService.d2;
                return String.format("%02x", Arrays.copyOf(new Object[]{b3}, 1));
            case Response.BYE /* 16 */:
                String str13 = (String) obj;
                I0.f.e(str13, "s");
                return "'" + O0.s.v0(str13, "'", "'\\''") + '\'';
            case 17:
                Byte b4 = (Byte) obj;
                b4.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b4}, 1));
            case 18:
                I0.f.e((String) obj, "it");
                return v0.e.f4161c;
            case 19:
                Byte b5 = (Byte) obj;
                b5.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b5}, 1));
            case 20:
                Byte b6 = (Byte) obj;
                b6.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b6}, 1));
            case 21:
                Byte b7 = (Byte) obj;
                b7.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b7}, 1));
            case 22:
                String str14 = (String) obj;
                I0.f.e(str14, "s");
                return "'" + O0.s.v0(str14, "'", "'\\''") + '\'';
            case 23:
                Byte b8 = (Byte) obj;
                b8.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b8}, 1));
            case 24:
                int iIntValue = ((Integer) obj).intValue();
                int i2 = MainActivity.u0;
                List list = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService = QuickAccessFloaterService.f2438l0;
                if (quickAccessFloaterService != null) {
                    quickAccessFloaterService.t().edit().putInt("qa_panel_height_pct", A.b.o(iIntValue, 50, 200)).apply();
                    quickAccessFloaterService.f2471a.post(new X3(quickAccessFloaterService, 6));
                }
                return v0.e.f4161c;
            case 25:
                int iIntValue2 = ((Integer) obj).intValue();
                int i3 = MainActivity.u0;
                List list2 = QuickAccessFloaterService.f2436j0;
                QuickAccessFloaterService quickAccessFloaterService2 = QuickAccessFloaterService.f2438l0;
                if (quickAccessFloaterService2 != null) {
                    quickAccessFloaterService2.t().edit().putInt("qa_panel_width_pct", A.b.o(iIntValue2, 50, 200)).apply();
                    quickAccessFloaterService2.f2471a.post(new X3(quickAccessFloaterService2, 2));
                }
                return v0.e.f4161c;
            case 26:
                Byte b9 = (Byte) obj;
                b9.byteValue();
                int i4 = MainActivity.u0;
                return String.format("%02x", Arrays.copyOf(new Object[]{b9}, 1));
            case 27:
                C0113o3 c0113o3 = (C0113o3) obj;
                int i5 = MainActivity.u0;
                I0.f.e(c0113o3, "it");
                return "• " + c0113o3.b;
            case Response.TYPE_MASK /* 28 */:
                String str15 = (String) obj;
                int i6 = MainActivity.u0;
                I0.f.e(str15, "it");
                return O0.j.X0(str15).toString();
            default:
                String str16 = (String) obj;
                int i7 = MainActivity.u0;
                I0.f.e(str16, "it");
                return Boolean.valueOf(O0.s.w0(str16, "MONITOR_") || O0.s.w0(str16, "SEM_") || O0.j.x0(str16, "FALHOU", false));
        }
    }

    @Override // H0.p
    public Object c(Object obj, Object obj2) throws IOException {
        String str = (String) obj;
        int iIntValue = ((Integer) obj2).intValue();
        I0.f.e(str, "c");
        int i2 = C0097m.f1043a;
        if (i2 != 0) {
            try {
                String strB = new I1(i2).b(iIntValue, str);
                I0.f.d(strB, "runShell(...)");
                return strB;
            } catch (IOException unused) {
                C0097m.f1043a = 0;
            }
        }
        int[] iArr = {65010, 5555};
        IOException e2 = null;
        for (int i3 = 0; i3 < 2; i3++) {
            int i4 = iArr[i3];
            try {
                String strB2 = new I1(i4).b(iIntValue, str);
                C0097m.f1043a = i4;
                I0.f.b(strB2);
                return strB2;
            } catch (IOException e3) {
                e2 = e3;
            }
        }
        if (e2 != null) {
            throw e2;
        }
        throw new IOException("adbd local indisponível");
    }
}

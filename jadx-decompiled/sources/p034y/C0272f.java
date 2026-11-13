package p034y;

import A.b;
import I0.f;
import M.d0;
import android.content.ClipData;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import com.ex.auto.HomeFloatingWidgetsService;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Locale;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: y.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0272f implements InterfaceC0271e, InterfaceC0273g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4248a = 0;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4249c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4250d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f4251e;
    public Object f;

    public /* synthetic */ C0272f() {
    }

    public static Integer a(Object obj, String str, int[] iArr) {
        Method[] methods = obj.getClass().getMethods();
        f.e(methods, "array");
        int i2 = 0;
        while (true) {
            if (!(i2 < methods.length)) {
                return null;
            }
            int i3 = i2 + 1;
            try {
                Method method = methods[i2];
                if (f.a(method.getName(), str)) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == iArr.length) {
                        int length = parameterTypes.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length) {
                                try {
                                    int length2 = iArr.length;
                                    Integer[] numArr = new Integer[length2];
                                    int length3 = iArr.length;
                                    for (int i5 = 0; i5 < length3; i5++) {
                                        numArr[i5] = Integer.valueOf(iArr[i5]);
                                    }
                                    Object objInvoke = method.invoke(obj, Arrays.copyOf(numArr, length2));
                                    if (objInvoke instanceof Integer) {
                                        return (Integer) objInvoke;
                                    }
                                    return null;
                                } catch (Throwable unused) {
                                    return null;
                                }
                            }
                            if (!f.a(parameterTypes[i4], Integer.TYPE)) {
                                break;
                            }
                            i4++;
                        }
                    } else {
                        continue;
                    }
                }
                i2 = i3;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new NoSuchElementException(e2.getMessage());
            }
        }
    }

    public static boolean b(Object obj, int[] iArr) {
        Method[] methods = obj.getClass().getMethods();
        f.e(methods, "array");
        int i2 = 0;
        while (true) {
            if (!(i2 < methods.length)) {
                return false;
            }
            int i3 = i2 + 1;
            try {
                Method method = methods[i2];
                if (f.a(method.getName(), "setGroupVolume")) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == iArr.length) {
                        int length = parameterTypes.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length) {
                                try {
                                    int length2 = iArr.length;
                                    Integer[] numArr = new Integer[length2];
                                    int length3 = iArr.length;
                                    for (int i5 = 0; i5 < length3; i5++) {
                                        numArr[i5] = Integer.valueOf(iArr[i5]);
                                    }
                                    method.invoke(obj, Arrays.copyOf(numArr, length2));
                                    return true;
                                } catch (Throwable unused) {
                                    return false;
                                }
                            }
                            if (!f.a(parameterTypes[i4], Integer.TYPE)) {
                                break;
                            }
                            i4++;
                        }
                    } else {
                        continue;
                    }
                }
                i2 = i3;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new NoSuchElementException(e2.getMessage());
            }
        }
    }

    @Override // p034y.InterfaceC0273g
    public ClipData c() {
        return (ClipData) this.b;
    }

    public int d() {
        Integer numH;
        if (e() && (numH = h("getGroupMaxVolume")) != null) {
            return numH.intValue();
        }
        try {
            return ((AudioManager) this.b).getStreamMaxVolume(3);
        } catch (Throwable unused) {
            return 39;
        }
    }

    public boolean e() {
        return this.f != null && this.f4249c >= 0;
    }

    public int f() {
        Integer numH;
        if (e() && (numH = h("getGroupVolume")) != null) {
            return numH.intValue();
        }
        try {
            return ((AudioManager) this.b).getStreamVolume(3);
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // p034y.InterfaceC0271e
    public C0274h g() {
        return new C0274h(new C0272f(this));
    }

    public Integer h(String str) {
        Object obj = this.f;
        if (obj == null) {
            return null;
        }
        Integer numA = a(obj, str, new int[]{this.f4249c});
        if (numA != null) {
            return Integer.valueOf(numA.intValue());
        }
        Integer numA2 = a(obj, str, new int[]{0, this.f4249c});
        if (numA2 != null) {
            return Integer.valueOf(numA2.intValue());
        }
        return null;
    }

    public boolean i() {
        if (!e()) {
            try {
                return ((AudioManager) this.b).isStreamMute(3);
            } catch (Throwable unused) {
                return false;
            }
        }
        Integer numH = h("getGroupMuteState");
        if (numH != null) {
            return numH.intValue() != 0;
        }
        return this.f4250d >= 0 || f() == 0;
    }

    @Override // p034y.InterfaceC0273g
    public int j() {
        return this.f4250d;
    }

    @Override // p034y.InterfaceC0273g
    public ContentInfo k() {
        return null;
    }

    @Override // p034y.InterfaceC0271e
    public void l(Bundle bundle) {
        this.f = bundle;
    }

    @Override // p034y.InterfaceC0271e
    public void m(Uri uri) {
        this.f4251e = uri;
    }

    @Override // p034y.InterfaceC0273g
    public int n() {
        return this.f4249c;
    }

    public void o(int i2) {
        Object obj;
        int iO = b.o(i2, 0, d());
        if (e() && (obj = this.f) != null && (b(obj, new int[]{this.f4249c, iO, 0}) || b(obj, new int[]{0, this.f4249c, iO, 0}))) {
            return;
        }
        try {
            ((AudioManager) this.b).setStreamVolume(3, iO, 0);
        } catch (Throwable unused) {
        }
    }

    @Override // p034y.InterfaceC0271e
    public void r(int i2) {
        this.f4250d = i2;
    }

    public String toString() {
        String strValueOf;
        String str;
        switch (this.f4248a) {
            case 1:
                StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                sb.append(((ClipData) this.b).getDescription());
                sb.append(", source=");
                int i2 = this.f4249c;
                if (i2 == 0) {
                    strValueOf = "SOURCE_APP";
                } else if (i2 == 1) {
                    strValueOf = "SOURCE_CLIPBOARD";
                } else if (i2 == 2) {
                    strValueOf = "SOURCE_INPUT_METHOD";
                } else if (i2 == 3) {
                    strValueOf = "SOURCE_DRAG_AND_DROP";
                } else if (i2 != 4) {
                    strValueOf = i2 != 5 ? String.valueOf(i2) : "SOURCE_PROCESS_TEXT";
                } else {
                    strValueOf = "SOURCE_AUTOFILL";
                }
                sb.append(strValueOf);
                sb.append(", flags=");
                int i3 = this.f4250d;
                sb.append((i3 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i3));
                Uri uri = (Uri) this.f4251e;
                if (uri == null) {
                    str = "";
                } else {
                    str = ", hasLinkUri(" + uri.toString().length() + ")";
                }
                sb.append(str);
                return d0.g(sb, ((Bundle) this.f) != null ? ", hasExtras" : "", "}");
            default:
                return super.toString();
        }
    }

    public C0272f(HomeFloatingWidgetsService homeFloatingWidgetsService) {
        Object systemService = homeFloatingWidgetsService.getSystemService("audio");
        f.c(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        this.b = (AudioManager) systemService;
        this.f4249c = -1;
        this.f4250d = -1;
    }

    public C0272f(C0272f c0272f) {
        ClipData clipData = (ClipData) c0272f.b;
        clipData.getClass();
        this.b = clipData;
        int i2 = c0272f.f4249c;
        if (i2 < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }
        if (i2 <= 5) {
            this.f4249c = i2;
            int i3 = c0272f.f4250d;
            if ((i3 & 1) == i3) {
                this.f4250d = i3;
                this.f4251e = (Uri) c0272f.f4251e;
                this.f = (Bundle) c0272f.f;
                return;
            } else {
                throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i3) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
            }
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
    }
}

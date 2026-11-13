package T;

import android.car.hardware.CarPropertyValue;
import android.car.hardware.property.CarPropertyManager;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public final class G4 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f596i = {0, 1, 16777216};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CarPropertyManager f597a;
    public final F4 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Float f598c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Float f599d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f600e;
    public long f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f601g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayDeque f602h;

    public G4(CarPropertyManager carPropertyManager) {
        F4 f4 = new F4();
        f4.f584s = "unknown";
        this.b = f4;
        this.f602h = new ArrayDeque();
        this.f597a = carPropertyManager;
    }

    /* JADX WARN: Code duplicated, block: B:196:0x0321  */
    /* JADX WARN: Code duplicated, block: B:80:0x013f  */
    public final F4 a() {
        String str;
        Boolean boolValueOf;
        Float fValueOf;
        Float f;
        Integer numValueOf;
        long j2;
        boolean z2;
        Integer num;
        Float f2;
        Float fValueOf2;
        Float fB;
        String str2;
        String str3;
        F4 f4 = this.b;
        CarPropertyManager carPropertyManager = this.f597a;
        if (carPropertyManager == null) {
            return f4;
        }
        Integer numC = c(291504648);
        if (numC != null) {
            f4.f568a = Float.valueOf(Math.abs(numC.intValue() / 18.0f));
        } else {
            Float fB2 = b(291504647);
            if (fB2 != null) {
                f4.f568a = Float.valueOf(Math.abs(fB2.floatValue()));
            }
        }
        Integer numC2 = c(289408001);
        if (numC2 != null) {
            f4.b = numC2;
            int iIntValue = numC2.intValue();
            if (iIntValue == 1) {
                str2 = "N";
            } else if (iIntValue == 2) {
                str2 = "R";
            } else if (iIntValue != 4) {
                str2 = "D";
                if (iIntValue != 8) {
                    if (iIntValue >= 16) {
                        str3 = "D" + (Integer.numberOfTrailingZeros(iIntValue) - 3);
                    } else {
                        str3 = "?";
                    }
                    str2 = str3;
                }
            } else {
                str2 = "P";
            }
            f4.f569c = str2;
        }
        Float fB3 = b(291504644);
        if (fB3 != null) {
            f4.f = fB3;
        }
        Float fB4 = b(289407752);
        if (fB4 != null) {
            f4.f571e = fB4;
        }
        Float fB5 = b(557885165);
        if (fB5 != null) {
            float fFloatValue = fB5.floatValue();
            if (fFloatValue > 100.0f) {
                fFloatValue /= 10.0f;
            }
            f4.f570d = Float.valueOf(fFloatValue);
        }
        if (c(557885176) == null && (fB = b(557885176)) != null) {
            Math.round(fB.floatValue());
        }
        int[] iArr = f596i;
        int i2 = 0;
        while (true) {
            str = null;
            if (i2 >= 3) {
                boolValueOf = null;
                break;
            }
            int i3 = iArr[i2];
            try {
                try {
                    boolValueOf = Boolean.valueOf(carPropertyManager.getBooleanProperty(557884965, i3));
                    break;
                } catch (Exception unused) {
                    CarPropertyValue property = carPropertyManager.getProperty(557884965, i3);
                    Object value = property != null ? property.getValue() : null;
                    if (value instanceof Boolean) {
                        boolValueOf = (Boolean) value;
                        break;
                    }
                    if (value instanceof Integer) {
                        boolValueOf = Boolean.valueOf(((Integer) value).intValue() != 0);
                        break;
                    }
                    i2++;
                }
            } catch (Exception unused2) {
            }
            i2++;
        }
        if (boolValueOf != null) {
            f4.f575j = boolValueOf;
        }
        Float fB6 = b(559982313);
        if (fB6 != null) {
            f4.f573h = fB6;
        }
        Float fB7 = b(559982315);
        if (fB7 != null) {
            f4.f574i = fB7;
        }
        b(559982316);
        Integer numC3 = c(557875206);
        if (numC3 != null) {
            float fIntValue = numC3.intValue();
            if (Float.isNaN(fIntValue)) {
                fValueOf2 = null;
            } else if (fIntValue >= 5.0f && fIntValue <= 20.0f) {
                fValueOf2 = Float.valueOf(fIntValue);
            } else if (fIntValue >= 5000.0f && fIntValue <= 20000.0f) {
                fValueOf2 = Float.valueOf(fIntValue / 1000.0f);
            } else if (fIntValue < 50.0f || fIntValue > 200.0f) {
                fValueOf2 = null;
            } else {
                fValueOf2 = Float.valueOf(fIntValue / 10.0f);
            }
            if (fValueOf2 != null) {
                f4.f579n = fValueOf2;
            }
        }
        Integer numC4 = c(557884439);
        if (numC4 != null) {
            f4.f576k = numC4;
        }
        try {
            try {
                fValueOf = Float.valueOf(carPropertyManager.getFloatProperty(624955446, 1));
            } catch (Exception unused3) {
                CarPropertyValue property2 = carPropertyManager.getProperty(624955446, 1);
                Object value2 = property2 != null ? property2.getValue() : null;
                if (value2 instanceof Float) {
                    fValueOf = (Float) value2;
                } else if (value2 instanceof Integer) {
                    fValueOf = Float.valueOf(((Integer) value2).floatValue());
                } else {
                    fValueOf = value2 instanceof Long ? Float.valueOf(((Long) value2).floatValue()) : null;
                }
            }
        } catch (Exception unused4) {
        }
        if (fValueOf == null || fValueOf.floatValue() == 0.0f) {
            Float[] fArr = {b(557885148), b(354419971)};
            int i4 = 0;
            while (true) {
                if (i4 >= 2) {
                    int i5 = 0;
                    while (true) {
                        if (i5 >= 2) {
                            fValueOf = null;
                            break;
                        }
                        f = fArr[i5];
                        if (f == null) {
                            i5++;
                        }
                    }
                } else {
                    f = fArr[i4];
                    if (f == null || f.floatValue() == 0.0f) {
                        i4++;
                    }
                }
                fValueOf = f;
                break;
            }
        }
        if (fValueOf != null) {
            f4.f577l = fValueOf;
        }
        try {
            try {
                numValueOf = Integer.valueOf(carPropertyManager.getIntProperty(557884279, 0));
            } catch (Exception unused5) {
                CarPropertyValue property3 = carPropertyManager.getProperty(557884279, 0);
                Object value3 = property3 != null ? property3.getValue() : null;
                if (value3 instanceof Integer) {
                    numValueOf = (Integer) value3;
                } else {
                    numValueOf = value3 instanceof Float ? Integer.valueOf(Math.round(((Float) value3).floatValue())) : null;
                }
            }
        } catch (Exception unused6) {
        }
        if (numValueOf != null && numValueOf.intValue() != 0) {
            float fIntValue2 = (numValueOf.intValue() - 80) / 2.0f;
            if (fIntValue2 > -50.0f && fIntValue2 < 70.0f) {
                f4.f578m = Float.valueOf(fIntValue2);
            }
        }
        if (f4.f578m == null) {
            Float fB8 = b(658548345);
            if (fB8 == null || fB8.floatValue() == 0.0f) {
                Float fB9 = b(289408771);
                if (fB9 != null) {
                    f4.f578m = fB9;
                }
            } else {
                f4.f578m = Float.valueOf(fB8.floatValue() / 10.0f);
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (f4.f570d != null) {
            ArrayDeque arrayDeque = this.f602h;
            E4 e4 = (E4) arrayDeque.peekLast();
            if (e4 != null) {
                float fFloatValue2 = f4.f570d.floatValue() - e4.b;
                if (Math.abs(fFloatValue2) >= 0.05f) {
                    Math.abs(fFloatValue2);
                }
            }
            arrayDeque.addLast(new E4(jCurrentTimeMillis, f4.f570d.floatValue()));
            while (!arrayDeque.isEmpty() && jCurrentTimeMillis - ((E4) arrayDeque.peekFirst()).f554a > 30000) {
                arrayDeque.pollFirst();
            }
            E4 e5 = (E4) arrayDeque.peekFirst();
            E4 e6 = (E4) arrayDeque.peekLast();
            if (e5 == null || e6 == null) {
                j2 = jCurrentTimeMillis;
            } else {
                j2 = jCurrentTimeMillis;
                long j3 = e6.f554a - e5.f554a;
                if (j3 >= 5000) {
                    f4.f572g = Float.valueOf((((((e5.b - e6.b) / 100.0f) * 39000.0f) * 3600.0f) / (j3 / 1000.0f)) / 1000.0f);
                    Float f3 = f4.f568a;
                    if (f3 != null && f3.floatValue() > 5.0f) {
                        f4.f572g.getClass();
                        f4.f568a.getClass();
                    }
                }
            }
        } else {
            j2 = jCurrentTimeMillis;
        }
        f4.f580o = null;
        f4.f581p = null;
        f4.f582q = null;
        Integer num2 = f4.b;
        if (num2 != null && num2.intValue() == 4 && (f2 = f4.f572g) != null) {
            float f5 = -f2.floatValue();
            if (f5 >= 0.5f) {
                f4.f580o = Boolean.TRUE;
                f4.f582q = Float.valueOf(f5);
                f4.f581p = Boolean.valueOf(f5 >= 15.0f);
            } else {
                f4.f580o = Boolean.FALSE;
            }
        }
        boolean z3 = this.f600e;
        Float f6 = f4.f570d;
        if (f6 != null) {
            Float f7 = this.f598c;
            z2 = (f7 == null || f6.equals(f7)) ? false : true;
            this.f598c = f4.f570d;
        } else {
            z2 = false;
        }
        Float f8 = f4.f;
        if (f8 != null) {
            Float f9 = this.f599d;
            if (f9 != null && !f8.equals(f9)) {
                z2 = true;
            }
            this.f599d = f4.f;
        }
        Float f10 = f4.f568a;
        boolean z4 = (f10 != null && f10.floatValue() > 0.0f) || !((num = f4.b) == null || num.intValue() == 4);
        if (z2 || z4) {
            long j4 = j2;
            this.f600e = true;
            this.f = j4;
            f4.f583r = Boolean.TRUE;
        } else if (!z3) {
            this.f600e = true;
            this.f = j2;
        } else if (j2 - this.f >= 180000) {
            f4.f583r = Boolean.FALSE;
        }
        String strTrim = this.f601g;
        if (strTrim == null) {
            try {
                CarPropertyValue property4 = carPropertyManager.getProperty(554733617, 0);
                Object value4 = property4 != null ? property4.getValue() : null;
                strTrim = (!(value4 instanceof String) || ((String) value4).trim().isEmpty()) ? null : ((String) value4).trim();
            } catch (Throwable unused7) {
                strTrim = null;
            }
            if (strTrim != null) {
                this.f601g = strTrim;
            } else {
                try {
                    Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "persist.device.real.serialno", "");
                    if ((objInvoke instanceof String) && !((String) objInvoke).isEmpty()) {
                        str = (String) objInvoke;
                    }
                } catch (Throwable unused8) {
                }
                strTrim = str != null ? str : "unknown";
                this.f601g = strTrim;
            }
        }
        f4.f584s = strTrim;
        return f4;
    }

    public final Float b(int i2) {
        CarPropertyManager carPropertyManager = this.f597a;
        if (carPropertyManager == null) {
            return null;
        }
        int[] iArr = f596i;
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = iArr[i3];
            try {
                try {
                    return Float.valueOf(carPropertyManager.getFloatProperty(i2, i4));
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                CarPropertyValue property = carPropertyManager.getProperty(i2, i4);
                Object value = property != null ? property.getValue() : null;
                if (value instanceof Float) {
                    return (Float) value;
                }
                if (value instanceof Integer) {
                    return Float.valueOf(((Integer) value).floatValue());
                }
                if (value instanceof Long) {
                    return Float.valueOf(((Long) value).floatValue());
                }
            }
        }
        return null;
    }

    public final Integer c(int i2) {
        CarPropertyManager carPropertyManager = this.f597a;
        if (carPropertyManager == null) {
            return null;
        }
        int[] iArr = f596i;
        for (int i3 = 0; i3 < 3; i3++) {
            try {
                return Integer.valueOf(carPropertyManager.getIntProperty(i2, iArr[i3]));
            } catch (Exception unused) {
            }
        }
        return null;
    }
}

package T;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
public final class L4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final S0 f673a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f674c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f675d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Float f676e;
    public Float f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Float f677g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Float f678h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Float f679i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Float f680j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Float f681k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f682l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f683m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f684n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f685o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f686p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f687q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f688r;

    public L4(S0 s1) {
        this.f673a = s1;
    }

    public final void a(long j2) {
        Float f;
        float fFloatValue = (this.f676e == null || (f = this.f678h) == null || f.floatValue() - this.f676e.floatValue() <= 0.0f) ? this.f687q : this.f678h.floatValue() - this.f676e.floatValue();
        long j3 = j2 - this.f674c;
        if (fFloatValue >= 0.2f || j3 >= 120000) {
            int i2 = this.f684n;
            float f2 = i2 > 0 ? this.f683m / i2 : 0.0f;
            float f3 = fFloatValue > 0.0f ? (this.f685o * 100.0f) / fFloatValue : 0.0f;
            String str = this.f688r;
            String str2 = (str == null || str.equals("unknown")) ? "unknown" : this.f688r;
            ContentValues contentValues = new ContentValues();
            StringBuilder sbJ = M.d0.j("c-", str2, "-");
            sbJ.append(this.f674c);
            contentValues.put("source_key", sbJ.toString());
            contentValues.put("start_ms", Long.valueOf(this.f674c));
            contentValues.put("end_ms", Long.valueOf(j2));
            contentValues.put("distance_km", Float.valueOf(fFloatValue));
            contentValues.put("kwh_used", Float.valueOf(this.f685o));
            contentValues.put("kwh_regen", Float.valueOf(this.f686p));
            contentValues.put("avg_speed", Float.valueOf(f2));
            contentValues.put("max_speed", Float.valueOf(this.f682l));
            contentValues.put("avg_cons", Float.valueOf(f3));
            Float f4 = this.f;
            if (f4 != null) {
                contentValues.put("soc_start", f4);
            }
            Float f5 = this.f679i;
            if (f5 != null) {
                contentValues.put("soc_end", f5);
            }
            Float f6 = this.f677g;
            if (f6 != null) {
                contentValues.put("range_start", f6);
            }
            Float f7 = this.f680j;
            if (f7 != null) {
                contentValues.put("range_end", f7);
            }
            Float f8 = this.f676e;
            if (f8 != null) {
                contentValues.put("odo_start", f8);
            }
            Float f9 = this.f678h;
            if (f9 != null) {
                contentValues.put("odo_end", f9);
            }
            S0 s1 = this.f673a;
            synchronized (s1) {
                try {
                    SQLiteDatabase writableDatabase = s1.getWritableDatabase();
                    writableDatabase.insertWithOnConflict("trips", null, contentValues, 4);
                    writableDatabase.execSQL("DELETE FROM trips WHERE source_key NOT IN (SELECT source_key FROM trips ORDER BY start_ms DESC LIMIT 20)");
                } catch (Throwable unused) {
                }
            }
        }
        this.b = false;
    }

    public final synchronized void b(F4 f4, long j2) {
        if (f4 == null) {
            return;
        }
        try {
            Integer num = f4.b;
            Float f = f4.f568a;
            Float f2 = f4.f570d;
            Float f3 = f4.f;
            Float f5 = f4.f571e;
            boolean z2 = true;
            if (!this.b) {
                if (f == null || f.floatValue() <= 3.0f) {
                    z2 = false;
                }
                if (num != null && num.intValue() == 8 && z2) {
                    c(j2, f, f2, f3, f5, f4.f584s);
                }
                return;
            }
            if (f != null) {
                if (f.floatValue() > this.f682l) {
                    this.f682l = f.floatValue();
                }
                this.f683m += f.floatValue();
                this.f684n++;
                long j3 = this.f675d;
                if (j3 > 0) {
                    float f6 = (j2 - j3) / 3600000.0f;
                    if (f6 > 0.0f && f6 < 0.02f) {
                        this.f687q = (f.floatValue() * f6) + this.f687q;
                    }
                }
            }
            if (f2 != null) {
                Float f7 = this.f681k;
                if (f7 != null) {
                    float fFloatValue = f7.floatValue() - f2.floatValue();
                    float fAbs = (Math.abs(fFloatValue) / 100.0f) * 39.0f;
                    if (fFloatValue > 0.0f) {
                        this.f685o += fAbs;
                    } else {
                        this.f686p += fAbs;
                    }
                }
                this.f681k = f2;
                this.f679i = f2;
            }
            if (f3 != null) {
                this.f678h = f3;
            }
            if (f5 != null) {
                this.f680j = f5;
            }
            this.f675d = j2;
            if (num != null && num.intValue() == 4) {
                a(j2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(long j2, Float f, Float f2, Float f3, Float f4, String str) {
        this.b = true;
        this.f674c = j2;
        this.f675d = j2;
        this.f676e = f3;
        this.f = f2;
        this.f677g = f4;
        this.f678h = f3;
        this.f679i = f2;
        this.f680j = f4;
        this.f681k = f2;
        this.f688r = str;
        this.f682l = f != null ? f.floatValue() : 0.0f;
        this.f683m = f != null ? f.floatValue() : 0.0f;
        this.f684n = f == null ? 0 : 1;
        this.f685o = 0.0f;
        this.f686p = 0.0f;
        this.f687q = 0.0f;
    }
}

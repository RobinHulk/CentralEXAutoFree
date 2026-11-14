package T;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes.dex */
public final class R0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final S0 f773a;
    public String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Float f774c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Boolean f776e;

    public R0(S0 s1) {
        Float f;
        boolean z2;
        String string;
        Float fValueOf;
        this.f773a = s1;
        synchronized (s1) {
            f = null;
            z2 = false;
            try {
                Cursor cursorRawQuery = s1.getReadableDatabase().rawQuery("SELECT source_key FROM charges WHERE end_ms = 0 ORDER BY start_ms DESC LIMIT 1", null);
                try {
                    string = cursorRawQuery.moveToNext() ? cursorRawQuery.getString(0) : null;
                    cursorRawQuery.close();
                    this.b = string;
                    synchronized (s1) {
                        try {
                            Cursor cursorRawQuery2 = s1.getReadableDatabase().rawQuery("SELECT soc_start FROM charges WHERE end_ms = 0 ORDER BY start_ms DESC LIMIT 1", null);
                            try {
                                fValueOf = (!cursorRawQuery2.moveToNext() || cursorRawQuery2.isNull(0)) ? null : Float.valueOf((float) cursorRawQuery2.getDouble(0));
                                cursorRawQuery2.close();
                            } catch (Throwable th) {
                                if (cursorRawQuery2 != null) {
                                    try {
                                        cursorRawQuery2.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable unused) {
                        }
                    }
                } catch (Throwable th3) {
                    if (cursorRawQuery != null) {
                        try {
                            cursorRawQuery.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (Throwable unused2) {
                string = null;
            }
        }
        f = fValueOf;
        this.f774c = f;
        if (this.b != null && f == null) {
            z2 = true;
        }
        this.f775d = z2;
    }

    public final void a(long j2, Float f, boolean z2, String str) {
        if (str.isEmpty()) {
            str = "central";
        }
        this.b = "c-" + str + "-" + j2;
        this.f774c = f;
        this.f775d = f == null;
        ContentValues contentValues = new ContentValues();
        contentValues.put("source_key", this.b);
        contentValues.put("start_ms", Long.valueOf(j2));
        contentValues.put("end_ms", (Long) 0L);
        if (f != null) {
            contentValues.put("soc_start", f);
        }
        contentValues.put("dcfc", Integer.valueOf(z2 ? 1 : 0));
        contentValues.put("complete", (Integer) 0);
        S0 s1 = this.f773a;
        synchronized (s1) {
            try {
                SQLiteDatabase writableDatabase = s1.getWritableDatabase();
                writableDatabase.insertWithOnConflict("charges", null, contentValues, 4);
                writableDatabase.execSQL("DELETE FROM charges WHERE source_key NOT IN (SELECT source_key FROM charges ORDER BY start_ms DESC LIMIT 20)");
            } catch (Throwable unused) {
            }
        }
        L3 l3 = L3.f671a;
        StringBuilder sb = new StringBuilder("início: soc=");
        sb.append(f);
        sb.append(z2 ? " (DC)" : "");
        sb.append(" key=");
        sb.append(this.b);
        l3.b("Carga", sb.toString());
    }

    public final void b(long j2, Float f) {
        String str = this.b;
        if (str == null) {
            return;
        }
        this.b = null;
        int i2 = (this.f775d || this.f774c == null || f == null) ? 0 : 1;
        S0 s1 = this.f773a;
        synchronized (s1) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("end_ms", Long.valueOf(j2));
                if (f != null) {
                    contentValues.put("soc_end", f);
                }
                contentValues.put("complete", Integer.valueOf(i2));
                s1.getWritableDatabase().update("charges", contentValues, "source_key=?", new String[]{str});
            } catch (Throwable unused) {
            }
        }
        L3 l3 = L3.f671a;
        StringBuilder sb = new StringBuilder("fim: ");
        sb.append(this.f774c);
        sb.append("% → ");
        sb.append(f);
        sb.append("%");
        sb.append(i2 != 0 ? " (completa)" : " (sem o início — o celular tem o SoC inicial melhor)");
        l3.b("Carga", sb.toString());
        this.f774c = null;
        this.f775d = false;
    }

    public final synchronized void c(F4 f4, long j2) {
        if (f4 == null) {
            return;
        }
        try {
            Boolean bool = f4.f580o;
            if (bool == null) {
                return;
            }
            Float f = f4.f570d;
            Boolean bool2 = Boolean.TRUE;
            boolean zEquals = bool2.equals(f4.f581p);
            if (bool.booleanValue()) {
                if (this.b == null) {
                    a(j2, f, zEquals, f4.f584s);
                }
            } else if (bool2.equals(this.f776e) || this.b != null) {
                b(j2, f);
            }
            this.f776e = bool;
        } catch (Throwable th) {
            throw th;
        }
    }
}

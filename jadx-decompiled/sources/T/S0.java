package T;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class S0 extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f788a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ S0(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2, int i3) {
        super(context, str, cursorFactory, i2);
        this.f788a = i3;
    }

    public static void b(JSONObject jSONObject, String str, Cursor cursor, String str2) {
        try {
            int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str2);
            if (cursor.isNull(columnIndexOrThrow)) {
                return;
            }
            jSONObject.put(str, Math.round(cursor.getDouble(columnIndexOrThrow) * 10.0d) / 10.0d);
        } catch (Throwable unused) {
        }
    }

    public static void c(JSONObject jSONObject, String str, Cursor cursor, String str2) throws JSONException {
        int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str2);
        if (cursor.isNull(columnIndexOrThrow)) {
            return;
        }
        jSONObject.put(str, d(cursor.getDouble(columnIndexOrThrow)));
    }

    public static double d(double d2) {
        return Math.round(d2 * 100.0d) / 100.0d;
    }

    public final synchronized ArrayList a() {
        int i2 = this.f788a;
        synchronized (this) {
            switch (i2) {
                case 0:
                    ArrayList arrayList = new ArrayList();
                    try {
                        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT * FROM charges WHERE end_ms > 0 ORDER BY start_ms ASC", null);
                        while (cursorRawQuery.moveToNext()) {
                            try {
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("sourceKey", cursorRawQuery.getString(cursorRawQuery.getColumnIndexOrThrow("source_key")));
                                long j2 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndexOrThrow("start_ms"));
                                long j3 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndexOrThrow("end_ms"));
                                jSONObject.put("startMs", j2);
                                jSONObject.put("endMs", j3);
                                jSONObject.put("durationS", Math.max(0L, (j3 - j2) / 1000));
                                b(jSONObject, "socStart", cursorRawQuery, "soc_start");
                                b(jSONObject, "socEnd", cursorRawQuery, "soc_end");
                                boolean z2 = false;
                                jSONObject.put("dcfc", cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("dcfc")) == 1);
                                if (cursorRawQuery.getInt(cursorRawQuery.getColumnIndexOrThrow("complete")) == 1) {
                                    z2 = true;
                                }
                                jSONObject.put("complete", z2);
                                arrayList.add(new JSONObject().put("charge", jSONObject).toString());
                            } catch (Throwable th) {
                                if (cursorRawQuery != null) {
                                    try {
                                        cursorRawQuery.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    break;
                                }
                                throw th;
                            }
                        }
                        cursorRawQuery.close();
                    } catch (Throwable unused) {
                    }
                    return arrayList;
                default:
                    ArrayList arrayList2 = new ArrayList();
                    try {
                        Cursor cursorRawQuery2 = getReadableDatabase().rawQuery("SELECT * FROM trips ORDER BY start_ms ASC", null);
                        while (cursorRawQuery2.moveToNext()) {
                            try {
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("sourceKey", cursorRawQuery2.getString(cursorRawQuery2.getColumnIndexOrThrow("source_key")));
                                long j4 = cursorRawQuery2.getLong(cursorRawQuery2.getColumnIndexOrThrow("start_ms"));
                                long j5 = cursorRawQuery2.getLong(cursorRawQuery2.getColumnIndexOrThrow("end_ms"));
                                jSONObject2.put("startMs", j4);
                                jSONObject2.put("endMs", j5);
                                jSONObject2.put("durationS", Math.max(0L, (j5 - j4) / 1000));
                                jSONObject2.put("distanceKm", d(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("distance_km"))));
                                jSONObject2.put("kwhUsed", d(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("kwh_used"))));
                                jSONObject2.put("kwhRegen", d(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("kwh_regen"))));
                                jSONObject2.put("avgSpeedKmh", d(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("avg_speed"))));
                                jSONObject2.put("maxSpeedKmh", d(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("max_speed"))));
                                jSONObject2.put("avgConsKwh100", d(cursorRawQuery2.getDouble(cursorRawQuery2.getColumnIndexOrThrow("avg_cons"))));
                                c(jSONObject2, "socStart", cursorRawQuery2, "soc_start");
                                c(jSONObject2, "socEnd", cursorRawQuery2, "soc_end");
                                c(jSONObject2, "rangeStart", cursorRawQuery2, "range_start");
                                c(jSONObject2, "rangeEnd", cursorRawQuery2, "range_end");
                                c(jSONObject2, "odoStartKm", cursorRawQuery2, "odo_start");
                                c(jSONObject2, "odoEndKm", cursorRawQuery2, "odo_end");
                                arrayList2.add(new JSONObject().put("trip", jSONObject2).toString());
                            } catch (Throwable th3) {
                                if (cursorRawQuery2 != null) {
                                    try {
                                        cursorRawQuery2.close();
                                    } catch (Throwable th4) {
                                        th3.addSuppressed(th4);
                                    }
                                    break;
                                }
                                throw th3;
                            }
                        }
                        cursorRawQuery2.close();
                    } catch (Throwable unused2) {
                    }
                    return arrayList2;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        switch (this.f788a) {
            case 0:
                sQLiteDatabase.execSQL("CREATE TABLE charges (source_key TEXT PRIMARY KEY, start_ms INTEGER, end_ms INTEGER, soc_start REAL, soc_end REAL, dcfc INTEGER, complete INTEGER)");
                break;
            default:
                sQLiteDatabase.execSQL("CREATE TABLE trips (source_key TEXT PRIMARY KEY, start_ms INTEGER, end_ms INTEGER, distance_km REAL, kwh_used REAL, kwh_regen REAL, avg_speed REAL, max_speed REAL, avg_cons REAL, soc_start REAL, soc_end REAL, range_start REAL, range_end REAL, odo_start REAL, odo_end REAL)");
                break;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        switch (this.f788a) {
            case 0:
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS charges");
                sQLiteDatabase.execSQL("CREATE TABLE charges (source_key TEXT PRIMARY KEY, start_ms INTEGER, end_ms INTEGER, soc_start REAL, soc_end REAL, dcfc INTEGER, complete INTEGER)");
                break;
            default:
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS trips");
                sQLiteDatabase.execSQL("CREATE TABLE trips (source_key TEXT PRIMARY KEY, start_ms INTEGER, end_ms INTEGER, distance_km REAL, kwh_used REAL, kwh_regen REAL, avg_speed REAL, max_speed REAL, avg_cons REAL, soc_start REAL, soc_end REAL, range_start REAL, range_end REAL, odo_start REAL, odo_end REAL)");
                break;
        }
    }
}

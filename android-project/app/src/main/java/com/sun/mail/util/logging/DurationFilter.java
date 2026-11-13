package com.sun.mail.util.logging;

import java.util.logging.Filter;
import java.util.logging.LogRecord;

/* JADX INFO: loaded from: classes.dex */
public class DurationFilter implements Filter {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private long count;
    private final long duration;
    private long peak;
    private final long records;
    private long start;

    public DurationFilter() {
        this.records = checkRecords(initLong(".records"));
        this.duration = checkDuration(initLong(".duration"));
    }

    private synchronized boolean accept(long j2) {
        boolean z2;
        try {
            long j3 = this.count;
            z2 = false;
            if (j3 > 0) {
                if (j2 - this.peak > 0) {
                    this.peak = j2;
                }
                if (j3 != this.records) {
                    this.count = j3 + 1;
                } else {
                    long j4 = this.peak;
                    long j5 = j4 - this.start;
                    long j6 = this.duration;
                    if (j5 >= j6) {
                        this.count = 1L;
                        this.start = j4;
                    } else {
                        this.count = -1L;
                        this.start = j4 + j6;
                    }
                }
                z2 = true;
            } else if (j2 - this.start >= 0 || j3 == 0) {
                this.count = 1L;
                this.start = j2;
                this.peak = j2;
                z2 = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return z2;
    }

    private static long checkDuration(long j2) {
        if (j2 > 0) {
            return j2;
        }
        return 900000L;
    }

    private static long checkRecords(long j2) {
        if (j2 > 0) {
            return j2;
        }
        return 1000L;
    }

    private long initLong(String str) {
        long durationToMillis;
        String strFromLogManager = LogManagerProperties.fromLogManager(getClass().getName().concat(str));
        if (strFromLogManager == null || strFromLogManager.length() == 0) {
            return Long.MIN_VALUE;
        }
        String strTrim = strFromLogManager.trim();
        if (isTimeEntry(str, strTrim)) {
            try {
                durationToMillis = LogManagerProperties.parseDurationToMillis(strTrim);
            } catch (RuntimeException | Exception | LinkageError unused) {
                durationToMillis = 0;
            }
        } else {
            durationToMillis = 0;
        }
        if (durationToMillis != 0) {
            return durationToMillis;
        }
        try {
            long jMultiplyExact = 1;
            for (String strSubstring : tokenizeLongs(strTrim)) {
                if (strSubstring.endsWith("L") || strSubstring.endsWith("l")) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                }
                jMultiplyExact = multiplyExact(jMultiplyExact, Long.parseLong(strSubstring));
            }
            return jMultiplyExact;
        } catch (RuntimeException unused2) {
            return Long.MIN_VALUE;
        }
    }

    private boolean isTimeEntry(String str, String str2) {
        return (str2.charAt(0) == 'P' || str2.charAt(0) == 'p') && str.equals(".duration");
    }

    private static long multiplyExact(long j2, long j3) {
        long j4 = j2 * j3;
        if (((Math.abs(j2) | Math.abs(j3)) >>> 31) == 0 || ((j3 == 0 || j4 / j3 == j2) && !(j2 == Long.MIN_VALUE && j3 == -1))) {
            return j4;
        }
        throw new ArithmeticException();
    }

    private boolean test(long j2, long j3) {
        long j4;
        long j5;
        synchronized (this) {
            j4 = this.count;
            j5 = this.start;
        }
        if (j4 > 0) {
            return j3 - j5 >= this.duration || j4 < j2;
        }
        return j3 - j5 >= 0 || j4 == 0;
    }

    private static String[] tokenizeLongs(String str) {
        int iIndexOf = str.indexOf(42);
        if (iIndexOf > -1) {
            String[] strArrSplit = str.split("\\s*\\*\\s*");
            if (strArrSplit.length != 0) {
                if (iIndexOf == 0 || str.charAt(str.length() - 1) == '*') {
                    throw new NumberFormatException(str);
                }
                if (strArrSplit.length != 1) {
                    return strArrSplit;
                }
                throw new NumberFormatException(strArrSplit[0]);
            }
        }
        return new String[]{str};
    }

    public boolean equals(Object obj) {
        long j2;
        long j3;
        long j4;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DurationFilter durationFilter = (DurationFilter) obj;
        if (this.records != durationFilter.records || this.duration != durationFilter.duration) {
            return false;
        }
        synchronized (this) {
            j2 = this.count;
            j3 = this.peak;
            j4 = this.start;
        }
        synchronized (durationFilter) {
            try {
                if (j2 == durationFilter.count && j3 == durationFilter.peak && j4 == durationFilter.start) {
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int hashCode() {
        long j2 = this.records;
        int i2 = (267 + ((int) (j2 ^ (j2 >>> 32)))) * 89;
        long j3 = this.duration;
        return i2 + ((int) (j3 ^ (j3 >>> 32)));
    }

    public boolean isIdle() {
        return test(0L, System.currentTimeMillis());
    }

    @Override // java.util.logging.Filter
    public boolean isLoggable(LogRecord logRecord) {
        return accept(logRecord.getMillis());
    }

    public String toString() {
        boolean zTest;
        boolean zTest2;
        synchronized (this) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            zTest = test(0L, jCurrentTimeMillis);
            zTest2 = test(this.records, jCurrentTimeMillis);
        }
        return getClass().getName() + "{records=" + this.records + ", duration=" + this.duration + ", idle=" + zTest + ", loggable=" + zTest2 + '}';
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public DurationFilter m0clone() {
        DurationFilter durationFilter = (DurationFilter) super.clone();
        durationFilter.count = 0L;
        durationFilter.peak = 0L;
        durationFilter.start = 0L;
        return durationFilter;
    }

    public boolean isLoggable() {
        return test(this.records, System.currentTimeMillis());
    }

    public DurationFilter(long j2, long j3) {
        this.records = checkRecords(j2);
        this.duration = checkDuration(j3);
    }
}

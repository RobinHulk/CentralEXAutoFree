package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class o implements Comparable, Parcelable {
    public static final Parcelable.Creator<o> CREATOR = new B.m(13);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Calendar f2787a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2790e;
    public final int f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f2791g;

    public o(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarA = w.a(calendar);
        this.f2787a = calendarA;
        this.f2788c = calendarA.get(2);
        this.f2789d = calendarA.get(1);
        this.f2790e = calendarA.getMaximum(7);
        this.f = calendarA.getActualMaximum(5);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.b = simpleDateFormat.format(calendarA.getTime());
        this.f2791g = calendarA.getTimeInMillis();
    }

    public static o b(int i2, int i3) {
        Calendar calendarC = w.c(null);
        calendarC.set(1, i2);
        calendarC.set(2, i3);
        return new o(calendarC);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(o oVar) {
        return this.f2787a.compareTo(oVar.f2787a);
    }

    public final int c() {
        Calendar calendar = this.f2787a;
        int firstDayOfWeek = calendar.get(7) - calendar.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f2790e : firstDayOfWeek;
    }

    public final int d(o oVar) {
        if (!(this.f2787a instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (oVar.f2788c - this.f2788c) + ((oVar.f2789d - this.f2789d) * 12);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f2788c == oVar.f2788c && this.f2789d == oVar.f2789d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2788c), Integer.valueOf(this.f2789d)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f2789d);
        parcel.writeInt(this.f2788c);
    }
}

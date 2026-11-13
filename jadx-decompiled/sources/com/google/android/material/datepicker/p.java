package com.google.android.material.datepicker;

import M.C0003d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.icu.text.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.ex.auto.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.WeakHashMap;
import p034y.AbstractC0290y;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class p extends BaseAdapter {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f2792d = w.c(null).getMaximum(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f2793a;
    public C0003d b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f2794c;

    public p(o oVar, b bVar) {
        this.f2793a = oVar;
        this.f2794c = bVar;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i2) {
        o oVar = this.f2793a;
        if (i2 < oVar.c() || i2 > b()) {
            return null;
        }
        int iC = (i2 - oVar.c()) + 1;
        Calendar calendarA = w.a(oVar.f2787a);
        calendarA.set(5, iC);
        return Long.valueOf(calendarA.getTimeInMillis());
    }

    public final int b() {
        o oVar = this.f2793a;
        return (oVar.c() + oVar.f) - 1;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        o oVar = this.f2793a;
        return oVar.c() + oVar.f;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2 / this.f2793a.f2790e;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.b == null) {
            this.b = new C0003d(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        o oVar = this.f2793a;
        int iC = i2 - oVar.c();
        if (iC < 0 || iC >= oVar.f) {
            textView.setVisibility(8);
            textView.setEnabled(false);
        } else {
            int i3 = iC + 1;
            textView.setTag(oVar);
            textView.setText(String.valueOf(i3));
            Calendar calendarA = w.a(oVar.f2787a);
            calendarA.set(5, i3);
            long timeInMillis = calendarA.getTimeInMillis();
            Calendar calendarB = w.b();
            calendarB.set(5, 1);
            Calendar calendarA2 = w.a(calendarB);
            calendarA2.get(2);
            int i4 = calendarA2.get(1);
            calendarA2.getMaximum(7);
            calendarA2.getActualMaximum(5);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            simpleDateFormat.format(calendarA2.getTime());
            calendarA2.getTimeInMillis();
            if (oVar.f2789d == i4) {
                DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("MMMEd", Locale.getDefault());
                instanceForSkeleton.setTimeZone(android.icu.util.TimeZone.getTimeZone("UTC"));
                textView.setContentDescription(instanceForSkeleton.format(new Date(timeInMillis)));
            } else {
                DateFormat instanceForSkeleton2 = DateFormat.getInstanceForSkeleton("yMMMEd", Locale.getDefault());
                instanceForSkeleton2.setTimeZone(android.icu.util.TimeZone.getTimeZone("UTC"));
                textView.setContentDescription(instanceForSkeleton2.format(new Date(timeInMillis)));
            }
            textView.setVisibility(0);
            textView.setEnabled(true);
        }
        Long item = getItem(i2);
        if (item != null) {
            if (item.longValue() >= this.f2794c.f2750d.f2756a) {
                textView.setEnabled(true);
                throw null;
            }
            textView.setEnabled(false);
            c cVar = (c) this.b.f216d;
            cVar.getClass();
            p025p0.g gVar = new p025p0.g();
            p025p0.g gVar2 = new p025p0.g();
            p025p0.k kVar = (p025p0.k) cVar.f;
            gVar.setShapeAppearanceModel(kVar);
            gVar2.setShapeAppearanceModel(kVar);
            gVar.h((ColorStateList) cVar.f2754d);
            gVar.f3939a.f3931j = cVar.f2752a;
            gVar.invalidateSelf();
            p025p0.f fVar = gVar.f3939a;
            ColorStateList colorStateList = fVar.f3926d;
            ColorStateList colorStateList2 = (ColorStateList) cVar.f2755e;
            if (colorStateList != colorStateList2) {
                fVar.f3926d = colorStateList2;
                gVar.onStateChange(gVar.getState());
            }
            ColorStateList colorStateList3 = (ColorStateList) cVar.f2753c;
            textView.setTextColor(colorStateList3);
            RippleDrawable rippleDrawable = new RippleDrawable(colorStateList3.withAlpha(30), gVar, gVar2);
            Rect rect = (Rect) cVar.b;
            InsetDrawable insetDrawable = new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
            WeakHashMap weakHashMap = N.f4222a;
            AbstractC0290y.q(textView, insetDrawable);
        }
        return textView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}

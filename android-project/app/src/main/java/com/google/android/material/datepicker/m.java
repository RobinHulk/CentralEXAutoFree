package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0184l;
import com.ex.auto.R;
import com.google.android.material.internal.CheckableImageButton;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.TimeZone;
import java.util.WeakHashMap;
import p007e.AbstractC0201a;
import p034y.A;
import p034y.D;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class m<S> extends DialogInterfaceOnCancelListenerC0184l {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final LinkedHashSet f2776e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final LinkedHashSet f2777f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f2778g0;
    public t h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public b f2779i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public l f2780j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f2781k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public CharSequence f2782l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f2783m0;
    public int n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public CheckableImageButton f2784o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public p025p0.g f2785p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public Button f2786q0;

    public m() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.f2776e0 = new LinkedHashSet();
        this.f2777f0 = new LinkedHashSet();
    }

    public static int B(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Calendar calendarB = w.b();
        calendarB.set(5, 1);
        Calendar calendarA = w.a(calendarB);
        calendarA.get(2);
        calendarA.get(1);
        int maximum = calendarA.getMaximum(7);
        calendarA.getActualMaximum(5);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        simpleDateFormat.format(calendarA.getTime());
        calendarA.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    public static boolean C(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(AbstractC0201a.O(context, R.attr.materialCalendarStyle, l.class.getCanonicalName()), new int[]{android.R.attr.windowFullscreen});
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z2;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0184l
    public final Dialog A() {
        Context contextW = w();
        w();
        int i2 = this.f2778g0;
        if (i2 == 0) {
            throw null;
        }
        Dialog dialog = new Dialog(contextW, i2);
        Context context = dialog.getContext();
        this.f2783m0 = C(context);
        int iO = AbstractC0201a.O(context, R.attr.colorSurface, m.class.getCanonicalName());
        p025p0.g gVar = new p025p0.g(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        this.f2785p0 = gVar;
        gVar.f(context);
        this.f2785p0.h(ColorStateList.valueOf(iO));
        p025p0.g gVar2 = this.f2785p0;
        View decorView = dialog.getWindow().getDecorView();
        WeakHashMap weakHashMap = N.f4222a;
        gVar2.g(D.i(decorView));
        return dialog;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0184l, androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void m(Bundle bundle) {
        super.m(bundle);
        if (bundle == null) {
            bundle = this.f;
        }
        this.f2778g0 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f2779i0 = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f2781k0 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f2782l0 = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.n0 = bundle.getInt("INPUT_MODE_KEY");
    }

    @Override // androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final View n(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i2 = 1;
        View viewInflate = layoutInflater.inflate(this.f2783m0 ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.f2783m0) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(B(context), -2));
        } else {
            View viewFindViewById = viewInflate.findViewById(R.id.mtrl_calendar_main_pane);
            View viewFindViewById2 = viewInflate.findViewById(R.id.mtrl_calendar_frame);
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(B(context), -1));
            Resources resources = w().getResources();
            int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(R.dimen.mtrl_calendar_navigation_height);
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_days_of_week_height);
            int i3 = p.f2792d;
            viewFindViewById2.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_vertical_padding) * (i3 - 1)) + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i3) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_bottom_padding));
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text);
        WeakHashMap weakHashMap = N.f4222a;
        A.f(textView, 1);
        this.f2784o0 = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        CharSequence charSequence = this.f2782l0;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f2781k0);
        }
        this.f2784o0.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f2784o0;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, AbstractC0201a.A(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AbstractC0201a.A(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f2784o0.setChecked(this.n0 != 0);
        N.i(this.f2784o0, null);
        CheckableImageButton checkableImageButton2 = this.f2784o0;
        this.f2784o0.setContentDescription(checkableImageButton2.f2807d ? checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
        this.f2784o0.setOnClickListener(new j(this, i2));
        this.f2786q0 = (Button) viewInflate.findViewById(R.id.confirm_button);
        throw null;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0184l, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f2776e0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0184l, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f2777f0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) this.f1878E;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0184l, androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void r(Bundle bundle) {
        super.r(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f2778g0);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        b bVar = this.f2779i0;
        a aVar = new a();
        int i2 = a.b;
        int i3 = a.b;
        long j2 = bVar.f2748a.f2791g;
        long j3 = bVar.b.f2791g;
        aVar.f2747a = Long.valueOf(bVar.f2749c.f2791g);
        o oVar = this.f2780j0.f2770U;
        if (oVar != null) {
            aVar.f2747a = Long.valueOf(oVar.f2791g);
        }
        if (aVar.f2747a == null) {
            Calendar calendarB = w.b();
            calendarB.set(5, 1);
            Calendar calendarA = w.a(calendarB);
            calendarA.get(2);
            calendarA.get(1);
            calendarA.getMaximum(7);
            calendarA.getActualMaximum(5);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("LLLL, yyyy", Locale.getDefault());
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            simpleDateFormat.format(calendarA.getTime());
            long timeInMillis = calendarA.getTimeInMillis();
            if (j2 > timeInMillis || timeInMillis > j3) {
                timeInMillis = j2;
            }
            aVar.f2747a = Long.valueOf(timeInMillis);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", bVar.f2750d);
        Calendar calendarC = w.c(null);
        calendarC.setTimeInMillis(j2);
        o oVar2 = new o(calendarC);
        Calendar calendarC2 = w.c(null);
        calendarC2.setTimeInMillis(j3);
        o oVar3 = new o(calendarC2);
        long jLongValue = aVar.f2747a.longValue();
        Calendar calendarC3 = w.c(null);
        calendarC3.setTimeInMillis(jLongValue);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new b(oVar2, oVar3, new o(calendarC3), (d) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY")));
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f2781k0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f2782l0);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0184l, androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void s() {
        t tVar;
        super.s();
        Dialog dialog = this.f1859a0;
        if (dialog == null) {
            throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
        }
        Window window = dialog.getWindow();
        if (this.f2783m0) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f2785p0);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = w().getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f2785p0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            View decorView = window.getDecorView();
            Dialog dialog2 = this.f1859a0;
            if (dialog2 == null) {
                throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
            }
            decorView.setOnTouchListener(new p013i0.a(dialog2, rect));
        }
        w();
        int i2 = this.f2778g0;
        if (i2 == 0) {
            throw null;
        }
        b bVar = this.f2779i0;
        l lVar = new l();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i2);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar);
        bundle.putParcelable("CURRENT_MONTH_KEY", bVar.f2749c);
        lVar.z(bundle);
        this.f2780j0 = lVar;
        if (this.f2784o0.f2807d) {
            tVar = lVar;
            b bVar2 = this.f2779i0;
            n nVar = new n();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("DATE_SELECTOR_KEY", null);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar2);
            nVar.z(bundle2);
            tVar = nVar;
        }
        tVar = lVar;
        this.h0 = tVar;
        throw null;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0184l, androidx.fragment.app.AbstractComponentCallbacksC0187o
    public final void t() {
        this.h0.f2801R.clear();
        super.t();
    }
}

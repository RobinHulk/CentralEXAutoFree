package androidx.appcompat.widget;

import M.C0003d;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import com.ex.auto.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p014j.AbstractC0262x0;
import p014j.C0242n;
import p014j.C0264y0;
import p014j.N;
import p014j.Q0;
import p014j.R0;
import p014j.S0;
import p014j.T0;
import p014j.U0;
import p014j.V0;
import p014j.W0;
import p014j.X0;
import p014j.Y0;
import p014j.a1;
import p014j.r1;
import p034y.AbstractC0290y;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends AbstractC0262x0 implements p011h.b {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final B0.b f1537g0;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final Rect f1538A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final int[] f1539B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int[] f1540C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final ImageView f1541D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final Drawable f1542E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final int f1543F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f1544G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Intent f1545H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Intent f1546I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final CharSequence f1547J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public View.OnFocusChangeListener f1548K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public View.OnClickListener f1549L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f1550M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f1551N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public C.c f1552O;
    public boolean P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public CharSequence f1553Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f1554R;
    public boolean S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f1555T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f1556U;
    public CharSequence V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f1557W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f1558a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public SearchableInfo f1559b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Bundle f1560c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final R0 f1561d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final R0 f1562e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final WeakHashMap f1563f0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final SearchAutoComplete f1564p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final View f1565q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final View f1566r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final View f1567s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ImageView f1568t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ImageView f1569u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final ImageView f1570v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final ImageView f1571w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final View f1572x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Y0 f1573y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Rect f1574z;

    public static class SearchAutoComplete extends C0242n {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1575e;
        public SearchView f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f1576g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final d f1577h;

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1577h = new d(this);
            this.f1575e = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i2 = configuration.screenWidthDp;
            int i3 = configuration.screenHeightDp;
            if (i2 >= 960 && i3 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i2 < 600) {
                return (i2 < 640 || i3 < 480) ? 160 : 192;
            }
            return 192;
        }

        public final void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                c.b(this, 1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            B0.b bVar = SearchView.f1537g0;
            bVar.getClass();
            B0.b.a();
            Method method = bVar.f34c;
            if (method != null) {
                try {
                    method.invoke(this, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.f1575e <= 0 || super.enoughToFilter();
        }

        @Override // p014j.C0242n, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1576g) {
                d dVar = this.f1577h;
                removeCallbacks(dVar);
                post(dVar);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z2, int i2, Rect rect) {
            super.onFocusChanged(z2, i2, rect);
            SearchView searchView = this.f;
            searchView.y(searchView.f1551N);
            searchView.post(searchView.f1561d0);
            if (searchView.f1564p.hasFocus()) {
                searchView.n();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
            if (i2 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i2, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z2) {
            super.onWindowFocusChanged(z2);
            if (z2 && this.f.hasFocus() && getVisibility() == 0) {
                this.f1576g = true;
                Context context = getContext();
                B0.b bVar = SearchView.f1537g0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z2) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            d dVar = this.f1577h;
            if (!z2) {
                this.f1576g = false;
                removeCallbacks(dVar);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f1576g = true;
                    return;
                }
                this.f1576g = false;
                removeCallbacks(dVar);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i2) {
            super.setThreshold(i2);
            this.f1575e = i2;
        }
    }

    static {
        B0.b bVar = null;
        if (Build.VERSION.SDK_INT < 29) {
            B0.b bVar2 = new B0.b();
            bVar2.f33a = null;
            bVar2.b = null;
            bVar2.f34c = null;
            B0.b.a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", null);
                bVar2.f33a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", null);
                bVar2.b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                bVar2.f34c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
            bVar = bVar2;
        }
        f1537g0 = bVar;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.f1564p;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    @Override // p011h.b
    public final void b() {
        if (this.f1557W) {
            return;
        }
        this.f1557W = true;
        SearchAutoComplete searchAutoComplete = this.f1564p;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.f1558a0 = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.S = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.f1564p;
        searchAutoComplete.clearFocus();
        searchAutoComplete.setImeVisibility(false);
        this.S = false;
    }

    @Override // p011h.b
    public final void d() {
        SearchAutoComplete searchAutoComplete = this.f1564p;
        searchAutoComplete.setText("");
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.V = "";
        clearFocus();
        y(true);
        searchAutoComplete.setImeOptions(this.f1558a0);
        this.f1557W = false;
    }

    public int getImeOptions() {
        return this.f1564p.getImeOptions();
    }

    public int getInputType() {
        return this.f1564p.getInputType();
    }

    public int getMaxWidth() {
        return this.f1555T;
    }

    public CharSequence getQuery() {
        return this.f1564p.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f1553Q;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f1559b0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f1547J : getContext().getText(this.f1559b0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.f1544G;
    }

    public int getSuggestionRowLayout() {
        return this.f1543F;
    }

    public C.c getSuggestionsAdapter() {
        return this.f1552O;
    }

    public final Intent l(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.V);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f1560c0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.f1559b0.getSearchActivity());
        return intent;
    }

    public final Intent m(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1560c0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void n() {
        int i2 = Build.VERSION.SDK_INT;
        SearchAutoComplete searchAutoComplete = this.f1564p;
        if (i2 >= 29) {
            c.a(searchAutoComplete);
            return;
        }
        B0.b bVar = f1537g0;
        bVar.getClass();
        B0.b.a();
        Method method = bVar.f33a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, null);
            } catch (Exception unused) {
            }
        }
        bVar.getClass();
        B0.b.a();
        Method method2 = bVar.b;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete, null);
            } catch (Exception unused2) {
            }
        }
    }

    public final void o() {
        SearchAutoComplete searchAutoComplete = this.f1564p;
        if (!TextUtils.isEmpty(searchAutoComplete.getText())) {
            searchAutoComplete.setText("");
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
        } else if (this.f1550M) {
            clearFocus();
            y(true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f1561d0);
        post(this.f1562e0);
        super.onDetachedFromWindow();
    }

    @Override // p014j.AbstractC0262x0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (z2) {
            int[] iArr = this.f1539B;
            SearchAutoComplete searchAutoComplete = this.f1564p;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.f1540C;
            getLocationInWindow(iArr2);
            int i6 = iArr[1] - iArr2[1];
            int i7 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i7;
            int height = searchAutoComplete.getHeight() + i6;
            Rect rect = this.f1574z;
            rect.set(i7, i6, width, height);
            int i8 = rect.left;
            int i9 = rect.right;
            int i10 = i5 - i3;
            Rect rect2 = this.f1538A;
            rect2.set(i8, 0, i9, i10);
            Y0 y0 = this.f1573y;
            if (y0 == null) {
                Y0 y1 = new Y0(rect2, rect, searchAutoComplete);
                this.f1573y = y1;
                setTouchDelegate(y1);
            } else {
                y0.b.set(rect2);
                Rect rect3 = y0.f3503d;
                rect3.set(rect2);
                int i11 = -y0.f3504e;
                rect3.inset(i11, i11);
                y0.f3502c.set(rect);
            }
        }
    }

    @Override // p014j.AbstractC0262x0, android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4;
        if (this.f1551N) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i5 = this.f1555T;
            size = i5 > 0 ? Math.min(i5, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.f1555T;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i4 = this.f1555T) > 0) {
            size = Math.min(i4, size);
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof X0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        X0 x1 = (X0) parcelable;
        super.onRestoreInstanceState(x1.f46a);
        y(x1.f3500c);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        X0 x1 = new X0(super.onSaveInstanceState());
        x1.f3500c = this.f1551N;
        return x1;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        post(this.f1561d0);
    }

    public final void p(int i2) {
        int position;
        String strH;
        Cursor cursor = this.f1552O.f39c;
        if (cursor != null && cursor.moveToPosition(i2)) {
            Intent intentL = null;
            try {
                int i3 = a1.f3522x;
                String strH2 = a1.h(cursor, cursor.getColumnIndex("suggest_intent_action"));
                if (strH2 == null) {
                    strH2 = this.f1559b0.getSuggestIntentAction();
                }
                if (strH2 == null) {
                    strH2 = "android.intent.action.SEARCH";
                }
                String strH3 = a1.h(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (strH3 == null) {
                    strH3 = this.f1559b0.getSuggestIntentData();
                }
                if (strH3 != null && (strH = a1.h(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                    strH3 = strH3 + "/" + Uri.encode(strH);
                }
                intentL = l(strH2, strH3 == null ? null : Uri.parse(strH3), a1.h(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), a1.h(cursor, cursor.getColumnIndex("suggest_intent_query")));
            } catch (RuntimeException e2) {
                try {
                    position = cursor.getPosition();
                } catch (RuntimeException unused) {
                    position = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e2);
            }
            if (intentL != null) {
                try {
                    getContext().startActivity(intentL);
                } catch (RuntimeException e3) {
                    Log.e("SearchView", "Failed launch activity: " + intentL, e3);
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.f1564p;
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public final void q(int i2) {
        Editable text = this.f1564p.getText();
        Cursor cursor = this.f1552O.f39c;
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i2)) {
            setQuery(text);
            return;
        }
        String strC = this.f1552O.c(cursor);
        if (strC != null) {
            setQuery(strC);
        } else {
            setQuery(text);
        }
    }

    public final void r(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i2, Rect rect) {
        if (this.S || !isFocusable()) {
            return false;
        }
        if (this.f1551N) {
            return super.requestFocus(i2, rect);
        }
        boolean zRequestFocus = this.f1564p.requestFocus(i2, rect);
        if (zRequestFocus) {
            y(false);
        }
        return zRequestFocus;
    }

    public final void s() {
        SearchAutoComplete searchAutoComplete = this.f1564p;
        Editable text = searchAutoComplete.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.f1559b0 != null) {
            getContext().startActivity(l("android.intent.action.SEARCH", null, null, text.toString()));
        }
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public void setAppSearchData(Bundle bundle) {
        this.f1560c0 = bundle;
    }

    public void setIconified(boolean z2) {
        if (z2) {
            o();
            return;
        }
        y(false);
        SearchAutoComplete searchAutoComplete = this.f1564p;
        searchAutoComplete.requestFocus();
        searchAutoComplete.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f1549L;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void setIconifiedByDefault(boolean z2) {
        if (this.f1550M == z2) {
            return;
        }
        this.f1550M = z2;
        y(z2);
        v();
    }

    public void setImeOptions(int i2) {
        this.f1564p.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.f1564p.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.f1555T = i2;
        requestLayout();
    }

    public void setOnCloseListener(U0 u0) {
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f1548K = onFocusChangeListener;
    }

    public void setOnQueryTextListener(V0 v1) {
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f1549L = onClickListener;
    }

    public void setOnSuggestionListener(W0 w1) {
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f1553Q = charSequence;
        v();
    }

    public void setQueryRefinementEnabled(boolean z2) {
        this.f1554R = z2;
        C.c cVar = this.f1552O;
        if (cVar instanceof a1) {
            ((a1) cVar).f3531p = z2 ? 2 : 1;
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f1559b0 = searchableInfo;
        Intent intent = null;
        SearchAutoComplete searchAutoComplete = this.f1564p;
        if (searchableInfo != null) {
            searchAutoComplete.setThreshold(searchableInfo.getSuggestThreshold());
            searchAutoComplete.setImeOptions(this.f1559b0.getImeOptions());
            int inputType = this.f1559b0.getInputType();
            if ((inputType & 15) == 1) {
                inputType &= -65537;
                if (this.f1559b0.getSuggestAuthority() != null) {
                    inputType |= 589824;
                }
            }
            searchAutoComplete.setInputType(inputType);
            C.c cVar = this.f1552O;
            if (cVar != null) {
                cVar.b(null);
            }
            if (this.f1559b0.getSuggestAuthority() != null) {
                a1 a1Var = new a1(getContext(), this, this.f1559b0, this.f1563f0);
                this.f1552O = a1Var;
                searchAutoComplete.setAdapter(a1Var);
                ((a1) this.f1552O).f3531p = this.f1554R ? 2 : 1;
            }
            v();
        }
        SearchableInfo searchableInfo2 = this.f1559b0;
        boolean z2 = false;
        if (searchableInfo2 != null && searchableInfo2.getVoiceSearchEnabled()) {
            if (this.f1559b0.getVoiceSearchLaunchWebSearch()) {
                intent = this.f1545H;
            } else if (this.f1559b0.getVoiceSearchLaunchRecognizer()) {
                intent = this.f1546I;
            }
            if (intent != null) {
                z2 = getContext().getPackageManager().resolveActivity(intent, 65536) != null;
            }
        }
        this.f1556U = z2;
        if (z2) {
            searchAutoComplete.setPrivateImeOptions("nm");
        }
        y(this.f1551N);
    }

    public void setSubmitButtonEnabled(boolean z2) {
        this.P = z2;
        y(this.f1551N);
    }

    public void setSuggestionsAdapter(C.c cVar) {
        this.f1552O = cVar;
        this.f1564p.setAdapter(cVar);
    }

    public final void t() {
        boolean zIsEmpty = TextUtils.isEmpty(this.f1564p.getText());
        int i2 = (!zIsEmpty || (this.f1550M && !this.f1557W)) ? 0 : 8;
        ImageView imageView = this.f1570v;
        imageView.setVisibility(i2);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(!zIsEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public final void u() {
        int[] iArr = this.f1564p.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f1566r.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1567s.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void v() {
        Drawable drawable;
        CharSequence queryHint = getQueryHint();
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        boolean z2 = this.f1550M;
        SearchAutoComplete searchAutoComplete = this.f1564p;
        CharSequence charSequence2 = charSequence;
        if (z2 && (drawable = this.f1542E) != null) {
            charSequence2 = charSequence;
            int textSize = (int) (((double) searchAutoComplete.getTextSize()) * 1.25d);
            drawable.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            charSequence2 = spannableStringBuilder;
        }
        charSequence2 = charSequence;
        searchAutoComplete.setHint(charSequence2);
    }

    public final void w() {
        this.f1567s.setVisibility(((this.P || this.f1556U) && !this.f1551N && (this.f1569u.getVisibility() == 0 || this.f1571w.getVisibility() == 0)) ? 0 : 8);
    }

    public final void x(boolean z2) {
        boolean z3 = this.P;
        this.f1569u.setVisibility((!z3 || !(z3 || this.f1556U) || this.f1551N || !hasFocus() || (!z2 && this.f1556U)) ? 8 : 0);
    }

    public final void y(boolean z2) {
        this.f1551N = z2;
        int i2 = 8;
        int i3 = z2 ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.f1564p.getText());
        this.f1568t.setVisibility(i3);
        x(!zIsEmpty);
        this.f1565q.setVisibility(z2 ? 8 : 0);
        ImageView imageView = this.f1541D;
        imageView.setVisibility((imageView.getDrawable() == null || this.f1550M) ? 8 : 0);
        t();
        if (this.f1556U && !this.f1551N && zIsEmpty) {
            this.f1569u.setVisibility(8);
            i2 = 0;
        }
        this.f1571w.setVisibility(i2);
        w();
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1574z = new Rect();
        this.f1538A = new Rect();
        this.f1539B = new int[2];
        this.f1540C = new int[2];
        this.f1561d0 = new R0(this, 0);
        this.f1562e0 = new R0(this, 1);
        this.f1563f0 = new WeakHashMap();
        a aVar = new a(this);
        b bVar = new b(this);
        T0 t1 = new T0(this);
        N n2 = new N(this, 1);
        C0264y0 c0264y0 = new C0264y0(this, 1);
        Q0 q1 = new Q0(this, 0);
        int[] iArr = p005d.a.f2924u;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        C0003d c0003d = new C0003d(context, typedArrayObtainStyledAttributes);
        p034y.N.h(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i2);
        LayoutInflater.from(context).inflate(typedArrayObtainStyledAttributes.getResourceId(9, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f1564p = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f1565q = findViewById(R.id.search_edit_frame);
        View viewFindViewById = findViewById(R.id.search_plate);
        this.f1566r = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.submit_area);
        this.f1567s = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.f1568t = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.f1569u = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.f1570v = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.f1571w = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.f1541D = imageView5;
        AbstractC0290y.q(viewFindViewById, c0003d.k(10));
        AbstractC0290y.q(viewFindViewById2, c0003d.k(14));
        imageView.setImageDrawable(c0003d.k(13));
        imageView2.setImageDrawable(c0003d.k(7));
        imageView3.setImageDrawable(c0003d.k(4));
        imageView4.setImageDrawable(c0003d.k(16));
        imageView5.setImageDrawable(c0003d.k(13));
        this.f1542E = c0003d.k(12);
        r1.a(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.f1543F = typedArrayObtainStyledAttributes.getResourceId(15, R.layout.abc_search_dropdown_item_icons_2line);
        this.f1544G = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        imageView.setOnClickListener(aVar);
        imageView3.setOnClickListener(aVar);
        imageView2.setOnClickListener(aVar);
        imageView4.setOnClickListener(aVar);
        searchAutoComplete.setOnClickListener(aVar);
        searchAutoComplete.addTextChangedListener(q1);
        searchAutoComplete.setOnEditorActionListener(t1);
        searchAutoComplete.setOnItemClickListener(n2);
        searchAutoComplete.setOnItemSelectedListener(c0264y0);
        searchAutoComplete.setOnKeyListener(bVar);
        searchAutoComplete.setOnFocusChangeListener(new S0(this, 0));
        setIconifiedByDefault(typedArrayObtainStyledAttributes.getBoolean(8, true));
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.f1547J = typedArrayObtainStyledAttributes.getText(6);
        this.f1553Q = typedArrayObtainStyledAttributes.getText(11);
        int i3 = typedArrayObtainStyledAttributes.getInt(3, -1);
        if (i3 != -1) {
            setImeOptions(i3);
        }
        int i4 = typedArrayObtainStyledAttributes.getInt(2, -1);
        if (i4 != -1) {
            setInputType(i4);
        }
        setFocusable(typedArrayObtainStyledAttributes.getBoolean(0, true));
        c0003d.w();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f1545H = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1546I = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f1572x = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new p004c0.a(this, 1));
        }
        y(this.f1550M);
        v();
    }
}

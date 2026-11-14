package p014j;

import C.a;
import C.b;
import C.c;
import M.d0;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import com.ex.auto.R;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a1 extends c implements View.OnClickListener {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final /* synthetic */ int f3522x = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3523h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3524i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LayoutInflater f3525j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SearchView f3526k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final SearchableInfo f3527l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Context f3528m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final WeakHashMap f3529n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f3530o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3531p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ColorStateList f3532q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3533r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3534s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f3535t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f3536u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f3537v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f3538w;

    public a1(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap weakHashMap) {
        int suggestionRowLayout = searchView.getSuggestionRowLayout();
        this.b = true;
        this.f39c = null;
        this.f38a = false;
        this.f40d = -1;
        this.f41e = new a(this);
        this.f = new b(this, 0);
        this.f3524i = suggestionRowLayout;
        this.f3523h = suggestionRowLayout;
        this.f3525j = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f3531p = 1;
        this.f3533r = -1;
        this.f3534s = -1;
        this.f3535t = -1;
        this.f3536u = -1;
        this.f3537v = -1;
        this.f3538w = -1;
        this.f3526k = searchView;
        this.f3527l = searchableInfo;
        this.f3530o = searchView.getSuggestionCommitIconResId();
        this.f3528m = context;
        this.f3529n = weakHashMap;
    }

    public static String h(Cursor cursor, int i2) {
        if (i2 == -1) {
            return null;
        }
        try {
            return cursor.getString(i2);
        } catch (Exception e2) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e2);
            return null;
        }
    }

    @Override // C.c
    public final void a(View view, Cursor cursor) {
        int i2;
        Drawable drawableF;
        CharSequence charSequenceH;
        Z0 z1 = (Z0) view.getTag();
        int i3 = this.f3538w;
        int i4 = i3 != -1 ? cursor.getInt(i3) : 0;
        TextView textView = z1.f3516a;
        if (textView != null) {
            String strH = h(cursor, this.f3533r);
            textView.setText(strH);
            if (TextUtils.isEmpty(strH)) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
            }
        }
        Context context = this.f3528m;
        TextView textView2 = z1.b;
        if (textView2 != null) {
            String strH2 = h(cursor, this.f3535t);
            if (strH2 != null) {
                if (this.f3532q == null) {
                    TypedValue typedValue = new TypedValue();
                    context.getTheme().resolveAttribute(R.attr.textColorSearchUrl, typedValue, true);
                    this.f3532q = context.getResources().getColorStateList(typedValue.resourceId);
                }
                SpannableString spannableString = new SpannableString(strH2);
                spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f3532q, null), 0, strH2.length(), 33);
                charSequenceH = spannableString;
            } else {
                charSequenceH = h(cursor, this.f3534s);
            }
            if (TextUtils.isEmpty(charSequenceH)) {
                if (textView != null) {
                    textView.setSingleLine(false);
                    textView.setMaxLines(2);
                }
            } else if (textView != null) {
                textView.setSingleLine(true);
                textView.setMaxLines(1);
            }
            textView2.setText(charSequenceH);
            if (TextUtils.isEmpty(charSequenceH)) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(0);
            }
        }
        ImageView imageView = z1.f3517c;
        if (imageView != null) {
            int i5 = this.f3536u;
            if (i5 == -1) {
                drawableF = null;
            } else {
                drawableF = f(cursor.getString(i5));
                if (drawableF == null) {
                    ComponentName searchActivity = this.f3527l.getSearchActivity();
                    String strFlattenToShortString = searchActivity.flattenToShortString();
                    WeakHashMap weakHashMap = this.f3529n;
                    if (weakHashMap.containsKey(strFlattenToShortString)) {
                        Drawable.ConstantState constantState = (Drawable.ConstantState) weakHashMap.get(strFlattenToShortString);
                        drawableF = constantState == null ? null : constantState.newDrawable(context.getResources());
                    } else {
                        PackageManager packageManager = context.getPackageManager();
                        try {
                            ActivityInfo activityInfo = packageManager.getActivityInfo(searchActivity, 128);
                            int iconResource = activityInfo.getIconResource();
                            if (iconResource != 0) {
                                Drawable drawable = packageManager.getDrawable(searchActivity.getPackageName(), iconResource, activityInfo.applicationInfo);
                                if (drawable == null) {
                                    StringBuilder sbH = d0.h("Invalid icon resource ", iconResource, " for ");
                                    sbH.append(searchActivity.flattenToShortString());
                                    Log.w("SuggestionsAdapter", sbH.toString());
                                    drawableF = null;
                                } else {
                                    drawableF = drawable;
                                }
                            } else {
                                drawableF = null;
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                            Log.w("SuggestionsAdapter", e2.toString());
                        }
                        weakHashMap.put(strFlattenToShortString, drawableF == null ? null : drawableF.getConstantState());
                    }
                    if (drawableF == null) {
                        drawableF = context.getPackageManager().getDefaultActivityIcon();
                    }
                }
            }
            imageView.setImageDrawable(drawableF);
            if (drawableF == null) {
                imageView.setVisibility(4);
            } else {
                imageView.setVisibility(0);
                drawableF.setVisible(false, false);
                drawableF.setVisible(true, false);
            }
        }
        ImageView imageView2 = z1.f3518d;
        if (imageView2 == null) {
            i2 = 1;
        } else {
            int i6 = this.f3537v;
            Drawable drawableF2 = i6 == -1 ? null : f(cursor.getString(i6));
            imageView2.setImageDrawable(drawableF2);
            if (drawableF2 == null) {
                imageView2.setVisibility(8);
                i2 = 1;
            } else {
                imageView2.setVisibility(0);
                drawableF2.setVisible(false, false);
                i2 = 1;
                drawableF2.setVisible(true, false);
            }
        }
        int i7 = this.f3531p;
        ImageView imageView3 = z1.f3519e;
        if (i7 != 2 && (i7 != i2 || (i4 & 1) == 0)) {
            imageView3.setVisibility(8);
            return;
        }
        imageView3.setVisibility(0);
        imageView3.setTag(textView.getText());
        imageView3.setOnClickListener(this);
    }

    @Override // C.c
    public final void b(Cursor cursor) {
        try {
            super.b(cursor);
            if (cursor != null) {
                this.f3533r = cursor.getColumnIndex("suggest_text_1");
                this.f3534s = cursor.getColumnIndex("suggest_text_2");
                this.f3535t = cursor.getColumnIndex("suggest_text_2_url");
                this.f3536u = cursor.getColumnIndex("suggest_icon_1");
                this.f3537v = cursor.getColumnIndex("suggest_icon_2");
                this.f3538w = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e2) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e2);
        }
    }

    @Override // C.c
    public final String c(Cursor cursor) {
        String strH;
        String strH2;
        if (cursor == null) {
            return null;
        }
        String strH3 = h(cursor, cursor.getColumnIndex("suggest_intent_query"));
        if (strH3 != null) {
            return strH3;
        }
        SearchableInfo searchableInfo = this.f3527l;
        if (searchableInfo.shouldRewriteQueryFromData() && (strH2 = h(cursor, cursor.getColumnIndex("suggest_intent_data"))) != null) {
            return strH2;
        }
        if (!searchableInfo.shouldRewriteQueryFromText() || (strH = h(cursor, cursor.getColumnIndex("suggest_text_1"))) == null) {
            return null;
        }
        return strH;
    }

    @Override // C.c
    public final View d(ViewGroup viewGroup) {
        View viewInflate = this.f3525j.inflate(this.f3523h, viewGroup, false);
        viewInflate.setTag(new Z0(viewInflate));
        ((ImageView) viewInflate.findViewById(R.id.edit_query)).setImageResource(this.f3530o);
        return viewInflate;
    }

    public final Drawable e(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f3528m.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x010c  */
    public final Drawable f(String str) {
        WeakHashMap weakHashMap = this.f3529n;
        Context context = this.f3528m;
        Drawable drawableE = null;
        if (str != null && !str.isEmpty() && !"0".equals(str)) {
            try {
                int i2 = Integer.parseInt(str);
                String str2 = "android.resource://" + context.getPackageName() + "/" + i2;
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakHashMap.get(str2);
                Drawable drawableNewDrawable = constantState == null ? null : constantState.newDrawable();
                if (drawableNewDrawable != null) {
                    return drawableNewDrawable;
                }
                Drawable drawableB = androidx.core.content.b.b(context, i2);
                if (drawableB != null) {
                    weakHashMap.put(str2, drawableB.getConstantState());
                }
                return drawableB;
            } catch (Resources.NotFoundException unused) {
                Log.w("SuggestionsAdapter", "Icon resource not found: ".concat(str));
                return null;
            } catch (NumberFormatException unused2) {
                Drawable.ConstantState constantState2 = (Drawable.ConstantState) weakHashMap.get(str);
                Drawable drawableNewDrawable2 = constantState2 == null ? null : constantState2.newDrawable();
                if (drawableNewDrawable2 != null) {
                    return drawableNewDrawable2;
                }
                Uri uri = Uri.parse(str);
                try {
                    if ("android.resource".equals(uri.getScheme())) {
                        try {
                            drawableE = e(uri);
                        } catch (Resources.NotFoundException unused3) {
                            throw new FileNotFoundException("Resource does not exist: " + uri);
                        }
                    } else {
                        InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                        if (inputStreamOpenInputStream == null) {
                            throw new FileNotFoundException("Failed to open " + uri);
                        }
                        try {
                            Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamOpenInputStream, null);
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException e2) {
                                Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e2);
                            }
                            drawableE = drawableCreateFromStream;
                        } catch (Throwable th) {
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException e3) {
                                Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e3);
                            }
                            throw th;
                        }
                    }
                } catch (FileNotFoundException e4) {
                    Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e4.getMessage());
                    if (drawableE != null) {
                        weakHashMap.put(str, drawableE.getConstantState());
                    }
                    return drawableE;
                }
                if (drawableE != null) {
                    weakHashMap.put(str, drawableE.getConstantState());
                }
            }
        }
        return drawableE;
    }

    public final Cursor g(SearchableInfo searchableInfo, String str) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        builderFragment.appendQueryParameter("limit", String.valueOf(50));
        return this.f3528m.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    @Override // C.c, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i2, view, viewGroup);
        } catch (RuntimeException e2) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            View viewInflate = this.f3525j.inflate(this.f3524i, viewGroup, false);
            if (viewInflate != null) {
                ((Z0) viewInflate.getTag()).f3516a.setText(e2.toString());
            }
            return viewInflate;
        }
    }

    @Override // C.c, android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i2, view, viewGroup);
        } catch (RuntimeException e2) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            View viewD = d(viewGroup);
            ((Z0) viewD.getTag()).f3516a.setText(e2.toString());
            return viewD;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        Cursor cursor = this.f39c;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        Cursor cursor = this.f39c;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f3526k.r((CharSequence) tag);
        }
    }
}

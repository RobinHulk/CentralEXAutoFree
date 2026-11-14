package androidx.appcompat.widget;

import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public final class a implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f1621a;

    public a(SearchView searchView) {
        this.f1621a = searchView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SearchView searchView = this.f1621a;
        ImageView imageView = searchView.f1568t;
        SearchView.SearchAutoComplete searchAutoComplete = searchView.f1564p;
        if (view == imageView) {
            searchView.y(false);
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
            View.OnClickListener onClickListener = searchView.f1549L;
            if (onClickListener != null) {
                onClickListener.onClick(searchView);
                return;
            }
            return;
        }
        if (view == searchView.f1570v) {
            searchView.o();
            return;
        }
        if (view == searchView.f1569u) {
            searchView.s();
            return;
        }
        if (view != searchView.f1571w) {
            if (view == searchAutoComplete) {
                searchView.n();
                return;
            }
            return;
        }
        SearchableInfo searchableInfo = searchView.f1559b0;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    searchView.getContext().startActivity(searchView.m(searchView.f1546I, searchableInfo));
                }
            } else {
                Intent intent = new Intent(searchView.f1545H);
                ComponentName searchActivity = searchableInfo.getSearchActivity();
                intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                searchView.getContext().startActivity(intent);
            }
        } catch (ActivityNotFoundException unused) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }
}

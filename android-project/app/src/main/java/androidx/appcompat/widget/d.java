package androidx.appcompat.widget;

import android.view.inputmethod.InputMethodManager;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView.SearchAutoComplete f1623a;

    public d(SearchView.SearchAutoComplete searchAutoComplete) {
        this.f1623a = searchAutoComplete;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SearchView.SearchAutoComplete searchAutoComplete = this.f1623a;
        if (searchAutoComplete.f1576g) {
            ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
            searchAutoComplete.f1576g = false;
        }
    }
}

package A;

import android.content.ClipData;
import android.content.ClipDescription;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import p014j.C0255u;
import p034y.C0272f;
import p034y.InterfaceC0271e;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public final class d extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f2a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(InputConnection inputConnection, c cVar) {
        super(inputConnection, false);
        this.f2a = cVar;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i2, Bundle bundle) {
        Bundle bundle2;
        InterfaceC0271e eVar;
        e eVar2 = inputContentInfo == null ? null : new e(new e(inputContentInfo, 0), 1);
        c cVar = this.f2a;
        if ((i2 & 1) != 0) {
            try {
                ((InputContentInfo) ((e) eVar2.b).b).requestPermission();
                InputContentInfo inputContentInfo2 = (InputContentInfo) ((e) eVar2.b).b;
                bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle2.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo2);
            } catch (Exception e2) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e2);
            }
        } else {
            bundle2 = bundle;
        }
        ClipDescription description = ((InputContentInfo) ((e) eVar2.b).b).getDescription();
        e eVar3 = (e) eVar2.b;
        ClipData clipData = new ClipData(description, new ClipData.Item(((InputContentInfo) eVar3.b).getContentUri()));
        if (Build.VERSION.SDK_INT >= 31) {
            eVar = new e(clipData, 2);
        } else {
            C0272f c0272f = new C0272f();
            c0272f.b = clipData;
            c0272f.f4249c = 2;
            eVar = c0272f;
        }
        eVar.m(((InputContentInfo) eVar3.b).getLinkUri());
        eVar.l(bundle2);
        if (N.e((C0255u) cVar.b, eVar.g()) == null) {
            return true;
        }
        return super.commitContent(inputContentInfo, i2, bundle);
    }
}

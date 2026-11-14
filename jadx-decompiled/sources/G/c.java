package G;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class c extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EditText f96a;
    public final p025p0.e b;

    public c(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        p025p0.e eVar = new p025p0.e();
        super(inputConnection, false);
        this.f96a = editText;
        this.b = eVar;
        if (androidx.emoji2.text.i.f1695j != null) {
            androidx.emoji2.text.i iVarA = androidx.emoji2.text.i.a();
            if (iVarA.b() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            androidx.emoji2.text.e eVar2 = iVarA.f1699e;
            eVar2.getClass();
            Bundle bundle = editorInfo.extras;
            F.b bVar = (F.b) eVar2.f1691c.f1719a;
            int iA = bVar.a(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", iA != 0 ? ((ByteBuffer) bVar.f88d).getInt(iA + bVar.f86a) : 0);
            Bundle bundle2 = editorInfo.extras;
            eVar2.f1690a.getClass();
            bundle2.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i2, int i3) {
        Editable editableText = this.f96a.getEditableText();
        this.b.getClass();
        return p025p0.e.b(this, editableText, i2, i3, false) || super.deleteSurroundingText(i2, i3);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i2, int i3) {
        Editable editableText = this.f96a.getEditableText();
        this.b.getClass();
        return p025p0.e.b(this, editableText, i2, i3, true) || super.deleteSurroundingTextInCodePoints(i2, i3);
    }
}

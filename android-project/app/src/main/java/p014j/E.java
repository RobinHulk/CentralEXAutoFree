package p014j;

import A.e;
import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;
import p034y.C0272f;
import p034y.InterfaceC0271e;
import p034y.N;

/* JADX INFO: loaded from: classes.dex */
public abstract class E {
    public static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
        InterfaceC0271e eVar;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                eVar = new e(clipData, 3);
            } else {
                C0272f c0272f = new C0272f();
                c0272f.b = clipData;
                c0272f.f4249c = 3;
                eVar = c0272f;
            }
            N.e(textView, eVar.g());
            return true;
        } finally {
            textView.endBatchEdit();
        }
    }

    public static boolean b(DragEvent dragEvent, View view, Activity activity) {
        InterfaceC0271e eVar;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            eVar = new e(clipData, 3);
        } else {
            C0272f c0272f = new C0272f();
            c0272f.b = clipData;
            c0272f.f4249c = 3;
            eVar = c0272f;
        }
        N.e(view, eVar.g());
        return true;
    }
}

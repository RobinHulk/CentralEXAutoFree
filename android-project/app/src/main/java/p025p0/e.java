package p025p0;

import G.c;
import android.text.Editable;
import android.text.Selection;
import androidx.emoji2.text.t;
import p012i.l;
import p012i.x;

/* JADX INFO: loaded from: classes.dex */
public class e implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static e f3923a;

    public /* synthetic */ e(Object obj) {
    }

    public static boolean b(c cVar, Editable editable, int i2, int i3, boolean z2) {
        int iMin;
        if (editable == null || i2 < 0 || i3 < 0) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (selectionStart == -1 || selectionEnd == -1 || selectionStart != selectionEnd) {
            return false;
        }
        if (z2) {
            int iMax = Math.max(i2, 0);
            int length = editable.length();
            if (selectionStart >= 0 && length >= selectionStart && iMax >= 0) {
                loop0: while (true) {
                    boolean z3 = false;
                    while (true) {
                        if (iMax == 0) {
                            break loop0;
                        }
                        selectionStart--;
                        if (selectionStart < 0) {
                            if (!z3) {
                                selectionStart = 0;
                                break loop0;
                            }
                            break loop0;
                        }
                        char cCharAt = editable.charAt(selectionStart);
                        if (z3) {
                            if (Character.isHighSurrogate(cCharAt)) {
                                iMax--;
                            }
                        } else if (!Character.isSurrogate(cCharAt)) {
                            iMax--;
                        } else if (!Character.isHighSurrogate(cCharAt)) {
                            z3 = true;
                        }
                        selectionStart = -1;
                        break loop0;
                    }
                }
            }
            selectionStart = -1;
            break loop0;
            int iMax2 = Math.max(i3, 0);
            iMin = editable.length();
            if (selectionEnd >= 0 && iMin >= selectionEnd && iMax2 >= 0) {
                loop2: while (true) {
                    boolean z4 = false;
                    while (true) {
                        if (iMax2 != 0) {
                            if (selectionEnd >= iMin) {
                                if (!z4) {
                                    break loop2;
                                }
                                break loop2;
                            }
                            char cCharAt2 = editable.charAt(selectionEnd);
                            if (z4) {
                                if (Character.isLowSurrogate(cCharAt2)) {
                                    iMax2--;
                                    selectionEnd++;
                                }
                            } else if (!Character.isSurrogate(cCharAt2)) {
                                iMax2--;
                                selectionEnd++;
                            } else if (!Character.isLowSurrogate(cCharAt2)) {
                                selectionEnd++;
                                z4 = true;
                            }
                            iMin = -1;
                            break loop2;
                        }
                        iMin = selectionEnd;
                        break loop2;
                    }
                }
            }
            iMin = -1;
            break loop2;
            if (selectionStart == -1 || iMin == -1) {
                return false;
            }
        } else {
            selectionStart = Math.max(selectionStart - i2, 0);
            iMin = Math.min(selectionEnd + i3, editable.length());
        }
        t[] tVarArr = (t[]) editable.getSpans(selectionStart, iMin, t.class);
        if (tVarArr == null || tVarArr.length <= 0) {
            return false;
        }
        for (t tVar : tVarArr) {
            int spanStart = editable.getSpanStart(tVar);
            int spanEnd = editable.getSpanEnd(tVar);
            selectionStart = Math.min(spanStart, selectionStart);
            iMin = Math.max(spanEnd, iMin);
        }
        int iMax3 = Math.max(selectionStart, 0);
        int iMin2 = Math.min(iMin, editable.length());
        cVar.beginBatchEdit();
        editable.delete(iMax3, iMin2);
        cVar.endBatchEdit();
        return true;
    }

    @Override // p012i.x
    public void a(l lVar, boolean z2) {
    }

    @Override // p012i.x
    public boolean f(l lVar) {
        return false;
    }
}

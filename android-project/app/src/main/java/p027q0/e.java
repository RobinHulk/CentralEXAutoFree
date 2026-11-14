package p027q0;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A.e f4040a;

    public e(A.e eVar) {
        this.f4040a = eVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        A.e eVar = this.f4040a;
        if (message.obj != null) {
            throw new ClassCastException();
        }
        synchronized (eVar.b) {
            throw null;
        }
    }
}

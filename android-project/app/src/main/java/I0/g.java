package I0;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class g implements Serializable {
    public g(int i2) {
    }

    public final String toString() {
        m.f126a.getClass();
        String string = getClass().getGenericInterfaces()[0].toString();
        if (string.startsWith("kotlin.jvm.functions.")) {
            string = string.substring(21);
        }
        f.d(string, "renderLambdaToString(...)");
        return string;
    }
}

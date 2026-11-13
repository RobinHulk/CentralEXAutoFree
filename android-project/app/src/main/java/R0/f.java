package R0;

import P0.p;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;
import kotlinx.coroutines.android.AndroidDispatcherFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f465a;

    static {
        String property;
        Object next;
        int i2 = h.f466a;
        p pVarCreateDispatcher = null;
        try {
            property = System.getProperty("kotlinx.coroutines.fast.service.loader");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property != null) {
            Boolean.parseBoolean(property);
        }
        try {
            Iterator it = Arrays.asList(new AndroidDispatcherFactory()).iterator();
            I0.f.e(it, "<this>");
            List listN0 = N0.h.n0(new N0.a(new F0.b(it, 2)));
            Iterator it2 = listN0.iterator();
            if (it2.hasNext()) {
                next = it2.next();
                if (it2.hasNext()) {
                    int loadPriority = ((e) next).getLoadPriority();
                    do {
                        Object next2 = it2.next();
                        int loadPriority2 = ((e) next2).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            next = next2;
                            loadPriority = loadPriority2;
                        }
                    } while (it2.hasNext());
                }
            } else {
                next = null;
            }
            e eVar = (e) next;
            if (eVar != null) {
                try {
                    pVarCreateDispatcher = eVar.createDispatcher(listN0);
                } catch (Throwable th) {
                    eVar.hintOnError();
                    throw th;
                }
            }
            if (pVarCreateDispatcher == null) {
                throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
            }
            f465a = pVarCreateDispatcher;
        } catch (Throwable th2) {
            throw new ServiceConfigurationError(th2.getMessage(), th2);
        }
    }
}

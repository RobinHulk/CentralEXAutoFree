package androidx.lifecycle;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class D extends I0.g implements H0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1939a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D(Object obj, int i2) {
        super(0);
        this.f1939a = i2;
        this.b = obj;
    }

    @Override // H0.a
    public final Object a() {
        switch (this.f1939a) {
            case 0:
                androidx.activity.g gVar = (androidx.activity.g) this.b;
                ArrayList arrayList = new ArrayList();
                I0.m.f126a.getClass();
                Class clsA = new I0.c(F.class).a();
                I0.f.c(clsA, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
                arrayList.add(new J.d(clsA));
                Object[] array = arrayList.toArray(new J.d[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
                J.d[] dVarArr = (J.d[]) array;
                J.d[] dVarArr2 = (J.d[]) Arrays.copyOf(dVarArr, dVarArr.length);
                I0.f.e(dVarArr2, "initializers");
                I iC = gVar.c();
                I0.f.d(iC, "owner.viewModelStore");
                J.b bVarA = gVar.a();
                I0.f.d(bVarA, "{\n        owner.defaultV…ModelCreationExtras\n    }");
                HashMap map = iC.f1947a;
                G g2 = (G) map.get("androidx.lifecycle.internal.SavedStateHandlesVM");
                if (!F.class.isInstance(g2)) {
                    J.c cVar = new J.c(bVarA);
                    cVar.f127a.put(H.b, "androidx.lifecycle.internal.SavedStateHandlesVM");
                    try {
                        G g3 = null;
                        for (J.d dVar : dVarArr2) {
                            if (dVar.f128a.equals(F.class)) {
                                g3 = (G) B.f1935a.b(cVar);
                            }
                        }
                        if (g3 == null) {
                            throw new IllegalArgumentException("No initializer set for given class ".concat(F.class.getName()));
                        }
                        G g4 = (G) map.put("androidx.lifecycle.internal.SavedStateHandlesVM", g3);
                        if (g4 != null) {
                            g4.a();
                        }
                        g2 = g3;
                    } catch (AbstractMethodError unused) {
                        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
                    }
                } else if (g2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
                }
                return (F) g2;
            default:
                return ((List) this.b).iterator();
        }
    }
}

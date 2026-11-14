package androidx.fragment.app;

import M.C0003d;
import M.d0;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import p007e.AbstractActivityC0210j;

/* JADX INFO: loaded from: classes.dex */
public final class v implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f1927a;

    public v(E e2) {
        this.f1927a = e2;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        K kF;
        AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o;
        View view2;
        boolean zEquals = t.class.getName().equals(str);
        E e2 = this.f1927a;
        if (zEquals) {
            t tVar = new t(context, attributeSet);
            tVar.f1925d = true;
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, H.a.b);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(0);
            }
            String string = typedArrayObtainStyledAttributes.getString(1);
            typedArrayObtainStyledAttributes.recycle();
            int id = tVar.getId();
            AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187oY = e2.y(id);
            if (classAttribute != null && abstractComponentCallbacksC0187oY == null) {
                if (id <= 0) {
                    throw new IllegalStateException(d0.f("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
                }
                y yVarA = e2.A();
                context.getClassLoader();
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187oA = yVarA.a(classAttribute);
                abstractComponentCallbacksC0187oA.f1876C = true;
                r rVar = abstractComponentCallbacksC0187oA.f1905s;
                if ((rVar == null ? null : rVar.f1915c) != null) {
                    abstractComponentCallbacksC0187oA.f1876C = true;
                }
                C0173a c0173a = new C0173a(e2);
                c0173a.f1818o = true;
                abstractComponentCallbacksC0187oA.f1877D = tVar;
                int id2 = tVar.getId();
                Class<?> cls = abstractComponentCallbacksC0187oA.getClass();
                int modifiers = cls.getModifiers();
                if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
                    throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
                }
                if (string != null) {
                    String str2 = abstractComponentCallbacksC0187oA.f1910x;
                    if (str2 != null && !string.equals(str2)) {
                        throw new IllegalStateException("Can't change tag of fragment " + abstractComponentCallbacksC0187oA + ": was " + abstractComponentCallbacksC0187oA.f1910x + " now " + string);
                    }
                    abstractComponentCallbacksC0187oA.f1910x = string;
                }
                if (id2 != 0) {
                    if (id2 == -1) {
                        throw new IllegalArgumentException("Can't add fragment " + abstractComponentCallbacksC0187oA + " with tag " + string + " to container view with no id");
                    }
                    int i2 = abstractComponentCallbacksC0187oA.f1908v;
                    if (i2 != 0 && i2 != id2) {
                        throw new IllegalStateException("Can't change container ID of fragment " + abstractComponentCallbacksC0187oA + ": was " + abstractComponentCallbacksC0187oA.f1908v + " now " + id2);
                    }
                    abstractComponentCallbacksC0187oA.f1908v = id2;
                    abstractComponentCallbacksC0187oA.f1909w = id2;
                }
                c0173a.b(new L(1, abstractComponentCallbacksC0187oA));
                E e3 = c0173a.f1819p;
                abstractComponentCallbacksC0187oA.f1904r = e3;
                if (c0173a.f1810g) {
                    throw new IllegalStateException("This transaction is already being added to the back stack");
                }
                if (e3.f1748n != null && !e3.f1730A) {
                    e3.v(true);
                    c0173a.a(e3.f1732C, e3.f1733D);
                    e3.b = true;
                    try {
                        e3.L(e3.f1732C, e3.f1733D);
                        e3.d();
                        e3.V();
                        if (e3.f1731B) {
                            e3.f1731B = false;
                            e3.U();
                        }
                        ((HashMap) e3.f1738c.b).values().removeAll(Collections.singleton(null));
                    } catch (Throwable th) {
                        e3.d();
                        throw th;
                    }
                }
            }
            for (K k2 : e2.f1738c.g()) {
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187o2 = k2.f1786c;
                if (abstractComponentCallbacksC0187o2.f1909w == tVar.getId() && (view2 = abstractComponentCallbacksC0187o2.f1878E) != null && view2.getParent() == null) {
                    abstractComponentCallbacksC0187o2.f1877D = tVar;
                    k2.b();
                }
            }
            return tVar;
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, H.a.f108a);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes2.getString(0);
        }
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(1, -1);
        String string2 = typedArrayObtainStyledAttributes2.getString(2);
        typedArrayObtainStyledAttributes2.recycle();
        if (attributeValue != null) {
            try {
                zIsAssignableFrom = AbstractComponentCallbacksC0187o.class.isAssignableFrom(y.b(context.getClassLoader(), attributeValue));
            } catch (ClassNotFoundException unused) {
                zIsAssignableFrom = false;
            }
            if (zIsAssignableFrom) {
                int id3 = view != null ? view.getId() : 0;
                if (id3 == -1 && resourceId == -1 && string2 == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                AbstractComponentCallbacksC0187o abstractComponentCallbacksC0187oY2 = resourceId != -1 ? e2.y(resourceId) : null;
                if (abstractComponentCallbacksC0187oY2 == null && string2 != null) {
                    C0003d c0003d = e2.f1738c;
                    ArrayList arrayList = (ArrayList) c0003d.f216d;
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size < 0) {
                            Iterator it = ((HashMap) c0003d.b).values().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    abstractComponentCallbacksC0187oY2 = null;
                                    break;
                                }
                                K k3 = (K) it.next();
                                if (k3 != null) {
                                    abstractComponentCallbacksC0187o = k3.f1786c;
                                    if (string2.equals(abstractComponentCallbacksC0187o.f1910x)) {
                                    }
                                }
                            }
                        } else {
                            abstractComponentCallbacksC0187o = (AbstractComponentCallbacksC0187o) arrayList.get(size);
                            if (abstractComponentCallbacksC0187o == null || !string2.equals(abstractComponentCallbacksC0187o.f1910x)) {
                                size--;
                            }
                        }
                        abstractComponentCallbacksC0187oY2 = abstractComponentCallbacksC0187o;
                        break;
                    }
                }
                if (abstractComponentCallbacksC0187oY2 == null && id3 != -1) {
                    abstractComponentCallbacksC0187oY2 = e2.y(id3);
                }
                if (abstractComponentCallbacksC0187oY2 == null) {
                    y yVarA2 = e2.A();
                    context.getClassLoader();
                    abstractComponentCallbacksC0187oY2 = yVarA2.a(attributeValue);
                    abstractComponentCallbacksC0187oY2.f1899m = true;
                    abstractComponentCallbacksC0187oY2.f1908v = resourceId != 0 ? resourceId : id3;
                    abstractComponentCallbacksC0187oY2.f1909w = id3;
                    abstractComponentCallbacksC0187oY2.f1910x = string2;
                    abstractComponentCallbacksC0187oY2.f1900n = true;
                    abstractComponentCallbacksC0187oY2.f1904r = e2;
                    r rVar2 = e2.f1748n;
                    abstractComponentCallbacksC0187oY2.f1905s = rVar2;
                    AbstractActivityC0210j abstractActivityC0210j = rVar2.f1916d;
                    abstractComponentCallbacksC0187oY2.f1876C = true;
                    if ((rVar2 == null ? null : rVar2.f1915c) != null) {
                        abstractComponentCallbacksC0187oY2.f1876C = true;
                    }
                    kF = e2.a(abstractComponentCallbacksC0187oY2);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Fragment " + abstractComponentCallbacksC0187oY2 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                } else {
                    if (abstractComponentCallbacksC0187oY2.f1900n) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id3) + " with another fragment for " + attributeValue);
                    }
                    abstractComponentCallbacksC0187oY2.f1900n = true;
                    abstractComponentCallbacksC0187oY2.f1904r = e2;
                    r rVar3 = e2.f1748n;
                    abstractComponentCallbacksC0187oY2.f1905s = rVar3;
                    AbstractActivityC0210j abstractActivityC0210j2 = rVar3.f1916d;
                    abstractComponentCallbacksC0187oY2.f1876C = true;
                    if ((rVar3 == null ? null : rVar3.f1915c) != null) {
                        abstractComponentCallbacksC0187oY2.f1876C = true;
                    }
                    kF = e2.f(abstractComponentCallbacksC0187oY2);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Retained Fragment " + abstractComponentCallbacksC0187oY2 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                }
                abstractComponentCallbacksC0187oY2.f1877D = (ViewGroup) view;
                kF.k();
                kF.j();
                View view3 = abstractComponentCallbacksC0187oY2.f1878E;
                if (view3 == null) {
                    throw new IllegalStateException(d0.f("Fragment ", attributeValue, " did not create a view."));
                }
                if (resourceId != 0) {
                    view3.setId(resourceId);
                }
                if (abstractComponentCallbacksC0187oY2.f1878E.getTag() == null) {
                    abstractComponentCallbacksC0187oY2.f1878E.setTag(string2);
                }
                abstractComponentCallbacksC0187oY2.f1878E.addOnAttachStateChangeListener(new u(this, kF));
                return abstractComponentCallbacksC0187oY2.f1878E;
            }
        }
        return null;
    }
}

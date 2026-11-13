package O0;

/* JADX INFO: loaded from: classes.dex */
public final class d extends w0.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f420a;

    public d(e eVar) {
        this.f420a = eVar;
    }

    @Override // w0.e
    public final int a() {
        return this.f420a.f421a.groupCount() + 1;
    }

    @Override // w0.e, java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof String) {
            return super.contains((String) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        String strGroup = this.f420a.f421a.group(i2);
        return strGroup == null ? "" : strGroup;
    }

    @Override // w0.e, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof String) {
            return super.indexOf((String) obj);
        }
        return -1;
    }

    @Override // w0.e, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof String) {
            return super.lastIndexOf((String) obj);
        }
        return -1;
    }
}

package F0;

import I0.f;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f89a;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f90c;

    public a(b bVar) {
        this.f90c = bVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() throws IOException {
        if (this.f89a == null && !this.b) {
            String line = ((BufferedReader) this.f90c.b).readLine();
            this.f89a = line;
            if (line == null) {
                this.b = true;
            }
        }
        return this.f89a != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        String str = this.f89a;
        this.f89a = null;
        f.b(str);
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}

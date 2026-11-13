package T;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C4 implements FileFilter {
    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        String name = file.getName();
        I0.f.d(name, "getName(...)");
        return O0.s.w0(name, "thermal_zone");
    }
}

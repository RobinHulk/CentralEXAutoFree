package javax.activation;

import M.d0;
import androidx.fragment.app.Q;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Hashtable;
import java.util.Vector;
import t0.b;
import t0.f;
import t0.g;

/* JADX INFO: loaded from: classes.dex */
public class MimetypesFileTypeMap extends FileTypeMap {
    private static final int PROG = 0;
    private static final String confDir;
    private static final String defaultType = "application/octet-stream";
    private g[] DB;

    static {
        String str;
        try {
            str = (String) AccessController.doPrivileged(new PrivilegedAction() { // from class: javax.activation.MimetypesFileTypeMap.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    String property = System.getProperty("java.home");
                    StringBuilder sb = new StringBuilder();
                    sb.append(property);
                    String str2 = File.separator;
                    String strG = d0.g(sb, str2, "conf");
                    if (new File(strG).exists()) {
                        return Q.d(strG, str2);
                    }
                    return property + str2 + "lib" + str2;
                }
            });
        } catch (Exception unused) {
            str = null;
        }
        confDir = str;
    }

    public MimetypesFileTypeMap() throws Throwable {
        Vector vector = new Vector(5);
        vector.addElement(null);
        b.b("MimetypesFileTypeMap: load HOME");
        try {
            String property = System.getProperty("user.home");
            if (property != null) {
                g gVarLoadFile = loadFile(property + File.separator + ".mime.types");
                if (gVarLoadFile != null) {
                    vector.addElement(gVarLoadFile);
                }
            }
        } catch (SecurityException unused) {
        }
        b.b("MimetypesFileTypeMap: load SYS");
        try {
            String str = confDir;
            if (str != null) {
                g gVarLoadFile2 = loadFile(str + "mime.types");
                if (gVarLoadFile2 != null) {
                    vector.addElement(gVarLoadFile2);
                }
            }
        } catch (SecurityException unused2) {
        }
        b.b("MimetypesFileTypeMap: load JAR");
        loadAllResources(vector, "META-INF/mime.types");
        b.b("MimetypesFileTypeMap: load DEF");
        g gVarLoadResource = loadResource("/META-INF/mimetypes.default");
        if (gVarLoadResource != null) {
            vector.addElement(gVarLoadResource);
        }
        g[] gVarArr = new g[vector.size()];
        this.DB = gVarArr;
        vector.copyInto(gVarArr);
    }

    private void loadAllResources(Vector vector, String str) throws Throwable {
        int i2 = 0;
        try {
            ClassLoader contextClassLoader = SecuritySupport.getContextClassLoader();
            if (contextClassLoader == null) {
                contextClassLoader = getClass().getClassLoader();
            }
            URL[] resources = contextClassLoader != null ? SecuritySupport.getResources(contextClassLoader, str) : SecuritySupport.getSystemResources(str);
            if (resources != null) {
                if (b.a()) {
                    b.b("MimetypesFileTypeMap: getResources");
                }
                int i3 = 0;
                while (i2 < resources.length) {
                    try {
                        URL url = resources[i2];
                        if (b.a()) {
                            b.b("MimetypesFileTypeMap: URL " + url);
                        }
                        InputStream inputStreamOpenStream = null;
                        try {
                            try {
                                inputStreamOpenStream = SecuritySupport.openStream(url);
                                if (inputStreamOpenStream != null) {
                                    vector.addElement(new g(inputStreamOpenStream));
                                    i3 = 1;
                                    if (b.a()) {
                                        b.b("MimetypesFileTypeMap: successfully loaded mime types from URL: " + url);
                                    }
                                } else if (b.a()) {
                                    b.b("MimetypesFileTypeMap: not loading mime types from URL: " + url);
                                }
                                if (inputStreamOpenStream != null) {
                                    try {
                                        inputStreamOpenStream.close();
                                    } catch (IOException unused) {
                                    }
                                }
                            } catch (Throwable th) {
                                if (inputStreamOpenStream != null) {
                                    try {
                                        inputStreamOpenStream.close();
                                    } catch (IOException unused2) {
                                    }
                                }
                                throw th;
                            }
                        } catch (IOException e2) {
                            if (b.a()) {
                                b.c("MimetypesFileTypeMap: can't load " + url, e2);
                            }
                            if (inputStreamOpenStream != null) {
                            }
                        } catch (SecurityException e3) {
                            if (b.a()) {
                                b.c("MimetypesFileTypeMap: can't load " + url, e3);
                            }
                            if (inputStreamOpenStream != null) {
                            }
                        }
                        i2++;
                    } catch (Exception e4) {
                        e = e4;
                        i2 = i3;
                        if (b.a()) {
                            b.c("MimetypesFileTypeMap: can't load " + str, e);
                        }
                    }
                }
                i2 = i3;
            }
        } catch (Exception e5) {
            e = e5;
        }
        if (i2 == 0) {
            b.b("MimetypesFileTypeMap: !anyLoaded");
            g gVarLoadResource = loadResource("/" + str);
            if (gVarLoadResource != null) {
                vector.addElement(gVarLoadResource);
            }
        }
    }

    private g loadFile(String str) {
        try {
            return new g(str);
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x004e A[EXC_TOP_SPLITTER, PHI: r4
  0x004e: PHI (r4v5 java.io.InputStream) = (r4v3 java.io.InputStream), (r4v4 java.io.InputStream), (r4v7 java.io.InputStream) binds: [B:33:0x0071, B:37:0x0087, B:20:0x004c] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x002d: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:10:0x002d */
    private g loadResource(String str) throws Throwable {
        InputStream resourceAsStream;
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            try {
                resourceAsStream = SecuritySupport.getResourceAsStream(getClass(), str);
                try {
                    if (resourceAsStream != null) {
                        g gVar = new g(resourceAsStream);
                        if (b.a()) {
                            b.b("MimetypesFileTypeMap: successfully loaded mime types file: " + str);
                        }
                        try {
                            resourceAsStream.close();
                        } catch (IOException unused) {
                        }
                        return gVar;
                    }
                    if (b.a()) {
                        b.b("MimetypesFileTypeMap: not loading mime types file: " + str);
                    }
                    if (resourceAsStream != null) {
                        try {
                            resourceAsStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                } catch (IOException e2) {
                    e = e2;
                    if (b.a()) {
                        b.c("MimetypesFileTypeMap: can't load " + str, e);
                    }
                    if (resourceAsStream != null) {
                        resourceAsStream.close();
                    }
                } catch (SecurityException e3) {
                    e = e3;
                    if (b.a()) {
                        b.c("MimetypesFileTypeMap: can't load " + str, e);
                    }
                    if (resourceAsStream != null) {
                        resourceAsStream.close();
                    }
                }
            } catch (Throwable th) {
                th = th;
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            resourceAsStream = null;
        } catch (SecurityException e5) {
            e = e5;
            resourceAsStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (inputStream2 != null) {
                inputStream2.close();
            }
            throw th;
        }
    }

    public synchronized void addMimeTypes(String str) {
        try {
            g[] gVarArr = this.DB;
            if (gVarArr[0] == null) {
                g gVar = new g();
                gVar.f4133a = new Hashtable();
                gVarArr[0] = gVar;
            }
            g gVar2 = this.DB[0];
            gVar2.getClass();
            try {
                gVar2.a(new BufferedReader(new StringReader(str)));
            } catch (IOException unused) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // javax.activation.FileTypeMap
    public String getContentType(File file) {
        return getContentType(file.getName());
    }

    @Override // javax.activation.FileTypeMap
    public synchronized String getContentType(String str) {
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf < 0) {
            return defaultType;
        }
        String strSubstring = str.substring(iLastIndexOf + 1);
        if (strSubstring.length() == 0) {
            return defaultType;
        }
        int i2 = 0;
        while (true) {
            g[] gVarArr = this.DB;
            if (i2 >= gVarArr.length) {
                return defaultType;
            }
            g gVar = gVarArr[i2];
            if (gVar != null) {
                f fVar = (f) gVar.f4133a.get(strSubstring);
                String str2 = fVar != null ? fVar.f4132a : null;
                if (str2 != null) {
                    return str2;
                }
            }
            i2++;
        }
    }

    public MimetypesFileTypeMap(String str) {
        this();
        this.DB[0] = new g(str);
    }

    public MimetypesFileTypeMap(InputStream inputStream) {
        this();
        try {
            this.DB[0] = new g(inputStream);
        } catch (IOException unused) {
        }
    }
}

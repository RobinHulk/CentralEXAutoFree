package javax.activation;

import M.d0;
import androidx.fragment.app.Q;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import t0.b;
import t0.c;

/* JADX INFO: loaded from: classes.dex */
public class MailcapCommandMap extends CommandMap {
    private static final int PROG = 0;
    private static final String confDir;
    private c[] DB;

    static {
        String str;
        try {
            str = (String) AccessController.doPrivileged(new PrivilegedAction() { // from class: javax.activation.MailcapCommandMap.1
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

    public MailcapCommandMap() throws Throwable {
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(null);
        b.b("MailcapCommandMap: load HOME");
        try {
            String property = System.getProperty("user.home");
            if (property != null) {
                c cVarLoadFile = loadFile(property + File.separator + ".mailcap");
                if (cVarLoadFile != null) {
                    arrayList.add(cVarLoadFile);
                }
            }
        } catch (SecurityException unused) {
        }
        b.b("MailcapCommandMap: load SYS");
        try {
            String str = confDir;
            if (str != null) {
                c cVarLoadFile2 = loadFile(str + "mailcap");
                if (cVarLoadFile2 != null) {
                    arrayList.add(cVarLoadFile2);
                }
            }
        } catch (SecurityException unused2) {
        }
        b.b("MailcapCommandMap: load JAR");
        loadAllResources(arrayList, "META-INF/mailcap");
        b.b("MailcapCommandMap: load DEF");
        c cVarLoadResource = loadResource("/META-INF/mailcap.default");
        if (cVarLoadResource != null) {
            arrayList.add(cVarLoadResource);
        }
        c[] cVarArr = new c[arrayList.size()];
        this.DB = cVarArr;
        this.DB = (c[]) arrayList.toArray(cVarArr);
    }

    private void appendCmdsToList(Map map, List list) {
        for (String str : map.keySet()) {
            Iterator it = ((List) map.get(str)).iterator();
            while (it.hasNext()) {
                list.add(new CommandInfo(str, (String) it.next()));
            }
        }
    }

    private void appendPrefCmdsToList(Map map, List list) {
        for (String str : map.keySet()) {
            if (!checkForVerb(list, str)) {
                list.add(new CommandInfo(str, (String) ((List) map.get(str)).get(0)));
            }
        }
    }

    private boolean checkForVerb(List list, String str) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((CommandInfo) it.next()).getCommandName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    private DataContentHandler getDataContentHandler(String str) {
        Class<?> cls;
        if (b.a()) {
            b.b("    got content-handler");
        }
        if (b.a()) {
            b.b("      class " + str);
        }
        try {
            ClassLoader contextClassLoader = SecuritySupport.getContextClassLoader();
            if (contextClassLoader == null) {
                contextClassLoader = getClass().getClassLoader();
            }
            try {
                cls = contextClassLoader.loadClass(str);
            } catch (Exception unused) {
                cls = Class.forName(str);
            }
            if (cls != null) {
                return (DataContentHandler) cls.newInstance();
            }
            return null;
        } catch (ClassNotFoundException e2) {
            if (!b.a()) {
                return null;
            }
            b.c("Can't load DCH " + str, e2);
            return null;
        } catch (IllegalAccessException e3) {
            if (!b.a()) {
                return null;
            }
            b.c("Can't load DCH " + str, e3);
            return null;
        } catch (InstantiationException e4) {
            if (!b.a()) {
                return null;
            }
            b.c("Can't load DCH " + str, e4);
            return null;
        }
    }

    private void loadAllResources(List list, String str) throws Throwable {
        int i2 = 0;
        try {
            ClassLoader contextClassLoader = SecuritySupport.getContextClassLoader();
            if (contextClassLoader == null) {
                contextClassLoader = getClass().getClassLoader();
            }
            URL[] resources = contextClassLoader != null ? SecuritySupport.getResources(contextClassLoader, str) : SecuritySupport.getSystemResources(str);
            if (resources != null) {
                if (b.a()) {
                    b.b("MailcapCommandMap: getResources");
                }
                int i3 = 0;
                while (i2 < resources.length) {
                    try {
                        URL url = resources[i2];
                        if (b.a()) {
                            b.b("MailcapCommandMap: URL " + url);
                        }
                        InputStream inputStreamOpenStream = null;
                        try {
                            try {
                                inputStreamOpenStream = SecuritySupport.openStream(url);
                                if (inputStreamOpenStream != null) {
                                    list.add(new c(inputStreamOpenStream));
                                    i3 = 1;
                                    if (b.a()) {
                                        b.b("MailcapCommandMap: successfully loaded mailcap file from URL: " + url);
                                    }
                                } else if (b.a()) {
                                    b.b("MailcapCommandMap: not loading mailcap file from URL: " + url);
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
                                b.c("MailcapCommandMap: can't load " + url, e2);
                            }
                            if (inputStreamOpenStream != null) {
                            }
                        } catch (SecurityException e3) {
                            if (b.a()) {
                                b.c("MailcapCommandMap: can't load " + url, e3);
                            }
                            if (inputStreamOpenStream != null) {
                            }
                        }
                        i2++;
                    } catch (Exception e4) {
                        e = e4;
                        i2 = i3;
                        if (b.a()) {
                            b.c("MailcapCommandMap: can't load " + str, e);
                        }
                    }
                }
                i2 = i3;
            }
        } catch (Exception e5) {
            e = e5;
        }
        if (i2 == 0) {
            if (b.a()) {
                b.b("MailcapCommandMap: !anyLoaded");
            }
            c cVarLoadResource = loadResource(d0.e("/", str));
            if (cVarLoadResource != null) {
                list.add(cVarLoadResource);
            }
        }
    }

    private c loadFile(String str) {
        try {
            return new c(str);
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x004e A[EXC_TOP_SPLITTER, PHI: r4
  0x004e: PHI (r4v5 java.io.InputStream) = (r4v3 java.io.InputStream), (r4v4 java.io.InputStream), (r4v7 java.io.InputStream) binds: [B:33:0x0071, B:37:0x0087, B:20:0x004c] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x002d: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:10:0x002d */
    private c loadResource(String str) throws Throwable {
        InputStream resourceAsStream;
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            try {
                resourceAsStream = SecuritySupport.getResourceAsStream(getClass(), str);
                try {
                    if (resourceAsStream != null) {
                        c cVar = new c(resourceAsStream);
                        if (b.a()) {
                            b.b("MailcapCommandMap: successfully loaded mailcap file: " + str);
                        }
                        try {
                            resourceAsStream.close();
                        } catch (IOException unused) {
                        }
                        return cVar;
                    }
                    if (b.a()) {
                        b.b("MailcapCommandMap: not loading mailcap file: " + str);
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
                        b.c("MailcapCommandMap: can't load " + str, e);
                    }
                    if (resourceAsStream != null) {
                        resourceAsStream.close();
                    }
                } catch (SecurityException e3) {
                    e = e3;
                    if (b.a()) {
                        b.c("MailcapCommandMap: can't load " + str, e);
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

    public synchronized void addMailcap(String str) {
        try {
            b.b("MailcapCommandMap: add to PROG");
            c[] cVarArr = this.DB;
            if (cVarArr[0] == null) {
                c cVar = new c();
                cVar.f4126a = new HashMap();
                cVar.b = new HashMap();
                cVar.f4127c = new HashMap();
                if (b.a()) {
                    b.b("new MailcapFile: default");
                }
                cVarArr[0] = cVar;
            }
            c cVar2 = this.DB[0];
            cVar2.getClass();
            if (b.a()) {
                b.b("appendToMailcap: " + str);
            }
            try {
                cVar2.d(new StringReader(str));
            } catch (IOException unused) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // javax.activation.CommandMap
    public synchronized DataContentHandler createDataContentHandler(String str) {
        List list;
        DataContentHandler dataContentHandler;
        List list2;
        DataContentHandler dataContentHandler2;
        try {
            if (b.a()) {
                b.b("MailcapCommandMap: createDataContentHandler for " + str);
            }
            if (str != null) {
                str = str.toLowerCase(Locale.ENGLISH);
            }
            int i2 = 0;
            while (true) {
                c[] cVarArr = this.DB;
                if (i2 < cVarArr.length) {
                    if (cVarArr[i2] != null) {
                        if (b.a()) {
                            b.b("  search DB #" + i2);
                        }
                        Map mapB = this.DB[i2].b(str);
                        if (mapB != null && (list2 = (List) mapB.get("content-handler")) != null && (dataContentHandler2 = getDataContentHandler((String) list2.get(0))) != null) {
                            return dataContentHandler2;
                        }
                    }
                    i2++;
                } else {
                    int i3 = 0;
                    while (true) {
                        c[] cVarArr2 = this.DB;
                        if (i3 >= cVarArr2.length) {
                            return null;
                        }
                        if (cVarArr2[i3] != null) {
                            if (b.a()) {
                                b.b("  search fallback DB #" + i3);
                            }
                            Map mapA = this.DB[i3].a(str);
                            if (mapA != null && (list = (List) mapA.get("content-handler")) != null && (dataContentHandler = getDataContentHandler((String) list.get(0))) != null) {
                                return dataContentHandler;
                            }
                        }
                        i3++;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // javax.activation.CommandMap
    public synchronized CommandInfo[] getAllCommands(String str) {
        ArrayList arrayList;
        Map mapA;
        Map mapB;
        try {
            arrayList = new ArrayList();
            if (str != null) {
                str = str.toLowerCase(Locale.ENGLISH);
            }
            int i2 = 0;
            int i3 = 0;
            while (true) {
                c[] cVarArr = this.DB;
                if (i3 >= cVarArr.length) {
                    break;
                }
                c cVar = cVarArr[i3];
                if (cVar != null && (mapB = cVar.b(str)) != null) {
                    appendCmdsToList(mapB, arrayList);
                }
                i3++;
            }
            while (true) {
                c[] cVarArr2 = this.DB;
                if (i2 < cVarArr2.length) {
                    c cVar2 = cVarArr2[i2];
                    if (cVar2 != null && (mapA = cVar2.a(str)) != null) {
                        appendCmdsToList(mapA, arrayList);
                    }
                    i2++;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (CommandInfo[]) arrayList.toArray(new CommandInfo[arrayList.size()]);
    }

    @Override // javax.activation.CommandMap
    public synchronized CommandInfo getCommand(String str, String str2) {
        Map mapA;
        List list;
        String str3;
        Map mapB;
        List list2;
        String str4;
        if (str != null) {
            try {
                str = str.toLowerCase(Locale.ENGLISH);
            } catch (Throwable th) {
                throw th;
            }
        }
        int i2 = 0;
        while (true) {
            c[] cVarArr = this.DB;
            if (i2 < cVarArr.length) {
                c cVar = cVarArr[i2];
                if (cVar != null && (mapB = cVar.b(str)) != null && (list2 = (List) mapB.get(str2)) != null && (str4 = (String) list2.get(0)) != null) {
                    return new CommandInfo(str2, str4);
                }
                i2++;
            } else {
                int i3 = 0;
                while (true) {
                    c[] cVarArr2 = this.DB;
                    if (i3 >= cVarArr2.length) {
                        return null;
                    }
                    c cVar2 = cVarArr2[i3];
                    if (cVar2 != null && (mapA = cVar2.a(str)) != null && (list = (List) mapA.get(str2)) != null && (str3 = (String) list.get(0)) != null) {
                        return new CommandInfo(str2, str3);
                    }
                    i3++;
                }
            }
        }
    }

    @Override // javax.activation.CommandMap
    public synchronized String[] getMimeTypes() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            int i2 = 0;
            while (true) {
                c[] cVarArr = this.DB;
                if (i2 < cVarArr.length) {
                    c cVar = cVarArr[i2];
                    if (cVar != null) {
                        HashSet hashSet = new HashSet(cVar.f4126a.keySet());
                        hashSet.addAll(cVar.b.keySet());
                        hashSet.addAll(cVar.f4127c.keySet());
                        String[] strArr = (String[]) hashSet.toArray(new String[hashSet.size()]);
                        if (strArr != null) {
                            for (int i3 = 0; i3 < strArr.length; i3++) {
                                if (!arrayList.contains(strArr[i3])) {
                                    arrayList.add(strArr[i3]);
                                }
                            }
                        }
                    }
                    i2++;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public synchronized String[] getNativeCommands(String str) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            if (str != null) {
                str = str.toLowerCase(Locale.ENGLISH);
            }
            int i2 = 0;
            while (true) {
                c[] cVarArr = this.DB;
                if (i2 < cVarArr.length) {
                    c cVar = cVarArr[i2];
                    if (cVar != null) {
                        List list = (List) cVar.f4127c.get(str.toLowerCase(Locale.ENGLISH));
                        String[] strArr = list != null ? (String[]) list.toArray(new String[list.size()]) : null;
                        if (strArr != null) {
                            for (int i3 = 0; i3 < strArr.length; i3++) {
                                if (!arrayList.contains(strArr[i3])) {
                                    arrayList.add(strArr[i3]);
                                }
                            }
                        }
                    }
                    i2++;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // javax.activation.CommandMap
    public synchronized CommandInfo[] getPreferredCommands(String str) {
        ArrayList arrayList;
        Map mapA;
        Map mapB;
        try {
            arrayList = new ArrayList();
            if (str != null) {
                str = str.toLowerCase(Locale.ENGLISH);
            }
            int i2 = 0;
            int i3 = 0;
            while (true) {
                c[] cVarArr = this.DB;
                if (i3 >= cVarArr.length) {
                    break;
                }
                c cVar = cVarArr[i3];
                if (cVar != null && (mapB = cVar.b(str)) != null) {
                    appendPrefCmdsToList(mapB, arrayList);
                }
                i3++;
            }
            while (true) {
                c[] cVarArr2 = this.DB;
                if (i2 < cVarArr2.length) {
                    c cVar2 = cVarArr2[i2];
                    if (cVar2 != null && (mapA = cVar2.a(str)) != null) {
                        appendPrefCmdsToList(mapA, arrayList);
                    }
                    i2++;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (CommandInfo[]) arrayList.toArray(new CommandInfo[arrayList.size()]);
    }

    public MailcapCommandMap(String str) {
        this();
        if (b.a()) {
            b.b("MailcapCommandMap: load PROG from " + str);
        }
        c[] cVarArr = this.DB;
        if (cVarArr[0] == null) {
            cVarArr[0] = new c(str);
        }
    }

    public MailcapCommandMap(InputStream inputStream) {
        this();
        b.b("MailcapCommandMap: load PROG");
        c[] cVarArr = this.DB;
        if (cVarArr[0] == null) {
            try {
                cVarArr[0] = new c(inputStream);
            } catch (IOException unused) {
            }
        }
    }
}

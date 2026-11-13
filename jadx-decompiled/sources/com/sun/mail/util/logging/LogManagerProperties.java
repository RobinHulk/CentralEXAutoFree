package com.sun.mail.util.logging;

import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.UndeclaredThrowableException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Locale;
import java.util.Properties;
import java.util.logging.ErrorManager;
import java.util.logging.Filter;
import java.util.logging.Formatter;
import java.util.logging.LogManager;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
import java.util.logging.LoggingPermission;

/* JADX INFO: loaded from: classes.dex */
final class LogManagerProperties extends Properties {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object LOG_MANAGER;
    private static final Method LR_GET_INSTANT;
    private static final Method LR_GET_LONG_TID;
    private static volatile String[] REFLECT_NAMES = null;
    private static final Method ZDT_OF_INSTANT;
    private static final Method ZI_SYSTEM_DEFAULT;
    private static final long serialVersionUID = -2239983349056806252L;
    private final String prefix;

    /* JADX WARN: Code duplicated, block: B:17:0x005b A[PHI: r0 r1 r3
  0x005b: PHI (r0v13 java.lang.reflect.Method) = 
  (r0v7 java.lang.reflect.Method)
  (r0v8 java.lang.reflect.Method)
  (r0v9 java.lang.reflect.Method)
  (r0v26 java.lang.reflect.Method)
 binds: [B:48:0x009f, B:52:0x00a6, B:44:0x0098, B:16:0x0059] A[DONT_GENERATE, DONT_INLINE]
  0x005b: PHI (r1v8 java.lang.reflect.Method) = 
  (r1v5 java.lang.reflect.Method)
  (r1v6 java.lang.reflect.Method)
  (r1v7 java.lang.reflect.Method)
  (r1v9 java.lang.reflect.Method)
 binds: [B:48:0x009f, B:52:0x00a6, B:44:0x0098, B:16:0x0059] A[DONT_GENERATE, DONT_INLINE]
  0x005b: PHI (r3v12 java.lang.reflect.Method) = 
  (r3v7 java.lang.reflect.Method)
  (r3v8 java.lang.reflect.Method)
  (r3v9 java.lang.reflect.Method)
  (r3v19 java.lang.reflect.Method)
 binds: [B:48:0x009f, B:52:0x00a6, B:44:0x0098, B:16:0x0059] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:18:0x005e  */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0093, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:?, code lost:
    
        throw r2;
     */
    static {
        /*
            java.lang.String r0 = "java.time.ZoneId"
            java.lang.Class<java.util.logging.LogRecord> r1 = java.util.logging.LogRecord.class
            r2 = 0
            java.lang.String r3 = "getLongThreadID"
            java.lang.reflect.Method r3 = r1.getMethod(r3, r2)     // Catch: java.lang.Throwable -> Lc
            goto Ld
        Lc:
            r3 = r2
        Ld:
            com.sun.mail.util.logging.LogManagerProperties.LR_GET_LONG_TID = r3
            java.lang.String r3 = "getInstant"
            java.lang.reflect.Method r1 = r1.getMethod(r3, r2)     // Catch: java.lang.Throwable -> L83 java.lang.LinkageError -> L87 java.lang.Exception -> L8b java.lang.RuntimeException -> L8f
            java.lang.Class r3 = findClass(r0)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L7a java.lang.RuntimeException -> L7d java.lang.LinkageError -> L80
            java.lang.String r4 = "systemDefault"
            java.lang.reflect.Method r3 = r3.getMethod(r4, r2)     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L7a java.lang.RuntimeException -> L7d java.lang.LinkageError -> L80
            int r4 = r3.getModifiers()     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c java.lang.RuntimeException -> L6e java.lang.LinkageError -> L70
            boolean r4 = java.lang.reflect.Modifier.isStatic(r4)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c java.lang.RuntimeException -> L6e java.lang.LinkageError -> L70
            if (r4 == 0) goto L72
            java.lang.String r4 = "java.time.ZonedDateTime"
            java.lang.Class r4 = findClass(r4)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c java.lang.RuntimeException -> L6e java.lang.LinkageError -> L70
            java.lang.String r5 = "ofInstant"
            java.lang.String r6 = "java.time.Instant"
            java.lang.Class r6 = findClass(r6)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c java.lang.RuntimeException -> L6e java.lang.LinkageError -> L70
            java.lang.Class r0 = findClass(r0)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c java.lang.RuntimeException -> L6e java.lang.LinkageError -> L70
            java.lang.Class[] r0 = new java.lang.Class[]{r6, r0}     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c java.lang.RuntimeException -> L6e java.lang.LinkageError -> L70
            java.lang.reflect.Method r0 = r4.getMethod(r5, r0)     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c java.lang.RuntimeException -> L6e java.lang.LinkageError -> L70
            int r4 = r0.getModifiers()     // Catch: java.lang.Throwable -> L62 java.lang.LinkageError -> L94 java.lang.Exception -> L9b java.lang.RuntimeException -> La2
            boolean r4 = java.lang.reflect.Modifier.isStatic(r4)     // Catch: java.lang.Throwable -> L62 java.lang.LinkageError -> L94 java.lang.Exception -> L9b java.lang.RuntimeException -> La2
            if (r4 == 0) goto L64
            java.lang.Class<java.lang.Comparable> r4 = java.lang.Comparable.class
            java.lang.Class r5 = r0.getReturnType()     // Catch: java.lang.Throwable -> L62 java.lang.LinkageError -> L94 java.lang.Exception -> L9b java.lang.RuntimeException -> La2
            boolean r4 = r4.isAssignableFrom(r5)     // Catch: java.lang.Throwable -> L62 java.lang.LinkageError -> L94 java.lang.Exception -> L9b java.lang.RuntimeException -> La2
            if (r4 == 0) goto L64
            if (r1 == 0) goto L5e
        L5b:
            r2 = r1
            goto La9
        L5e:
            r0 = r2
            r3 = r0
            goto La9
        L62:
            r2 = move-exception
            goto L93
        L64:
            java.lang.NoSuchMethodException r0 = new java.lang.NoSuchMethodException     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c java.lang.RuntimeException -> L6e java.lang.LinkageError -> L70
            throw r2     // Catch: java.lang.Throwable -> L67 java.lang.Exception -> L6c java.lang.RuntimeException -> L6e
        L67:
            r0 = move-exception
            r7 = r2
            r2 = r0
            r0 = r7
            goto L93
        L6c:
            r0 = r2
            goto L9b
        L6e:
            r0 = r2
            goto La2
        L70:
            r0 = r2
            goto L94
        L72:
            java.lang.NoSuchMethodException r0 = new java.lang.NoSuchMethodException     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L7a java.lang.RuntimeException -> L7d java.lang.LinkageError -> L80
            throw r2     // Catch: java.lang.Throwable -> L75 java.lang.Exception -> L7a java.lang.RuntimeException -> L7d
        L75:
            r0 = move-exception
            r3 = r2
        L77:
            r2 = r0
            r0 = r3
            goto L93
        L7a:
            r0 = r2
            r3 = r0
            goto L9b
        L7d:
            r0 = r2
            r3 = r0
            goto La2
        L80:
            r0 = r2
            r3 = r0
            goto L94
        L83:
            r0 = move-exception
            r1 = r2
            r3 = r1
            goto L77
        L87:
            r0 = r2
            r1 = r0
            r3 = r1
            goto L94
        L8b:
            r0 = r2
            r1 = r0
            r3 = r1
            goto L9b
        L8f:
            r0 = r2
            r1 = r0
            r3 = r1
            goto La2
        L93:
            throw r2
        L94:
            if (r1 == 0) goto L5e
            if (r3 == 0) goto L5e
            if (r0 != 0) goto L5b
            goto L5e
        L9b:
            if (r1 == 0) goto L5e
            if (r3 == 0) goto L5e
            if (r0 != 0) goto L5b
            goto L5e
        La2:
            if (r1 == 0) goto L5e
            if (r3 == 0) goto L5e
            if (r0 != 0) goto L5b
            goto L5e
        La9:
            com.sun.mail.util.logging.LogManagerProperties.LR_GET_INSTANT = r2
            com.sun.mail.util.logging.LogManagerProperties.ZI_SYSTEM_DEFAULT = r3
            com.sun.mail.util.logging.LogManagerProperties.ZDT_OF_INSTANT = r0
            java.lang.Object r0 = loadLogManager()
            com.sun.mail.util.logging.LogManagerProperties.LOG_MANAGER = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.util.logging.LogManagerProperties.<clinit>():void");
    }

    public LogManagerProperties(Properties properties, String str) {
        super(properties);
        if (properties == null || str == null) {
            throw null;
        }
        this.prefix = str;
    }

    public static void checkLogManagerAccess() {
        Object obj = LOG_MANAGER;
        boolean z2 = $assertionsDisabled;
        if (obj != null) {
            try {
                if (obj instanceof LogManager) {
                    z2 = true;
                    ((LogManager) obj).checkAccess();
                }
            } catch (LinkageError | RuntimeException unused) {
            } catch (SecurityException e2) {
                if (z2) {
                    throw e2;
                }
            }
        }
        if (z2) {
            return;
        }
        checkLoggingAccess();
    }

    private static void checkLoggingAccess() {
        Logger logger = Logger.getLogger("global");
        try {
            if (Logger.class == logger.getClass()) {
                logger.removeHandler(null);
                return;
            }
        } catch (NullPointerException unused) {
        }
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new LoggingPermission("control", null));
        }
    }

    private Properties exportCopy(Properties properties) {
        Thread.holdsLock(this);
        Properties properties2 = new Properties(properties);
        properties2.putAll(this);
        return properties2;
    }

    private static Class<?> findClass(String str) {
        ClassLoader[] classLoaders = getClassLoaders();
        ClassLoader classLoader = classLoaders[0];
        if (classLoader == null) {
            return tryLoad(str, classLoaders[1]);
        }
        try {
            return Class.forName(str, $assertionsDisabled, classLoader);
        } catch (ClassNotFoundException unused) {
            return tryLoad(str, classLoaders[1]);
        }
    }

    public static String fromLogManager(String str) {
        str.getClass();
        Object obj = LOG_MANAGER;
        try {
            if (obj instanceof Properties) {
                return ((Properties) obj).getProperty(str);
            }
        } catch (RuntimeException unused) {
        }
        if (obj == null) {
            return null;
        }
        try {
            if (obj instanceof LogManager) {
                return ((LogManager) obj).getProperty(str);
            }
            return null;
        } catch (LinkageError | RuntimeException unused2) {
            return null;
        }
    }

    private static ClassLoader[] getClassLoaders() {
        return (ClassLoader[]) AccessController.doPrivileged(new PrivilegedAction<ClassLoader[]>() { // from class: com.sun.mail.util.logging.LogManagerProperties.1
            @Override // java.security.PrivilegedAction
            public ClassLoader[] run() {
                ClassLoader[] classLoaderArr = new ClassLoader[2];
                try {
                    classLoaderArr[0] = ClassLoader.getSystemClassLoader();
                } catch (SecurityException unused) {
                    classLoaderArr[0] = null;
                }
                try {
                    classLoaderArr[1] = Thread.currentThread().getContextClassLoader();
                } catch (SecurityException unused2) {
                    classLoaderArr[1] = null;
                }
                return classLoaderArr;
            }
        });
    }

    public static String getLocalHost(Object obj) throws Exception {
        try {
            Method method = obj.getClass().getMethod("getLocalHost", null);
            if (Modifier.isStatic(method.getModifiers()) || method.getReturnType() != String.class) {
                throw new NoSuchMethodException(method.toString());
            }
            return (String) method.invoke(obj, null);
        } catch (ExceptionInInitializerError e2) {
            throw wrapOrThrow(e2);
        } catch (InvocationTargetException e3) {
            throw paramOrError(e3);
        }
    }

    public static Long getLongThreadID(LogRecord logRecord) {
        logRecord.getClass();
        Method method = LR_GET_LONG_TID;
        if (method != null) {
            try {
                return (Long) method.invoke(logRecord, null);
            } catch (RuntimeException | Exception unused) {
            } catch (InvocationTargetException e2) {
                Throwable cause = e2.getCause();
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new UndeclaredThrowableException(e2);
            }
        }
        return null;
    }

    public static Comparable<?> getZonedDateTime(LogRecord logRecord) {
        logRecord.getClass();
        Method method = ZDT_OF_INSTANT;
        if (method != null) {
            try {
                return (Comparable) method.invoke(null, LR_GET_INSTANT.invoke(logRecord, null), ZI_SYSTEM_DEFAULT.invoke(null, null));
            } catch (RuntimeException | Exception unused) {
            } catch (InvocationTargetException e2) {
                Throwable cause = e2.getCause();
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new UndeclaredThrowableException(e2);
            }
        }
        return null;
    }

    public static boolean hasLogManager() {
        Object obj = LOG_MANAGER;
        if (obj == null || (obj instanceof Properties)) {
            return $assertionsDisabled;
        }
        return true;
    }

    public static boolean isReflectionClass(String str) throws Exception {
        String[] strArrReflectionClassNames = REFLECT_NAMES;
        if (strArrReflectionClassNames == null) {
            strArrReflectionClassNames = reflectionClassNames();
            REFLECT_NAMES = strArrReflectionClassNames;
        }
        for (String str2 : strArrReflectionClassNames) {
            if (str.equals(str2)) {
                return true;
            }
        }
        findClass(str);
        return $assertionsDisabled;
    }

    public static boolean isStaticUtilityClass(String str) {
        Class<?> clsFindClass = findClass(str);
        if (clsFindClass == Object.class) {
            return $assertionsDisabled;
        }
        Method[] methods = clsFindClass.getMethods();
        if (methods.length == 0) {
            return $assertionsDisabled;
        }
        for (Method method : methods) {
            if (method.getDeclaringClass() != Object.class && !Modifier.isStatic(method.getModifiers())) {
                return $assertionsDisabled;
            }
        }
        return true;
    }

    private static Object loadLogManager() {
        try {
            return LogManager.getLogManager();
        } catch (LinkageError unused) {
            return readConfiguration();
        } catch (RuntimeException unused2) {
            return readConfiguration();
        }
    }

    public static Comparator<? super LogRecord> newComparator(String str) {
        return (Comparator) newObjectFrom(str, Comparator.class);
    }

    public static ErrorManager newErrorManager(String str) {
        return (ErrorManager) newObjectFrom(str, ErrorManager.class);
    }

    public static Filter newFilter(String str) {
        return (Filter) newObjectFrom(str, Filter.class);
    }

    public static Formatter newFormatter(String str) {
        return (Formatter) newObjectFrom(str, Formatter.class);
    }

    public static <T> T newObjectFrom(String str, Class<T> cls) throws Exception {
        try {
            Class<?> clsFindClass = findClass(str);
            if (cls.isAssignableFrom(clsFindClass)) {
                try {
                    return cls.cast(clsFindClass.getConstructor(null).newInstance(null));
                } catch (InvocationTargetException e2) {
                    throw paramOrError(e2);
                }
            }
            throw new ClassCastException(clsFindClass.getName() + " cannot be cast to " + cls.getName());
        } catch (ExceptionInInitializerError e3) {
            throw wrapOrThrow(e3);
        } catch (NoClassDefFoundError e4) {
            throw new ClassNotFoundException(e4.toString(), e4);
        }
    }

    private static Exception paramOrError(InvocationTargetException invocationTargetException) {
        Throwable cause = invocationTargetException.getCause();
        if (cause == null || (!(cause instanceof VirtualMachineError) && !(cause instanceof ThreadDeath))) {
            return invocationTargetException;
        }
        throw ((Error) cause);
    }

    public static long parseDurationToMillis(CharSequence charSequence) throws Exception {
        charSequence.getClass();
        try {
            Class<?> clsFindClass = findClass("java.time.Duration");
            Method method = clsFindClass.getMethod("parse", CharSequence.class);
            if (!clsFindClass.isAssignableFrom(method.getReturnType()) || !Modifier.isStatic(method.getModifiers())) {
                throw new NoSuchMethodException(method.toString());
            }
            Method method2 = clsFindClass.getMethod("toMillis", null);
            if (!Long.TYPE.isAssignableFrom(method2.getReturnType()) || Modifier.isStatic(method2.getModifiers())) {
                throw new NoSuchMethodException(method2.toString());
            }
            return ((Long) method2.invoke(method.invoke(null, charSequence), null)).longValue();
        } catch (ExceptionInInitializerError e2) {
            throw wrapOrThrow(e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof ArithmeticException) {
                throw ((ArithmeticException) cause);
            }
            throw paramOrError(e3);
        }
    }

    private Object preWrite(Object obj) {
        return get(obj);
    }

    private static Properties readConfiguration() {
        Properties properties = new Properties();
        try {
            String property = System.getProperty("java.util.logging.config.file");
            if (property != null) {
                FileInputStream fileInputStream = new FileInputStream(new File(property).getCanonicalFile());
                try {
                    properties.load(fileInputStream);
                } finally {
                    fileInputStream.close();
                }
            }
        } catch (RuntimeException | Exception | LinkageError unused) {
        }
        return properties;
    }

    private static String[] reflectionClassNames() throws Exception {
        try {
            HashSet hashSet = new HashSet();
            Throwable th = (Throwable) Throwable.class.getConstructor(null).newInstance(null);
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                if (LogManagerProperties.class.getName().equals(stackTraceElement.getClassName())) {
                    break;
                }
                hashSet.add(stackTraceElement.getClassName());
            }
            Throwable.class.getMethod("fillInStackTrace", null).invoke(th, null);
            for (StackTraceElement stackTraceElement2 : th.getStackTrace()) {
                if (LogManagerProperties.class.getName().equals(stackTraceElement2.getClassName())) {
                    break;
                }
                hashSet.add(stackTraceElement2.getClassName());
            }
            return (String[]) hashSet.toArray(new String[hashSet.size()]);
        } catch (InvocationTargetException e2) {
            throw paramOrError(e2);
        }
    }

    public static <T> Comparator<T> reverseOrder(Comparator<T> comparator) {
        comparator.getClass();
        Comparator<T> comparator2 = null;
        try {
            try {
                Method method = comparator.getClass().getMethod("reversed", null);
                if (!Modifier.isStatic(method.getModifiers()) && Comparator.class.isAssignableFrom(method.getReturnType())) {
                    try {
                        comparator2 = (Comparator) method.invoke(comparator, null);
                    } catch (ExceptionInInitializerError e2) {
                        throw wrapOrThrow(e2);
                    }
                }
            } catch (InvocationTargetException e3) {
                paramOrError(e3);
            }
        } catch (ReflectiveOperationException | RuntimeException unused) {
        }
        return comparator2 == null ? Collections.reverseOrder(comparator) : comparator2;
    }

    public static String toLanguageTag(Locale locale) {
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String variant = locale.getVariant();
        char[] cArr = new char[variant.length() + country.length() + language.length() + 2];
        int length = language.length();
        language.getChars(0, length, cArr, 0);
        if (country.length() != 0 || (language.length() != 0 && variant.length() != 0)) {
            cArr[length] = '-';
            int i2 = length + 1;
            country.getChars(0, country.length(), cArr, i2);
            length = i2 + country.length();
        }
        if (variant.length() != 0 && (language.length() != 0 || country.length() != 0)) {
            cArr[length] = '-';
            int i3 = length + 1;
            variant.getChars(0, variant.length(), cArr, i3);
            length = i3 + variant.length();
        }
        return String.valueOf(cArr, 0, length);
    }

    private static Class<?> tryLoad(String str, ClassLoader classLoader) {
        return classLoader != null ? Class.forName(str, $assertionsDisabled, classLoader) : Class.forName(str);
    }

    private static InvocationTargetException wrapOrThrow(ExceptionInInitializerError exceptionInInitializerError) {
        if (exceptionInInitializerError.getCause() instanceof Error) {
            throw exceptionInInitializerError;
        }
        return new InvocationTargetException(exceptionInInitializerError);
    }

    private synchronized Object writeReplace() {
        return exportCopy((Properties) ((Properties) this).defaults.clone());
    }

    @Override // java.util.Hashtable
    public synchronized Object clone() {
        return exportCopy(((Properties) this).defaults);
    }

    @Override // java.util.Hashtable, java.util.Map
    public synchronized boolean containsKey(Object obj) {
        boolean z2;
        try {
            boolean z3 = obj instanceof String;
            boolean z4 = $assertionsDisabled;
            z2 = z3 && getProperty((String) obj) != null;
            if (!z2) {
                if (((Properties) this).defaults.containsKey(obj) || super.containsKey(obj)) {
                    z4 = true;
                }
                z2 = z4;
            }
        } catch (Throwable th) {
            throw th;
        }
        return z2;
    }

    @Override // java.util.Hashtable, java.util.Map
    public boolean equals(Object obj) {
        if (obj == null) {
            return $assertionsDisabled;
        }
        if (obj == this) {
            return true;
        }
        return !(obj instanceof Properties) ? $assertionsDisabled : super.equals(obj);
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public synchronized Object get(Object obj) {
        Object property;
        try {
            property = obj instanceof String ? getProperty((String) obj) : null;
            if (property == null && (property = ((Properties) this).defaults.get(obj)) == null && !((Properties) this).defaults.containsKey(obj)) {
                property = super.get(obj);
            }
        } catch (Throwable th) {
            throw th;
        }
        return property;
    }

    @Override // java.util.Properties
    public synchronized String getProperty(String str) {
        String property;
        try {
            property = ((Properties) this).defaults.getProperty(str);
            if (property == null) {
                if (str.length() > 0) {
                    property = fromLogManager(this.prefix + '.' + str);
                }
                if (property == null) {
                    property = fromLogManager(str);
                }
                if (property != null) {
                    super.put(str, property);
                } else {
                    Object obj = super.get(str);
                    property = obj instanceof String ? (String) obj : null;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return property;
    }

    @Override // java.util.Hashtable, java.util.Map
    public int hashCode() {
        return super.hashCode();
    }

    @Override // java.util.Properties
    public Enumeration<?> propertyNames() {
        return super.propertyNames();
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public synchronized Object put(Object obj, Object obj2) {
        if (!(obj instanceof String) || !(obj2 instanceof String)) {
            return super.put(obj, obj2);
        }
        Object objPreWrite = preWrite(obj);
        Object objPut = super.put(obj, obj2);
        if (objPut != null) {
            objPreWrite = objPut;
        }
        return objPreWrite;
    }

    @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
    public synchronized Object remove(Object obj) {
        Object objPreWrite;
        objPreWrite = preWrite(obj);
        Object objRemove = super.remove(obj);
        if (objRemove != null) {
            objPreWrite = objRemove;
        }
        return objPreWrite;
    }

    @Override // java.util.Properties
    public Object setProperty(String str, String str2) {
        return put(str, str2);
    }

    @Override // java.util.Properties
    public String getProperty(String str, String str2) {
        String property = getProperty(str);
        return property == null ? str2 : property;
    }
}

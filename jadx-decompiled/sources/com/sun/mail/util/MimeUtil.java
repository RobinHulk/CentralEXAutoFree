package com.sun.mail.util;

import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
import javax.mail.internet.MimePart;

/* JADX INFO: loaded from: classes.dex */
public class MimeUtil {
    private static final Method cleanContentType;

    static {
        Class<?> cls;
        Method method = null;
        try {
            try {
                String property = System.getProperty("mail.mime.contenttypehandler");
                if (property != null) {
                    ClassLoader contextClassLoader = getContextClassLoader();
                    if (contextClassLoader != null) {
                        try {
                            cls = Class.forName(property, false, contextClassLoader);
                        } catch (ClassNotFoundException unused) {
                            cls = null;
                        }
                    } else {
                        cls = null;
                    }
                    if (cls == null) {
                        cls = Class.forName(property);
                    }
                    method = cls.getMethod("cleanContentType", MimePart.class, String.class);
                }
            } catch (ClassNotFoundException | NoSuchMethodException | RuntimeException unused2) {
            }
        } finally {
            cleanContentType = null;
        }
    }

    private MimeUtil() {
    }

    public static String cleanContentType(MimePart mimePart, String str) {
        Method method = cleanContentType;
        if (method != null) {
            try {
                return (String) method.invoke(null, mimePart, str);
            } catch (Exception unused) {
            }
        }
        return str;
    }

    private static ClassLoader getContextClassLoader() {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() { // from class: com.sun.mail.util.MimeUtil.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                try {
                    return Thread.currentThread().getContextClassLoader();
                } catch (SecurityException unused) {
                    return null;
                }
            }
        });
    }
}

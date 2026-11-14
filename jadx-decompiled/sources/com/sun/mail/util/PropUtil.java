package com.sun.mail.util;

import java.util.Properties;
import javax.mail.Session;

/* JADX INFO: loaded from: classes.dex */
public class PropUtil {
    private PropUtil() {
    }

    private static boolean getBoolean(Object obj, boolean z2) {
        if (obj == null) {
            return z2;
        }
        if (obj instanceof String) {
            return z2 ? !((String) obj).equalsIgnoreCase("false") : ((String) obj).equalsIgnoreCase("true");
        }
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z2;
    }

    public static boolean getBooleanProperty(Properties properties, String str, boolean z2) {
        return getBoolean(getProp(properties, str), z2);
    }

    @Deprecated
    public static boolean getBooleanSessionProperty(Session session, String str, boolean z2) {
        return getBoolean(getProp(session.getProperties(), str), z2);
    }

    public static boolean getBooleanSystemProperty(String str, boolean z2) {
        try {
            try {
                return getBoolean(getProp(System.getProperties(), str), z2);
            } catch (SecurityException unused) {
                return z2;
            }
        } catch (SecurityException unused2) {
            String property = System.getProperty(str);
            if (property == null) {
                return z2;
            }
            return z2 ? !property.equalsIgnoreCase("false") : property.equalsIgnoreCase("true");
        }
    }

    private static int getInt(Object obj, int i2) {
        if (obj == null) {
            return i2;
        }
        if (obj instanceof String) {
            try {
                String str = (String) obj;
                return str.startsWith("0x") ? Integer.parseInt(str.substring(2), 16) : Integer.parseInt(str);
            } catch (NumberFormatException unused) {
            }
        }
        return obj instanceof Integer ? ((Integer) obj).intValue() : i2;
    }

    public static int getIntProperty(Properties properties, String str, int i2) {
        return getInt(getProp(properties, str), i2);
    }

    @Deprecated
    public static int getIntSessionProperty(Session session, String str, int i2) {
        return getInt(getProp(session.getProperties(), str), i2);
    }

    private static Object getProp(Properties properties, String str) {
        Object obj = properties.get(str);
        return obj != null ? obj : properties.getProperty(str);
    }
}

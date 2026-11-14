package com.sun.mail.util.logging;

import M.d0;
import java.util.Date;
import java.util.Formattable;
import java.util.Locale;
import java.util.ResourceBundle;
import java.util.logging.Formatter;
import java.util.logging.LogRecord;
import javax.mail.UIDFolder;

/* JADX INFO: loaded from: classes.dex */
public class CompactFormatter extends Formatter {
    private final String fmt;

    public class Alternate implements Formattable {
        private final String left;
        private final String right;

        public Alternate(String str, String str2) {
            this.left = String.valueOf(str);
            this.right = String.valueOf(str2);
        }

        private int minCodePointCount(String str, int i2) {
            int length = str.length();
            return length - i2 >= i2 ? i2 : Math.min(str.codePointCount(0, length), i2);
        }

        private String pad(int i2, String str, int i3) {
            StringBuilder sb = new StringBuilder(Math.max(str.length() + i3, i3));
            int i4 = 0;
            if ((i2 & 1) == 1) {
                while (i4 < i3) {
                    sb.append(' ');
                    i4++;
                }
                sb.append(str);
            } else {
                sb.append(str);
                while (i4 < i3) {
                    sb.append(' ');
                    i4++;
                }
            }
            return sb.toString();
        }

        @Override // java.util.Formattable
        public void formatTo(java.util.Formatter formatter, int i2, int i3, int i4) {
            int iMinCodePointCount;
            int iMinCodePointCount2;
            String strPad = this.left;
            String strPad2 = this.right;
            if ((i2 & 2) == 2) {
                strPad = strPad.toUpperCase(formatter.locale());
                strPad2 = strPad2.toUpperCase(formatter.locale());
            }
            if ((i2 & 4) == 4) {
                strPad = CompactFormatter.this.toAlternate(strPad);
                strPad2 = CompactFormatter.this.toAlternate(strPad2);
            }
            if (i4 >= 0) {
                iMinCodePointCount = minCodePointCount(strPad, i4);
                int iMinCodePointCount3 = minCodePointCount(strPad2, i4);
                if (iMinCodePointCount > (i4 >> 1)) {
                    iMinCodePointCount = Math.max(iMinCodePointCount - iMinCodePointCount3, iMinCodePointCount >> 1);
                }
                iMinCodePointCount2 = Math.min(i4 - iMinCodePointCount, iMinCodePointCount3);
                strPad = strPad.substring(0, strPad.offsetByCodePoints(0, iMinCodePointCount));
                strPad2 = strPad2.substring(0, strPad2.offsetByCodePoints(0, iMinCodePointCount2));
            } else {
                iMinCodePointCount = 0;
                iMinCodePointCount2 = 0;
            }
            if (i3 > 0) {
                if (i4 < 0) {
                    iMinCodePointCount = minCodePointCount(strPad, i3);
                    iMinCodePointCount2 = minCodePointCount(strPad2, i3);
                }
                int i5 = i3 >> 1;
                if (iMinCodePointCount < i5) {
                    strPad = pad(i2, strPad, i5 - iMinCodePointCount);
                }
                if (iMinCodePointCount2 < i5) {
                    strPad2 = pad(i2, strPad2, i5 - iMinCodePointCount2);
                }
            }
            formatter.format(strPad, new Object[0]);
            if (!strPad.isEmpty() && !strPad2.isEmpty()) {
                formatter.format("|", new Object[0]);
            }
            formatter.format(strPad2, new Object[0]);
        }
    }

    static {
        loadDeclaredClasses();
    }

    public CompactFormatter() {
        this.fmt = initFormat(getClass().getName());
    }

    private boolean defaultIgnore(StackTraceElement stackTraceElement) {
        return isSynthetic(stackTraceElement) || isStaticUtility(stackTraceElement) || isReflection(stackTraceElement);
    }

    private String findAndFormat(StackTraceElement[] stackTraceElementArr) {
        String stackTraceElement;
        int length = stackTraceElementArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                stackTraceElement = "";
                break;
            }
            StackTraceElement stackTraceElement2 = stackTraceElementArr[i2];
            if (!ignore(stackTraceElement2)) {
                stackTraceElement = formatStackTraceElement(stackTraceElement2);
                break;
            }
            i2++;
        }
        if (!isNullOrSpaces(stackTraceElement)) {
            return stackTraceElement;
        }
        for (StackTraceElement stackTraceElement3 : stackTraceElementArr) {
            if (!defaultIgnore(stackTraceElement3)) {
                return formatStackTraceElement(stackTraceElement3);
            }
        }
        return stackTraceElement;
    }

    private String formatStackTraceElement(StackTraceElement stackTraceElement) {
        String strReplace = stackTraceElement.toString().replace(stackTraceElement.getClassName(), simpleClassName(stackTraceElement.getClassName()));
        String strSimpleFileName = simpleFileName(stackTraceElement.getFileName());
        return (strSimpleFileName == null || !strReplace.startsWith(strSimpleFileName)) ? strReplace : strReplace.replace(stackTraceElement.getFileName(), "");
    }

    private Comparable<?> formatZonedDateTime(LogRecord logRecord) {
        Comparable<?> zonedDateTime = LogManagerProperties.getZonedDateTime(logRecord);
        return zonedDateTime == null ? new Date(logRecord.getMillis()) : zonedDateTime;
    }

    private String initFormat(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".format"));
        return isNullOrSpaces(strFromLogManager) ? "%7$#.160s%n" : strFromLogManager;
    }

    private static boolean isNullOrSpaces(String str) {
        return str == null || str.trim().isEmpty();
    }

    private boolean isReflection(StackTraceElement stackTraceElement) {
        try {
            return LogManagerProperties.isReflectionClass(stackTraceElement.getClassName());
        } catch (RuntimeException | Exception | LinkageError unused) {
            return stackTraceElement.getClassName().startsWith("java.lang.reflect.") || stackTraceElement.getClassName().startsWith("sun.reflect.");
        }
    }

    private boolean isStaticUtility(StackTraceElement stackTraceElement) {
        try {
            return LogManagerProperties.isStaticUtilityClass(stackTraceElement.getClassName());
        } catch (RuntimeException | Exception | LinkageError unused) {
            String className = stackTraceElement.getClassName();
            return (className.endsWith("s") && !className.endsWith("es")) || className.contains("Util") || className.endsWith("Throwables");
        }
    }

    private boolean isSynthetic(StackTraceElement stackTraceElement) {
        return stackTraceElement.getMethodName().indexOf(36) > -1;
    }

    private boolean isUnknown(StackTraceElement stackTraceElement) {
        return stackTraceElement.getLineNumber() < 0;
    }

    private static Class<?>[] loadDeclaredClasses() {
        return new Class[]{Alternate.class};
    }

    private static String replaceClassName(String str, Throwable th) {
        if (!isNullOrSpaces(str)) {
            int i2 = 0;
            while (th != null) {
                Class<?> cls = th.getClass();
                str = str.replace(cls.getName(), simpleClassName(cls));
                i2++;
                if (i2 == 65536) {
                    break;
                }
                th = th.getCause();
            }
        }
        return str;
    }

    private static String simpleClassName(Class<?> cls) {
        try {
            return cls.getSimpleName();
        } catch (InternalError unused) {
            return simpleClassName(cls.getName());
        }
    }

    private static String simpleFileName(String str) {
        int iLastIndexOf;
        return (str == null || (iLastIndexOf = str.lastIndexOf(46)) <= -1) ? str : str.substring(0, iLastIndexOf);
    }

    public Throwable apply(Throwable th) {
        return SeverityComparator.getInstance().apply(th);
    }

    @Override // java.util.logging.Formatter
    public String format(LogRecord logRecord) {
        ResourceBundle resourceBundle = logRecord.getResourceBundle();
        Locale locale = resourceBundle == null ? null : resourceBundle.getLocale();
        String message = formatMessage(logRecord);
        String thrown = formatThrown(logRecord);
        String error = formatError(logRecord);
        Object[] objArr = {formatZonedDateTime(logRecord), formatSource(logRecord), formatLoggerName(logRecord), formatLevel(logRecord), message, thrown, new Alternate(message, thrown), new Alternate(thrown, message), Long.valueOf(logRecord.getSequenceNumber()), formatThreadID(logRecord), error, new Alternate(message, error), new Alternate(error, message), formatBackTrace(logRecord), logRecord.getResourceBundleName(), logRecord.getMessage()};
        return locale == null ? String.format(this.fmt, objArr) : String.format(locale, this.fmt, objArr);
    }

    public String formatBackTrace(LogRecord logRecord) {
        Throwable thrown = logRecord.getThrown();
        if (thrown == null) {
            return "";
        }
        StackTraceElement[] stackTrace = apply(thrown).getStackTrace();
        String strFindAndFormat = findAndFormat(stackTrace);
        if (!isNullOrSpaces(strFindAndFormat)) {
            return strFindAndFormat;
        }
        int i2 = 0;
        while (thrown != null) {
            StackTraceElement[] stackTrace2 = thrown.getStackTrace();
            String strFindAndFormat2 = findAndFormat(stackTrace2);
            if (isNullOrSpaces(strFindAndFormat2)) {
                if (stackTrace.length == 0) {
                    stackTrace = stackTrace2;
                }
                i2++;
                if (i2 != 65536) {
                    thrown = thrown.getCause();
                    strFindAndFormat = strFindAndFormat2;
                }
            }
            strFindAndFormat = strFindAndFormat2;
            break;
        }
        return (!isNullOrSpaces(strFindAndFormat) || stackTrace.length == 0) ? strFindAndFormat : formatStackTraceElement(stackTrace[0]);
    }

    public String formatError(LogRecord logRecord) {
        return formatMessage(logRecord.getThrown());
    }

    public String formatLevel(LogRecord logRecord) {
        return logRecord.getLevel().getLocalizedName();
    }

    public String formatLoggerName(LogRecord logRecord) {
        return simpleClassName(logRecord.getLoggerName());
    }

    @Override // java.util.logging.Formatter
    public String formatMessage(LogRecord logRecord) {
        return replaceClassName(replaceClassName(super.formatMessage(logRecord), logRecord.getThrown()), logRecord.getParameters());
    }

    public String formatSource(LogRecord logRecord) {
        String sourceClassName = logRecord.getSourceClassName();
        if (sourceClassName == null) {
            return simpleClassName(logRecord.getLoggerName());
        }
        if (logRecord.getSourceMethodName() == null) {
            return simpleClassName(sourceClassName);
        }
        return simpleClassName(sourceClassName) + " " + logRecord.getSourceMethodName();
    }

    public Number formatThreadID(LogRecord logRecord) {
        Long longThreadID = LogManagerProperties.getLongThreadID(logRecord);
        return longThreadID == null ? Long.valueOf(((long) logRecord.getThreadID()) & UIDFolder.MAXUID) : longThreadID;
    }

    public String formatThrown(LogRecord logRecord) {
        Throwable thrown = logRecord.getThrown();
        if (thrown == null) {
            return "";
        }
        String backTrace = formatBackTrace(logRecord);
        StringBuilder sb = new StringBuilder();
        sb.append(formatMessage(thrown));
        sb.append(isNullOrSpaces(backTrace) ? "" : d0.e(" ", backTrace));
        return sb.toString();
    }

    public boolean ignore(StackTraceElement stackTraceElement) {
        return isUnknown(stackTraceElement) || defaultIgnore(stackTraceElement);
    }

    public String toAlternate(String str) {
        if (str != null) {
            return str.replaceAll("[\\x00-\\x1F\\x7F]+", "");
        }
        return null;
    }

    private static String simpleClassName(String str) {
        int i2;
        int i3;
        if (str == null) {
            return str;
        }
        int iCharCount = 0;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        while (iCharCount < str.length()) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (!Character.isJavaIdentifierPart(iCodePointAt)) {
                if (iCodePointAt != 46) {
                    if (i4 + 1 != iCharCount) {
                        break;
                    }
                    i4 = i5;
                    break;
                }
                int i7 = i4 + 1;
                if (i7 == iCharCount || i7 == i6) {
                    return str;
                }
                i5 = i4;
                i4 = iCharCount;
            } else if (iCodePointAt == 36) {
                i6 = iCharCount;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        if (i4 <= -1 || (i2 = i4 + 1) >= iCharCount || (i3 = i6 + 1) >= iCharCount) {
            return str;
        }
        if (i3 > i2) {
            i2 = i3;
        }
        return str.substring(i2);
    }

    public CompactFormatter(String str) {
        this.fmt = str == null ? initFormat(getClass().getName()) : str;
    }

    public String formatMessage(Throwable th) {
        String strReplaceClassName;
        if (th != null) {
            Throwable thApply = apply(th);
            String localizedMessage = thApply.getLocalizedMessage();
            String string = thApply.toString();
            String strSimpleClassName = simpleClassName(thApply.getClass());
            if (!isNullOrSpaces(localizedMessage)) {
                if (string.contains(localizedMessage)) {
                    if (!string.startsWith(thApply.getClass().getName()) && !string.startsWith(strSimpleClassName)) {
                        strReplaceClassName = replaceClassName(simpleClassName(string), th);
                    } else {
                        strReplaceClassName = replaceClassName(localizedMessage, th);
                    }
                } else {
                    strReplaceClassName = replaceClassName(simpleClassName(string) + ": " + localizedMessage, th);
                }
            } else {
                strReplaceClassName = replaceClassName(simpleClassName(string), th);
            }
            if (strReplaceClassName.contains(strSimpleClassName)) {
                return strReplaceClassName;
            }
            return strSimpleClassName + ": " + strReplaceClassName;
        }
        return "";
    }

    private static String replaceClassName(String str, Object[] objArr) {
        if (!isNullOrSpaces(str) && objArr != null) {
            for (Object obj : objArr) {
                if (obj != null) {
                    Class<?> cls = obj.getClass();
                    str = str.replace(cls.getName(), simpleClassName(cls));
                }
            }
        }
        return str;
    }
}

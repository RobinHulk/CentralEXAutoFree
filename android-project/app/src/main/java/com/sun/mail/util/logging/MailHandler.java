package com.sun.mail.util.logging;

import com.sun.mail.imap.IMAPStore;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.logging.ErrorManager;
import java.util.logging.Filter;
import java.util.logging.Formatter;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.SimpleFormatter;
import javax.activation.DataHandler;
import javax.activation.FileTypeMap;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessageContext;
import javax.mail.MessagingException;
import javax.mail.Part;
import javax.mail.PasswordAuthentication;
import javax.mail.Service;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.ContentType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimePart;
import javax.mail.internet.MimeUtility;
import javax.mail.util.ByteArrayDataSource;

/* JADX INFO: loaded from: classes.dex */
public class MailHandler extends Handler {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int MIN_HEADER_SIZE = 1024;
    private volatile Filter[] attachmentFilters;
    private Formatter[] attachmentFormatters;
    private Formatter[] attachmentNames;
    private Authenticator auth;
    private int capacity;
    private Comparator<? super LogRecord> comparator;
    private FileTypeMap contentTypes;
    private LogRecord[] data;
    private String encoding;
    private volatile Filter filter;
    private Formatter formatter;
    private boolean isWriting;
    private Properties mailProps;
    private int[] matched;
    private Filter pushFilter;
    private Level pushLevel;
    private volatile boolean sealed;
    private Session session;
    private int size;
    private Formatter subjectFormatter;
    private static final Filter[] EMPTY_FILTERS = new Filter[0];
    private static final Formatter[] EMPTY_FORMATTERS = new Formatter[0];
    private static final int offValue = Level.OFF.intValue();
    private static final PrivilegedAction<Object> MAILHANDLER_LOADER = new GetAndSetContext(MailHandler.class);
    private static final ThreadLocal<Integer> MUTEX = new ThreadLocal<>();
    private static final Integer MUTEX_PUBLISH = -2;
    private static final Integer MUTEX_REPORT = -4;
    private static final Integer MUTEX_LINKAGE = -8;
    private volatile Level logLevel = Level.ALL;
    private volatile ErrorManager errorManager = defaultErrorManager();

    public static final class DefaultAuthenticator extends Authenticator {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final String pass;

        private DefaultAuthenticator(String str) {
            this.pass = str;
        }

        public static Authenticator of(String str) {
            return new DefaultAuthenticator(str);
        }

        @Override // javax.mail.Authenticator
        public final PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(getDefaultUserName(), this.pass);
        }
    }

    public static final class GetAndSetContext implements PrivilegedAction<Object> {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public static final Object NOT_MODIFIED = GetAndSetContext.class;
        private final Object source;

        public GetAndSetContext(Object obj) {
            this.source = obj;
        }

        @Override // java.security.PrivilegedAction
        public final Object run() {
            ClassLoader contextClassLoader;
            Thread threadCurrentThread = Thread.currentThread();
            ClassLoader contextClassLoader2 = threadCurrentThread.getContextClassLoader();
            Object obj = this.source;
            if (obj == null) {
                contextClassLoader = null;
            } else if (obj instanceof ClassLoader) {
                contextClassLoader = (ClassLoader) obj;
            } else if (obj instanceof Class) {
                contextClassLoader = ((Class) obj).getClassLoader();
            } else {
                contextClassLoader = obj instanceof Thread ? ((Thread) obj).getContextClassLoader() : obj.getClass().getClassLoader();
            }
            if (contextClassLoader2 == contextClassLoader) {
                return NOT_MODIFIED;
            }
            threadCurrentThread.setContextClassLoader(contextClassLoader);
            return contextClassLoader2;
        }
    }

    public static final class TailNameFormatter extends Formatter {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final String name;

        private TailNameFormatter(String str) {
            this.name = str;
        }

        public static Formatter of(String str) {
            return new TailNameFormatter(str);
        }

        public final boolean equals(Object obj) {
            return obj instanceof TailNameFormatter ? this.name.equals(((TailNameFormatter) obj).name) : MailHandler.$assertionsDisabled;
        }

        @Override // java.util.logging.Formatter
        public final String format(LogRecord logRecord) {
            return "";
        }

        @Override // java.util.logging.Formatter
        public final String getTail(Handler handler) {
            return this.name;
        }

        public final int hashCode() {
            return this.name.hashCode() + TailNameFormatter.class.hashCode();
        }

        public final String toString() {
            return this.name;
        }
    }

    public MailHandler() {
        init(null);
        this.sealed = true;
        checkAccess();
    }

    private boolean alignAttachmentFilters() {
        int length = this.attachmentFormatters.length;
        int length2 = this.attachmentFilters.length;
        boolean z2 = $assertionsDisabled;
        if (length2 != length) {
            this.attachmentFilters = (Filter[]) Arrays.copyOf(this.attachmentFilters, length, Filter[].class);
            clearMatches(length2);
            if (length2 != 0) {
                z2 = true;
            }
            Filter filter = this.filter;
            if (filter != null) {
                while (length2 < length) {
                    this.attachmentFilters[length2] = filter;
                    length2++;
                }
            }
        }
        if (length == 0) {
            this.attachmentFilters = emptyFilterArray();
        }
        return z2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    private boolean alignAttachmentNames() {
        boolean z2;
        int length = this.attachmentFormatters.length;
        Formatter[] formatterArr = this.attachmentNames;
        int length2 = formatterArr.length;
        if (length2 != length) {
            this.attachmentNames = (Formatter[]) Arrays.copyOf(formatterArr, length, Formatter[].class);
            if (length2 != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (length == 0) {
            this.attachmentNames = emptyFormatterArray();
        } else {
            for (int i2 = 0; i2 < length; i2++) {
                Formatter[] formatterArr2 = this.attachmentNames;
                if (formatterArr2[i2] == null) {
                    formatterArr2[i2] = TailNameFormatter.of(toString(this.attachmentFormatters[i2]));
                }
            }
        }
        return z2;
    }

    private boolean allowRestrictedHeaders() {
        return LogManagerProperties.hasLogManager();
    }

    private void appendContentLang(MimePart mimePart, Locale locale) {
        try {
            String languageTag = LogManagerProperties.toLanguageTag(locale);
            if (languageTag.length() != 0) {
                String header = mimePart.getHeader("Content-Language", null);
                if (isEmpty(header)) {
                    mimePart.setHeader("Content-Language", languageTag);
                    return;
                }
                if (header.equalsIgnoreCase(languageTag)) {
                    return;
                }
                String strConcat = ",".concat(languageTag);
                int iIndexOf = 0;
                do {
                    iIndexOf = header.indexOf(strConcat, iIndexOf);
                    if (iIndexOf <= -1 || (iIndexOf = iIndexOf + strConcat.length()) == header.length()) {
                        break;
                    }
                } while (header.charAt(iIndexOf) != ',');
                if (iIndexOf < 0) {
                    int iLastIndexOf = header.lastIndexOf("\r\n\t");
                    mimePart.setHeader("Content-Language", (iLastIndexOf < 0 ? header.length() + 20 : (header.length() - iLastIndexOf) + 8) + strConcat.length() > 76 ? header.concat("\r\n\t".concat(strConcat)) : header.concat(strConcat));
                }
            }
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private void appendFileName(Part part, String str) {
        if (str == null) {
            reportNullError(5);
        } else if (str.length() > 0) {
            appendFileName0(part, str);
        }
    }

    private void appendFileName0(Part part, String str) {
        try {
            String strReplaceAll = str.replaceAll("[\\x00-\\x1F\\x7F]+", "");
            String fileName = part.getFileName();
            if (fileName != null) {
                strReplaceAll = fileName.concat(strReplaceAll);
            }
            part.setFileName(strReplaceAll);
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private void appendSubject(Message message, String str) {
        if (str == null) {
            reportNullError(5);
        } else if (str.length() > 0) {
            appendSubject0(message, str);
        }
    }

    private void appendSubject0(Message message, String str) {
        try {
            String strReplaceAll = str.replaceAll("[\\x00-\\x1F\\x7F]+", "");
            String encodingName = getEncodingName();
            String subject = message.getSubject();
            MimeMessage mimeMessage = (MimeMessage) message;
            if (subject != null) {
                strReplaceAll = subject.concat(strReplaceAll);
            }
            mimeMessage.setSubject(strReplaceAll, MimeUtility.mimeCharset(encodingName));
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private static String atIndexMsg(int i2) {
        return "At index: " + i2 + '.';
    }

    private static MessagingException attach(MessagingException messagingException, Exception exc) {
        if (exc != null && !messagingException.setNextException(exc)) {
            if (exc instanceof MessagingException) {
                MessagingException messagingException2 = (MessagingException) exc;
                if (messagingException2.setNextException(messagingException)) {
                    return messagingException2;
                }
            }
            if (exc != messagingException) {
                messagingException.addSuppressed(exc);
            }
        }
        return messagingException;
    }

    private static RuntimeException attachmentMismatch(String str) {
        return new IndexOutOfBoundsException(str);
    }

    private void checkAccess() {
        if (this.sealed) {
            LogManagerProperties.checkLogManagerAccess();
        }
    }

    private void clearMatches(int i2) {
        for (int i3 = 0; i3 < this.size; i3++) {
            int[] iArr = this.matched;
            if (iArr[i3] >= i2) {
                iArr[i3] = MUTEX_PUBLISH.intValue();
            }
        }
    }

    private String contentWithEncoding(String str, String str2) {
        try {
            ContentType contentType = new ContentType(str);
            contentType.setParameter("charset", MimeUtility.mimeCharset(str2));
            String string = contentType.toString();
            return !isEmpty(string) ? string : str;
        } catch (MessagingException e2) {
            reportError(str, e2, 5);
            return str;
        }
    }

    private MimeBodyPart createBodyPart() throws MessagingException {
        MimeBodyPart mimeBodyPart = new MimeBodyPart();
        mimeBodyPart.setDisposition(Part.INLINE);
        mimeBodyPart.setDescription(descriptionFrom(getFormatter(), getFilter(), this.subjectFormatter));
        setAcceptLang(mimeBodyPart);
        return mimeBodyPart;
    }

    private static Formatter createSimpleFormatter() {
        return (Formatter) Formatter.class.cast(new SimpleFormatter());
    }

    private ErrorManager defaultErrorManager() {
        ErrorManager errorManager;
        try {
            errorManager = super.getErrorManager();
        } catch (LinkageError | RuntimeException unused) {
            errorManager = null;
        }
        return errorManager == null ? new ErrorManager() : errorManager;
    }

    private String descriptionFrom(Comparator<?> comparator, Level level, Filter filter) {
        StringBuilder sb = new StringBuilder("Sorted using ");
        sb.append(comparator == null ? "no comparator" : comparator.getClass().getName());
        sb.append(", pushed when ");
        sb.append(level.getName());
        sb.append(", and ");
        sb.append(filter == null ? "no push filter" : filter.getClass().getName());
        sb.append('.');
        return sb.toString();
    }

    private static Filter[] emptyFilterArray() {
        return EMPTY_FILTERS;
    }

    private static Formatter[] emptyFormatterArray() {
        return EMPTY_FORMATTERS;
    }

    private void envelopeFor(Message message, boolean z2) {
        setAcceptLang(message);
        setFrom(message);
        Message.RecipientType recipientType = Message.RecipientType.TO;
        if (!setRecipient(message, "mail.to", recipientType)) {
            setDefaultRecipient(message, recipientType);
        }
        setRecipient(message, "mail.cc", Message.RecipientType.CC);
        setRecipient(message, "mail.bcc", Message.RecipientType.BCC);
        setReplyTo(message);
        setSender(message);
        setMailer(message);
        setAutoSubmitted(message);
        if (z2) {
            setPriority(message);
        }
        try {
            message.setSentDate(new Date());
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private String format(Formatter formatter, LogRecord logRecord) {
        try {
            return formatter.format(logRecord);
        } catch (RuntimeException e2) {
            reportError(e2.getMessage(), e2, 5);
            return "";
        }
    }

    private Object getAndSetContextClassLoader(Object obj) {
        if (obj != GetAndSetContext.NOT_MODIFIED) {
            try {
                return AccessController.doPrivileged(obj instanceof PrivilegedAction ? (PrivilegedAction) obj : new GetAndSetContext(obj));
            } catch (SecurityException unused) {
            }
        }
        return GetAndSetContext.NOT_MODIFIED;
    }

    private String getClassId(Formatter formatter) {
        return formatter instanceof TailNameFormatter ? String.class.getName() : formatter.getClass().getName();
    }

    private String getContentType(String str) {
        String contentType = this.contentTypes.getContentType(str);
        if ("application/octet-stream".equalsIgnoreCase(contentType)) {
            return null;
        }
        return contentType;
    }

    private String getEncodingName() {
        String encoding = getEncoding();
        return encoding == null ? MimeUtility.getDefaultJavaCharset() : encoding;
    }

    private String getLocalHost(Service service) {
        try {
            return LogManagerProperties.getLocalHost(service);
        } catch (Exception e2) {
            reportError(service.toString(), e2, 4);
            return null;
        } catch (LinkageError | NoSuchMethodException | SecurityException unused) {
            return null;
        }
    }

    private int getMatchedPart() {
        Integer num = MUTEX.get();
        if (num == null || num.intValue() >= readOnlyAttachmentFilters().length) {
            num = MUTEX_PUBLISH;
        }
        return num.intValue();
    }

    private Session getSession(Message message) {
        message.getClass();
        return new MessageContext(message).getSession();
    }

    private void grow() {
        LogRecord[] logRecordArr = this.data;
        int length = logRecordArr.length;
        int i2 = (length >> 1) + length + 1;
        int i3 = this.capacity;
        if (i2 > i3 || i2 < length) {
            i2 = i3;
        }
        this.data = (LogRecord[]) Arrays.copyOf(logRecordArr, i2, LogRecord[].class);
        this.matched = Arrays.copyOf(this.matched, i2);
    }

    private static boolean hasValue(String str) {
        if (isEmpty(str) || "null".equalsIgnoreCase(str)) {
            return $assertionsDisabled;
        }
        return true;
    }

    private String head(Formatter formatter) {
        try {
            return formatter.getHead(this);
        } catch (RuntimeException e2) {
            reportError(e2.getMessage(), e2, 5);
            return "";
        }
    }

    private synchronized void init(Properties properties) {
        try {
            String name = getClass().getName();
            this.mailProps = new Properties();
            Object andSetContextClassLoader = getAndSetContextClassLoader(MAILHANDLER_LOADER);
            try {
                this.contentTypes = FileTypeMap.getDefaultFileTypeMap();
                getAndSetContextClassLoader(andSetContextClassLoader);
                initErrorManager(name);
                initLevel(name);
                initFilter(name);
                initCapacity(name);
                initAuthenticator(name);
                initEncoding(name);
                initFormatter(name);
                initComparator(name);
                initPushLevel(name);
                initPushFilter(name);
                initSubject(name);
                initAttachmentFormaters(name);
                initAttachmentFilters(name);
                initAttachmentNames(name);
                if (properties == null && LogManagerProperties.fromLogManager(name.concat(".verify")) != null) {
                    verifySettings(initSession());
                }
                intern();
            } catch (Throwable th) {
                getAndSetContextClassLoader(andSetContextClassLoader);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void initAttachmentFilters(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".attachment.filters"));
        if (isEmpty(strFromLogManager)) {
            this.attachmentFilters = emptyFilterArray();
            alignAttachmentFilters();
            return;
        }
        String[] strArrSplit = strFromLogManager.split(",");
        int length = strArrSplit.length;
        Filter[] filterArr = new Filter[length];
        for (int i2 = 0; i2 < length; i2++) {
            String strTrim = strArrSplit[i2].trim();
            strArrSplit[i2] = strTrim;
            if (!"null".equalsIgnoreCase(strTrim)) {
                try {
                    filterArr[i2] = LogManagerProperties.newFilter(strArrSplit[i2]);
                } catch (SecurityException e2) {
                    throw e2;
                } catch (Exception e3) {
                    reportError(e3.getMessage(), e3, 4);
                }
            }
        }
        this.attachmentFilters = filterArr;
        if (alignAttachmentFilters()) {
            reportError("Attachment filters.", attachmentMismatch("Length mismatch."), 4);
        }
    }

    private void initAttachmentFormaters(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".attachment.formatters"));
        if (isEmpty(strFromLogManager)) {
            this.attachmentFormatters = emptyFormatterArray();
            return;
        }
        String[] strArrSplit = strFromLogManager.split(",");
        Formatter[] formatterArrEmptyFormatterArray = strArrSplit.length == 0 ? emptyFormatterArray() : new Formatter[strArrSplit.length];
        for (int i2 = 0; i2 < formatterArrEmptyFormatterArray.length; i2++) {
            String strTrim = strArrSplit[i2].trim();
            strArrSplit[i2] = strTrim;
            if ("null".equalsIgnoreCase(strTrim)) {
                reportError("Attachment formatter.", new NullPointerException(atIndexMsg(i2)), 4);
                formatterArrEmptyFormatterArray[i2] = createSimpleFormatter();
            } else {
                try {
                    Formatter formatterNewFormatter = LogManagerProperties.newFormatter(strArrSplit[i2]);
                    formatterArrEmptyFormatterArray[i2] = formatterNewFormatter;
                    if (formatterNewFormatter instanceof TailNameFormatter) {
                        reportError("Attachment formatter.", new ClassNotFoundException(formatterArrEmptyFormatterArray[i2].toString()), 4);
                        formatterArrEmptyFormatterArray[i2] = createSimpleFormatter();
                    }
                } catch (SecurityException e2) {
                    throw e2;
                } catch (Exception e3) {
                    reportError(e3.getMessage(), e3, 4);
                    formatterArrEmptyFormatterArray[i2] = createSimpleFormatter();
                }
            }
        }
        this.attachmentFormatters = formatterArrEmptyFormatterArray;
    }

    private void initAttachmentNames(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".attachment.names"));
        if (isEmpty(strFromLogManager)) {
            this.attachmentNames = emptyFormatterArray();
            alignAttachmentNames();
            return;
        }
        String[] strArrSplit = strFromLogManager.split(",");
        int length = strArrSplit.length;
        Formatter[] formatterArr = new Formatter[length];
        for (int i2 = 0; i2 < length; i2++) {
            String strTrim = strArrSplit[i2].trim();
            strArrSplit[i2] = strTrim;
            if ("null".equalsIgnoreCase(strTrim)) {
                reportError("Attachment names.", new NullPointerException(atIndexMsg(i2)), 4);
            } else {
                try {
                    try {
                        formatterArr[i2] = LogManagerProperties.newFormatter(strArrSplit[i2]);
                    } catch (ClassCastException | ClassNotFoundException unused) {
                        formatterArr[i2] = TailNameFormatter.of(strArrSplit[i2]);
                    }
                } catch (SecurityException e2) {
                    throw e2;
                } catch (Exception e3) {
                    reportError(e3.getMessage(), e3, 4);
                }
            }
        }
        this.attachmentNames = formatterArr;
        if (alignAttachmentNames()) {
            reportError("Attachment names.", attachmentMismatch("Length mismatch."), 4);
        }
    }

    private void initAuthenticator(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".authenticator"));
        if (strFromLogManager == null || "null".equalsIgnoreCase(strFromLogManager)) {
            return;
        }
        if (strFromLogManager.length() == 0) {
            this.auth = DefaultAuthenticator.of(strFromLogManager);
            return;
        }
        try {
            this.auth = (Authenticator) LogManagerProperties.newObjectFrom(strFromLogManager, Authenticator.class);
        } catch (ClassCastException | ClassNotFoundException unused) {
            this.auth = DefaultAuthenticator.of(strFromLogManager);
        } catch (SecurityException e2) {
            throw e2;
        } catch (Exception e3) {
            reportError(e3.getMessage(), e3, 4);
        }
    }

    private void initCapacity(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".capacity"));
            if (strFromLogManager != null) {
                setCapacity0(Integer.parseInt(strFromLogManager));
            } else {
                setCapacity0(IMAPStore.RESPONSE);
            }
        } catch (SecurityException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            reportError(e3.getMessage(), e3, 4);
        }
        if (this.capacity <= 0) {
            this.capacity = IMAPStore.RESPONSE;
        }
        LogRecord[] logRecordArr = new LogRecord[1];
        this.data = logRecordArr;
        this.matched = new int[logRecordArr.length];
    }

    private void initComparator(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".comparator"));
            String strFromLogManager2 = LogManagerProperties.fromLogManager(str.concat(".comparator.reverse"));
            if (!hasValue(strFromLogManager)) {
                if (!isEmpty(strFromLogManager2)) {
                    throw new IllegalArgumentException("No comparator to reverse.");
                }
            } else {
                this.comparator = LogManagerProperties.newComparator(strFromLogManager);
                if (Boolean.parseBoolean(strFromLogManager2)) {
                    this.comparator = LogManagerProperties.reverseOrder(this.comparator);
                }
            }
        } catch (SecurityException e2) {
            throw e2;
        } catch (Exception e3) {
            reportError(e3.getMessage(), e3, 4);
        }
    }

    private void initEncoding(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".encoding"));
            if (strFromLogManager != null) {
                setEncoding0(strFromLogManager);
            }
        } catch (UnsupportedEncodingException e2) {
            e = e2;
            reportError(e.getMessage(), e, 4);
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            e = e4;
            reportError(e.getMessage(), e, 4);
        }
    }

    private void initErrorManager(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".errorManager"));
            if (strFromLogManager != null) {
                setErrorManager0(LogManagerProperties.newErrorManager(strFromLogManager));
            }
        } catch (SecurityException e2) {
            throw e2;
        } catch (Exception e3) {
            reportError(e3.getMessage(), e3, 4);
        }
    }

    private void initFilter(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".filter"));
            if (hasValue(strFromLogManager)) {
                this.filter = LogManagerProperties.newFilter(strFromLogManager);
            }
        } catch (SecurityException e2) {
            throw e2;
        } catch (Exception e3) {
            reportError(e3.getMessage(), e3, 4);
        }
    }

    private void initFormatter(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".formatter"));
            if (hasValue(strFromLogManager)) {
                Formatter formatterNewFormatter = LogManagerProperties.newFormatter(strFromLogManager);
                if (formatterNewFormatter instanceof TailNameFormatter) {
                    this.formatter = createSimpleFormatter();
                } else {
                    this.formatter = formatterNewFormatter;
                }
            } else {
                this.formatter = createSimpleFormatter();
            }
        } catch (SecurityException e2) {
            throw e2;
        } catch (Exception e3) {
            reportError(e3.getMessage(), e3, 4);
            this.formatter = createSimpleFormatter();
        }
    }

    private void initLevel(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".level"));
            if (strFromLogManager != null) {
                this.logLevel = Level.parse(strFromLogManager);
            } else {
                this.logLevel = Level.WARNING;
            }
        } catch (SecurityException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            reportError(e3.getMessage(), e3, 4);
            this.logLevel = Level.WARNING;
        }
    }

    private void initPushFilter(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".pushFilter"));
            if (hasValue(strFromLogManager)) {
                this.pushFilter = LogManagerProperties.newFilter(strFromLogManager);
            }
        } catch (SecurityException e2) {
            throw e2;
        } catch (Exception e3) {
            reportError(e3.getMessage(), e3, 4);
        }
    }

    private void initPushLevel(String str) {
        try {
            String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".pushLevel"));
            if (strFromLogManager != null) {
                this.pushLevel = Level.parse(strFromLogManager);
            }
        } catch (RuntimeException e2) {
            reportError(e2.getMessage(), e2, 4);
        }
        if (this.pushLevel == null) {
            this.pushLevel = Level.OFF;
        }
    }

    private Session initSession() {
        Session session = Session.getInstance(new LogManagerProperties(this.mailProps, getClass().getName()), this.auth);
        this.session = session;
        return session;
    }

    private void initSubject(String str) {
        String strFromLogManager = LogManagerProperties.fromLogManager(str.concat(".subject"));
        if (strFromLogManager == null) {
            strFromLogManager = "com.sun.mail.util.logging.CollectorFormatter";
        }
        if (!hasValue(strFromLogManager)) {
            this.subjectFormatter = TailNameFormatter.of(strFromLogManager);
            return;
        }
        try {
            this.subjectFormatter = LogManagerProperties.newFormatter(strFromLogManager);
        } catch (ClassCastException | ClassNotFoundException unused) {
            this.subjectFormatter = TailNameFormatter.of(strFromLogManager);
        } catch (SecurityException e2) {
            throw e2;
        } catch (Exception e3) {
            this.subjectFormatter = TailNameFormatter.of(strFromLogManager);
            reportError(e3.getMessage(), e3, 4);
        }
    }

    private void intern() {
        int i2;
        try {
            HashMap map = new HashMap();
            try {
                intern(map, this.errorManager);
            } catch (SecurityException e2) {
                reportError(e2.getMessage(), e2, 4);
            }
            try {
                Filter filter = this.filter;
                Object objIntern = intern(map, filter);
                if (objIntern != filter && (objIntern instanceof Filter)) {
                    this.filter = (Filter) objIntern;
                }
                Formatter formatter = this.formatter;
                Object objIntern2 = intern(map, formatter);
                if (objIntern2 != formatter && (objIntern2 instanceof Formatter)) {
                    this.formatter = (Formatter) objIntern2;
                }
                while (true) {
                    Formatter[] formatterArr = this.attachmentFormatters;
                    if (i2 >= formatterArr.length) {
                        return;
                    }
                    Formatter formatter2 = formatterArr[i2];
                    Object objIntern3 = intern(map, formatter2);
                    if (objIntern3 != formatter2 && (objIntern3 instanceof Formatter)) {
                        this.attachmentFormatters[i2] = (Formatter) objIntern3;
                    }
                    Filter filter2 = this.attachmentFilters[i2];
                    Object objIntern4 = intern(map, filter2);
                    if (objIntern4 != filter2 && (objIntern4 instanceof Filter)) {
                        this.attachmentFilters[i2] = (Filter) objIntern4;
                    }
                    Formatter formatter3 = this.attachmentNames[i2];
                    Object objIntern5 = intern(map, formatter3);
                    if (objIntern5 != formatter3 && (objIntern5 instanceof Formatter)) {
                        this.attachmentNames[i2] = (Formatter) objIntern5;
                    }
                    i2++;
                }
            } catch (SecurityException e3) {
                reportError(e3.getMessage(), e3, 4);
            }
            Formatter formatter4 = this.subjectFormatter;
            Object objIntern6 = intern(map, formatter4);
            if (objIntern6 != formatter4 && (objIntern6 instanceof Formatter)) {
                this.subjectFormatter = (Formatter) objIntern6;
            }
            Filter filter3 = this.pushFilter;
            Object objIntern7 = intern(map, filter3);
            if (objIntern7 != filter3 && (objIntern7 instanceof Filter)) {
                this.pushFilter = (Filter) objIntern7;
            }
            i2 = 0;
        } catch (Exception e4) {
            reportError(e4.getMessage(), e4, 4);
        } catch (LinkageError e5) {
            reportError(e5.getMessage(), new InvocationTargetException(e5), 4);
        }
    }

    private boolean isAttachmentLoggable(LogRecord logRecord) {
        Filter[] onlyAttachmentFilters = readOnlyAttachmentFilters();
        for (int i2 = 0; i2 < onlyAttachmentFilters.length; i2++) {
            Filter filter = onlyAttachmentFilters[i2];
            if (filter == null || filter.isLoggable(logRecord)) {
                setMatchedPart(i2);
                return true;
            }
        }
        return $assertionsDisabled;
    }

    private static boolean isEmpty(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return true;
        }
        return $assertionsDisabled;
    }

    private boolean isPushable(LogRecord logRecord) {
        int iIntValue = getPushLevel().intValue();
        if (iIntValue == offValue || logRecord.getLevel().intValue() < iIntValue) {
            return $assertionsDisabled;
        }
        Filter pushFilter = getPushFilter();
        if (pushFilter == null) {
            return true;
        }
        int matchedPart = getMatchedPart();
        if (!(matchedPart == -1 && getFilter() == pushFilter) && (matchedPart < 0 || this.attachmentFilters[matchedPart] != pushFilter)) {
            return pushFilter.isLoggable(logRecord);
        }
        return true;
    }

    private Locale localeFor(LogRecord logRecord) {
        ResourceBundle resourceBundle = logRecord.getResourceBundle();
        if (resourceBundle == null) {
            return null;
        }
        Locale locale = resourceBundle.getLocale();
        return (locale == null || isEmpty(locale.getLanguage())) ? Locale.getDefault() : locale;
    }

    private void publish0(LogRecord logRecord) {
        Message messageWriteLogRecords;
        boolean zIsPushable;
        synchronized (this) {
            try {
                int i2 = this.size;
                if (i2 == this.data.length && i2 < this.capacity) {
                    grow();
                }
                int i3 = this.size;
                messageWriteLogRecords = null;
                if (i3 < this.data.length) {
                    this.matched[i3] = getMatchedPart();
                    LogRecord[] logRecordArr = this.data;
                    int i4 = this.size;
                    logRecordArr[i4] = logRecord;
                    this.size = i4 + 1;
                    zIsPushable = isPushable(logRecord);
                    if (zIsPushable || this.size >= this.capacity) {
                        messageWriteLogRecords = writeLogRecords(1);
                    }
                } else {
                    zIsPushable = $assertionsDisabled;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (messageWriteLogRecords != null) {
            send(messageWriteLogRecords, zIsPushable, 1);
        }
    }

    private Filter[] readOnlyAttachmentFilters() {
        return this.attachmentFilters;
    }

    private void releaseMutex() {
        MUTEX.remove();
    }

    private void reportFilterError(LogRecord logRecord) {
        Formatter formatterCreateSimpleFormatter = createSimpleFormatter();
        reportError("Log record " + logRecord.getSequenceNumber() + " was filtered from all message parts.  " + head(formatterCreateSimpleFormatter) + format(formatterCreateSimpleFormatter, logRecord) + tail(formatterCreateSimpleFormatter, ""), new IllegalArgumentException(getFilter() + ", " + Arrays.asList(readOnlyAttachmentFilters())), 5);
    }

    private void reportLinkageError(Throwable th, int i2) {
        if (th == null) {
            throw new NullPointerException(String.valueOf(i2));
        }
        ThreadLocal<Integer> threadLocal = MUTEX;
        Integer num = threadLocal.get();
        if (num == null || num.intValue() > MUTEX_LINKAGE.intValue()) {
            threadLocal.set(MUTEX_LINKAGE);
            try {
                Thread.currentThread().getUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
                if (num != null) {
                    threadLocal.set(num);
                } else {
                    threadLocal.remove();
                }
            } catch (LinkageError | RuntimeException unused) {
                if (num != null) {
                    MUTEX.set(num);
                } else {
                    MUTEX.remove();
                }
            } catch (Throwable th2) {
                if (num != null) {
                    MUTEX.set(num);
                } else {
                    MUTEX.remove();
                }
                throw th2;
            }
        }
    }

    private void reportNonDiscriminating(Object obj, Object obj2) {
        reportError("Non discriminating equals implementation.", new IllegalArgumentException(obj.getClass().getName() + " should not be equal to " + obj2.getClass().getName()), 4);
    }

    private void reportNonSymmetric(Object obj, Object obj2) {
        reportError("Non symmetric equals implementation.", new IllegalArgumentException(obj.getClass().getName() + " is not equal to " + obj2.getClass().getName()), 4);
    }

    private void reportNullError(int i2) {
        reportError("null", new NullPointerException(), i2);
    }

    private void reportUnPublishedError(LogRecord logRecord) {
        String str;
        ThreadLocal<Integer> threadLocal = MUTEX;
        Integer num = threadLocal.get();
        if (num == null || num.intValue() > MUTEX_REPORT.intValue()) {
            threadLocal.set(MUTEX_REPORT);
            if (logRecord != null) {
                try {
                    Formatter formatterCreateSimpleFormatter = createSimpleFormatter();
                    str = "Log record " + logRecord.getSequenceNumber() + " was not published. " + head(formatterCreateSimpleFormatter) + format(formatterCreateSimpleFormatter, logRecord) + tail(formatterCreateSimpleFormatter, "");
                } finally {
                    if (num != null) {
                        MUTEX.set(num);
                    } else {
                        MUTEX.remove();
                    }
                }
            } else {
                str = null;
            }
            reportError(str, new IllegalStateException("Recursive publish detected by thread " + Thread.currentThread()), 1);
            if (num != null) {
            }
        }
    }

    private void reportUnexpectedSend(MimeMessage mimeMessage, String str, Exception exc) {
        Exception messagingException = new MessagingException("An empty message was sent.", exc);
        setErrorContent(mimeMessage, str, messagingException);
        reportError(mimeMessage, messagingException, 4);
    }

    private void reset() {
        int i2 = this.size;
        LogRecord[] logRecordArr = this.data;
        if (i2 < logRecordArr.length) {
            Arrays.fill(logRecordArr, 0, i2, (Object) null);
        } else {
            Arrays.fill(logRecordArr, (Object) null);
        }
        this.size = 0;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0023 A[Catch: MessagingException -> 0x0006, RuntimeException | MessagingException -> 0x0008, TRY_ENTER, TryCatch #5 {RuntimeException | MessagingException -> 0x0008, blocks: (B:3:0x0002, B:19:0x0023, B:20:0x0026), top: B:23:0x0002 }] */
    private void saveChangesNoContent(Message message, String str) {
        if (message != null) {
            try {
                try {
                    message.saveChanges();
                } catch (NullPointerException e2) {
                    try {
                        if (message.getHeader("Content-Transfer-Encoding") != null) {
                            throw e2;
                        }
                        message.setHeader("Content-Transfer-Encoding", "base64");
                        message.saveChanges();
                    } catch (RuntimeException e3) {
                        e = e3;
                        if (e != e2) {
                            e.addSuppressed(e2);
                        }
                        throw e;
                    } catch (MessagingException e4) {
                        e = e4;
                        if (e != e2) {
                            e.addSuppressed(e2);
                        }
                        throw e;
                    }
                }
            } catch (RuntimeException | MessagingException e5) {
                reportError(str, e5, 5);
            }
        }
    }

    private void send(Message message, boolean z2, int i2) {
        try {
            envelopeFor(message, z2);
            Object andSetContextClassLoader = getAndSetContextClassLoader(MAILHANDLER_LOADER);
            try {
                Transport.send(message);
            } finally {
                getAndSetContextClassLoader(andSetContextClassLoader);
            }
        } catch (RuntimeException e2) {
            reportError(message, e2, i2);
        } catch (Exception e3) {
            reportError(message, e3, i2);
        }
    }

    private void setAcceptLang(Part part) {
        try {
            String languageTag = LogManagerProperties.toLanguageTag(Locale.getDefault());
            if (languageTag.length() != 0) {
                part.setHeader("Accept-Language", languageTag);
            }
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private void setAuthenticator0(Authenticator authenticator) throws Throwable {
        Session sessionUpdateSession;
        checkAccess();
        synchronized (this) {
            if (this.isWriting) {
                throw new IllegalStateException();
            }
            this.auth = authenticator;
            sessionUpdateSession = updateSession();
        }
        verifySettings(sessionUpdateSession);
    }

    private void setAutoSubmitted(Message message) {
        if (allowRestrictedHeaders()) {
            try {
                message.setHeader("auto-submitted", "auto-generated");
            } catch (MessagingException e2) {
                reportError(e2.getMessage(), e2, 5);
            }
        }
    }

    private synchronized void setCapacity0(int i2) {
        try {
            checkAccess();
            if (i2 <= 0) {
                throw new IllegalArgumentException("Capacity must be greater than zero.");
            }
            if (this.isWriting) {
                throw new IllegalStateException();
            }
            if (this.capacity < 0) {
                this.capacity = -i2;
            } else {
                this.capacity = i2;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void setContent(MimePart mimePart, CharSequence charSequence, String str) {
        String encodingName = getEncodingName();
        if (str == null || "text/plain".equalsIgnoreCase(str)) {
            mimePart.setText(charSequence.toString(), MimeUtility.mimeCharset(encodingName));
            return;
        }
        try {
            mimePart.setDataHandler(new DataHandler(new ByteArrayDataSource(charSequence.toString(), contentWithEncoding(str, encodingName))));
        } catch (IOException e2) {
            reportError(e2.getMessage(), e2, 5);
            mimePart.setText(charSequence.toString(), encodingName);
        }
    }

    private void setDefaultFrom(Message message) {
        try {
            message.setFrom();
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private void setDefaultRecipient(Message message, Message.RecipientType recipientType) {
        try {
            InternetAddress localAddress = InternetAddress.getLocalAddress(getSession(message));
            if (localAddress != null) {
                message.setRecipient(recipientType, localAddress);
                return;
            }
            MimeMessage mimeMessage = new MimeMessage(getSession(message));
            mimeMessage.setFrom();
            Address[] from = mimeMessage.getFrom();
            if (from.length <= 0) {
                throw new MessagingException("No local address.");
            }
            message.setRecipients(recipientType, from);
        } catch (RuntimeException e2) {
            e = e2;
            reportError("Unable to compute a default recipient.", e, 5);
        } catch (MessagingException e3) {
            e = e3;
            reportError("Unable to compute a default recipient.", e, 5);
        }
    }

    private void setEncoding0(String str) throws UnsupportedEncodingException {
        if (str != null) {
            try {
                if (!Charset.isSupported(str)) {
                    throw new UnsupportedEncodingException(str);
                }
            } catch (IllegalCharsetNameException unused) {
                throw new UnsupportedEncodingException(str);
            }
        }
        synchronized (this) {
            this.encoding = str;
        }
    }

    private void setErrorContent(MimeMessage mimeMessage, String str, Throwable th) {
        MimeBodyPart mimeBodyPartCreateBodyPart;
        String strDescriptionFrom;
        String classId;
        try {
            synchronized (this) {
                mimeBodyPartCreateBodyPart = createBodyPart();
                strDescriptionFrom = descriptionFrom(this.comparator, this.pushLevel, this.pushFilter);
                classId = getClassId(this.subjectFormatter);
            }
            StringBuilder sb = new StringBuilder("Formatted using ");
            sb.append(th == null ? Throwable.class.getName() : th.getClass().getName());
            sb.append(", filtered with ");
            sb.append(str);
            sb.append(", and named by ");
            sb.append(classId);
            sb.append('.');
            mimeBodyPartCreateBodyPart.setDescription(sb.toString());
            setContent(mimeBodyPartCreateBodyPart, toMsgString(th), "text/plain");
            MimeMultipart mimeMultipart = new MimeMultipart();
            mimeMultipart.addBodyPart(mimeBodyPartCreateBodyPart);
            mimeMessage.setContent(mimeMultipart);
            mimeMessage.setDescription(strDescriptionFrom);
            setAcceptLang(mimeMessage);
            mimeMessage.saveChanges();
        } catch (RuntimeException e2) {
            e = e2;
            reportError("Unable to create body.", e, 4);
        } catch (MessagingException e3) {
            e = e3;
            reportError("Unable to create body.", e, 4);
        }
    }

    private void setErrorManager0(ErrorManager errorManager) {
        errorManager.getClass();
        try {
            synchronized (this) {
                try {
                    this.errorManager = errorManager;
                    super.setErrorManager(errorManager);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (LinkageError | RuntimeException unused) {
        }
    }

    private void setFrom(Message message) {
        String property = getSession(message).getProperty("mail.from");
        if (property == null) {
            setDefaultFrom(message);
            return;
        }
        try {
            InternetAddress[] internetAddressArr = InternetAddress.parse(property, $assertionsDisabled);
            if (internetAddressArr.length > 0) {
                if (internetAddressArr.length == 1) {
                    message.setFrom(internetAddressArr[0]);
                } else {
                    message.addFrom(internetAddressArr);
                }
            }
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
            setDefaultFrom(message);
        }
    }

    private void setIncompleteCopy(Message message) {
        try {
            message.setHeader("Incomplete-Copy", "");
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private void setMailProperties0(Properties properties) throws Throwable {
        Session sessionUpdateSession;
        checkAccess();
        Properties properties2 = (Properties) properties.clone();
        synchronized (this) {
            if (this.isWriting) {
                throw new IllegalStateException();
            }
            this.mailProps = properties2;
            sessionUpdateSession = updateSession();
        }
        verifySettings(sessionUpdateSession);
    }

    private void setMailer(Message message) {
        String strReplaceAll;
        String strFold;
        try {
            Class<?> cls = getClass();
            if (cls == MailHandler.class) {
                strFold = MailHandler.class.getName();
            } else {
                try {
                    strReplaceAll = MimeUtility.encodeText(cls.getName());
                } catch (UnsupportedEncodingException e2) {
                    reportError(e2.getMessage(), e2, 5);
                    strReplaceAll = cls.getName().replaceAll("[^\\x00-\\x7F]", "\u001a");
                }
                strFold = MimeUtility.fold(10, MailHandler.class.getName() + " using the " + strReplaceAll + " extension.");
            }
            message.setHeader("X-Mailer", strFold);
        } catch (MessagingException e3) {
            reportError(e3.getMessage(), e3, 5);
        }
    }

    private void setMatchedPart(int i2) {
        Integer num = MUTEX_PUBLISH;
        ThreadLocal<Integer> threadLocal = MUTEX;
        if (num.equals(threadLocal.get())) {
            threadLocal.set(Integer.valueOf(i2));
        }
    }

    private void setPriority(Message message) {
        try {
            message.setHeader("Importance", "High");
            message.setHeader("Priority", "urgent");
            message.setHeader("X-Priority", "2");
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private boolean setRecipient(Message message, String str, Message.RecipientType recipientType) {
        String property = getSession(message).getProperty(str);
        boolean z2 = property != null;
        if (!isEmpty(property)) {
            try {
                InternetAddress[] internetAddressArr = InternetAddress.parse(property, $assertionsDisabled);
                if (internetAddressArr.length > 0) {
                    message.setRecipients(recipientType, internetAddressArr);
                }
            } catch (MessagingException e2) {
                reportError(e2.getMessage(), e2, 5);
            }
        }
        return z2;
    }

    private void setReplyTo(Message message) {
        String property = getSession(message).getProperty("mail.reply.to");
        if (isEmpty(property)) {
            return;
        }
        try {
            InternetAddress[] internetAddressArr = InternetAddress.parse(property, $assertionsDisabled);
            if (internetAddressArr.length > 0) {
                message.setReplyTo(internetAddressArr);
            }
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private void setSender(Message message) {
        String property = getSession(message).getProperty("mail.sender");
        if (isEmpty(property)) {
            return;
        }
        try {
            InternetAddress[] internetAddressArr = InternetAddress.parse(property, $assertionsDisabled);
            if (internetAddressArr.length > 0) {
                ((MimeMessage) message).setSender(internetAddressArr[0]);
                if (internetAddressArr.length > 1) {
                    reportError("Ignoring other senders.", tooManyAddresses(internetAddressArr, 1), 5);
                }
            }
        } catch (MessagingException e2) {
            reportError(e2.getMessage(), e2, 5);
        }
    }

    private void sort() {
        Comparator<? super LogRecord> comparator = this.comparator;
        if (comparator != null) {
            try {
                int i2 = this.size;
                if (i2 != 1) {
                    Arrays.sort(this.data, 0, i2, comparator);
                    return;
                }
                LogRecord logRecord = this.data[0];
                if (comparator.compare(logRecord, logRecord) != 0) {
                    throw new IllegalArgumentException(this.comparator.getClass().getName());
                }
            } catch (RuntimeException e2) {
                reportError(e2.getMessage(), e2, 5);
            }
        }
    }

    private String tail(Formatter formatter, String str) {
        try {
            return formatter.getTail(this);
        } catch (RuntimeException e2) {
            reportError(e2.getMessage(), e2, 5);
            return str;
        }
    }

    private String toMsgString(Throwable th) {
        if (th == null) {
            return "null";
        }
        String encodingName = getEncodingName();
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(MIN_HEADER_SIZE);
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteArrayOutputStream, encodingName);
            try {
                PrintWriter printWriter = new PrintWriter(outputStreamWriter);
                try {
                    printWriter.println(th.getMessage());
                    th.printStackTrace(printWriter);
                    printWriter.flush();
                    printWriter.close();
                    outputStreamWriter.close();
                    return byteArrayOutputStream.toString(encodingName);
                } catch (Throwable th2) {
                    try {
                        printWriter.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (RuntimeException e2) {
            return th.toString() + ' ' + e2.toString();
        } catch (Exception e3) {
            return th.toString() + ' ' + e3.toString();
        }
    }

    private String toRawString(Message message) {
        if (message == null) {
            return null;
        }
        Object andSetContextClassLoader = getAndSetContextClassLoader(MAILHANDLER_LOADER);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(message.getSize() + MIN_HEADER_SIZE, MIN_HEADER_SIZE));
            message.writeTo(byteArrayOutputStream);
            return byteArrayOutputStream.toString("UTF-8");
        } finally {
            getAndSetContextClassLoader(andSetContextClassLoader);
        }
    }

    private String toString(Formatter formatter) {
        String string = formatter.toString();
        return !isEmpty(string) ? string : getClassId(formatter);
    }

    private AddressException tooManyAddresses(Address[] addressArr, int i2) {
        return new AddressException(Arrays.asList(addressArr).subList(i2, addressArr.length).toString());
    }

    private boolean tryMutex() {
        ThreadLocal<Integer> threadLocal = MUTEX;
        if (threadLocal.get() != null) {
            return $assertionsDisabled;
        }
        threadLocal.set(MUTEX_PUBLISH);
        return true;
    }

    private Session updateSession() {
        if (this.mailProps.getProperty("verify") != null) {
            return initSession();
        }
        this.session = null;
        return null;
    }

    private static void verifyAddresses(Address[] addressArr) throws AddressException {
        if (addressArr != null) {
            for (Address address : addressArr) {
                if (address instanceof InternetAddress) {
                    ((InternetAddress) address).validate();
                }
            }
        }
    }

    private static InetAddress verifyHost(String str) throws UnknownHostException {
        InetAddress localHost = isEmpty(str) ? InetAddress.getLocalHost() : InetAddress.getByName(str);
        if (localHost.getCanonicalHostName().length() != 0) {
            return localHost;
        }
        throw new UnknownHostException();
    }

    private static void verifyProperties(Session session, String str) {
        session.getProperty("mail.from");
        session.getProperty("mail." + str + ".from");
        session.getProperty("mail.dsn.ret");
        session.getProperty("mail." + str + ".dsn.ret");
        session.getProperty("mail.dsn.notify");
        session.getProperty("mail." + str + ".dsn.notify");
        session.getProperty("mail." + str + ".port");
        session.getProperty("mail.user");
        session.getProperty("mail." + str + ".user");
        session.getProperty("mail." + str + ".localport");
    }

    private void verifySettings(Session session) throws Throwable {
        if (session != null) {
            try {
                Object objPut = session.getProperties().put("verify", "");
                if (objPut instanceof String) {
                    String str = (String) objPut;
                    if (hasValue(str)) {
                        verifySettings0(session, str);
                    }
                } else if (objPut != null) {
                    verifySettings0(session, objPut.getClass().toString());
                }
            } catch (LinkageError e2) {
                reportLinkageError(e2, 4);
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x039b */
    /* JADX WARN: Code duplicated, block: B:119:0x0243 A[Catch: Exception -> 0x00e2, RuntimeException -> 0x00e5, TRY_LEAVE, TryCatch #10 {RuntimeException -> 0x00e5, blocks: (B:34:0x00d8, B:36:0x00de, B:42:0x00e9, B:47:0x00f4, B:49:0x00f7, B:60:0x0128, B:63:0x0132, B:65:0x015d, B:67:0x0169, B:69:0x0189, B:71:0x01bd, B:84:0x01ea, B:70:0x01a4, B:66:0x0164, B:95:0x020e, B:99:0x0215, B:101:0x021d, B:134:0x0269, B:106:0x0225, B:117:0x023d, B:119:0x0243, B:125:0x0252, B:127:0x0255, B:130:0x0261, B:132:0x0264, B:110:0x0234, B:114:0x023a, B:53:0x0107, B:54:0x0111, B:45:0x00ee), top: B:222:0x00d8 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x0269 A[Catch: Exception -> 0x00e2, RuntimeException -> 0x00e5, TRY_LEAVE, TryCatch #10 {RuntimeException -> 0x00e5, blocks: (B:34:0x00d8, B:36:0x00de, B:42:0x00e9, B:47:0x00f4, B:49:0x00f7, B:60:0x0128, B:63:0x0132, B:65:0x015d, B:67:0x0169, B:69:0x0189, B:71:0x01bd, B:84:0x01ea, B:70:0x01a4, B:66:0x0164, B:95:0x020e, B:99:0x0215, B:101:0x021d, B:134:0x0269, B:106:0x0225, B:117:0x023d, B:119:0x0243, B:125:0x0252, B:127:0x0255, B:130:0x0261, B:132:0x0264, B:110:0x0234, B:114:0x023a, B:53:0x0107, B:54:0x0111, B:45:0x00ee), top: B:222:0x00d8 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0281 A[Catch: Exception -> 0x00e2, IOException -> 0x028e, RuntimeException -> 0x0290, TryCatch #22 {Exception -> 0x00e2, blocks: (B:34:0x00d8, B:36:0x00de, B:42:0x00e9, B:47:0x00f4, B:49:0x00f7, B:58:0x0120, B:60:0x0128, B:63:0x0132, B:65:0x015d, B:67:0x0169, B:69:0x0189, B:71:0x01bd, B:73:0x01c5, B:75:0x01d3, B:77:0x01dc, B:82:0x01e5, B:136:0x0271, B:138:0x0279, B:140:0x0281, B:142:0x0289, B:147:0x0292, B:150:0x02a1, B:165:0x0309, B:175:0x0319, B:173:0x0315, B:174:0x0318, B:176:0x0324, B:178:0x0327, B:180:0x0336, B:181:0x033c, B:183:0x0346, B:185:0x0349, B:186:0x034d, B:188:0x0350, B:190:0x0358, B:191:0x035b, B:192:0x037b, B:194:0x037e, B:195:0x0386, B:196:0x0392, B:197:0x0393, B:198:0x039a, B:149:0x0296, B:84:0x01ea, B:70:0x01a4, B:66:0x0164, B:86:0x01f7, B:95:0x020e, B:99:0x0215, B:101:0x021d, B:134:0x0269, B:106:0x0225, B:117:0x023d, B:119:0x0243, B:123:0x024c, B:125:0x0252, B:127:0x0255, B:128:0x025b, B:130:0x0261, B:132:0x0264, B:110:0x0234, B:114:0x023a, B:53:0x0107, B:54:0x0111, B:45:0x00ee, B:55:0x0112, B:57:0x011c, B:205:0x03a4, B:206:0x03a7), top: B:222:0x00d8 }] */
    /* JADX WARN: Code duplicated, block: B:155:0x02be A[Catch: all -> 0x02d5, LOOP:2: B:154:0x02bc->B:155:0x02be, LOOP_END, TryCatch #14 {all -> 0x02d5, blocks: (B:153:0x02af, B:155:0x02be, B:158:0x02d7), top: B:227:0x02af, outer: #16 }] */
    /* JADX WARN: Code duplicated, block: B:161:0x02e6 A[Catch: all -> 0x02f7, LOOP:3: B:160:0x02e4->B:161:0x02e6, LOOP_END, TryCatch #16 {all -> 0x02f7, blocks: (B:151:0x02a7, B:152:0x02ae, B:159:0x02d8, B:161:0x02e6, B:164:0x02f9, B:172:0x0314, B:153:0x02af, B:155:0x02be, B:158:0x02d7), top: B:231:0x02a7, inners: #14 }] */
    /* JADX WARN: Code duplicated, block: B:178:0x0327 A[Catch: Exception -> 0x00e2, RuntimeException -> 0x030d, TryCatch #1 {RuntimeException -> 0x030d, blocks: (B:58:0x0120, B:136:0x0271, B:150:0x02a1, B:165:0x0309, B:175:0x0319, B:173:0x0315, B:174:0x0318, B:176:0x0324, B:178:0x0327, B:180:0x0336, B:181:0x033c, B:183:0x0346, B:185:0x0349, B:186:0x034d, B:188:0x0350, B:190:0x0358, B:191:0x035b, B:192:0x037b, B:194:0x037e, B:195:0x0386, B:196:0x0392, B:197:0x0393, B:198:0x039a, B:149:0x0296, B:86:0x01f7, B:123:0x024c, B:128:0x025b, B:55:0x0112, B:57:0x011c, B:205:0x03a4, B:206:0x03a7), top: B:213:0x0112 }] */
    /* JADX WARN: Code duplicated, block: B:180:0x0336 A[Catch: Exception -> 0x00e2, RuntimeException -> 0x030d, TryCatch #1 {RuntimeException -> 0x030d, blocks: (B:58:0x0120, B:136:0x0271, B:150:0x02a1, B:165:0x0309, B:175:0x0319, B:173:0x0315, B:174:0x0318, B:176:0x0324, B:178:0x0327, B:180:0x0336, B:181:0x033c, B:183:0x0346, B:185:0x0349, B:186:0x034d, B:188:0x0350, B:190:0x0358, B:191:0x035b, B:192:0x037b, B:194:0x037e, B:195:0x0386, B:196:0x0392, B:197:0x0393, B:198:0x039a, B:149:0x0296, B:86:0x01f7, B:123:0x024c, B:128:0x025b, B:55:0x0112, B:57:0x011c, B:205:0x03a4, B:206:0x03a7), top: B:213:0x0112 }] */
    /* JADX WARN: Code duplicated, block: B:183:0x0346 A[Catch: Exception -> 0x00e2, RuntimeException -> 0x030d, TryCatch #1 {RuntimeException -> 0x030d, blocks: (B:58:0x0120, B:136:0x0271, B:150:0x02a1, B:165:0x0309, B:175:0x0319, B:173:0x0315, B:174:0x0318, B:176:0x0324, B:178:0x0327, B:180:0x0336, B:181:0x033c, B:183:0x0346, B:185:0x0349, B:186:0x034d, B:188:0x0350, B:190:0x0358, B:191:0x035b, B:192:0x037b, B:194:0x037e, B:195:0x0386, B:196:0x0392, B:197:0x0393, B:198:0x039a, B:149:0x0296, B:86:0x01f7, B:123:0x024c, B:128:0x025b, B:55:0x0112, B:57:0x011c, B:205:0x03a4, B:206:0x03a7), top: B:213:0x0112 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x037c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:195:0x0386 A[Catch: Exception -> 0x00e2, RuntimeException -> 0x030d, TryCatch #1 {RuntimeException -> 0x030d, blocks: (B:58:0x0120, B:136:0x0271, B:150:0x02a1, B:165:0x0309, B:175:0x0319, B:173:0x0315, B:174:0x0318, B:176:0x0324, B:178:0x0327, B:180:0x0336, B:181:0x033c, B:183:0x0346, B:185:0x0349, B:186:0x034d, B:188:0x0350, B:190:0x0358, B:191:0x035b, B:192:0x037b, B:194:0x037e, B:195:0x0386, B:196:0x0392, B:197:0x0393, B:198:0x039a, B:149:0x0296, B:86:0x01f7, B:123:0x024c, B:128:0x025b, B:55:0x0112, B:57:0x011c, B:205:0x03a4, B:206:0x03a7), top: B:213:0x0112 }] */
    /* JADX WARN: Code duplicated, block: B:197:0x0393 A[Catch: Exception -> 0x00e2, RuntimeException -> 0x030d, TryCatch #1 {RuntimeException -> 0x030d, blocks: (B:58:0x0120, B:136:0x0271, B:150:0x02a1, B:165:0x0309, B:175:0x0319, B:173:0x0315, B:174:0x0318, B:176:0x0324, B:178:0x0327, B:180:0x0336, B:181:0x033c, B:183:0x0346, B:185:0x0349, B:186:0x034d, B:188:0x0350, B:190:0x0358, B:191:0x035b, B:192:0x037b, B:194:0x037e, B:195:0x0386, B:196:0x0392, B:197:0x0393, B:198:0x039a, B:149:0x0296, B:86:0x01f7, B:123:0x024c, B:128:0x025b, B:55:0x0112, B:57:0x011c, B:205:0x03a4, B:206:0x03a7), top: B:213:0x0112 }] */
    /* JADX WARN: Code duplicated, block: B:227:0x02af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:234:0x0279 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void verifySettings0(javax.mail.Session r17, java.lang.String r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 953
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.mail.util.logging.MailHandler.verifySettings0(javax.mail.Session, java.lang.String):void");
    }

    private Message writeLogRecords(int i2) {
        try {
            synchronized (this) {
                try {
                    if (this.size <= 0 || this.isWriting) {
                        return null;
                    }
                    this.isWriting = true;
                    try {
                        Message messageWriteLogRecords0 = writeLogRecords0();
                        this.isWriting = $assertionsDisabled;
                        if (this.size > 0) {
                            reset();
                        }
                        return messageWriteLogRecords0;
                    } catch (Throwable th) {
                        this.isWriting = $assertionsDisabled;
                        if (this.size > 0) {
                            reset();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (RuntimeException e2) {
            reportError(e2.getMessage(), e2, i2);
            return null;
        } catch (Exception e3) {
            reportError(e3.getMessage(), e3, i2);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Message writeLogRecords0() throws MessagingException {
        MimePart mimePartCreateBodyPart;
        int i2;
        StringBuilder sb;
        Filter filter;
        boolean z2;
        sort();
        if (this.session == null) {
            initSession();
        }
        MimeMessage mimeMessage = new MimeMessage(this.session);
        int length = this.attachmentFormatters.length;
        MimeBodyPart[] mimeBodyPartArr = new MimeBodyPart[length];
        StringBuilder[] sbArr = new StringBuilder[length];
        if (length == 0) {
            mimeMessage.setDescription(descriptionFrom(getFormatter(), getFilter(), this.subjectFormatter));
            mimePartCreateBodyPart = mimeMessage;
        } else {
            mimeMessage.setDescription(descriptionFrom(this.comparator, this.pushLevel, this.pushFilter));
            mimePartCreateBodyPart = createBodyPart();
        }
        appendSubject(mimeMessage, head(this.subjectFormatter));
        Formatter formatter = getFormatter();
        Filter filter2 = getFilter();
        LogRecord logRecord = null;
        StringBuilder sb2 = null;
        Object obj = null;
        int i3 = 0;
        while (i3 < this.size) {
            int i4 = this.matched[i3];
            LogRecord[] logRecordArr = this.data;
            LogRecord logRecord2 = logRecordArr[i3];
            logRecordArr[i3] = logRecord;
            Locale localeLocaleFor = localeFor(logRecord2);
            appendSubject(mimeMessage, format(this.subjectFormatter, logRecord2));
            if (filter2 == null || i4 == -1 || length == 0 || (i4 < -1 && filter2.isLoggable(logRecord2))) {
                if (sb2 == null) {
                    sb2 = new StringBuilder();
                    sb2.append(head(formatter));
                }
                sb2.append(format(formatter, logRecord2));
                if (localeLocaleFor != null && !localeLocaleFor.equals(obj)) {
                    appendContentLang(mimePartCreateBodyPart, localeLocaleFor);
                }
                filter = filter2;
                z2 = true;
            } else {
                z2 = $assertionsDisabled;
                filter = null;
            }
            Filter filter3 = filter2;
            Filter filter4 = filter;
            int i5 = 0;
            while (i5 < length) {
                StringBuilder sb3 = sb2;
                Filter filter5 = this.attachmentFilters[i5];
                if (filter5 == null || filter4 == filter5 || i4 == i5 || (i4 < i5 && filter5.isLoggable(logRecord2))) {
                    if (filter4 == null && filter5 != null) {
                        filter4 = filter5;
                    }
                    if (mimeBodyPartArr[i5] == null) {
                        mimeBodyPartArr[i5] = createBodyPart(i5);
                        StringBuilder sb4 = new StringBuilder();
                        sbArr[i5] = sb4;
                        sb4.append(head(this.attachmentFormatters[i5]));
                        appendFileName(mimeBodyPartArr[i5], head(this.attachmentNames[i5]));
                    }
                    appendFileName(mimeBodyPartArr[i5], format(this.attachmentNames[i5], logRecord2));
                    sbArr[i5].append(format(this.attachmentFormatters[i5], logRecord2));
                    if (localeLocaleFor != null && !localeLocaleFor.equals(obj)) {
                        appendContentLang(mimeBodyPartArr[i5], localeLocaleFor);
                    }
                    z2 = true;
                }
                i5++;
                sb2 = sb3;
            }
            StringBuilder sb5 = sb2;
            if (!z2) {
                reportFilterError(logRecord2);
            } else if (mimePartCreateBodyPart != mimeMessage && localeLocaleFor != null && !localeLocaleFor.equals(obj)) {
                appendContentLang(mimeMessage, localeLocaleFor);
            }
            i3++;
            obj = localeLocaleFor;
            filter2 = filter3;
            sb2 = sb5;
            logRecord = null;
        }
        this.size = 0;
        for (int i6 = length - 1; i6 >= 0; i6--) {
            MimeBodyPart mimeBodyPart = mimeBodyPartArr[i6];
            if (mimeBodyPart != null) {
                appendFileName(mimeBodyPart, tail(this.attachmentNames[i6], "err"));
                sbArr[i6].append(tail(this.attachmentFormatters[i6], ""));
                if (sbArr[i6].length() > 0) {
                    String fileName = mimeBodyPartArr[i6].getFileName();
                    if (isEmpty(fileName)) {
                        fileName = toString(this.attachmentFormatters[i6]);
                        mimeBodyPartArr[i6].setFileName(fileName);
                    }
                    setContent(mimeBodyPartArr[i6], sbArr[i6], getContentType(fileName));
                    sb = null;
                } else {
                    setIncompleteCopy(mimeMessage);
                    sb = null;
                    mimeBodyPartArr[i6] = null;
                }
                sbArr[i6] = sb;
            }
        }
        if (sb2 != null) {
            sb2.append(tail(formatter, ""));
            i2 = 0;
        } else {
            i2 = 0;
            sb2 = new StringBuilder(0);
        }
        appendSubject(mimeMessage, tail(this.subjectFormatter, ""));
        String strContentTypeOf = contentTypeOf(sb2);
        String strContentTypeOf2 = contentTypeOf(formatter);
        if (strContentTypeOf2 != null) {
            strContentTypeOf = strContentTypeOf2;
        }
        setContent(mimePartCreateBodyPart, sb2, strContentTypeOf);
        if (mimePartCreateBodyPart != mimeMessage) {
            MimeMultipart mimeMultipart = new MimeMultipart();
            mimeMultipart.addBodyPart((BodyPart) mimePartCreateBodyPart);
            for (int i7 = i2; i7 < length; i7++) {
                MimeBodyPart mimeBodyPart2 = mimeBodyPartArr[i7];
                if (mimeBodyPart2 != null) {
                    mimeMultipart.addBodyPart(mimeBodyPart2);
                }
            }
            mimeMessage.setContent(mimeMultipart);
        }
        return mimeMessage;
    }

    @Override // java.util.logging.Handler
    public void close() {
        Message messageWriteLogRecords;
        try {
            checkAccess();
            synchronized (this) {
                try {
                    try {
                        messageWriteLogRecords = writeLogRecords(3);
                        this.logLevel = Level.OFF;
                        int i2 = this.capacity;
                        if (i2 > 0) {
                            this.capacity = -i2;
                        }
                        if (this.size == 0 && this.data.length != 1) {
                            LogRecord[] logRecordArr = new LogRecord[1];
                            this.data = logRecordArr;
                            this.matched = new int[logRecordArr.length];
                        }
                    } catch (Throwable th) {
                        this.logLevel = Level.OFF;
                        if (this.capacity > 0) {
                            this.capacity = -this.capacity;
                        }
                        if (this.size == 0 && this.data.length != 1) {
                            LogRecord[] logRecordArr2 = new LogRecord[1];
                            this.data = logRecordArr2;
                            this.matched = new int[logRecordArr2.length];
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (messageWriteLogRecords != null) {
                send(messageWriteLogRecords, $assertionsDisabled, 3);
            }
        } catch (LinkageError e2) {
            reportLinkageError(e2, 3);
        }
    }

    public final String contentTypeOf(CharSequence charSequence) {
        if (isEmpty(charSequence)) {
            return null;
        }
        if (charSequence.length() > 25) {
            charSequence = charSequence.subSequence(0, 25);
        }
        try {
            return URLConnection.guessContentTypeFromStream(new ByteArrayInputStream(charSequence.toString().getBytes(getEncodingName())));
        } catch (IOException e2) {
            reportError(e2.getMessage(), e2, 5);
            return null;
        }
    }

    @Override // java.util.logging.Handler
    public void flush() {
        push($assertionsDisabled, 2);
    }

    public final Filter[] getAttachmentFilters() {
        return (Filter[]) readOnlyAttachmentFilters().clone();
    }

    public final Formatter[] getAttachmentFormatters() {
        Formatter[] formatterArr;
        synchronized (this) {
            formatterArr = this.attachmentFormatters;
        }
        return (Formatter[]) formatterArr.clone();
    }

    public final Formatter[] getAttachmentNames() {
        Formatter[] formatterArr;
        synchronized (this) {
            formatterArr = this.attachmentNames;
        }
        return (Formatter[]) formatterArr.clone();
    }

    public final synchronized Authenticator getAuthenticator() {
        checkAccess();
        return this.auth;
    }

    public final synchronized int getCapacity() {
        return Math.abs(this.capacity);
    }

    public final synchronized Comparator<? super LogRecord> getComparator() {
        return this.comparator;
    }

    @Override // java.util.logging.Handler
    public synchronized String getEncoding() {
        return this.encoding;
    }

    @Override // java.util.logging.Handler
    public ErrorManager getErrorManager() {
        checkAccess();
        return this.errorManager;
    }

    @Override // java.util.logging.Handler
    public Filter getFilter() {
        return this.filter;
    }

    @Override // java.util.logging.Handler
    public synchronized Formatter getFormatter() {
        return this.formatter;
    }

    @Override // java.util.logging.Handler
    public Level getLevel() {
        return this.logLevel;
    }

    public final Properties getMailProperties() {
        Properties properties;
        checkAccess();
        synchronized (this) {
            properties = this.mailProps;
        }
        return (Properties) properties.clone();
    }

    public final synchronized Filter getPushFilter() {
        return this.pushFilter;
    }

    public final synchronized Level getPushLevel() {
        return this.pushLevel;
    }

    public final synchronized Formatter getSubject() {
        return this.subjectFormatter;
    }

    @Override // java.util.logging.Handler
    public boolean isLoggable(LogRecord logRecord) {
        int iIntValue;
        if (logRecord == null || logRecord.getLevel().intValue() < (iIntValue = getLevel().intValue()) || iIntValue == offValue) {
            return $assertionsDisabled;
        }
        Filter filter = getFilter();
        if (filter != null && !filter.isLoggable(logRecord)) {
            return isAttachmentLoggable(logRecord);
        }
        setMatchedPart(-1);
        return true;
    }

    public final boolean isMissingContent(Message message, Throwable th) {
        Object andSetContextClassLoader = getAndSetContextClassLoader(MAILHANDLER_LOADER);
        try {
            try {
                try {
                    message.writeTo(new ByteArrayOutputStream(MIN_HEADER_SIZE));
                } catch (Exception e2) {
                    String message2 = e2.getMessage();
                    if (!isEmpty(message2)) {
                        int i2 = 0;
                        while (th != null) {
                            if (e2.getClass() == th.getClass() && message2.equals(th.getMessage())) {
                                getAndSetContextClassLoader(andSetContextClassLoader);
                                return true;
                            }
                            Throwable cause = th.getCause();
                            th = (cause == null && (th instanceof MessagingException)) ? ((MessagingException) th).getNextException() : cause;
                            i2++;
                            if (i2 == 65536) {
                                break;
                            }
                        }
                    }
                }
                getAndSetContextClassLoader(andSetContextClassLoader);
                return $assertionsDisabled;
            } catch (RuntimeException e3) {
                throw e3;
            }
        } catch (Throwable th2) {
            getAndSetContextClassLoader(andSetContextClassLoader);
            throw th2;
        }
    }

    public void postConstruct() {
    }

    public void preDestroy() {
        push($assertionsDisabled, 3);
    }

    @Override // java.util.logging.Handler
    public void publish(LogRecord logRecord) {
        if (!tryMutex()) {
            reportUnPublishedError(logRecord);
            return;
        }
        try {
            try {
                if (isLoggable(logRecord)) {
                    if (logRecord != null) {
                        logRecord.getSourceMethodName();
                        publish0(logRecord);
                    } else {
                        reportNullError(1);
                    }
                }
            } catch (LinkageError e2) {
                reportLinkageError(e2, 1);
            }
        } finally {
            releaseMutex();
        }
    }

    public void push() {
        push(true, 2);
    }

    @Override // java.util.logging.Handler
    public void reportError(String str, Exception exc, int i2) {
        try {
            if (str != null) {
                this.errorManager.error(Level.SEVERE.getName().concat(": ").concat(str), exc, i2);
            } else {
                this.errorManager.error(null, exc, i2);
            }
        } catch (LinkageError e2) {
            e = e2;
            reportLinkageError(e, i2);
        } catch (RuntimeException e3) {
            e = e3;
            reportLinkageError(e, i2);
        }
    }

    public final void setAttachmentFilters(Filter... filterArr) {
        checkAccess();
        Filter[] filterArrEmptyFilterArray = filterArr.length == 0 ? emptyFilterArray() : (Filter[]) Arrays.copyOf(filterArr, filterArr.length, Filter[].class);
        synchronized (this) {
            try {
                Formatter[] formatterArr = this.attachmentFormatters;
                if (formatterArr.length != filterArrEmptyFilterArray.length) {
                    throw attachmentMismatch(formatterArr.length, filterArrEmptyFilterArray.length);
                }
                if (this.isWriting) {
                    throw new IllegalStateException();
                }
                if (this.size != 0) {
                    for (int i2 = 0; i2 < filterArrEmptyFilterArray.length; i2++) {
                        if (filterArrEmptyFilterArray[i2] != this.attachmentFilters[i2]) {
                            clearMatches(i2);
                            break;
                        }
                    }
                }
                this.attachmentFilters = filterArrEmptyFilterArray;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setAttachmentFormatters(Formatter... formatterArr) {
        Formatter[] formatterArrEmptyFormatterArray;
        checkAccess();
        if (formatterArr.length == 0) {
            formatterArrEmptyFormatterArray = emptyFormatterArray();
        } else {
            formatterArrEmptyFormatterArray = (Formatter[]) Arrays.copyOf(formatterArr, formatterArr.length, Formatter[].class);
            for (int i2 = 0; i2 < formatterArrEmptyFormatterArray.length; i2++) {
                if (formatterArrEmptyFormatterArray[i2] == null) {
                    throw new NullPointerException(atIndexMsg(i2));
                }
            }
        }
        synchronized (this) {
            try {
                if (this.isWriting) {
                    throw new IllegalStateException();
                }
                this.attachmentFormatters = formatterArrEmptyFormatterArray;
                alignAttachmentFilters();
                alignAttachmentNames();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setAttachmentNames(String... strArr) {
        checkAccess();
        Formatter[] formatterArrEmptyFormatterArray = strArr.length == 0 ? emptyFormatterArray() : new Formatter[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            String str = strArr[i2];
            if (str == null) {
                throw new NullPointerException(atIndexMsg(i2));
            }
            if (str.length() <= 0) {
                throw new IllegalArgumentException(atIndexMsg(i2));
            }
            formatterArrEmptyFormatterArray[i2] = TailNameFormatter.of(str);
        }
        synchronized (this) {
            try {
                Formatter[] formatterArr = this.attachmentFormatters;
                if (formatterArr.length != strArr.length) {
                    throw attachmentMismatch(formatterArr.length, strArr.length);
                }
                if (this.isWriting) {
                    throw new IllegalStateException();
                }
                this.attachmentNames = formatterArrEmptyFormatterArray;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setAuthenticator(Authenticator authenticator) throws Throwable {
        setAuthenticator0(authenticator);
    }

    public final synchronized void setComparator(Comparator<? super LogRecord> comparator) {
        checkAccess();
        if (this.isWriting) {
            throw new IllegalStateException();
        }
        this.comparator = comparator;
    }

    @Override // java.util.logging.Handler
    public void setEncoding(String str) throws UnsupportedEncodingException {
        checkAccess();
        setEncoding0(str);
    }

    @Override // java.util.logging.Handler
    public void setErrorManager(ErrorManager errorManager) {
        checkAccess();
        setErrorManager0(errorManager);
    }

    @Override // java.util.logging.Handler
    public void setFilter(Filter filter) {
        checkAccess();
        synchronized (this) {
            try {
                if (filter != this.filter) {
                    clearMatches(-1);
                }
                this.filter = filter;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.logging.Handler
    public synchronized void setFormatter(Formatter formatter) {
        checkAccess();
        if (formatter == null) {
            throw new NullPointerException();
        }
        this.formatter = formatter;
    }

    @Override // java.util.logging.Handler
    public void setLevel(Level level) {
        level.getClass();
        checkAccess();
        synchronized (this) {
            try {
                if (this.capacity > 0) {
                    this.logLevel = level;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setMailProperties(Properties properties) throws Throwable {
        setMailProperties0(properties);
    }

    public final synchronized void setPushFilter(Filter filter) {
        checkAccess();
        if (this.isWriting) {
            throw new IllegalStateException();
        }
        this.pushFilter = filter;
    }

    public final synchronized void setPushLevel(Level level) {
        checkAccess();
        if (level == null) {
            throw new NullPointerException();
        }
        if (this.isWriting) {
            throw new IllegalStateException();
        }
        this.pushLevel = level;
    }

    public final void setSubject(String str) {
        if (str != null) {
            setSubject(TailNameFormatter.of(str));
        } else {
            checkAccess();
            throw null;
        }
    }

    private static RuntimeException attachmentMismatch(int i2, int i3) {
        return attachmentMismatch("Attachments mismatched, expected " + i2 + " but given " + i3 + '.');
    }

    private void push(boolean z2, int i2) {
        try {
            if (!tryMutex()) {
                reportUnPublishedError(null);
                return;
            }
            try {
                Message messageWriteLogRecords = writeLogRecords(i2);
                if (messageWriteLogRecords != null) {
                    send(messageWriteLogRecords, z2, i2);
                }
            } catch (LinkageError e2) {
                reportLinkageError(e2, i2);
            }
        } finally {
            releaseMutex();
        }
    }

    public final void setAuthenticator(char... cArr) throws Throwable {
        if (cArr == null) {
            setAuthenticator0(null);
        } else {
            setAuthenticator0(DefaultAuthenticator.of(new String(cArr)));
        }
    }

    public final void setSubject(Formatter formatter) {
        checkAccess();
        formatter.getClass();
        synchronized (this) {
            try {
                if (!this.isWriting) {
                    this.subjectFormatter = formatter;
                } else {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private String descriptionFrom(Formatter formatter, Filter filter, Formatter formatter2) {
        String name;
        StringBuilder sb = new StringBuilder("Formatted using ");
        sb.append(getClassId(formatter));
        sb.append(", filtered with ");
        if (filter == null) {
            name = "no filter";
        } else {
            name = filter.getClass().getName();
        }
        sb.append(name);
        sb.append(", and named by ");
        sb.append(getClassId(formatter2));
        sb.append('.');
        return sb.toString();
    }

    private void reportError(Message message, Exception exc, int i2) {
        try {
            try {
                this.errorManager.error(toRawString(message), exc, i2);
            } catch (RuntimeException e2) {
                reportError(toMsgString(e2), exc, i2);
            } catch (Exception e3) {
                reportError(toMsgString(e3), exc, i2);
            }
        } catch (LinkageError e4) {
            reportLinkageError(e4, i2);
        }
    }

    public MailHandler(int i2) {
        init(null);
        this.sealed = true;
        setCapacity0(i2);
    }

    private MimeBodyPart createBodyPart(int i2) throws MessagingException {
        MimeBodyPart mimeBodyPart = new MimeBodyPart();
        mimeBodyPart.setDisposition(Part.ATTACHMENT);
        mimeBodyPart.setDescription(descriptionFrom(this.attachmentFormatters[i2], this.attachmentFilters[i2], this.attachmentNames[i2]));
        setAcceptLang(mimeBodyPart);
        return mimeBodyPart;
    }

    public final String contentTypeOf(Formatter formatter) {
        String name;
        String lowerCase;
        int iIndexOf;
        if (formatter == null) {
            return null;
        }
        String contentType = getContentType(formatter.getClass().getName());
        if (contentType != null) {
            return contentType;
        }
        for (Class<?> superclass = formatter.getClass(); superclass != Formatter.class; superclass = superclass.getSuperclass()) {
            try {
                name = superclass.getSimpleName();
                while (true) {
                    int iIndexOf2 = lowerCase.indexOf("ml", iIndexOf);
                    if (iIndexOf2 > -1) {
                        if (iIndexOf2 > 0) {
                            int i2 = iIndexOf2 - 1;
                            if (lowerCase.charAt(i2) == 'x') {
                                return "application/xml";
                            }
                            if (iIndexOf2 > 1 && lowerCase.charAt(iIndexOf2 - 2) == 'h' && lowerCase.charAt(i2) == 't') {
                                return "text/html";
                            }
                        }
                        iIndexOf = iIndexOf2 + 2;
                    }
                }
            } catch (InternalError unused) {
                name = superclass.getName();
            }
            lowerCase = name.toLowerCase(Locale.ENGLISH);
            iIndexOf = lowerCase.indexOf(36) + 1;
        }
        return null;
    }

    public MailHandler(Properties properties) throws Throwable {
        properties.getClass();
        init(properties);
        this.sealed = true;
        setMailProperties0(properties);
    }

    public final void setAttachmentNames(Formatter... formatterArr) {
        Formatter[] formatterArrEmptyFormatterArray;
        checkAccess();
        if (formatterArr.length == 0) {
            formatterArrEmptyFormatterArray = emptyFormatterArray();
        } else {
            formatterArrEmptyFormatterArray = (Formatter[]) Arrays.copyOf(formatterArr, formatterArr.length, Formatter[].class);
        }
        for (int i2 = 0; i2 < formatterArrEmptyFormatterArray.length; i2++) {
            if (formatterArrEmptyFormatterArray[i2] == null) {
                throw new NullPointerException(atIndexMsg(i2));
            }
        }
        synchronized (this) {
            try {
                Formatter[] formatterArr2 = this.attachmentFormatters;
                if (formatterArr2.length == formatterArrEmptyFormatterArray.length) {
                    if (!this.isWriting) {
                        this.attachmentNames = formatterArrEmptyFormatterArray;
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    throw attachmentMismatch(formatterArr2.length, formatterArrEmptyFormatterArray.length);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private Object intern(Map<Object, Object> map, Object obj) {
        if (obj == null) {
            return null;
        }
        Object objNewInstance = obj.getClass().getName().equals(TailNameFormatter.class.getName()) ? obj : obj.getClass().getConstructor(null).newInstance(null);
        if (objNewInstance.getClass() != obj.getClass()) {
            return obj;
        }
        Object obj2 = map.get(objNewInstance);
        if (obj2 == null) {
            boolean zEquals = objNewInstance.equals(obj);
            boolean zEquals2 = obj.equals(objNewInstance);
            if (!zEquals || !zEquals2) {
                if (zEquals == zEquals2) {
                    return obj;
                }
                reportNonSymmetric(obj, objNewInstance);
                return obj;
            }
            Object objPut = map.put(obj, obj);
            if (objPut == null) {
                return obj;
            }
            reportNonDiscriminating(objNewInstance, objPut);
            Object objRemove = map.remove(objNewInstance);
            if (objRemove == obj) {
                return obj;
            }
            reportNonDiscriminating(objNewInstance, objRemove);
            map.clear();
            return obj;
        }
        if (obj.getClass() == obj2.getClass()) {
            return obj2;
        }
        reportNonDiscriminating(obj, obj2);
        return obj;
    }
}

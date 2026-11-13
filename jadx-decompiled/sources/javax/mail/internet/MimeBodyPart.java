package javax.mail.internet;

import M.d0;
import com.sun.mail.imap.IMAPStore;
import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.FolderClosedIOException;
import com.sun.mail.util.LineOutputStream;
import com.sun.mail.util.MessageRemovedIOException;
import com.sun.mail.util.MimeUtil;
import com.sun.mail.util.PropUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.EncodingAware;
import javax.mail.FolderClosedException;
import javax.mail.Header;
import javax.mail.Message;
import javax.mail.MessageRemovedException;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Part;

/* JADX INFO: loaded from: classes.dex */
public class MimeBodyPart extends BodyPart implements MimePart {
    protected Object cachedContent;
    protected byte[] content;
    protected InputStream contentStream;
    protected DataHandler dh;
    protected InternetHeaders headers;
    private static final boolean setDefaultTextCharset = PropUtil.getBooleanSystemProperty("mail.mime.setdefaulttextcharset", true);
    private static final boolean setContentTypeFileName = PropUtil.getBooleanSystemProperty("mail.mime.setcontenttypefilename", true);
    private static final boolean encodeFileName = PropUtil.getBooleanSystemProperty("mail.mime.encodefilename", false);
    private static final boolean decodeFileName = PropUtil.getBooleanSystemProperty("mail.mime.decodefilename", false);
    private static final boolean ignoreMultipartEncoding = PropUtil.getBooleanSystemProperty("mail.mime.ignoremultipartencoding", true);
    private static final boolean allowutf8 = PropUtil.getBooleanSystemProperty("mail.mime.allowutf8", true);
    static final boolean cacheMultipart = PropUtil.getBooleanSystemProperty("mail.mime.cachemultipart", true);

    public static class EncodedFileDataSource extends FileDataSource implements EncodingAware {
        private String contentType;
        private String encoding;

        public EncodedFileDataSource(File file, String str, String str2) {
            super(file);
            this.contentType = str;
            this.encoding = str2;
        }

        @Override // javax.activation.FileDataSource, javax.activation.DataSource
        public String getContentType() {
            String str = this.contentType;
            return str != null ? str : super.getContentType();
        }

        @Override // javax.mail.EncodingAware
        public String getEncoding() {
            return this.encoding;
        }
    }

    public static class MimePartDataHandler extends DataHandler {
        MimePart part;

        public MimePartDataHandler(MimePart mimePart) {
            super(new MimePartDataSource(mimePart));
            this.part = mimePart;
        }

        public InputStream getContentStream() {
            MimePart mimePart = this.part;
            if (mimePart instanceof MimeBodyPart) {
                return ((MimeBodyPart) mimePart).getContentStream();
            }
            if (mimePart instanceof MimeMessage) {
                return ((MimeMessage) mimePart).getContentStream();
            }
            return null;
        }

        public MimePart getPart() {
            return this.part;
        }
    }

    public MimeBodyPart() {
        this.headers = new InternetHeaders();
    }

    public static void invalidateContentHeaders(MimePart mimePart) {
        mimePart.removeHeader("Content-Type");
        mimePart.removeHeader("Content-Transfer-Encoding");
    }

    public static String restrictEncoding(MimePart mimePart, String str) {
        String contentType;
        if (!ignoreMultipartEncoding || str == null || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase("8bit") || str.equalsIgnoreCase("binary") || (contentType = mimePart.getContentType()) == null) {
            return str;
        }
        try {
            ContentType contentType2 = new ContentType(contentType);
            if (contentType2.match("multipart/*")) {
                return null;
            }
            if (contentType2.match("message/*") && !PropUtil.getBooleanSystemProperty("mail.mime.allowencodedmessages", false)) {
                return null;
            }
        } catch (ParseException unused) {
        }
        return str;
    }

    public static void setEncoding(MimePart mimePart, String str) {
        mimePart.setHeader("Content-Transfer-Encoding", str);
    }

    @Override // javax.mail.Part
    public void addHeader(String str, String str2) {
        this.headers.addHeader(str, str2);
    }

    public void addHeaderLine(String str) {
        this.headers.addHeaderLine(str);
    }

    public void attachFile(File file) throws MessagingException {
        FileDataSource fileDataSource = new FileDataSource(file);
        setDataHandler(new DataHandler(fileDataSource));
        setFileName(fileDataSource.getName());
        setDisposition(Part.ATTACHMENT);
    }

    public Enumeration<String> getAllHeaderLines() {
        return this.headers.getAllHeaderLines();
    }

    @Override // javax.mail.Part
    public Enumeration<Header> getAllHeaders() {
        return this.headers.getAllHeaders();
    }

    @Override // javax.mail.Part
    public Object getContent() throws FolderClosedException, MessageRemovedException {
        Object obj = this.cachedContent;
        if (obj != null) {
            return obj;
        }
        try {
            Object content = getDataHandler().getContent();
            if (cacheMultipart && (((content instanceof Multipart) || (content instanceof Message)) && (this.content != null || this.contentStream != null))) {
                this.cachedContent = content;
                if (content instanceof MimeMultipart) {
                    ((MimeMultipart) content).parse();
                }
            }
            return content;
        } catch (FolderClosedIOException e2) {
            throw new FolderClosedException(e2.getFolder(), e2.getMessage());
        } catch (MessageRemovedIOException e3) {
            throw new MessageRemovedException(e3.getMessage());
        }
    }

    public String getContentID() {
        return getHeader("Content-Id", null);
    }

    @Override // javax.mail.internet.MimePart
    public String[] getContentLanguage() {
        return getContentLanguage(this);
    }

    public String getContentMD5() {
        return getHeader("Content-MD5", null);
    }

    public InputStream getContentStream() throws MessagingException {
        Closeable closeable = this.contentStream;
        if (closeable != null) {
            return ((SharedInputStream) closeable).newStream(0L, -1L);
        }
        if (this.content != null) {
            return new ByteArrayInputStream(this.content);
        }
        throw new MessagingException("No MimeBodyPart content");
    }

    @Override // javax.mail.Part
    public String getContentType() {
        String strCleanContentType = MimeUtil.cleanContentType(this, getHeader("Content-Type", null));
        return strCleanContentType == null ? "text/plain" : strCleanContentType;
    }

    @Override // javax.mail.Part
    public DataHandler getDataHandler() {
        if (this.dh == null) {
            this.dh = new MimePartDataHandler(this);
        }
        return this.dh;
    }

    @Override // javax.mail.Part
    public String getDescription() {
        return getDescription(this);
    }

    @Override // javax.mail.Part
    public String getDisposition() {
        return getDisposition(this);
    }

    public String getEncoding() {
        return getEncoding(this);
    }

    @Override // javax.mail.Part
    public String getFileName() {
        return getFileName(this);
    }

    @Override // javax.mail.Part
    public String[] getHeader(String str) {
        return this.headers.getHeader(str);
    }

    @Override // javax.mail.Part
    public InputStream getInputStream() {
        return getDataHandler().getInputStream();
    }

    @Override // javax.mail.Part
    public int getLineCount() {
        return -1;
    }

    public Enumeration<String> getMatchingHeaderLines(String[] strArr) {
        return this.headers.getMatchingHeaderLines(strArr);
    }

    @Override // javax.mail.Part
    public Enumeration<Header> getMatchingHeaders(String[] strArr) {
        return this.headers.getMatchingHeaders(strArr);
    }

    public Enumeration<String> getNonMatchingHeaderLines(String[] strArr) {
        return this.headers.getNonMatchingHeaderLines(strArr);
    }

    @Override // javax.mail.Part
    public Enumeration<Header> getNonMatchingHeaders(String[] strArr) {
        return this.headers.getNonMatchingHeaders(strArr);
    }

    public InputStream getRawInputStream() {
        return getContentStream();
    }

    @Override // javax.mail.Part
    public int getSize() {
        byte[] bArr = this.content;
        if (bArr != null) {
            return bArr.length;
        }
        InputStream inputStream = this.contentStream;
        if (inputStream == null) {
            return -1;
        }
        try {
            int iAvailable = inputStream.available();
            if (iAvailable > 0) {
                return iAvailable;
            }
            return -1;
        } catch (IOException unused) {
            return -1;
        }
    }

    @Override // javax.mail.Part
    public boolean isMimeType(String str) {
        return isMimeType(this, str);
    }

    @Override // javax.mail.Part
    public void removeHeader(String str) {
        this.headers.removeHeader(str);
    }

    public void saveFile(File file) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        InputStream inputStream = null;
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            try {
                inputStream = getInputStream();
                byte[] bArr = new byte[8192];
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 > 0) {
                        bufferedOutputStream.write(bArr, 0, i2);
                    } else {
                        try {
                            break;
                        } catch (IOException unused) {
                        }
                    }
                }
                inputStream.close();
                try {
                    bufferedOutputStream.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                if (bufferedOutputStream == null) {
                    throw th;
                }
                try {
                    bufferedOutputStream.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream = null;
        }
    }

    @Override // javax.mail.Part
    public void setContent(Object obj, String str) {
        if (obj instanceof Multipart) {
            setContent((Multipart) obj);
        } else {
            setDataHandler(new DataHandler(obj, str));
        }
    }

    public void setContentID(String str) {
        if (str == null) {
            removeHeader("Content-ID");
        } else {
            setHeader("Content-ID", str);
        }
    }

    @Override // javax.mail.internet.MimePart
    public void setContentLanguage(String[] strArr) {
        setContentLanguage(this, strArr);
    }

    public void setContentMD5(String str) {
        setHeader("Content-MD5", str);
    }

    @Override // javax.mail.Part
    public void setDataHandler(DataHandler dataHandler) {
        this.dh = dataHandler;
        this.cachedContent = null;
        invalidateContentHeaders(this);
    }

    @Override // javax.mail.Part
    public void setDescription(String str) throws MessagingException {
        setDescription(str, null);
    }

    @Override // javax.mail.Part
    public void setDisposition(String str) {
        setDisposition(this, str);
    }

    @Override // javax.mail.Part
    public void setFileName(String str) throws MessagingException {
        setFileName(this, str);
    }

    @Override // javax.mail.Part
    public void setHeader(String str, String str2) {
        this.headers.setHeader(str, str2);
    }

    @Override // javax.mail.Part, javax.mail.internet.MimePart
    public void setText(String str) {
        setText(str, null);
    }

    public void updateHeaders() throws MessagingException {
        updateHeaders(this);
        Object obj = this.cachedContent;
        if (obj != null) {
            this.dh = new DataHandler(obj, getContentType());
            this.cachedContent = null;
            this.content = null;
            InputStream inputStream = this.contentStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            this.contentStream = null;
        }
    }

    @Override // javax.mail.Part
    public void writeTo(OutputStream outputStream) throws IOException {
        writeTo(this, outputStream, null);
    }

    public static String[] getContentLanguage(MimePart mimePart) {
        String header = mimePart.getHeader("Content-Language", null);
        if (header == null) {
            return null;
        }
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(header, HeaderTokenizer.MIME);
        ArrayList arrayList = new ArrayList();
        while (true) {
            HeaderTokenizer.Token next = headerTokenizer.next();
            int type = next.getType();
            if (type == -4) {
                break;
            }
            if (type == -1) {
                arrayList.add(next.getValue());
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    public static String getDescription(MimePart mimePart) {
        String header = mimePart.getHeader("Content-Description", null);
        if (header == null) {
            return null;
        }
        try {
            return MimeUtility.decodeText(MimeUtility.unfold(header));
        } catch (UnsupportedEncodingException unused) {
            return header;
        }
    }

    public static String getDisposition(MimePart mimePart) {
        String header = mimePart.getHeader("Content-Disposition", null);
        if (header == null) {
            return null;
        }
        return new ContentDisposition(header).getDisposition();
    }

    public static String getEncoding(MimePart mimePart) {
        HeaderTokenizer.Token next;
        int type;
        String header = mimePart.getHeader("Content-Transfer-Encoding", null);
        if (header == null) {
            return null;
        }
        String strTrim = header.trim();
        if (strTrim.length() == 0) {
            return null;
        }
        if (strTrim.equalsIgnoreCase("7bit") || strTrim.equalsIgnoreCase("8bit") || strTrim.equalsIgnoreCase("quoted-printable") || strTrim.equalsIgnoreCase("binary") || strTrim.equalsIgnoreCase("base64")) {
            return strTrim;
        }
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(strTrim, HeaderTokenizer.MIME);
        do {
            next = headerTokenizer.next();
            type = next.getType();
            if (type == -4) {
                return strTrim;
            }
        } while (type != -1);
        return next.getValue();
    }

    public static String getFileName(MimePart mimePart) throws MessagingException {
        String strCleanContentType;
        String header = mimePart.getHeader("Content-Disposition", null);
        String parameter = header != null ? new ContentDisposition(header).getParameter("filename") : null;
        if (parameter == null && (strCleanContentType = MimeUtil.cleanContentType(mimePart, mimePart.getHeader("Content-Type", null))) != null) {
            try {
                parameter = new ContentType(strCleanContentType).getParameter(IMAPStore.ID_NAME);
            } catch (ParseException unused) {
            }
        }
        if (!decodeFileName || parameter == null) {
            return parameter;
        }
        try {
            return MimeUtility.decodeText(parameter);
        } catch (UnsupportedEncodingException e2) {
            throw new MessagingException("Can't decode filename", e2);
        }
    }

    public static boolean isMimeType(MimePart mimePart, String str) {
        String contentType = mimePart.getContentType();
        try {
            return new ContentType(contentType).match(str);
        } catch (ParseException unused) {
            try {
                int iIndexOf = contentType.indexOf(59);
                if (iIndexOf > 0) {
                    return new ContentType(contentType.substring(0, iIndexOf)).match(str);
                }
            } catch (ParseException unused2) {
            }
            return contentType.equalsIgnoreCase(str);
        }
    }

    public static void setContentLanguage(MimePart mimePart, String[] strArr) {
        StringBuilder sb = new StringBuilder(strArr[0]);
        int length = strArr[0].length() + 18;
        for (int i2 = 1; i2 < strArr.length; i2++) {
            sb.append(',');
            int i3 = length + 1;
            if (i3 > 76) {
                sb.append("\r\n\t");
                i3 = 8;
            }
            sb.append(strArr[i2]);
            length = i3 + strArr[i2].length();
        }
        mimePart.setHeader("Content-Language", sb.toString());
    }

    public static void setDisposition(MimePart mimePart, String str) {
        if (str == null) {
            mimePart.removeHeader("Content-Disposition");
            return;
        }
        String header = mimePart.getHeader("Content-Disposition", null);
        if (header != null) {
            ContentDisposition contentDisposition = new ContentDisposition(header);
            contentDisposition.setDisposition(str);
            str = contentDisposition.toString();
        }
        mimePart.setHeader("Content-Disposition", str);
    }

    public static void setFileName(MimePart mimePart, String str) throws MessagingException {
        String strCleanContentType;
        boolean z2 = encodeFileName;
        if (z2 && str != null) {
            try {
                str = MimeUtility.encodeText(str);
            } catch (UnsupportedEncodingException e2) {
                throw new MessagingException("Can't encode filename", e2);
            }
        }
        String header = mimePart.getHeader("Content-Disposition", null);
        if (header == null) {
            header = Part.ATTACHMENT;
        }
        ContentDisposition contentDisposition = new ContentDisposition(header);
        String defaultMIMECharset = MimeUtility.getDefaultMIMECharset();
        ParameterList parameterList = contentDisposition.getParameterList();
        if (parameterList == null) {
            parameterList = new ParameterList();
            contentDisposition.setParameterList(parameterList);
        }
        if (z2) {
            parameterList.setLiteral("filename", str);
        } else {
            parameterList.set("filename", str, defaultMIMECharset);
        }
        mimePart.setHeader("Content-Disposition", contentDisposition.toString());
        if (!setContentTypeFileName || (strCleanContentType = MimeUtil.cleanContentType(mimePart, mimePart.getHeader("Content-Type", null))) == null) {
            return;
        }
        try {
            ContentType contentType = new ContentType(strCleanContentType);
            ParameterList parameterList2 = contentType.getParameterList();
            if (parameterList2 == null) {
                parameterList2 = new ParameterList();
                contentType.setParameterList(parameterList2);
            }
            if (z2) {
                parameterList2.setLiteral(IMAPStore.ID_NAME, str);
            } else {
                parameterList2.set(IMAPStore.ID_NAME, str, defaultMIMECharset);
            }
            mimePart.setHeader("Content-Type", contentType.toString());
        } catch (ParseException unused) {
        }
    }

    public static void writeTo(MimePart mimePart, OutputStream outputStream, String[] strArr) throws IOException {
        LineOutputStream lineOutputStream = outputStream instanceof LineOutputStream ? (LineOutputStream) outputStream : new LineOutputStream(outputStream, allowutf8);
        Enumeration<String> nonMatchingHeaderLines = mimePart.getNonMatchingHeaderLines(strArr);
        while (nonMatchingHeaderLines.hasMoreElements()) {
            lineOutputStream.writeln(nonMatchingHeaderLines.nextElement());
        }
        lineOutputStream.writeln();
        InputStream contentStream = null;
        try {
            DataHandler dataHandler = mimePart.getDataHandler();
            if (dataHandler instanceof MimePartDataHandler) {
                MimePartDataHandler mimePartDataHandler = (MimePartDataHandler) dataHandler;
                if (mimePartDataHandler.getPart().getEncoding() != null) {
                    contentStream = mimePartDataHandler.getContentStream();
                }
            }
            if (contentStream != null) {
                byte[] bArr = new byte[8192];
                while (true) {
                    int i2 = contentStream.read(bArr);
                    if (i2 <= 0) {
                        break;
                    } else {
                        outputStream.write(bArr, 0, i2);
                    }
                }
            } else {
                outputStream = MimeUtility.encode(outputStream, restrictEncoding(mimePart, mimePart.getEncoding()));
                mimePart.getDataHandler().writeTo(outputStream);
            }
            if (contentStream != null) {
                contentStream.close();
            }
            outputStream.flush();
        } catch (Throwable th) {
            if (0 != 0) {
                contentStream.close();
            }
            throw th;
        }
    }

    @Override // javax.mail.internet.MimePart
    public String getHeader(String str, String str2) {
        return this.headers.getHeader(str, str2);
    }

    public void setDescription(String str, String str2) throws MessagingException {
        setDescription(this, str, str2);
    }

    @Override // javax.mail.internet.MimePart
    public void setText(String str, String str2) {
        setText(this, str, str2, "plain");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MimeBodyPart(InputStream inputStream) throws MessagingException {
        boolean z2 = inputStream instanceof ByteArrayInputStream;
        InputStream bufferedInputStream = inputStream;
        if (!z2 && !(inputStream instanceof BufferedInputStream) && !(inputStream instanceof SharedInputStream)) {
            bufferedInputStream = inputStream;
            bufferedInputStream = inputStream;
            bufferedInputStream = new BufferedInputStream(inputStream);
        }
        bufferedInputStream = inputStream;
        bufferedInputStream = inputStream;
        bufferedInputStream = inputStream;
        this.headers = new InternetHeaders(bufferedInputStream);
        if (bufferedInputStream instanceof SharedInputStream) {
            SharedInputStream sharedInputStream = (SharedInputStream) bufferedInputStream;
            this.contentStream = sharedInputStream.newStream(sharedInputStream.getPosition(), -1L);
        } else {
            try {
                this.content = ASCIIUtility.getBytes(bufferedInputStream);
            } catch (IOException e2) {
                throw new MessagingException("Error reading input stream", e2);
            }
        }
    }

    public static void setDescription(MimePart mimePart, String str, String str2) throws MessagingException {
        if (str != null) {
            try {
                mimePart.setHeader("Content-Description", MimeUtility.fold(21, MimeUtility.encodeText(str, str2, null)));
                return;
            } catch (UnsupportedEncodingException e2) {
                throw new MessagingException("Encoding error", e2);
            }
        }
        mimePart.removeHeader("Content-Description");
    }

    @Override // javax.mail.internet.MimePart
    public void setText(String str, String str2, String str3) {
        setText(this, str, str2, str3);
    }

    public static void setText(MimePart mimePart, String str, String str2, String str3) {
        if (str2 == null) {
            if (MimeUtility.checkAscii(str) != 1) {
                str2 = MimeUtility.getDefaultMIMECharset();
            } else {
                str2 = "us-ascii";
            }
        }
        StringBuilder sbJ = d0.j("text/", str3, "; charset=");
        sbJ.append(MimeUtility.quote(str2, HeaderTokenizer.MIME));
        mimePart.setContent(str, sbJ.toString());
    }

    @Override // javax.mail.Part
    public void setContent(Multipart multipart) {
        setDataHandler(new DataHandler(multipart, multipart.getContentType()));
        multipart.setParent(this);
    }

    public void attachFile(String str) throws MessagingException {
        attachFile(new File(str));
    }

    public void attachFile(File file, String str, String str2) throws MessagingException {
        EncodedFileDataSource encodedFileDataSource = new EncodedFileDataSource(file, str, str2);
        setDataHandler(new DataHandler(encodedFileDataSource));
        setFileName(encodedFileDataSource.getName());
        setDisposition(Part.ATTACHMENT);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0091 A[Catch: IOException -> 0x003a, TryCatch #0 {IOException -> 0x003a, blocks: (B:5:0x000d, B:9:0x001c, B:11:0x0029, B:13:0x002d, B:26:0x0052, B:28:0x0056, B:35:0x008d, B:37:0x0091, B:40:0x009c, B:41:0x00a3, B:43:0x00a9, B:46:0x00af, B:48:0x00b7, B:50:0x00c0, B:52:0x00c4, B:54:0x00cc, B:56:0x00d2, B:58:0x00d8, B:62:0x00e7, B:61:0x00e3, B:64:0x00f0, B:66:0x00f4, B:68:0x00fd, B:70:0x010a, B:72:0x0110, B:73:0x0118, B:76:0x011e, B:78:0x012d, B:77:0x0126, B:79:0x0131, B:30:0x005d, B:31:0x0083, B:16:0x0035, B:19:0x003d, B:21:0x0041, B:24:0x0049, B:25:0x004e, B:32:0x0084), top: B:83:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:39:0x009a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x009c A[Catch: IOException -> 0x003a, TryCatch #0 {IOException -> 0x003a, blocks: (B:5:0x000d, B:9:0x001c, B:11:0x0029, B:13:0x002d, B:26:0x0052, B:28:0x0056, B:35:0x008d, B:37:0x0091, B:40:0x009c, B:41:0x00a3, B:43:0x00a9, B:46:0x00af, B:48:0x00b7, B:50:0x00c0, B:52:0x00c4, B:54:0x00cc, B:56:0x00d2, B:58:0x00d8, B:62:0x00e7, B:61:0x00e3, B:64:0x00f0, B:66:0x00f4, B:68:0x00fd, B:70:0x010a, B:72:0x0110, B:73:0x0118, B:76:0x011e, B:78:0x012d, B:77:0x0126, B:79:0x0131, B:30:0x005d, B:31:0x0083, B:16:0x0035, B:19:0x003d, B:21:0x0041, B:24:0x0049, B:25:0x004e, B:32:0x0084), top: B:83:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a9 A[Catch: IOException -> 0x003a, TryCatch #0 {IOException -> 0x003a, blocks: (B:5:0x000d, B:9:0x001c, B:11:0x0029, B:13:0x002d, B:26:0x0052, B:28:0x0056, B:35:0x008d, B:37:0x0091, B:40:0x009c, B:41:0x00a3, B:43:0x00a9, B:46:0x00af, B:48:0x00b7, B:50:0x00c0, B:52:0x00c4, B:54:0x00cc, B:56:0x00d2, B:58:0x00d8, B:62:0x00e7, B:61:0x00e3, B:64:0x00f0, B:66:0x00f4, B:68:0x00fd, B:70:0x010a, B:72:0x0110, B:73:0x0118, B:76:0x011e, B:78:0x012d, B:77:0x0126, B:79:0x0131, B:30:0x005d, B:31:0x0083, B:16:0x0035, B:19:0x003d, B:21:0x0041, B:24:0x0049, B:25:0x004e, B:32:0x0084), top: B:83:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00af A[Catch: IOException -> 0x003a, TryCatch #0 {IOException -> 0x003a, blocks: (B:5:0x000d, B:9:0x001c, B:11:0x0029, B:13:0x002d, B:26:0x0052, B:28:0x0056, B:35:0x008d, B:37:0x0091, B:40:0x009c, B:41:0x00a3, B:43:0x00a9, B:46:0x00af, B:48:0x00b7, B:50:0x00c0, B:52:0x00c4, B:54:0x00cc, B:56:0x00d2, B:58:0x00d8, B:62:0x00e7, B:61:0x00e3, B:64:0x00f0, B:66:0x00f4, B:68:0x00fd, B:70:0x010a, B:72:0x0110, B:73:0x0118, B:76:0x011e, B:78:0x012d, B:77:0x0126, B:79:0x0131, B:30:0x005d, B:31:0x0083, B:16:0x0035, B:19:0x003d, B:21:0x0041, B:24:0x0049, B:25:0x004e, B:32:0x0084), top: B:83:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b7 A[Catch: IOException -> 0x003a, TryCatch #0 {IOException -> 0x003a, blocks: (B:5:0x000d, B:9:0x001c, B:11:0x0029, B:13:0x002d, B:26:0x0052, B:28:0x0056, B:35:0x008d, B:37:0x0091, B:40:0x009c, B:41:0x00a3, B:43:0x00a9, B:46:0x00af, B:48:0x00b7, B:50:0x00c0, B:52:0x00c4, B:54:0x00cc, B:56:0x00d2, B:58:0x00d8, B:62:0x00e7, B:61:0x00e3, B:64:0x00f0, B:66:0x00f4, B:68:0x00fd, B:70:0x010a, B:72:0x0110, B:73:0x0118, B:76:0x011e, B:78:0x012d, B:77:0x0126, B:79:0x0131, B:30:0x005d, B:31:0x0083, B:16:0x0035, B:19:0x003d, B:21:0x0041, B:24:0x0049, B:25:0x004e, B:32:0x0084), top: B:83:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00e3 A[Catch: IOException -> 0x003a, TryCatch #0 {IOException -> 0x003a, blocks: (B:5:0x000d, B:9:0x001c, B:11:0x0029, B:13:0x002d, B:26:0x0052, B:28:0x0056, B:35:0x008d, B:37:0x0091, B:40:0x009c, B:41:0x00a3, B:43:0x00a9, B:46:0x00af, B:48:0x00b7, B:50:0x00c0, B:52:0x00c4, B:54:0x00cc, B:56:0x00d2, B:58:0x00d8, B:62:0x00e7, B:61:0x00e3, B:64:0x00f0, B:66:0x00f4, B:68:0x00fd, B:70:0x010a, B:72:0x0110, B:73:0x0118, B:76:0x011e, B:78:0x012d, B:77:0x0126, B:79:0x0131, B:30:0x005d, B:31:0x0083, B:16:0x0035, B:19:0x003d, B:21:0x0041, B:24:0x0049, B:25:0x004e, B:32:0x0084), top: B:83:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00f0 A[Catch: IOException -> 0x003a, TryCatch #0 {IOException -> 0x003a, blocks: (B:5:0x000d, B:9:0x001c, B:11:0x0029, B:13:0x002d, B:26:0x0052, B:28:0x0056, B:35:0x008d, B:37:0x0091, B:40:0x009c, B:41:0x00a3, B:43:0x00a9, B:46:0x00af, B:48:0x00b7, B:50:0x00c0, B:52:0x00c4, B:54:0x00cc, B:56:0x00d2, B:58:0x00d8, B:62:0x00e7, B:61:0x00e3, B:64:0x00f0, B:66:0x00f4, B:68:0x00fd, B:70:0x010a, B:72:0x0110, B:73:0x0118, B:76:0x011e, B:78:0x012d, B:77:0x0126, B:79:0x0131, B:30:0x005d, B:31:0x0083, B:16:0x0035, B:19:0x003d, B:21:0x0041, B:24:0x0049, B:25:0x004e, B:32:0x0084), top: B:83:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0110 A[Catch: IOException -> 0x003a, TryCatch #0 {IOException -> 0x003a, blocks: (B:5:0x000d, B:9:0x001c, B:11:0x0029, B:13:0x002d, B:26:0x0052, B:28:0x0056, B:35:0x008d, B:37:0x0091, B:40:0x009c, B:41:0x00a3, B:43:0x00a9, B:46:0x00af, B:48:0x00b7, B:50:0x00c0, B:52:0x00c4, B:54:0x00cc, B:56:0x00d2, B:58:0x00d8, B:62:0x00e7, B:61:0x00e3, B:64:0x00f0, B:66:0x00f4, B:68:0x00fd, B:70:0x010a, B:72:0x0110, B:73:0x0118, B:76:0x011e, B:78:0x012d, B:77:0x0126, B:79:0x0131, B:30:0x005d, B:31:0x0083, B:16:0x0035, B:19:0x003d, B:21:0x0041, B:24:0x0049, B:25:0x004e, B:32:0x0084), top: B:83:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:76:0x011e A[Catch: IOException -> 0x003a, TRY_ENTER, TryCatch #0 {IOException -> 0x003a, blocks: (B:5:0x000d, B:9:0x001c, B:11:0x0029, B:13:0x002d, B:26:0x0052, B:28:0x0056, B:35:0x008d, B:37:0x0091, B:40:0x009c, B:41:0x00a3, B:43:0x00a9, B:46:0x00af, B:48:0x00b7, B:50:0x00c0, B:52:0x00c4, B:54:0x00cc, B:56:0x00d2, B:58:0x00d8, B:62:0x00e7, B:61:0x00e3, B:64:0x00f0, B:66:0x00f4, B:68:0x00fd, B:70:0x010a, B:72:0x0110, B:73:0x0118, B:76:0x011e, B:78:0x012d, B:77:0x0126, B:79:0x0131, B:30:0x005d, B:31:0x0083, B:16:0x0035, B:19:0x003d, B:21:0x0041, B:24:0x0049, B:25:0x004e, B:32:0x0084), top: B:83:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0126 A[Catch: IOException -> 0x003a, TryCatch #0 {IOException -> 0x003a, blocks: (B:5:0x000d, B:9:0x001c, B:11:0x0029, B:13:0x002d, B:26:0x0052, B:28:0x0056, B:35:0x008d, B:37:0x0091, B:40:0x009c, B:41:0x00a3, B:43:0x00a9, B:46:0x00af, B:48:0x00b7, B:50:0x00c0, B:52:0x00c4, B:54:0x00cc, B:56:0x00d2, B:58:0x00d8, B:62:0x00e7, B:61:0x00e3, B:64:0x00f0, B:66:0x00f4, B:68:0x00fd, B:70:0x010a, B:72:0x0110, B:73:0x0118, B:76:0x011e, B:78:0x012d, B:77:0x0126, B:79:0x0131, B:30:0x005d, B:31:0x0083, B:16:0x0035, B:19:0x003d, B:21:0x0041, B:24:0x0049, B:25:0x004e, B:32:0x0084), top: B:83:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:84:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:? A[RETURN, SYNTHETIC] */
    public static void updateHeaders(MimePart mimePart) throws MessagingException {
        String header;
        String parameter;
        ParameterList parameterList;
        String encoding;
        String defaultMIMECharset;
        MimePart part;
        String encoding2;
        Object content;
        DataHandler dataHandler = mimePart.getDataHandler();
        if (dataHandler == null) {
            return;
        }
        try {
            String contentType = dataHandler.getContentType();
            boolean z2 = false;
            boolean z3 = mimePart.getHeader("Content-Type") == null;
            ContentType contentType2 = new ContentType(contentType);
            if (contentType2.match("multipart/*")) {
                if (mimePart instanceof MimeBodyPart) {
                    content = ((MimeBodyPart) mimePart).cachedContent;
                    if (content == null) {
                        content = dataHandler.getContent();
                    }
                } else if (!(mimePart instanceof MimeMessage) || (content = ((MimeMessage) mimePart).cachedContent) == null) {
                    content = dataHandler.getContent();
                }
                if (content instanceof MimeMultipart) {
                    ((MimeMultipart) content).updateHeaders();
                } else {
                    throw new MessagingException("MIME part of type \"" + contentType + "\" contains object of type " + content.getClass().getName() + " instead of MimeMultipart");
                }
            } else {
                if (contentType2.match("message/rfc822")) {
                }
                if (dataHandler instanceof MimePartDataHandler) {
                    part = ((MimePartDataHandler) dataHandler).getPart();
                    if (part != mimePart) {
                        return;
                    }
                    if (z3) {
                        mimePart.setHeader("Content-Type", part.getContentType());
                    }
                    encoding2 = part.getEncoding();
                    if (encoding2 != null) {
                        setEncoding(mimePart, encoding2);
                        return;
                    }
                }
                if (!z2) {
                    if (mimePart.getHeader("Content-Transfer-Encoding") == null) {
                        setEncoding(mimePart, MimeUtility.getEncoding(dataHandler));
                    }
                    if (z3 && setDefaultTextCharset && contentType2.match("text/*") && contentType2.getParameter("charset") == null) {
                        encoding = mimePart.getEncoding();
                        if (encoding == null && encoding.equalsIgnoreCase("7bit")) {
                            defaultMIMECharset = "us-ascii";
                        } else {
                            defaultMIMECharset = MimeUtility.getDefaultMIMECharset();
                        }
                        contentType2.setParameter("charset", defaultMIMECharset);
                        contentType = contentType2.toString();
                    }
                }
                if (z3) {
                    if (setContentTypeFileName && (header = mimePart.getHeader("Content-Disposition", null)) != null && (parameter = new ContentDisposition(header).getParameter("filename")) != null) {
                        parameterList = contentType2.getParameterList();
                        if (parameterList == null) {
                            parameterList = new ParameterList();
                            contentType2.setParameterList(parameterList);
                        }
                        if (encodeFileName) {
                            parameterList.setLiteral(IMAPStore.ID_NAME, MimeUtility.encodeText(parameter));
                        } else {
                            parameterList.set(IMAPStore.ID_NAME, parameter, MimeUtility.getDefaultMIMECharset());
                        }
                        contentType = contentType2.toString();
                    }
                    mimePart.setHeader("Content-Type", contentType);
                }
            }
            z2 = true;
            if (dataHandler instanceof MimePartDataHandler) {
                part = ((MimePartDataHandler) dataHandler).getPart();
                if (part != mimePart) {
                    return;
                }
                if (z3) {
                    mimePart.setHeader("Content-Type", part.getContentType());
                }
                encoding2 = part.getEncoding();
                if (encoding2 != null) {
                    setEncoding(mimePart, encoding2);
                    return;
                }
            }
            if (!z2) {
                if (mimePart.getHeader("Content-Transfer-Encoding") == null) {
                    setEncoding(mimePart, MimeUtility.getEncoding(dataHandler));
                }
                if (z3) {
                    encoding = mimePart.getEncoding();
                    if (encoding == null) {
                        defaultMIMECharset = MimeUtility.getDefaultMIMECharset();
                    } else {
                        defaultMIMECharset = MimeUtility.getDefaultMIMECharset();
                    }
                    contentType2.setParameter("charset", defaultMIMECharset);
                    contentType = contentType2.toString();
                }
            }
            if (z3) {
                if (setContentTypeFileName) {
                    parameterList = contentType2.getParameterList();
                    if (parameterList == null) {
                        parameterList = new ParameterList();
                        contentType2.setParameterList(parameterList);
                    }
                    if (encodeFileName) {
                        parameterList.setLiteral(IMAPStore.ID_NAME, MimeUtility.encodeText(parameter));
                    } else {
                        parameterList.set(IMAPStore.ID_NAME, parameter, MimeUtility.getDefaultMIMECharset());
                    }
                    contentType = contentType2.toString();
                }
                mimePart.setHeader("Content-Type", contentType);
            }
        } catch (IOException e2) {
            throw new MessagingException("IOException updating headers", e2);
        }
    }

    public void attachFile(String str, String str2, String str3) throws MessagingException {
        attachFile(new File(str), str2, str3);
    }

    public void saveFile(String str) throws Throwable {
        saveFile(new File(str));
    }

    public MimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) {
        this.headers = internetHeaders;
        this.content = bArr;
    }
}

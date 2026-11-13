package javax.mail.internet;

import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.LineInputStream;
import com.sun.mail.util.LineOutputStream;
import com.sun.mail.util.PropUtil;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataSource;
import javax.mail.BodyPart;
import javax.mail.MessageAware;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.MultipartDataSource;

/* JADX INFO: loaded from: classes.dex */
public class MimeMultipart extends Multipart {
    protected boolean allowEmpty;
    protected boolean complete;
    protected DataSource ds;
    protected boolean ignoreExistingBoundaryParameter;
    protected boolean ignoreMissingBoundaryParameter;
    protected boolean ignoreMissingEndBoundary;
    protected boolean parsed;
    protected String preamble;

    public MimeMultipart() {
        this("mixed");
    }

    private static boolean allDashes(String str) {
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) != '-') {
                return false;
            }
        }
        return true;
    }

    private MimeBodyPart createMimeBodyPartIs(InputStream inputStream) {
        try {
            return createMimeBodyPart(inputStream);
        } finally {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    private static int readFully(InputStream inputStream, byte[] bArr, int i2, int i3) throws IOException {
        int i4 = 0;
        if (i3 == 0) {
            return 0;
        }
        while (i3 > 0) {
            int i5 = inputStream.read(bArr, i2, i3);
            if (i5 <= 0) {
                break;
            }
            i2 += i5;
            i4 += i5;
            i3 -= i5;
        }
        if (i4 > 0) {
            return i4;
        }
        return -1;
    }

    private void skipFully(InputStream inputStream, long j2) throws IOException {
        while (j2 > 0) {
            long jSkip = inputStream.skip(j2);
            if (jSkip <= 0) {
                throw new EOFException("can't skip");
            }
            j2 -= jSkip;
        }
    }

    @Override // javax.mail.Multipart
    public synchronized void addBodyPart(BodyPart bodyPart) {
        parse();
        super.addBodyPart(bodyPart);
    }

    public InternetHeaders createInternetHeaders(InputStream inputStream) {
        return new InternetHeaders(inputStream);
    }

    public MimeBodyPart createMimeBodyPart(InternetHeaders internetHeaders, byte[] bArr) {
        return new MimeBodyPart(internetHeaders, bArr);
    }

    @Override // javax.mail.Multipart
    public synchronized BodyPart getBodyPart(int i2) {
        parse();
        return super.getBodyPart(i2);
    }

    @Override // javax.mail.Multipart
    public synchronized int getCount() {
        parse();
        return super.getCount();
    }

    public synchronized String getPreamble() {
        parse();
        return this.preamble;
    }

    public void initializeProperties() {
        this.ignoreMissingEndBoundary = PropUtil.getBooleanSystemProperty("mail.mime.multipart.ignoremissingendboundary", true);
        this.ignoreMissingBoundaryParameter = PropUtil.getBooleanSystemProperty("mail.mime.multipart.ignoremissingboundaryparameter", true);
        this.ignoreExistingBoundaryParameter = PropUtil.getBooleanSystemProperty("mail.mime.multipart.ignoreexistingboundaryparameter", false);
        this.allowEmpty = PropUtil.getBooleanSystemProperty("mail.mime.multipart.allowempty", false);
    }

    public synchronized boolean isComplete() {
        parse();
        return this.complete;
    }

    /* JADX WARN: Code duplicated, block: B:245:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x0068 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x00de A[Catch: all -> 0x0088, IOException -> 0x008b, TryCatch #6 {IOException -> 0x008b, blocks: (B:39:0x0062, B:40:0x0068, B:42:0x0075, B:44:0x007c, B:48:0x0085, B:53:0x008e, B:55:0x0096, B:58:0x009d, B:60:0x00a8, B:62:0x00ae, B:75:0x00d6, B:78:0x00de, B:79:0x00e8, B:65:0x00b8, B:67:0x00be, B:69:0x00c6, B:71:0x00cd, B:81:0x00f6, B:83:0x00fe, B:88:0x0107, B:89:0x010e, B:90:0x010f, B:92:0x011b, B:93:0x0124, B:95:0x0129, B:97:0x012d, B:99:0x0135, B:102:0x0145, B:101:0x0140, B:103:0x014a, B:106:0x0157, B:107:0x015b, B:109:0x0161, B:113:0x016a, B:115:0x016e, B:116:0x0172, B:117:0x0179, B:120:0x0183, B:123:0x018b, B:125:0x0199, B:126:0x01a0, B:128:0x01ae, B:131:0x01b4, B:132:0x01b8, B:183:0x0271, B:193:0x029c, B:184:0x027a, B:186:0x027d, B:188:0x0286, B:191:0x028c, B:192:0x0292, B:133:0x01c7, B:134:0x01ce, B:137:0x01d3, B:145:0x01f1, B:151:0x01fe, B:198:0x02d1, B:203:0x02e8, B:204:0x02ee, B:206:0x02fa, B:207:0x0308, B:211:0x0315, B:213:0x031b, B:161:0x0219, B:163:0x0228, B:165:0x0230, B:167:0x0236, B:178:0x025c, B:180:0x0266, B:196:0x02ba, B:140:0x01de, B:124:0x0193, B:215:0x033a, B:216:0x0341, B:119:0x017d), top: B:242:0x0062, outer: #5 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v2, types: [int] */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v15 */
    public synchronized void parse() {
        String line;
        boolean z2;
        InternetHeaders internetHeadersCreateInternetHeaders;
        ByteArrayOutputStream byteArrayOutputStream;
        int i2;
        int fully;
        LineInputStream lineInputStream;
        int i3;
        long j2;
        int i4;
        ByteArrayOutputStream byteArrayOutputStream2;
        MimeBodyPart mimeBodyPartCreateMimeBodyPart;
        boolean z3;
        int i5;
        byte[] bArr;
        InternetHeaders internetHeaders;
        ByteArrayOutputStream byteArrayOutputStream3;
        boolean z4;
        int i6;
        InternetHeaders internetHeaders2;
        ByteArrayOutputStream byteArrayOutputStream4;
        byte b;
        String line2;
        String parameter;
        if (this.parsed) {
            return;
        }
        initializeProperties();
        try {
            InputStream inputStream = this.ds.getInputStream();
            if (!(inputStream instanceof ByteArrayInputStream) && !(inputStream instanceof BufferedInputStream) && !(inputStream instanceof SharedInputStream)) {
                inputStream = new BufferedInputStream(inputStream);
            }
            SharedInputStream sharedInputStream = inputStream instanceof SharedInputStream ? (SharedInputStream) inputStream : null;
            String strConcat = (this.ignoreExistingBoundaryParameter || (parameter = new ContentType(this.contentType).getParameter("boundary")) == null) ? null : "--".concat(parameter);
            if (strConcat == null && !this.ignoreMissingBoundaryParameter && !this.ignoreExistingBoundaryParameter) {
                throw new ParseException("Missing boundary parameter");
            }
            try {
                try {
                    LineInputStream lineInputStream2 = new LineInputStream(inputStream);
                    StringBuilder sb = null;
                    while (true) {
                        line = lineInputStream2.readLine();
                        z2 = false;
                        if (line == null) {
                            break;
                        }
                        int length = line.length() - 1;
                        while (length >= 0) {
                            char cCharAt = line.charAt(length);
                            if (cCharAt != ' ' && cCharAt != '\t') {
                                break;
                            } else {
                                length--;
                            }
                        }
                        line = line.substring(0, length + 1);
                        if (strConcat == null) {
                            if (line.length() > 2 && line.startsWith("--") && (line.length() <= 4 || !allDashes(line))) {
                                strConcat = line;
                                break;
                            }
                            if (line.length() <= 0) {
                                if (sb == null) {
                                    sb = new StringBuilder(line.length() + 2);
                                }
                                sb.append(line);
                                sb.append(System.lineSeparator());
                            }
                        } else {
                            if (line.equals(strConcat)) {
                                break;
                            }
                            if (line.length() == strConcat.length() + 2 && line.startsWith(strConcat) && line.endsWith("--")) {
                                line = null;
                                break;
                            }
                            if (line.length() <= 0) {
                                if (sb == null) {
                                    sb = new StringBuilder(line.length() + 2);
                                }
                                sb.append(line);
                                sb.append(System.lineSeparator());
                            }
                        }
                    }
                    if (sb != null) {
                        this.preamble = sb.toString();
                    }
                    if (line == null) {
                        if (!this.allowEmpty) {
                            throw new ParseException("Missing start boundary");
                        }
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                        return;
                    }
                    byte[] bytes = ASCIIUtility.getBytes(strConcat);
                    int length2 = bytes.length;
                    int[] iArr = new int[256];
                    int i7 = 0;
                    while (i7 < length2) {
                        int i8 = bytes[i7] & 255;
                        i7++;
                        iArr[i8] = i7;
                    }
                    int[] iArr2 = new int[length2];
                    for (int i9 = length2; i9 > 0; i9--) {
                        int i10 = length2 - 1;
                        while (true) {
                            if (i10 < i9) {
                                while (i10 > 0) {
                                    i10--;
                                    iArr2[i10] = i9;
                                }
                                break;
                            } else {
                                if (bytes[i10] != bytes[i10 - i9]) {
                                    break;
                                }
                                iArr2[i10 - 1] = i9;
                                i10--;
                            }
                        }
                    }
                    int i11 = length2 - 1;
                    iArr2[i11] = 1;
                    long position = 0;
                    boolean z5 = false;
                    long position2 = 0;
                    while (!z5) {
                        if (sharedInputStream != null) {
                            position = sharedInputStream.getPosition();
                            do {
                                line2 = lineInputStream2.readLine();
                                if (line2 == null) {
                                    break;
                                }
                            } while (line2.length() > 0);
                            if (line2 == null) {
                                if (!this.ignoreMissingEndBoundary) {
                                    throw new ParseException("missing multipart end boundary");
                                }
                                this.complete = z2;
                                break;
                            }
                            internetHeadersCreateInternetHeaders = null;
                        } else {
                            internetHeadersCreateInternetHeaders = createInternetHeaders(inputStream);
                        }
                        if (!inputStream.markSupported()) {
                            throw new MessagingException("Stream doesn't support mark");
                        }
                        if (sharedInputStream == null) {
                            byteArrayOutputStream = new ByteArrayOutputStream();
                        } else {
                            position2 = sharedInputStream.getPosition();
                            byteArrayOutputStream = null;
                        }
                        byte[] bArr2 = new byte[length2];
                        byte[] bArr3 = new byte[length2];
                        ?? r10 = z2;
                        boolean z6 = true;
                        while (true) {
                            inputStream.mark(length2 + 1004);
                            i2 = i11;
                            fully = readFully(inputStream, bArr2, 0, length2);
                            if (fully < length2) {
                                if (!this.ignoreMissingEndBoundary) {
                                    throw new ParseException("missing multipart end boundary");
                                }
                                if (sharedInputStream != null) {
                                    position2 = sharedInputStream.getPosition();
                                }
                                this.complete = false;
                                lineInputStream = lineInputStream2;
                                i3 = length2;
                                bArr2 = bArr2;
                                j2 = position2;
                                z5 = true;
                                i4 = 0;
                                break;
                            }
                            int i12 = i2;
                            while (true) {
                                if (i12 < 0) {
                                    lineInputStream = lineInputStream2;
                                    z3 = z5;
                                    break;
                                }
                                lineInputStream = lineInputStream2;
                                z3 = z5;
                                if (bArr2[i12] != bytes[i12]) {
                                    break;
                                }
                                i12--;
                                lineInputStream2 = lineInputStream;
                                z5 = z3;
                            }
                            if (i12 < 0) {
                                i4 = (z6 || !((b = bArr3[r10 - 1]) == 13 || b == 10)) ? 0 : (b == 10 && r10 >= 2 && bArr3[r10 + (-2)] == 13) ? 2 : 1;
                                if (z6 || i4 > 0) {
                                    if (sharedInputStream != null) {
                                        position2 = (sharedInputStream.getPosition() - ((long) length2)) - ((long) i4);
                                    }
                                    int i13 = inputStream.read();
                                    if (i13 != 45 || inputStream.read() != 45) {
                                        while (true) {
                                            if (i13 != 32 && i13 != 9) {
                                                break;
                                            }
                                            int i14 = length2;
                                            ByteArrayOutputStream byteArrayOutputStream5 = byteArrayOutputStream;
                                            bArr2 = bArr2;
                                            internetHeadersCreateInternetHeaders = internetHeadersCreateInternetHeaders;
                                            i13 = inputStream.read();
                                            length2 = i14;
                                            byteArrayOutputStream = byteArrayOutputStream5;
                                        }
                                        if (i13 != 10) {
                                            if (i13 == 13) {
                                                inputStream.mark(1);
                                                if (inputStream.read() != 10) {
                                                    inputStream.reset();
                                                }
                                            } else {
                                                i5 = length2;
                                                internetHeaders2 = internetHeadersCreateInternetHeaders;
                                                byteArrayOutputStream4 = byteArrayOutputStream;
                                                bArr = bArr2;
                                            }
                                        }
                                        i3 = length2;
                                        j2 = position2;
                                        z5 = z3;
                                        break;
                                    }
                                    this.complete = true;
                                    i3 = length2;
                                    j2 = position2;
                                    z5 = true;
                                    break;
                                }
                                i5 = length2;
                                bArr = bArr2;
                                internetHeaders2 = internetHeadersCreateInternetHeaders;
                                byteArrayOutputStream4 = byteArrayOutputStream;
                                internetHeaders = internetHeaders2;
                                byteArrayOutputStream3 = byteArrayOutputStream4;
                                i12 = 0;
                            } else {
                                i5 = length2;
                                bArr = bArr2;
                                internetHeaders = internetHeadersCreateInternetHeaders;
                                byteArrayOutputStream3 = byteArrayOutputStream;
                            }
                            int iMax = Math.max((i12 + 1) - iArr[bArr[i12] & 127], iArr2[i12]);
                            if (iMax < 2) {
                                if (sharedInputStream == null && r10 > 1) {
                                    byteArrayOutputStream3.write(bArr3, 0, r10 - 1);
                                }
                                inputStream.reset();
                                ?? r11 = r10;
                                skipFully(inputStream, 1L);
                                if (r11 >= 1) {
                                    bArr3[0] = bArr3[(r11 == true ? 1 : 0) - 1];
                                    bArr3[1] = bArr[0];
                                    z4 = false;
                                    i6 = 2;
                                } else {
                                    bArr3[0] = bArr[0];
                                    z4 = false;
                                    i6 = 1;
                                }
                            } else {
                                ?? r12 = r10;
                                if (r12 <= 0 || sharedInputStream != null) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                    byteArrayOutputStream3.write(bArr3, 0, r12 == true ? 1 : 0);
                                }
                                inputStream.reset();
                                skipFully(inputStream, iMax);
                                i6 = iMax;
                                byte[] bArr4 = bArr3;
                                bArr3 = bArr;
                                bArr = bArr4;
                            }
                            byteArrayOutputStream = byteArrayOutputStream3;
                            internetHeadersCreateInternetHeaders = internetHeaders;
                            z6 = z4;
                            i11 = i2;
                            lineInputStream2 = lineInputStream;
                            z5 = z3;
                            bArr2 = bArr;
                            length2 = i5;
                            r10 = i6;
                        }
                        if (sharedInputStream != null) {
                            mimeBodyPartCreateMimeBodyPart = createMimeBodyPartIs(sharedInputStream.newStream(position, j2));
                        } else {
                            int i15 = r10 - i4;
                            if (i15 > 0) {
                                byteArrayOutputStream2 = byteArrayOutputStream;
                                byteArrayOutputStream2.write(bArr3, 0, i15);
                            } else {
                                byteArrayOutputStream2 = byteArrayOutputStream;
                            }
                            if (!this.complete && fully > 0) {
                                byteArrayOutputStream2.write(bArr2, 0, fully);
                            }
                            mimeBodyPartCreateMimeBodyPart = createMimeBodyPart(internetHeadersCreateInternetHeaders, byteArrayOutputStream2.toByteArray());
                        }
                        super.addBodyPart(mimeBodyPartCreateMimeBodyPart);
                        position2 = j2;
                        i11 = i2;
                        lineInputStream2 = lineInputStream;
                        length2 = i3;
                        z2 = false;
                    }
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                    this.parsed = true;
                } catch (IOException e2) {
                    throw new MessagingException("IO Error", e2);
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
                throw th;
            }
        } catch (Exception e3) {
            throw new MessagingException("No inputstream from datasource", e3);
        }
    }

    @Override // javax.mail.Multipart
    public boolean removeBodyPart(BodyPart bodyPart) {
        parse();
        return super.removeBodyPart(bodyPart);
    }

    public synchronized void setPreamble(String str) {
        this.preamble = str;
    }

    public synchronized void setSubType(String str) {
        ContentType contentType = new ContentType(this.contentType);
        contentType.setSubType(str);
        this.contentType = contentType.toString();
    }

    public synchronized void updateHeaders() {
        parse();
        for (int i2 = 0; i2 < this.parts.size(); i2++) {
            ((MimeBodyPart) this.parts.elementAt(i2)).updateHeaders();
        }
    }

    @Override // javax.mail.Multipart
    public synchronized void writeTo(OutputStream outputStream) {
        try {
            parse();
            String str = "--" + new ContentType(this.contentType).getParameter("boundary");
            LineOutputStream lineOutputStream = new LineOutputStream(outputStream);
            String str2 = this.preamble;
            if (str2 != null) {
                byte[] bytes = ASCIIUtility.getBytes(str2);
                lineOutputStream.write(bytes);
                if (bytes.length > 0 && bytes[bytes.length - 1] != 13 && bytes[bytes.length - 1] != 10) {
                    lineOutputStream.writeln();
                }
            }
            if (this.parts.size() != 0) {
                for (int i2 = 0; i2 < this.parts.size(); i2++) {
                    lineOutputStream.writeln(str);
                    ((MimeBodyPart) this.parts.elementAt(i2)).writeTo(outputStream);
                    lineOutputStream.writeln();
                }
            } else {
                if (!this.allowEmpty) {
                    throw new MessagingException("Empty multipart: " + this.contentType);
                }
                lineOutputStream.writeln(str);
                lineOutputStream.writeln();
            }
            lineOutputStream.writeln(str + "--");
        } catch (Throwable th) {
            throw th;
        }
    }

    public MimeMultipart(String str) {
        this.ds = null;
        this.parsed = true;
        this.complete = true;
        this.preamble = null;
        this.ignoreMissingEndBoundary = true;
        this.ignoreMissingBoundaryParameter = true;
        this.ignoreExistingBoundaryParameter = false;
        this.allowEmpty = false;
        String uniqueBoundaryValue = UniqueValue.getUniqueBoundaryValue();
        ContentType contentType = new ContentType("multipart", str, null);
        contentType.setParameter("boundary", uniqueBoundaryValue);
        this.contentType = contentType.toString();
        initializeProperties();
    }

    public MimeBodyPart createMimeBodyPart(InputStream inputStream) {
        return new MimeBodyPart(inputStream);
    }

    public synchronized BodyPart getBodyPart(String str) {
        parse();
        int count = getCount();
        for (int i2 = 0; i2 < count; i2++) {
            MimeBodyPart mimeBodyPart = (MimeBodyPart) getBodyPart(i2);
            String contentID = mimeBodyPart.getContentID();
            if (contentID != null && contentID.equals(str)) {
                return mimeBodyPart;
            }
        }
        return null;
    }

    @Override // javax.mail.Multipart
    public void removeBodyPart(int i2) {
        parse();
        super.removeBodyPart(i2);
    }

    @Override // javax.mail.Multipart
    public synchronized void addBodyPart(BodyPart bodyPart, int i2) {
        parse();
        super.addBodyPart(bodyPart, i2);
    }

    public MimeMultipart(BodyPart... bodyPartArr) {
        this();
        for (BodyPart bodyPart : bodyPartArr) {
            super.addBodyPart(bodyPart);
        }
    }

    public MimeMultipart(String str, BodyPart... bodyPartArr) {
        this(str);
        for (BodyPart bodyPart : bodyPartArr) {
            super.addBodyPart(bodyPart);
        }
    }

    public MimeMultipart(DataSource dataSource) {
        this.ds = null;
        this.parsed = true;
        this.complete = true;
        this.preamble = null;
        this.ignoreMissingEndBoundary = true;
        this.ignoreMissingBoundaryParameter = true;
        this.ignoreExistingBoundaryParameter = false;
        this.allowEmpty = false;
        if (dataSource instanceof MessageAware) {
            setParent(((MessageAware) dataSource).getMessageContext().getPart());
        }
        if (dataSource instanceof MultipartDataSource) {
            setMultipartDataSource((MultipartDataSource) dataSource);
            return;
        }
        this.parsed = false;
        this.ds = dataSource;
        this.contentType = dataSource.getContentType();
    }
}

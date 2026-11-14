package javax.mail.internet;

import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.BASE64DecoderStream;
import com.sun.mail.util.BASE64EncoderStream;
import com.sun.mail.util.BEncoderStream;
import com.sun.mail.util.LineInputStream;
import com.sun.mail.util.PropUtil;
import com.sun.mail.util.QDecoderStream;
import com.sun.mail.util.QEncoderStream;
import com.sun.mail.util.QPDecoderStream;
import com.sun.mail.util.QPEncoderStream;
import com.sun.mail.util.UUDecoderStream;
import com.sun.mail.util.UUEncoderStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.EncodingAware;
import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes.dex */
public class MimeUtility {
    public static final int ALL = -1;
    static final int ALL_ASCII = 1;
    static final int MOSTLY_ASCII = 2;
    static final int MOSTLY_NONASCII = 3;
    private static String defaultJavaCharset;
    private static String defaultMIMECharset;
    private static final Map<String, Boolean> nonAsciiCharsetMap = new HashMap();
    private static final boolean decodeStrict = PropUtil.getBooleanSystemProperty("mail.mime.decodetext.strict", true);
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean encodeEolStrict = PropUtil.getBooleanSystemProperty("mail.mime.encodeeol.strict", $assertionsDisabled);
    private static final boolean ignoreUnknownEncoding = PropUtil.getBooleanSystemProperty("mail.mime.ignoreunknownencoding", $assertionsDisabled);
    private static final boolean allowUtf8 = PropUtil.getBooleanSystemProperty("mail.mime.allowutf8", $assertionsDisabled);
    private static final boolean foldEncodedWords = PropUtil.getBooleanSystemProperty("mail.mime.foldencodedwords", $assertionsDisabled);
    private static final boolean foldText = PropUtil.getBooleanSystemProperty("mail.mime.foldtext", true);
    private static Map<String, String> java2mime = new HashMap(40);
    private static Map<String, String> mime2java = new HashMap(14);

    /* JADX WARN: Multi-variable type inference failed */
    static {
        LineInputStream lineInputStream;
        Throwable th;
        try {
            InputStream resourceAsStream = MimeUtility.class.getResourceAsStream("/META-INF/javamail.charset.map");
            if (resourceAsStream != null) {
                try {
                    lineInputStream = new LineInputStream(resourceAsStream);
                    try {
                        loadMappings(lineInputStream, java2mime);
                        loadMappings(lineInputStream, mime2java);
                        lineInputStream.close();
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            lineInputStream.close();
                        } catch (Exception unused) {
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    lineInputStream = resourceAsStream;
                    th = th3;
                }
            }
        } catch (Exception unused2) {
        }
        if (java2mime.isEmpty()) {
            java2mime.put("8859_1", "ISO-8859-1");
            java2mime.put("iso8859_1", "ISO-8859-1");
            java2mime.put("iso8859-1", "ISO-8859-1");
            java2mime.put("8859_2", "ISO-8859-2");
            java2mime.put("iso8859_2", "ISO-8859-2");
            java2mime.put("iso8859-2", "ISO-8859-2");
            java2mime.put("8859_3", "ISO-8859-3");
            java2mime.put("iso8859_3", "ISO-8859-3");
            java2mime.put("iso8859-3", "ISO-8859-3");
            java2mime.put("8859_4", "ISO-8859-4");
            java2mime.put("iso8859_4", "ISO-8859-4");
            java2mime.put("iso8859-4", "ISO-8859-4");
            java2mime.put("8859_5", "ISO-8859-5");
            java2mime.put("iso8859_5", "ISO-8859-5");
            java2mime.put("iso8859-5", "ISO-8859-5");
            java2mime.put("8859_6", "ISO-8859-6");
            java2mime.put("iso8859_6", "ISO-8859-6");
            java2mime.put("iso8859-6", "ISO-8859-6");
            java2mime.put("8859_7", "ISO-8859-7");
            java2mime.put("iso8859_7", "ISO-8859-7");
            java2mime.put("iso8859-7", "ISO-8859-7");
            java2mime.put("8859_8", "ISO-8859-8");
            java2mime.put("iso8859_8", "ISO-8859-8");
            java2mime.put("iso8859-8", "ISO-8859-8");
            java2mime.put("8859_9", "ISO-8859-9");
            java2mime.put("iso8859_9", "ISO-8859-9");
            java2mime.put("iso8859-9", "ISO-8859-9");
            java2mime.put("sjis", "Shift_JIS");
            java2mime.put("jis", "ISO-2022-JP");
            java2mime.put("iso2022jp", "ISO-2022-JP");
            java2mime.put("euc_jp", "euc-jp");
            java2mime.put("koi8_r", "koi8-r");
            java2mime.put("euc_cn", "euc-cn");
            java2mime.put("euc_tw", "euc-tw");
            java2mime.put("euc_kr", "euc-kr");
        }
        if (mime2java.isEmpty()) {
            mime2java.put("iso-2022-cn", "ISO2022CN");
            mime2java.put("iso-2022-kr", "ISO2022KR");
            mime2java.put("utf-8", "UTF8");
            mime2java.put("utf8", "UTF8");
            mime2java.put("ja_jp.iso2022-7", "ISO2022JP");
            mime2java.put("ja_jp.eucjp", "EUCJIS");
            mime2java.put("euc-kr", "KSC5601");
            mime2java.put("euckr", "KSC5601");
            mime2java.put("us-ascii", "ISO-8859-1");
            mime2java.put("x-us-ascii", "ISO-8859-1");
            mime2java.put("gb2312", "GB18030");
            mime2java.put("cp936", "GB18030");
            mime2java.put("ms936", "GB18030");
            mime2java.put("gbk", "GB18030");
        }
    }

    private MimeUtility() {
    }

    public static int checkAscii(String str) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (nonascii(str.charAt(i4))) {
                i2++;
            } else {
                i3++;
            }
        }
        if (i2 == 0) {
            return 1;
        }
        return i3 > i2 ? 2 : 3;
    }

    public static InputStream decode(InputStream inputStream, String str) throws MessagingException {
        if (str.equalsIgnoreCase("base64")) {
            return new BASE64DecoderStream(inputStream);
        }
        if (str.equalsIgnoreCase("quoted-printable")) {
            return new QPDecoderStream(inputStream);
        }
        if (str.equalsIgnoreCase("uuencode") || str.equalsIgnoreCase("x-uuencode") || str.equalsIgnoreCase("x-uue")) {
            return new UUDecoderStream(inputStream);
        }
        if (str.equalsIgnoreCase("binary") || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase("8bit") || ignoreUnknownEncoding) {
            return inputStream;
        }
        throw new MessagingException("Unknown encoding: ".concat(str));
    }

    private static String decodeInnerWords(String str) throws UnsupportedEncodingException {
        int iIndexOf;
        int iIndexOf2;
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            int iIndexOf3 = str.indexOf("=?", i2);
            if (iIndexOf3 < 0) {
                break;
            }
            sb.append(str.substring(i2, iIndexOf3));
            int iIndexOf4 = str.indexOf(63, iIndexOf3 + 2);
            if (iIndexOf4 < 0 || (iIndexOf = str.indexOf(63, iIndexOf4 + 1)) < 0 || (iIndexOf2 = str.indexOf("?=", iIndexOf + 1)) < 0) {
                break;
            }
            i2 = iIndexOf2 + 2;
            String strSubstring = str.substring(iIndexOf3, i2);
            try {
                strSubstring = decodeWord(strSubstring);
            } catch (ParseException unused) {
            }
            sb.append(strSubstring);
        }
        if (i2 == 0) {
            return str;
        }
        if (i2 < str.length()) {
            sb.append(str.substring(i2));
        }
        return sb.toString();
    }

    public static String decodeText(String str) throws UnsupportedEncodingException {
        String strDecodeInnerWords;
        if (str.indexOf("=?") == -1) {
            return str;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, " \t\n\r", true);
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        boolean zEndsWith = false;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            char cCharAt = strNextToken.charAt(0);
            if (cCharAt == ' ' || cCharAt == '\t' || cCharAt == '\r' || cCharAt == '\n') {
                sb2.append(cCharAt);
            } else {
                try {
                    strDecodeInnerWords = decodeWord(strNextToken);
                    if (!zEndsWith && sb2.length() > 0) {
                        sb.append((CharSequence) sb2);
                    }
                    zEndsWith = true;
                } catch (ParseException unused) {
                    if (!decodeStrict) {
                        strDecodeInnerWords = decodeInnerWords(strNextToken);
                        if (strDecodeInnerWords != strNextToken) {
                            if ((!zEndsWith || !strNextToken.startsWith("=?")) && sb2.length() > 0) {
                                sb.append((CharSequence) sb2);
                            }
                            zEndsWith = strNextToken.endsWith("?=");
                        } else if (sb2.length() > 0) {
                            sb.append((CharSequence) sb2);
                        }
                    } else if (sb2.length() > 0) {
                        sb.append((CharSequence) sb2);
                    }
                    zEndsWith = false;
                    sb.append(strNextToken);
                    sb2.setLength(0);
                }
                strNextToken = strDecodeInnerWords;
                sb.append(strNextToken);
                sb2.setLength(0);
            }
        }
        sb.append((CharSequence) sb2);
        return sb.toString();
    }

    public static String decodeWord(String str) throws ParseException, UnsupportedEncodingException {
        InputStream qDecoderStream;
        if (!str.startsWith("=?")) {
            throw new ParseException("encoded word does not start with \"=?\": ".concat(str));
        }
        int iIndexOf = str.indexOf(63, 2);
        if (iIndexOf == -1) {
            throw new ParseException("encoded word does not include charset: ".concat(str));
        }
        String strSubstring = str.substring(2, iIndexOf);
        int iIndexOf2 = strSubstring.indexOf(42);
        if (iIndexOf2 >= 0) {
            strSubstring = strSubstring.substring(0, iIndexOf2);
        }
        String strJavaCharset = javaCharset(strSubstring);
        int i2 = iIndexOf + 1;
        int iIndexOf3 = str.indexOf(63, i2);
        if (iIndexOf3 == -1) {
            throw new ParseException("encoded word does not include encoding: ".concat(str));
        }
        String strSubstring2 = str.substring(i2, iIndexOf3);
        int i3 = iIndexOf3 + 1;
        int iIndexOf4 = str.indexOf("?=", i3);
        if (iIndexOf4 == -1) {
            throw new ParseException("encoded word does not end with \"?=\": ".concat(str));
        }
        String strSubstring3 = str.substring(i3, iIndexOf4);
        try {
            String str2 = "";
            if (strSubstring3.length() > 0) {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(ASCIIUtility.getBytes(strSubstring3));
                if (strSubstring2.equalsIgnoreCase("B")) {
                    qDecoderStream = new BASE64DecoderStream(byteArrayInputStream);
                } else {
                    if (!strSubstring2.equalsIgnoreCase("Q")) {
                        throw new UnsupportedEncodingException("unknown encoding: ".concat(strSubstring2));
                    }
                    qDecoderStream = new QDecoderStream(byteArrayInputStream);
                }
                int iAvailable = byteArrayInputStream.available();
                byte[] bArr = new byte[iAvailable];
                int i4 = qDecoderStream.read(bArr, 0, iAvailable);
                if (i4 > 0) {
                    str2 = new String(bArr, 0, i4, strJavaCharset);
                }
            }
            int i5 = iIndexOf4 + 2;
            if (i5 >= str.length()) {
                return str2;
            }
            String strSubstring4 = str.substring(i5);
            if (!decodeStrict) {
                strSubstring4 = decodeInnerWords(strSubstring4);
            }
            return str2 + strSubstring4;
        } catch (UnsupportedEncodingException e2) {
            throw e2;
        } catch (IOException e3) {
            throw new ParseException(e3.toString());
        } catch (IllegalArgumentException unused) {
            throw new UnsupportedEncodingException(strJavaCharset);
        }
    }

    private static void doEncode(String str, boolean z2, String str2, int i2, String str3, boolean z3, boolean z4, StringBuilder sb) throws UnsupportedEncodingException {
        int length;
        byte[] bytes = str.getBytes(str2);
        if ((z2 ? BEncoderStream.encodedLength(bytes) : QEncoderStream.encodedLength(bytes, z4)) > i2 && (length = str.length()) > 1) {
            int i3 = length / 2;
            if (Character.isHighSurrogate(str.charAt(i3 - 1))) {
                i3--;
            }
            int i4 = i3;
            if (i4 > 0) {
                doEncode(str.substring(0, i4), z2, str2, i2, str3, z3, z4, sb);
            }
            doEncode(str.substring(i4, length), z2, str2, i2, str3, $assertionsDisabled, z4, sb);
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStream bEncoderStream = z2 ? new BEncoderStream(byteArrayOutputStream) : new QEncoderStream(byteArrayOutputStream, z4);
        try {
            bEncoderStream.write(bytes);
            bEncoderStream.close();
        } catch (IOException unused) {
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (!z3) {
            if (foldEncodedWords) {
                sb.append("\r\n ");
            } else {
                sb.append(" ");
            }
        }
        sb.append(str3);
        for (byte b : byteArray) {
            sb.append((char) b);
        }
        sb.append("?=");
    }

    public static OutputStream encode(OutputStream outputStream, String str) throws MessagingException {
        if (str == null) {
            return outputStream;
        }
        if (str.equalsIgnoreCase("base64")) {
            return new BASE64EncoderStream(outputStream);
        }
        if (str.equalsIgnoreCase("quoted-printable")) {
            return new QPEncoderStream(outputStream);
        }
        if (str.equalsIgnoreCase("uuencode") || str.equalsIgnoreCase("x-uuencode") || str.equalsIgnoreCase("x-uue")) {
            return new UUEncoderStream(outputStream);
        }
        if (str.equalsIgnoreCase("binary") || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase("8bit")) {
            return outputStream;
        }
        throw new MessagingException("Unknown encoding: ".concat(str));
    }

    public static String encodeText(String str) {
        return encodeText(str, null, null);
    }

    public static String encodeWord(String str) {
        return encodeWord(str, null, null);
    }

    public static String fold(int i2, String str) {
        char cCharAt;
        if (!foldText) {
            return str;
        }
        int length = str.length() - 1;
        while (length >= 0 && ((cCharAt = str.charAt(length)) == ' ' || cCharAt == '\t' || cCharAt == '\r' || cCharAt == '\n')) {
            length--;
        }
        if (length != str.length() - 1) {
            str = str.substring(0, length + 1);
        }
        if (str.length() + i2 <= 76) {
            return makesafe(str);
        }
        StringBuilder sb = new StringBuilder(str.length() + 4);
        char cCharAt2 = 0;
        while (str.length() + i2 > 76) {
            int i3 = 0;
            int i4 = -1;
            while (i3 < str.length() && (i4 == -1 || i2 + i3 <= 76)) {
                char cCharAt3 = str.charAt(i3);
                if ((cCharAt3 == ' ' || cCharAt3 == '\t') && cCharAt2 != ' ' && cCharAt2 != '\t') {
                    i4 = i3;
                }
                i3++;
                cCharAt2 = cCharAt3;
            }
            if (i4 == -1) {
                sb.append(str);
                str = "";
                break;
            }
            sb.append(str.substring(0, i4));
            sb.append("\r\n");
            cCharAt2 = str.charAt(i4);
            sb.append(cCharAt2);
            str = str.substring(i4 + 1);
            i2 = 1;
        }
        sb.append(str);
        return makesafe(sb);
    }

    public static String getDefaultJavaCharset() {
        String property;
        if (defaultJavaCharset == null) {
            try {
                property = System.getProperty("mail.mime.charset");
            } catch (SecurityException unused) {
                property = null;
            }
            if (property != null && property.length() > 0) {
                String strJavaCharset = javaCharset(property);
                defaultJavaCharset = strJavaCharset;
                return strJavaCharset;
            }
            try {
                defaultJavaCharset = System.getProperty("file.encoding", "8859_1");
            } catch (SecurityException unused2) {
                String encoding = new InputStreamReader(new InputStream() { // from class: javax.mail.internet.MimeUtility.1NullInputStream
                    @Override // java.io.InputStream
                    public int read() {
                        return 0;
                    }
                }).getEncoding();
                defaultJavaCharset = encoding;
                if (encoding == null) {
                    defaultJavaCharset = "8859_1";
                }
            }
        }
        return defaultJavaCharset;
    }

    public static String getDefaultMIMECharset() {
        if (defaultMIMECharset == null) {
            try {
                defaultMIMECharset = System.getProperty("mail.mime.charset");
            } catch (SecurityException unused) {
            }
        }
        if (defaultMIMECharset == null) {
            defaultMIMECharset = mimeCharset(getDefaultJavaCharset());
        }
        return defaultMIMECharset;
    }

    public static String getEncoding(DataSource dataSource) {
        String encoding;
        String str = "base64";
        if ((dataSource instanceof EncodingAware) && (encoding = ((EncodingAware) dataSource).getEncoding()) != null) {
            return encoding;
        }
        InputStream inputStream = null;
        try {
            ContentType contentType = new ContentType(dataSource.getContentType());
            inputStream = dataSource.getInputStream();
            boolean zMatch = contentType.match("text/*");
            int iCheckAscii = checkAscii(inputStream, -1, !zMatch);
            if (iCheckAscii == 1) {
                str = "7bit";
            } else if (iCheckAscii == 2 && (!zMatch || !nonAsciiCharset(contentType))) {
                str = "quoted-printable";
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            return str;
        } catch (Exception unused2) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
            }
            return "base64";
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    private static int indexOfAny(String str, String str2) {
        return indexOfAny(str, str2, 0);
    }

    public static String javaCharset(String str) {
        Map<String, String> map = mime2java;
        if (map == null || str == null) {
            return str;
        }
        String str2 = map.get(str.toLowerCase(Locale.ENGLISH));
        if (str2 != null) {
            try {
                Charset.forName(str2);
            } catch (Exception unused) {
                str2 = null;
            }
        }
        return str2 == null ? str : str2;
    }

    private static void loadMappings(LineInputStream lineInputStream, Map<String, String> map) {
        while (true) {
            try {
                String line = lineInputStream.readLine();
                if (line == null) {
                    return;
                }
                if (line.startsWith("--") && line.endsWith("--")) {
                    return;
                }
                if (line.trim().length() != 0 && !line.startsWith("#")) {
                    StringTokenizer stringTokenizer = new StringTokenizer(line, " \t");
                    try {
                        String strNextToken = stringTokenizer.nextToken();
                        map.put(strNextToken.toLowerCase(Locale.ENGLISH), stringTokenizer.nextToken());
                    } catch (NoSuchElementException unused) {
                    }
                }
            } catch (IOException unused2) {
                return;
            }
        }
    }

    private static String makesafe(CharSequence charSequence) {
        char cCharAt;
        int i2 = 0;
        while (i2 < charSequence.length() && (cCharAt = charSequence.charAt(i2)) != '\r' && cCharAt != '\n') {
            i2++;
        }
        if (i2 == charSequence.length()) {
            return charSequence.toString();
        }
        StringBuilder sb = new StringBuilder(charSequence.length() + 1);
        BufferedReader bufferedReader = new BufferedReader(new StringReader(charSequence.toString()));
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return sb.toString();
                }
                if (line.trim().length() != 0) {
                    if (sb.length() > 0) {
                        sb.append("\r\n");
                        char cCharAt2 = line.charAt(0);
                        if (cCharAt2 != ' ' && cCharAt2 != '\t') {
                            sb.append(' ');
                        }
                    }
                    sb.append(line);
                }
            } catch (IOException unused) {
                return charSequence.toString();
            }
        }
    }

    public static String mimeCharset(String str) {
        String str2;
        Map<String, String> map = java2mime;
        return (map == null || str == null || (str2 = map.get(str.toLowerCase(Locale.ENGLISH))) == null) ? str : str2;
    }

    private static boolean nonAsciiCharset(ContentType contentType) {
        Boolean bool;
        Boolean boolValueOf;
        String parameter = contentType.getParameter("charset");
        boolean z2 = $assertionsDisabled;
        if (parameter == null) {
            return $assertionsDisabled;
        }
        String lowerCase = parameter.toLowerCase(Locale.ENGLISH);
        Map<String, Boolean> map = nonAsciiCharsetMap;
        synchronized (map) {
            bool = map.get(lowerCase);
        }
        if (bool == null) {
            try {
                byte[] bytes = "\r\n".getBytes(lowerCase);
                if (bytes.length != 2 || bytes[0] != 13 || bytes[1] != 10) {
                    z2 = true;
                }
                boolValueOf = Boolean.valueOf(z2);
            } catch (UnsupportedEncodingException unused) {
                boolValueOf = Boolean.FALSE;
            } catch (RuntimeException unused2) {
                boolValueOf = Boolean.TRUE;
            }
            bool = boolValueOf;
            Map<String, Boolean> map2 = nonAsciiCharsetMap;
            synchronized (map2) {
                map2.put(lowerCase, bool);
            }
        }
        return bool.booleanValue();
    }

    public static final boolean nonascii(int i2) {
        if (i2 >= 127 || !(i2 >= 32 || i2 == 13 || i2 == 10 || i2 == 9)) {
            return true;
        }
        return $assertionsDisabled;
    }

    public static String quote(String str, String str2) {
        char c2 = 0;
        int length = str == null ? 0 : str.length();
        if (length == 0) {
            return "\"\"";
        }
        int i2 = 0;
        boolean z2 = false;
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\"' || cCharAt == '\\' || cCharAt == '\r' || cCharAt == '\n') {
                StringBuilder sb = new StringBuilder(length + 3);
                sb.append('\"');
                sb.append(str.substring(0, i2));
                while (i2 < length) {
                    char cCharAt2 = str.charAt(i2);
                    if ((cCharAt2 == '\"' || cCharAt2 == '\\' || cCharAt2 == '\r' || cCharAt2 == '\n') && (cCharAt2 != '\n' || c2 != '\r')) {
                        sb.append('\\');
                    }
                    sb.append(cCharAt2);
                    i2++;
                    c2 = cCharAt2;
                }
                sb.append('\"');
                return sb.toString();
            }
            if (cCharAt < ' ' || ((cCharAt >= 127 && !allowUtf8) || str2.indexOf(cCharAt) >= 0)) {
                z2 = true;
            }
            i2++;
        }
        if (!z2) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder(length + 2);
        sb2.append('\"');
        sb2.append(str);
        sb2.append('\"');
        return sb2.toString();
    }

    public static String unfold(String str) {
        char cCharAt;
        if (!foldText) {
            return str;
        }
        StringBuilder sb = null;
        while (true) {
            int iIndexOfAny = indexOfAny(str, "\r\n");
            if (iIndexOfAny < 0) {
                break;
            }
            int length = str.length();
            int i2 = iIndexOfAny + 1;
            if (i2 < length && str.charAt(iIndexOfAny) == '\r' && str.charAt(i2) == '\n') {
                i2 = iIndexOfAny + 2;
            }
            if (iIndexOfAny > 0) {
                int i3 = iIndexOfAny - 1;
                if (str.charAt(i3) == '\\') {
                    if (sb == null) {
                        sb = new StringBuilder(str.length());
                    }
                    sb.append(str.substring(0, i3));
                    sb.append(str.substring(iIndexOfAny, i2));
                    str = str.substring(i2);
                }
            }
            if (i2 >= length || (cCharAt = str.charAt(i2)) == ' ' || cCharAt == '\t') {
                if (sb == null) {
                    sb = new StringBuilder(str.length());
                }
                sb.append(str.substring(0, iIndexOfAny));
                str = str.substring(i2);
            } else {
                if (sb == null) {
                    sb = new StringBuilder(str.length());
                }
                sb.append(str.substring(0, i2));
                str = str.substring(i2);
            }
        }
        if (sb == null) {
            return str;
        }
        sb.append(str);
        return sb.toString();
    }

    public static String encodeText(String str, String str2, String str3) {
        return encodeWord(str, str2, str3, $assertionsDisabled);
    }

    public static String encodeWord(String str, String str2, String str3) {
        return encodeWord(str, str2, str3, true);
    }

    private static int indexOfAny(String str, String str2, int i2) {
        try {
            int length = str.length();
            while (i2 < length) {
                if (str2.indexOf(str.charAt(i2)) >= 0) {
                    return i2;
                }
                i2++;
            }
        } catch (StringIndexOutOfBoundsException unused) {
        }
        return -1;
    }

    public static int checkAscii(byte[] bArr) {
        int i2 = 0;
        int i3 = 0;
        for (byte b : bArr) {
            if (nonascii(b & 255)) {
                i2++;
            } else {
                i3++;
            }
        }
        if (i2 == 0) {
            return 1;
        }
        return i3 > i2 ? 2 : 3;
    }

    private static String encodeWord(String str, String str2, String str3, boolean z2) throws UnsupportedEncodingException {
        String strJavaCharset;
        int iCheckAscii = checkAscii(str);
        boolean z3 = true;
        if (iCheckAscii == 1) {
            return str;
        }
        if (str2 == null) {
            strJavaCharset = getDefaultJavaCharset();
            str2 = getDefaultMIMECharset();
        } else {
            strJavaCharset = javaCharset(str2);
        }
        if (str3 == null) {
            str3 = iCheckAscii != 3 ? "Q" : "B";
        }
        if (!str3.equalsIgnoreCase("B")) {
            if (!str3.equalsIgnoreCase("Q")) {
                throw new UnsupportedEncodingException("Unknown transfer encoding: ".concat(str3));
            }
            z3 = $assertionsDisabled;
        }
        boolean z4 = z3;
        StringBuilder sb = new StringBuilder();
        doEncode(str, z4, strJavaCharset, 68 - str2.length(), "=?" + str2 + "?" + str3 + "?", true, z2, sb);
        return sb.toString();
    }

    public static int checkAscii(InputStream inputStream, int i2, boolean z2) {
        byte[] bArr;
        int i3 = i2;
        int i4 = 0;
        boolean z3 = encodeEolStrict && z2;
        int i5 = -1;
        int iMin = 4096;
        if (i3 != 0) {
            iMin = i3 != -1 ? Math.min(i3, 4096) : 4096;
            bArr = new byte[iMin];
        } else {
            bArr = null;
        }
        int i6 = 0;
        int i7 = 0;
        boolean z4 = false;
        boolean z5 = false;
        int i8 = 0;
        while (i3 != 0) {
            try {
                int i9 = inputStream.read(bArr, i4, iMin);
                if (i9 == i5) {
                    break;
                }
                int i10 = i4;
                while (i10 < i9) {
                    int i11 = bArr[i10] & 255;
                    if (z3 && ((i4 == 13 && i11 != 10) || (i4 != 13 && i11 == 10))) {
                        z4 = true;
                    }
                    if (i11 == 13 || i11 == 10) {
                        i8 = 0;
                    } else {
                        i8++;
                        if (i8 > 998) {
                            z5 = true;
                        }
                    }
                    if (!nonascii(i11)) {
                        i6++;
                    } else {
                        if (z2) {
                            return 3;
                        }
                        i7++;
                    }
                    i10++;
                    i4 = i11;
                    i5 = -1;
                }
                int i12 = i5;
                if (i3 != i12) {
                    i3 -= i9;
                }
                i5 = i12;
                i4 = 0;
            } catch (IOException unused) {
            }
        }
        if (i3 == 0 && z2) {
            return 3;
        }
        if (i7 != 0) {
            return i6 > i7 ? 2 : 3;
        }
        if (z4) {
            return 3;
        }
        return z5 ? 2 : 1;
    }

    public static OutputStream encode(OutputStream outputStream, String str, String str2) throws MessagingException {
        if (str == null) {
            return outputStream;
        }
        if (str.equalsIgnoreCase("base64")) {
            return new BASE64EncoderStream(outputStream);
        }
        if (str.equalsIgnoreCase("quoted-printable")) {
            return new QPEncoderStream(outputStream);
        }
        if (!str.equalsIgnoreCase("uuencode") && !str.equalsIgnoreCase("x-uuencode") && !str.equalsIgnoreCase("x-uue")) {
            if (str.equalsIgnoreCase("binary") || str.equalsIgnoreCase("7bit") || str.equalsIgnoreCase("8bit")) {
                return outputStream;
            }
            throw new MessagingException("Unknown encoding: ".concat(str));
        }
        return new UUEncoderStream(outputStream, str2);
    }

    public static String getEncoding(DataHandler dataHandler) {
        if (dataHandler.getName() != null) {
            return getEncoding(dataHandler.getDataSource());
        }
        try {
            if (new ContentType(dataHandler.getContentType()).match("text/*")) {
                AsciiOutputStream asciiOutputStream = new AsciiOutputStream($assertionsDisabled, $assertionsDisabled);
                try {
                    dataHandler.writeTo(asciiOutputStream);
                } catch (IOException unused) {
                }
                int ascii = asciiOutputStream.getAscii();
                if (ascii != 1) {
                    if (ascii != 2) {
                        return "base64";
                    }
                    return "quoted-printable";
                }
            } else {
                AsciiOutputStream asciiOutputStream2 = new AsciiOutputStream(true, encodeEolStrict);
                try {
                    dataHandler.writeTo(asciiOutputStream2);
                } catch (IOException unused2) {
                }
                if (asciiOutputStream2.getAscii() != 1) {
                    return "base64";
                }
            }
            return "7bit";
        } catch (Exception unused3) {
            return "base64";
        }
    }
}

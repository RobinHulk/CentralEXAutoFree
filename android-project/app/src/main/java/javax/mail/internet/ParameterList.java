package javax.mail.internet;

import M.d0;
import androidx.fragment.app.Q;
import com.sun.mail.imap.IMAPStore;
import com.sun.mail.util.ASCIIUtility;
import com.sun.mail.util.PropUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ParameterList {
    private String lastName;
    private Map<String, Object> list;
    private Set<String> multisegmentNames;
    private Map<String, Object> slist;
    private static final boolean encodeParameters = PropUtil.getBooleanSystemProperty("mail.mime.encodeparameters", true);
    private static final boolean decodeParameters = PropUtil.getBooleanSystemProperty("mail.mime.decodeparameters", true);
    private static final boolean decodeParametersStrict = PropUtil.getBooleanSystemProperty("mail.mime.decodeparameters.strict", false);
    private static final boolean applehack = PropUtil.getBooleanSystemProperty("mail.mime.applefilenames", false);
    private static final boolean windowshack = PropUtil.getBooleanSystemProperty("mail.mime.windowsfilenames", false);
    private static final boolean parametersStrict = PropUtil.getBooleanSystemProperty("mail.mime.parameters.strict", true);
    private static final boolean splitLongParameters = PropUtil.getBooleanSystemProperty("mail.mime.splitlongparameters", true);
    private static final char[] hex = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static class LiteralValue {
        String value;

        private LiteralValue() {
        }
    }

    public static class MultiValue extends ArrayList<Object> {
        private static final long serialVersionUID = 699561094618751023L;
        String value;

        private MultiValue() {
        }
    }

    public static class ParamEnum implements Enumeration<String> {
        private Iterator<String> it;

        public ParamEnum(Iterator<String> it) {
            this.it = it;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.it.hasNext();
        }

        @Override // java.util.Enumeration
        public String nextElement() {
            return this.it.next();
        }
    }

    public static class ToStringBuffer {
        private StringBuilder sb = new StringBuilder();
        private int used;

        public ToStringBuffer(int i2) {
            this.used = i2;
        }

        public void addNV(String str, String str2) {
            this.sb.append("; ");
            this.used += 2;
            if (this.used + str2.length() + str.length() + 1 > 76) {
                this.sb.append("\r\n\t");
                this.used = 8;
            }
            StringBuilder sb = this.sb;
            sb.append(str);
            sb.append('=');
            int length = str.length() + 1 + this.used;
            this.used = length;
            if (str2.length() + length <= 76) {
                this.sb.append(str2);
                this.used = str2.length() + this.used;
                return;
            }
            String strFold = MimeUtility.fold(this.used, str2);
            this.sb.append(strFold);
            int iLastIndexOf = strFold.lastIndexOf(10);
            if (iLastIndexOf >= 0) {
                this.used = ((strFold.length() - iLastIndexOf) - 1) + this.used;
            } else {
                this.used = strFold.length() + this.used;
            }
        }

        public String toString() {
            return this.sb.toString();
        }
    }

    public static class Value {
        String charset;
        String encodedValue;
        String value;

        private Value() {
        }
    }

    public ParameterList() {
        this.list = new LinkedHashMap();
        this.lastName = null;
        if (decodeParameters) {
            this.multisegmentNames = new HashSet();
            this.slist = new HashMap();
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x006c A[Catch: all -> 0x0049, UnsupportedEncodingException -> 0x0062, TryCatch #2 {UnsupportedEncodingException -> 0x0062, blocks: (B:23:0x005d, B:27:0x0066, B:31:0x0072, B:32:0x0079, B:29:0x006c), top: B:89:0x005d, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0072 A[Catch: all -> 0x0049, UnsupportedEncodingException -> 0x0062, TryCatch #2 {UnsupportedEncodingException -> 0x0062, blocks: (B:23:0x005d, B:27:0x0066, B:31:0x0072, B:32:0x0079, B:29:0x006c), top: B:89:0x005d, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0079 A[Catch: all -> 0x0049, UnsupportedEncodingException -> 0x0062, TRY_LEAVE, TryCatch #2 {UnsupportedEncodingException -> 0x0062, blocks: (B:23:0x005d, B:27:0x0066, B:31:0x0072, B:32:0x0079, B:29:0x006c), top: B:89:0x005d, outer: #4 }] */
    /* JADX WARN: Multi-variable type inference failed */
    private void combineMultisegmentNames(boolean z2) throws ParseException {
        try {
            for (String str : this.multisegmentNames) {
                String strJavaCharset = null;
                MultiValue multiValue = new MultiValue();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                int i2 = 0;
                while (true) {
                    String str2 = str + "*" + i2;
                    Object obj = this.slist.get(str2);
                    if (obj == null) {
                        break;
                    }
                    multiValue.add(obj);
                    try {
                        if (obj instanceof Value) {
                            Value value = (Value) obj;
                            if (i2 == 0) {
                                strJavaCharset = value.charset;
                            } else if (strJavaCharset == null) {
                                this.multisegmentNames.remove(str);
                                break;
                            }
                            decodeBytes(value.value, byteArrayOutputStream);
                        } else {
                            byteArrayOutputStream.write(ASCIIUtility.getBytes((String) obj));
                        }
                    } catch (IOException unused) {
                    }
                    this.slist.remove(str2);
                    i2++;
                }
                if (i2 == 0) {
                    this.list.remove(str);
                } else {
                    if (strJavaCharset != null) {
                        try {
                            strJavaCharset = MimeUtility.javaCharset(strJavaCharset);
                            if (strJavaCharset != null || strJavaCharset.length() == 0) {
                                strJavaCharset = MimeUtility.getDefaultJavaCharset();
                            }
                            if (strJavaCharset != null) {
                                multiValue.value = byteArrayOutputStream.toString(strJavaCharset);
                            } else {
                                multiValue.value = byteArrayOutputStream.toString();
                            }
                        } catch (UnsupportedEncodingException e2) {
                            if (decodeParametersStrict) {
                                throw new ParseException(e2.toString());
                            }
                            try {
                                multiValue.value = byteArrayOutputStream.toString("iso-8859-1");
                            } catch (UnsupportedEncodingException unused2) {
                            }
                        }
                    } else {
                        if (strJavaCharset != null) {
                            strJavaCharset = MimeUtility.getDefaultJavaCharset();
                        } else {
                            strJavaCharset = MimeUtility.getDefaultJavaCharset();
                        }
                        if (strJavaCharset != null) {
                            multiValue.value = byteArrayOutputStream.toString(strJavaCharset);
                        } else {
                            multiValue.value = byteArrayOutputStream.toString();
                        }
                    }
                    this.list.put(str, multiValue);
                }
            }
            if (this.slist.size() > 0) {
                for (Object obj2 : this.slist.values()) {
                    if (obj2 instanceof Value) {
                        Value value2 = (Value) obj2;
                        try {
                            value2.value = decodeBytes(value2.value, value2.charset);
                        } catch (UnsupportedEncodingException e3) {
                            if (decodeParametersStrict) {
                                throw new ParseException(e3.toString());
                            }
                        }
                    }
                }
                this.list.putAll(this.slist);
            }
            this.multisegmentNames.clear();
            this.slist.clear();
        } catch (Throwable th) {
            if (z2) {
                if (this.slist.size() > 0) {
                    for (Object obj3 : this.slist.values()) {
                        if (obj3 instanceof Value) {
                            Value value3 = (Value) obj3;
                            try {
                                value3.value = decodeBytes(value3.value, value3.charset);
                            } catch (UnsupportedEncodingException e4) {
                                if (decodeParametersStrict) {
                                    throw new ParseException(e4.toString());
                                }
                            }
                        }
                    }
                    this.list.putAll(this.slist);
                }
                this.multisegmentNames.clear();
                this.slist.clear();
            }
            throw th;
        }
    }

    private static String decodeBytes(String str, String str2) throws ParseException {
        byte[] bArr = new byte[str.length()];
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length()) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '%') {
                try {
                    cCharAt = (char) Integer.parseInt(str.substring(i2 + 1, i2 + 3), 16);
                    i2 += 2;
                } catch (NumberFormatException e2) {
                    if (decodeParametersStrict) {
                        throw new ParseException(e2.toString());
                    }
                } catch (StringIndexOutOfBoundsException e3) {
                    if (decodeParametersStrict) {
                        throw new ParseException(e3.toString());
                    }
                }
            }
            bArr[i3] = (byte) cCharAt;
            i2++;
            i3++;
        }
        if (str2 != null) {
            str2 = MimeUtility.javaCharset(str2);
        }
        if (str2 == null || str2.length() == 0) {
            str2 = MimeUtility.getDefaultJavaCharset();
        }
        return new String(bArr, 0, i3, str2);
    }

    private static Value encodeValue(String str, String str2) {
        if (MimeUtility.checkAscii(str) == 1) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes(MimeUtility.javaCharset(str2));
            StringBuffer stringBuffer = new StringBuffer(str2.length() + bytes.length + 2);
            stringBuffer.append(str2);
            stringBuffer.append("''");
            for (byte b : bytes) {
                char c2 = (char) (b & 255);
                if (c2 <= ' ' || c2 >= 127 || c2 == '*' || c2 == '\'' || c2 == '%' || HeaderTokenizer.MIME.indexOf(c2) >= 0) {
                    stringBuffer.append('%');
                    char[] cArr = hex;
                    stringBuffer.append(cArr[c2 >> 4]);
                    stringBuffer.append(cArr[c2 & 15]);
                } else {
                    stringBuffer.append(c2);
                }
            }
            Value value = new Value();
            value.charset = str2;
            value.value = str;
            value.encodedValue = stringBuffer.toString();
            return value;
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    private static Value extractCharset(String str) throws ParseException {
        Value value = new Value();
        value.encodedValue = str;
        value.value = str;
        try {
            int iIndexOf = str.indexOf(39);
            if (iIndexOf < 0) {
                if (decodeParametersStrict) {
                    throw new ParseException("Missing charset in encoded value: ".concat(str));
                }
                return value;
            }
            String strSubstring = str.substring(0, iIndexOf);
            int iIndexOf2 = str.indexOf(39, iIndexOf + 1);
            if (iIndexOf2 < 0) {
                if (decodeParametersStrict) {
                    throw new ParseException("Missing language in encoded value: ".concat(str));
                }
                return value;
            }
            value.value = str.substring(iIndexOf2 + 1);
            value.charset = strSubstring;
            return value;
        } catch (NumberFormatException e2) {
            if (decodeParametersStrict) {
                throw new ParseException(e2.toString());
            }
        } catch (StringIndexOutOfBoundsException e3) {
            if (decodeParametersStrict) {
                throw new ParseException(e3.toString());
            }
        }
    }

    private void putEncodedName(String str, String str2) throws ParseException {
        Object obj;
        Value valueExtractCharset;
        int iIndexOf = str.indexOf(42);
        if (iIndexOf < 0) {
            this.list.put(str, str2);
            return;
        }
        if (iIndexOf == str.length() - 1) {
            String strSubstring = str.substring(0, iIndexOf);
            Value valueExtractCharset2 = extractCharset(str2);
            try {
                valueExtractCharset2.value = decodeBytes(valueExtractCharset2.value, valueExtractCharset2.charset);
            } catch (UnsupportedEncodingException e2) {
                if (decodeParametersStrict) {
                    throw new ParseException(e2.toString());
                }
            }
            this.list.put(strSubstring, valueExtractCharset2);
            return;
        }
        String strSubstring2 = str.substring(0, iIndexOf);
        this.multisegmentNames.add(strSubstring2);
        this.list.put(strSubstring2, "");
        if (str.endsWith("*")) {
            if (str.endsWith("*0*")) {
                obj = str2;
                valueExtractCharset = extractCharset(str2);
            } else {
                obj = str2;
                Value value = new Value();
                value.encodedValue = str2;
                value.value = str2;
                valueExtractCharset = value;
            }
            str = str.substring(0, str.length() - 1);
            obj = valueExtractCharset;
        }
        obj = str2;
        this.slist.put(str, obj);
    }

    private static String quote(String str) {
        return MimeUtility.quote(str, HeaderTokenizer.MIME);
    }

    public void combineSegments() {
        if (!decodeParameters || this.multisegmentNames.size() <= 0) {
            return;
        }
        try {
            combineMultisegmentNames(true);
        } catch (ParseException unused) {
        }
    }

    public String get(String str) {
        Object obj = this.list.get(str.trim().toLowerCase(Locale.ENGLISH));
        if (obj instanceof MultiValue) {
            return ((MultiValue) obj).value;
        }
        if (obj instanceof LiteralValue) {
            return ((LiteralValue) obj).value;
        }
        return obj instanceof Value ? ((Value) obj).value : (String) obj;
    }

    public Enumeration<String> getNames() {
        return new ParamEnum(this.list.keySet().iterator());
    }

    public void remove(String str) {
        this.list.remove(str.trim().toLowerCase(Locale.ENGLISH));
    }

    public void set(String str, String str2) {
        String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
        if (!decodeParameters) {
            this.list.put(lowerCase, str2);
            return;
        }
        try {
            putEncodedName(lowerCase, str2);
        } catch (ParseException unused) {
            this.list.put(lowerCase, str2);
        }
    }

    public void setLiteral(String str, String str2) {
        LiteralValue literalValue = new LiteralValue();
        literalValue.value = str2;
        this.list.put(str, literalValue);
    }

    public int size() {
        return this.list.size();
    }

    public String toString() {
        return toString(0);
    }

    public String toString(int i2) {
        String str;
        String str2;
        ToStringBuffer toStringBuffer = new ToStringBuffer(i2);
        for (Map.Entry<String, Object> entry : this.list.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof MultiValue) {
                MultiValue multiValue = (MultiValue) value;
                String strD = Q.d(key, "*");
                for (int i3 = 0; i3 < multiValue.size(); i3++) {
                    Object obj = multiValue.get(i3);
                    if (obj instanceof Value) {
                        str = strD + i3 + "*";
                        str2 = ((Value) obj).encodedValue;
                    } else {
                        str = strD + i3;
                        str2 = (String) obj;
                    }
                    toStringBuffer.addNV(str, quote(str2));
                }
            } else if (value instanceof LiteralValue) {
                toStringBuffer.addNV(key, quote(((LiteralValue) value).value));
            } else if (value instanceof Value) {
                toStringBuffer.addNV(Q.d(key, "*"), quote(((Value) value).encodedValue));
            } else {
                String strSubstring = (String) value;
                if (strSubstring.length() > 60 && splitLongParameters && encodeParameters) {
                    String strD2 = Q.d(key, "*");
                    int i4 = 0;
                    while (strSubstring.length() > 60) {
                        toStringBuffer.addNV(strD2 + i4, quote(strSubstring.substring(0, 60)));
                        strSubstring = strSubstring.substring(60);
                        i4++;
                    }
                    if (strSubstring.length() > 0) {
                        toStringBuffer.addNV(strD2 + i4, quote(strSubstring));
                    }
                } else {
                    toStringBuffer.addNV(key, quote(strSubstring));
                }
            }
        }
        return toStringBuffer.toString();
    }

    public void set(String str, String str2, String str3) {
        if (encodeParameters) {
            Value valueEncodeValue = encodeValue(str2, str3);
            if (valueEncodeValue != null) {
                this.list.put(str.trim().toLowerCase(Locale.ENGLISH), valueEncodeValue);
                return;
            } else {
                set(str, str2);
                return;
            }
        }
        set(str, str2);
    }

    public ParameterList(String str) throws ParseException {
        HeaderTokenizer.Token next;
        String str2;
        this();
        HeaderTokenizer headerTokenizer = new HeaderTokenizer(str, HeaderTokenizer.MIME);
        while (true) {
            HeaderTokenizer.Token next2 = headerTokenizer.next();
            int type = next2.getType();
            if (type == -4) {
                break;
            }
            if (((char) type) == ';') {
                HeaderTokenizer.Token next3 = headerTokenizer.next();
                if (next3.getType() == -4) {
                    break;
                }
                if (next3.getType() == -1) {
                    String lowerCase = next3.getValue().toLowerCase(Locale.ENGLISH);
                    HeaderTokenizer.Token next4 = headerTokenizer.next();
                    if (((char) next4.getType()) == '=') {
                        if (windowshack && (lowerCase.equals(IMAPStore.ID_NAME) || lowerCase.equals("filename"))) {
                            next = headerTokenizer.next(';', true);
                        } else if (parametersStrict) {
                            next = headerTokenizer.next();
                        } else {
                            next = headerTokenizer.next(';');
                        }
                        int type2 = next.getType();
                        if (type2 != -1 && type2 != -2) {
                            StringBuilder sbJ = d0.j("In parameter list <", str, ">, expected parameter value, got \"");
                            sbJ.append(next.getValue());
                            sbJ.append("\"");
                            throw new ParseException(sbJ.toString());
                        }
                        String value = next.getValue();
                        this.lastName = lowerCase;
                        if (decodeParameters) {
                            putEncodedName(lowerCase, value);
                        } else {
                            this.list.put(lowerCase, value);
                        }
                    } else {
                        StringBuilder sbJ2 = d0.j("In parameter list <", str, ">, expected '=', got \"");
                        sbJ2.append(next4.getValue());
                        sbJ2.append("\"");
                        throw new ParseException(sbJ2.toString());
                    }
                } else {
                    StringBuilder sbJ3 = d0.j("In parameter list <", str, ">, expected parameter name, got \"");
                    sbJ3.append(next3.getValue());
                    sbJ3.append("\"");
                    throw new ParseException(sbJ3.toString());
                }
            } else if (type == -1 && (str2 = this.lastName) != null && ((applehack && (str2.equals(IMAPStore.ID_NAME) || this.lastName.equals("filename"))) || !parametersStrict)) {
                StringBuilder sbI = d0.i((String) this.list.get(this.lastName), " ");
                sbI.append(next2.getValue());
                this.list.put(this.lastName, sbI.toString());
            } else {
                StringBuilder sbJ4 = d0.j("In parameter list <", str, ">, expected ';', got \"");
                sbJ4.append(next2.getValue());
                sbJ4.append("\"");
                throw new ParseException(sbJ4.toString());
            }
        }
        if (decodeParameters) {
            combineMultisegmentNames(false);
        }
    }

    private static void decodeBytes(String str, OutputStream outputStream) throws ParseException, IOException {
        int i2 = 0;
        while (i2 < str.length()) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '%') {
                try {
                    cCharAt = (char) Integer.parseInt(str.substring(i2 + 1, i2 + 3), 16);
                    i2 += 2;
                } catch (NumberFormatException e2) {
                    if (decodeParametersStrict) {
                        throw new ParseException(e2.toString());
                    }
                } catch (StringIndexOutOfBoundsException e3) {
                    if (decodeParametersStrict) {
                        throw new ParseException(e3.toString());
                    }
                }
            }
            outputStream.write((byte) cCharAt);
            i2++;
        }
    }
}

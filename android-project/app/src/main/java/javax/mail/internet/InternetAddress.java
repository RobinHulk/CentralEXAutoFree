package javax.mail.internet;

import M.d0;
import com.sun.mail.util.PropUtil;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Locale;
import java.util.StringTokenizer;
import javax.mail.Address;
import javax.mail.Session;

/* JADX INFO: loaded from: classes.dex */
public class InternetAddress extends Address implements Cloneable {
    private static final long serialVersionUID = -7507595530758302903L;
    private static final String specialsNoDot = "()<>,;:\\\"[]@";
    private static final String specialsNoDotNoAt = "()<>,;:\\\"[]";
    protected String address;
    protected String encodedPersonal;
    protected String personal;
    private static final boolean ignoreBogusGroupName = PropUtil.getBooleanSystemProperty("mail.mime.address.ignorebogusgroupname", true);
    private static final boolean useCanonicalHostName = PropUtil.getBooleanSystemProperty("mail.mime.address.usecanonicalhostname", true);
    private static final boolean allowUtf8 = PropUtil.getBooleanSystemProperty("mail.mime.allowutf8", false);
    private static final String rfc822phrase = HeaderTokenizer.RFC822.replace(' ', (char) 0).replace('\t', (char) 0);

    public InternetAddress() {
    }

    public static InternetAddress _getLocalAddress(Session session) throws UnknownHostException {
        String property;
        String property2;
        String localHostName;
        if (session == null) {
            property2 = System.getProperty("user.name");
            localHostName = getLocalHostName();
            property = null;
        } else {
            property = session.getProperty("mail.from");
            if (property == null) {
                String property3 = session.getProperty("mail.user");
                if (property3 == null || property3.length() == 0) {
                    property3 = session.getProperty("user.name");
                }
                String property4 = (property3 == null || property3.length() == 0) ? System.getProperty("user.name") : property3;
                String property5 = session.getProperty("mail.host");
                if (property5 == null || property5.length() == 0) {
                    property5 = getLocalHostName();
                }
                String str = property4;
                localHostName = property5;
                property2 = str;
            } else {
                property2 = null;
                localHostName = null;
            }
        }
        if (property == null && property2 != null && property2.length() != 0 && localHostName != null && localHostName.length() != 0) {
            property = MimeUtility.quote(property2.trim(), "()<>,;:\\\"[]@\t ") + "@" + localHostName;
        }
        if (property == null) {
            return null;
        }
        return new InternetAddress(property);
    }

    private static void checkAddress(String str, boolean z2, boolean z3) throws AddressException {
        int i2;
        int i3;
        int i4;
        if (str == null) {
            throw new AddressException("Address is null");
        }
        int length = str.length();
        if (length == 0) {
            throw new AddressException("Empty address", str);
        }
        if (z2 && str.charAt(0) == '@') {
            i2 = 0;
            while (true) {
                int iIndexOfAny = indexOfAny(str, ",:", i2);
                if (iIndexOfAny < 0) {
                    break;
                }
                if (str.charAt(i2) != '@') {
                    throw new AddressException("Illegal route-addr", str);
                }
                if (str.charAt(iIndexOfAny) == ':') {
                    i2 = iIndexOfAny + 1;
                    break;
                }
                i2 = iIndexOfAny + 1;
            }
        } else {
            i2 = 0;
        }
        char c2 = 65535;
        boolean z4 = false;
        int i5 = i2;
        char c3 = 65535;
        while (i5 < length) {
            char cCharAt = str.charAt(i5);
            if (cCharAt != '\\' && c2 != '\\') {
                if (cCharAt != '\"') {
                    if (cCharAt == '\r') {
                        int i6 = i5 + 1;
                        if (i6 < length && str.charAt(i6) != '\n') {
                            throw new AddressException("Quoted local address contains CR without LF", str);
                        }
                    } else if (cCharAt == '\n' && (i3 = i5 + 1) < length && str.charAt(i3) != ' ' && str.charAt(i3) != '\t') {
                        throw new AddressException("Quoted local address contains newline without whitespace", str);
                    }
                    if (z4) {
                        continue;
                    } else {
                        if (cCharAt == '.') {
                            if (i5 == i2) {
                                throw new AddressException("Local address starts with dot", str);
                            }
                            if (c2 == '.') {
                                throw new AddressException("Local address contains dot-dot", str);
                            }
                        }
                        if (cCharAt == '@') {
                            if (i5 == 0) {
                                throw new AddressException("Missing local name", str);
                            }
                            if (c2 == '.') {
                                throw new AddressException("Local address ends with dot", str);
                            }
                            c3 = c2;
                            c2 = cCharAt;
                            break;
                        }
                        if (cCharAt <= ' ' || cCharAt == 127) {
                            throw new AddressException("Local address contains control or whitespace", str);
                        }
                        if (specialsNoDot.indexOf(cCharAt) >= 0) {
                            throw new AddressException("Local address contains illegal character", str);
                        }
                    }
                } else if (z4) {
                    if (z3 && (i4 = i5 + 1) < length && str.charAt(i4) != '@') {
                        throw new AddressException("Quote not at end of local address", str);
                    }
                    z4 = false;
                } else {
                    if (z3 && i5 != 0) {
                        throw new AddressException("Quote not at start of local address", str);
                    }
                    z4 = true;
                }
            }
            i5++;
            c3 = c2;
            c2 = cCharAt;
        }
        if (z4) {
            throw new AddressException("Unterminated quote", str);
        }
        if (c2 != '@') {
            if (z3) {
                throw new AddressException("Missing final '@domain'", str);
            }
            return;
        }
        int i7 = i5 + 1;
        if (i7 >= length) {
            throw new AddressException("Missing domain", str);
        }
        if (str.charAt(i7) == '.') {
            throw new AddressException("Domain starts with dot", str);
        }
        boolean z5 = false;
        int i8 = i7;
        while (i8 < length) {
            char cCharAt2 = str.charAt(i8);
            if (cCharAt2 == '[') {
                if (i8 != i7) {
                    throw new AddressException("Domain literal not at start of domain", str);
                }
                z5 = true;
            } else if (cCharAt2 == ']') {
                if (i8 != length - 1) {
                    throw new AddressException("Domain literal end not at end of domain", str);
                }
                z5 = false;
            } else {
                if (cCharAt2 <= ' ' || cCharAt2 == 127) {
                    throw new AddressException("Domain contains control or whitespace", str);
                }
                if (z5) {
                    continue;
                } else {
                    if (!Character.isLetterOrDigit(cCharAt2) && cCharAt2 != '-' && cCharAt2 != '.') {
                        throw new AddressException("Domain contains illegal character", str);
                    }
                    if (cCharAt2 == '.' && c3 == '.') {
                        throw new AddressException("Domain contains dot-dot", str);
                    }
                }
            }
            i8++;
            c3 = cCharAt2;
        }
        if (c3 == '.') {
            throw new AddressException("Domain ends with dot", str);
        }
    }

    public static InternetAddress getLocalAddress(Session session) {
        try {
            return _getLocalAddress(session);
        } catch (SecurityException | UnknownHostException | AddressException unused) {
            return null;
        }
    }

    private static String getLocalHostName() throws UnknownHostException {
        InetAddress localHost = InetAddress.getLocalHost();
        if (localHost == null) {
            return null;
        }
        String canonicalHostName = useCanonicalHostName ? localHost.getCanonicalHostName() : null;
        if (canonicalHostName == null) {
            canonicalHostName = localHost.getHostName();
        }
        if (canonicalHostName == null) {
            canonicalHostName = localHost.getHostAddress();
        }
        if (canonicalHostName == null || canonicalHostName.length() <= 0 || !isInetAddressLiteral(canonicalHostName)) {
            return canonicalHostName;
        }
        return "[" + canonicalHostName + ']';
    }

    private static int indexOfAny(String str, String str2) {
        return indexOfAny(str, str2, 0);
    }

    private static boolean isInetAddressLiteral(String str) {
        boolean z2 = false;
        boolean z3 = false;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if ((cCharAt < '0' || cCharAt > '9') && cCharAt != '.') {
                if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                    z2 = true;
                } else {
                    if (cCharAt != ':') {
                        return false;
                    }
                    z3 = true;
                }
            }
        }
        return !z2 || z3;
    }

    private boolean isSimple() {
        String str = this.address;
        return str == null || indexOfAny(str, specialsNoDotNoAt) < 0;
    }

    private static int lengthOfFirstSegment(String str) {
        int iIndexOf = str.indexOf("\r\n");
        return iIndexOf != -1 ? iIndexOf : str.length();
    }

    private static int lengthOfLastSegment(String str, int i2) {
        int iLastIndexOf = str.lastIndexOf("\r\n");
        return iLastIndexOf != -1 ? (str.length() - iLastIndexOf) - 2 : str.length() + i2;
    }

    public static InternetAddress[] parse(String str) {
        return parse(str, true);
    }

    public static InternetAddress[] parseHeader(String str, boolean z2) {
        return parse(MimeUtility.unfold(str), z2, true);
    }

    private static String quotePhrase(String str) {
        int length = str.length();
        boolean z2 = false;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\"' || cCharAt == '\\') {
                StringBuilder sb = new StringBuilder(length + 3);
                sb.append('\"');
                for (int i3 = 0; i3 < length; i3++) {
                    char cCharAt2 = str.charAt(i3);
                    if (cCharAt2 == '\"' || cCharAt2 == '\\') {
                        sb.append('\\');
                    }
                    sb.append(cCharAt2);
                }
                sb.append('\"');
                return sb.toString();
            }
            if ((cCharAt < ' ' && cCharAt != '\r' && cCharAt != '\n' && cCharAt != '\t') || ((cCharAt >= 127 && !allowUtf8) || rfc822phrase.indexOf(cCharAt) >= 0)) {
                z2 = true;
            }
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

    private static String unquote(String str) {
        if (!str.startsWith("\"") || !str.endsWith("\"") || str.length() <= 1) {
            return str;
        }
        String strSubstring = str.substring(1, str.length() - 1);
        if (strSubstring.indexOf(92) < 0) {
            return strSubstring;
        }
        StringBuilder sb = new StringBuilder(strSubstring.length());
        int i2 = 0;
        while (i2 < strSubstring.length()) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt == '\\' && i2 < strSubstring.length() - 1) {
                i2++;
                cCharAt = strSubstring.charAt(i2);
            }
            sb.append(cCharAt);
            i2++;
        }
        return sb.toString();
    }

    public Object clone() {
        try {
            return (InternetAddress) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @Override // javax.mail.Address
    public boolean equals(Object obj) {
        if (!(obj instanceof InternetAddress)) {
            return false;
        }
        String address = ((InternetAddress) obj).getAddress();
        String str = this.address;
        if (address == str) {
            return true;
        }
        return str != null && str.equalsIgnoreCase(address);
    }

    public String getAddress() {
        return this.address;
    }

    public InternetAddress[] getGroup(boolean z2) {
        int iIndexOf;
        String address = getAddress();
        if (address != null && address.endsWith(";") && (iIndexOf = address.indexOf(58)) >= 0) {
            return parseHeader(address.substring(iIndexOf + 1, address.length() - 1), z2);
        }
        return null;
    }

    public String getPersonal() {
        String str = this.personal;
        if (str != null) {
            return str;
        }
        String str2 = this.encodedPersonal;
        if (str2 == null) {
            return null;
        }
        try {
            String strDecodeText = MimeUtility.decodeText(str2);
            this.personal = strDecodeText;
            return strDecodeText;
        } catch (Exception unused) {
            return this.encodedPersonal;
        }
    }

    @Override // javax.mail.Address
    public String getType() {
        return "rfc822";
    }

    public int hashCode() {
        String str = this.address;
        if (str == null) {
            return 0;
        }
        return str.toLowerCase(Locale.ENGLISH).hashCode();
    }

    public boolean isGroup() {
        String str = this.address;
        return str != null && str.endsWith(";") && this.address.indexOf(58) > 0;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setPersonal(String str, String str2) {
        this.personal = str;
        if (str != null) {
            this.encodedPersonal = MimeUtility.encodeWord(str, str2, null);
        } else {
            this.encodedPersonal = null;
        }
    }

    @Override // javax.mail.Address
    public String toString() {
        String str;
        String str2 = this.address;
        if (str2 == null) {
            str2 = "";
        }
        if (this.encodedPersonal == null && (str = this.personal) != null) {
            try {
                this.encodedPersonal = MimeUtility.encodeWord(str);
            } catch (UnsupportedEncodingException unused) {
            }
        }
        if (this.encodedPersonal == null) {
            return (isGroup() || isSimple()) ? str2 : d0.f("<", str2, ">");
        }
        return quotePhrase(this.encodedPersonal) + " <" + str2 + ">";
    }

    public String toUnicodeString() {
        String personal = getPersonal();
        if (personal == null) {
            return (isGroup() || isSimple()) ? this.address : d0.g(new StringBuilder("<"), this.address, ">");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(quotePhrase(personal));
        sb.append(" <");
        return d0.g(sb, this.address, ">");
    }

    public void validate() throws AddressException {
        if (isGroup()) {
            getGroup(true);
        } else {
            checkAddress(getAddress(), true, true);
        }
    }

    public InternetAddress(String str) throws AddressException {
        InternetAddress[] internetAddressArr = parse(str, true);
        if (internetAddressArr.length != 1) {
            throw new AddressException("Illegal address", str);
        }
        InternetAddress internetAddress = internetAddressArr[0];
        this.address = internetAddress.address;
        this.personal = internetAddress.personal;
        this.encodedPersonal = internetAddress.encodedPersonal;
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

    public static InternetAddress[] parse(String str, boolean z2) {
        return parse(str, z2, false);
    }

    /* JADX WARN: Code duplicated, block: B:145:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:147:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:160:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:195:0x023b A[PHI: r2 r8 r9 r13
  0x023b: PHI (r2v38 int) = (r2v34 int), (r2v42 int) binds: [B:208:0x025a, B:193:0x0235] A[DONT_GENERATE, DONT_INLINE]
  0x023b: PHI (r8v18 int) = (r8v16 int), (r8v1 int) binds: [B:208:0x025a, B:193:0x0235] A[DONT_GENERATE, DONT_INLINE]
  0x023b: PHI (r9v12 int) = (r9v1 int), (r9v13 int) binds: [B:208:0x025a, B:193:0x0235] A[DONT_GENERATE, DONT_INLINE]
  0x023b: PHI (r13v7 int) = (r13v1 int), (r13v8 int) binds: [B:208:0x025a, B:193:0x0235] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:209:0x025c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:216:0x026d  */
    /* JADX WARN: Code duplicated, block: B:220:0x027a  */
    /* JADX WARN: Code duplicated, block: B:221:0x027d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:222:0x027f  */
    /* JADX WARN: Code duplicated, block: B:223:0x0283 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:224:0x0285  */
    /* JADX WARN: Code duplicated, block: B:230:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:244:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:250:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:253:0x0301  */
    /* JADX WARN: Code duplicated, block: B:269:0x0329 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:273:0x0333  */
    /* JADX WARN: Code duplicated, block: B:285:0x0362  */
    /* JADX WARN: Code duplicated, block: B:320:0x0260 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:322:0x032d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x009a  */
    private static InternetAddress[] parse(String str, boolean z2, boolean z3) throws AddressException {
        String strUnquote;
        int i2;
        String strTrim;
        String strUnquote2;
        InternetAddress internetAddress;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int length = str.length();
        boolean z4 = z3 && !z2;
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        int i10 = -1;
        int i11 = -1;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i12 = -1;
        int i13 = -1;
        while (i9 < length) {
            char cCharAt = str.charAt(i9);
            if (cCharAt == '\t' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ') {
                i2 = 1;
            } else {
                if (cCharAt == '\"') {
                    if (i10 == -1) {
                        i10 = i9;
                    }
                    i9++;
                    int i14 = i9;
                    while (i14 < length) {
                        char cCharAt2 = str.charAt(i14);
                        if (cCharAt2 != '\"') {
                            if (cCharAt2 == '\\') {
                                i14++;
                            }
                            i14++;
                        } else if (i14 >= length) {
                            i9 = i14;
                        } else if (!z4) {
                            throw new AddressException("Missing '\"'", str, i14);
                        }
                    }
                    if (i14 >= length) {
                        i9 = i14;
                    } else if (!z4) {
                        throw new AddressException("Missing '\"'", str, i14);
                    }
                } else if (cCharAt == ',') {
                    if (i10 == -1) {
                        i10 = -1;
                        i11 = i10;
                        i2 = 1;
                        z6 = false;
                        z7 = false;
                    } else if (z5) {
                        i2 = 1;
                        z6 = false;
                    } else {
                        if (i11 == -1) {
                            i11 = i9;
                        }
                        strTrim = str.substring(i10, i11).trim();
                        if (z7 || i12 < 0) {
                            strUnquote2 = null;
                        } else {
                            strUnquote2 = unquote(str.substring(i12, i13).trim());
                            if (strUnquote2.trim().length() == 0) {
                                strUnquote2 = null;
                            }
                        }
                        if (z3 && !z2 && strUnquote2 != null && strUnquote2.indexOf(64) >= 0 && strTrim.indexOf(64) < 0 && strTrim.indexOf(33) < 0) {
                            String str2 = strUnquote2;
                            strUnquote2 = strTrim;
                            strTrim = str2;
                        }
                        if (z7 && !z2 && !z3) {
                            StringTokenizer stringTokenizer = new StringTokenizer(strTrim);
                            while (stringTokenizer.hasMoreTokens()) {
                                String strNextToken = stringTokenizer.nextToken();
                                checkAddress(strNextToken, false, false);
                                InternetAddress internetAddress2 = new InternetAddress();
                                internetAddress2.setAddress(strNextToken);
                                arrayList.add(internetAddress2);
                            }
                        } else {
                            if (!z4) {
                                checkAddress(strTrim, z6, false);
                            }
                            internetAddress = new InternetAddress();
                            internetAddress.setAddress(strTrim);
                            if (strUnquote2 != null) {
                                internetAddress.encodedPersonal = strUnquote2;
                            }
                            arrayList.add(internetAddress);
                        }
                        i2 = 1;
                        i10 = -1;
                        i11 = -1;
                        z6 = false;
                        z7 = false;
                        i12 = -1;
                        i13 = -1;
                    }
                } else if (cCharAt == '>') {
                    if (!z4) {
                        throw new AddressException("Missing '<'", str, i9);
                    }
                    if (i10 == -1) {
                        i10 = i9;
                    }
                    i2 = 1;
                } else if (cCharAt != '[') {
                    char c2 = '(';
                    if (cCharAt == '(') {
                        if (i10 >= 0 && i11 == -1) {
                            i11 = i9;
                        }
                        i9++;
                        int i15 = i9;
                        int i16 = 1;
                        while (i15 < length && i16 > 0) {
                            char cCharAt3 = str.charAt(i15);
                            if (cCharAt3 == c2) {
                                i16++;
                            } else if (cCharAt3 == ')') {
                                i16--;
                            } else if (cCharAt3 == '\\') {
                                i15++;
                            }
                            i15++;
                            c2 = '(';
                        }
                        if (i16 <= 0) {
                            i3 = i15 - 1;
                            if (i12 == -1) {
                                i12 = i9;
                            }
                            if (i13 == -1) {
                                i9 = i3;
                                i13 = i9;
                            } else {
                                i9 = i3;
                            }
                        } else if (!z4) {
                            throw new AddressException("Missing ')'", str, i15);
                        }
                    } else if (cCharAt != ')') {
                        switch (cCharAt) {
                            case ':':
                                if (z5 && !z4) {
                                    throw new AddressException("Nested group", str, i9);
                                }
                                if (i10 == -1) {
                                    i10 = i9;
                                }
                                if (z3 && !z2) {
                                    int i17 = i9 + 1;
                                    if (i17 < length) {
                                        char cCharAt4 = str.charAt(i17);
                                        if (")>[]:@\\,.".indexOf(cCharAt4) < 0) {
                                            String strSubstring = str.substring(i10, i9);
                                            if (!ignoreBogusGroupName && (strSubstring.equalsIgnoreCase("mailto") || strSubstring.equalsIgnoreCase("From") || strSubstring.equalsIgnoreCase("To") || strSubstring.equalsIgnoreCase("Cc") || strSubstring.equalsIgnoreCase("Subject") || strSubstring.equalsIgnoreCase("Re"))) {
                                                i10 = -1;
                                            } else {
                                                z5 = true;
                                            }
                                        } else if (cCharAt4 == '@') {
                                            for (int i18 = i9 + 2; i18 < length && (cCharAt4 = str.charAt(i18)) != ';' && ")>[]:@\\,.".indexOf(cCharAt4) < 0; i18++) {
                                            }
                                            if (cCharAt4 != ';') {
                                                String strSubstring2 = str.substring(i10, i9);
                                                if (!ignoreBogusGroupName) {
                                                    z5 = true;
                                                } else {
                                                    z5 = true;
                                                }
                                            }
                                        }
                                    } else {
                                        String strSubstring3 = str.substring(i10, i9);
                                        if (!ignoreBogusGroupName) {
                                            z5 = true;
                                        } else {
                                            z5 = true;
                                        }
                                    }
                                } else {
                                    i2 = 1;
                                    z5 = true;
                                }
                                z7 = true;
                                break;
                                break;
                            case ';':
                                if (i10 == -1) {
                                    i2 = 1;
                                    i10 = -1;
                                    i11 = -1;
                                    z6 = false;
                                    z7 = false;
                                } else if (!z5) {
                                    if (!z4) {
                                        throw new AddressException("Illegal semicolon, not in group", str, i9);
                                    }
                                    if (i10 == -1) {
                                        i10 = -1;
                                        i11 = i10;
                                        i2 = 1;
                                        z6 = false;
                                        z7 = false;
                                    } else if (z5) {
                                        i2 = 1;
                                        z6 = false;
                                    } else {
                                        if (i11 == -1) {
                                            i11 = i9;
                                        }
                                        strTrim = str.substring(i10, i11).trim();
                                        if (z7) {
                                            strUnquote2 = null;
                                        } else {
                                            strUnquote2 = null;
                                        }
                                        if (z3) {
                                            String str3 = strUnquote2;
                                            strUnquote2 = strTrim;
                                            strTrim = str3;
                                        }
                                        if (z7) {
                                            if (!z4) {
                                                checkAddress(strTrim, z6, false);
                                            }
                                            internetAddress = new InternetAddress();
                                            internetAddress.setAddress(strTrim);
                                            if (strUnquote2 != null) {
                                                internetAddress.encodedPersonal = strUnquote2;
                                            }
                                            arrayList.add(internetAddress);
                                        } else {
                                            if (!z4) {
                                                checkAddress(strTrim, z6, false);
                                            }
                                            internetAddress = new InternetAddress();
                                            internetAddress.setAddress(strTrim);
                                            if (strUnquote2 != null) {
                                                internetAddress.encodedPersonal = strUnquote2;
                                            }
                                            arrayList.add(internetAddress);
                                        }
                                        i2 = 1;
                                        i10 = -1;
                                        i11 = -1;
                                        z6 = false;
                                        z7 = false;
                                        i12 = -1;
                                        i13 = -1;
                                    }
                                } else if (!z3 || z2 || (i4 = i9 + 1) >= length || str.charAt(i4) != '@') {
                                    InternetAddress internetAddress3 = new InternetAddress();
                                    internetAddress3.setAddress(str.substring(i10, i9 + 1).trim());
                                    arrayList.add(internetAddress3);
                                    i2 = 1;
                                    i10 = -1;
                                    i11 = -1;
                                    z5 = false;
                                    z6 = false;
                                    z7 = false;
                                    i12 = -1;
                                    i13 = -1;
                                } else {
                                    i2 = 1;
                                    z5 = false;
                                }
                                break;
                            case '<':
                                if (!z6) {
                                    z7 = true;
                                } else {
                                    if (!z4) {
                                        throw new AddressException("Extra route-addr", str, i9);
                                    }
                                    if (i10 == -1) {
                                        i10 = -1;
                                        i11 = i10;
                                        i2 = 1;
                                        z6 = false;
                                        z7 = false;
                                        break;
                                    } else if (z5) {
                                        z7 = true;
                                    } else {
                                        if (i11 == -1) {
                                            i11 = i9;
                                        }
                                        String strTrim2 = str.substring(i10, i11).trim();
                                        InternetAddress internetAddress4 = new InternetAddress();
                                        internetAddress4.setAddress(strTrim2);
                                        if (i12 >= 0) {
                                            internetAddress4.encodedPersonal = unquote(str.substring(i12, i13).trim());
                                        }
                                        arrayList.add(internetAddress4);
                                        i10 = -1;
                                        i11 = -1;
                                        z6 = false;
                                        z7 = false;
                                        i12 = -1;
                                        i13 = -1;
                                    }
                                }
                                int i19 = i9 + 1;
                                int i20 = i19;
                                boolean z8 = false;
                                while (true) {
                                    i5 = i19;
                                    if (i20 < length) {
                                        char cCharAt5 = str.charAt(i20);
                                        i6 = i11;
                                        if (cCharAt5 == '\"') {
                                            z8 = !z8;
                                        } else if (cCharAt5 != '>') {
                                            if (cCharAt5 == '\\') {
                                                i20++;
                                            }
                                        } else if (!z8) {
                                        }
                                        i20++;
                                        i19 = i5;
                                        i11 = i6;
                                    } else {
                                        i6 = i11;
                                    }
                                }
                                if (!z8) {
                                    i11 = i20;
                                } else {
                                    if (!z4) {
                                        throw new AddressException("Missing '\"'", str, i20);
                                    }
                                    int i21 = i5;
                                    while (i21 < length) {
                                        char cCharAt6 = str.charAt(i21);
                                        if (cCharAt6 == '\\') {
                                            i21++;
                                            i8 = 1;
                                        } else if (cCharAt6 == '>') {
                                            i11 = i21;
                                        } else {
                                            i8 = 1;
                                        }
                                        i21 += i8;
                                    }
                                    i11 = i21;
                                }
                                if (i11 >= length) {
                                    if (!z4) {
                                        throw new AddressException("Missing '>'", str, i11);
                                    }
                                    if (i10 == -1) {
                                        i10 = i9;
                                    }
                                    i9 = i5;
                                    i11 = i6;
                                    i2 = 1;
                                } else {
                                    if (z5) {
                                        i7 = i10;
                                    } else {
                                        if (i10 < 0) {
                                            i10 = i12;
                                            i9 = i13;
                                        }
                                        i13 = i9;
                                        i12 = i10;
                                        i7 = i5;
                                    }
                                    i10 = i7;
                                    i9 = i11;
                                    i2 = 1;
                                    z6 = true;
                                }
                                break;
                            default:
                                if (i10 == -1) {
                                    i10 = i9;
                                }
                                i2 = 1;
                                break;
                        }
                    } else {
                        if (!z4) {
                            throw new AddressException("Missing '('", str, i9);
                        }
                        if (i10 == -1) {
                            i10 = i9;
                        }
                        i2 = 1;
                    }
                } else {
                    if (i10 == -1) {
                        i10 = i9;
                    }
                    i9++;
                    i3 = i9;
                    while (i3 < length) {
                        char cCharAt7 = str.charAt(i3);
                        if (cCharAt7 == '\\') {
                            i3++;
                        } else if (cCharAt7 == ']') {
                            if (i3 >= length) {
                                i9 = i3;
                            } else if (!z4) {
                                throw new AddressException("Missing ']'", str, i3);
                            }
                        }
                        i3++;
                    }
                    if (i3 >= length) {
                        i9 = i3;
                    } else if (!z4) {
                        throw new AddressException("Missing ']'", str, i3);
                    }
                }
                i2 = 1;
                z7 = true;
            }
            i9 += i2;
        }
        if (i10 >= 0) {
            if (i11 != -1) {
                length = i11;
            }
            String strTrim3 = str.substring(i10, length).trim();
            if (!z7 || i12 < 0) {
                strUnquote = null;
            } else {
                strUnquote = unquote(str.substring(i12, i13).trim());
                if (strUnquote.trim().length() == 0) {
                    strUnquote = null;
                }
            }
            if (z3 && !z2 && strUnquote != null && strUnquote.indexOf(64) >= 0 && strTrim3.indexOf(64) < 0 && strTrim3.indexOf(33) < 0) {
                strTrim3 = strUnquote;
                strUnquote = strTrim3;
            }
            if (!z7 && !z2 && !z3) {
                StringTokenizer stringTokenizer2 = new StringTokenizer(strTrim3);
                while (stringTokenizer2.hasMoreTokens()) {
                    String strNextToken2 = stringTokenizer2.nextToken();
                    checkAddress(strNextToken2, false, false);
                    InternetAddress internetAddress5 = new InternetAddress();
                    internetAddress5.setAddress(strNextToken2);
                    arrayList.add(internetAddress5);
                }
            } else {
                if (!z4) {
                    checkAddress(strTrim3, z6, false);
                }
                InternetAddress internetAddress6 = new InternetAddress();
                internetAddress6.setAddress(strTrim3);
                if (strUnquote != null) {
                    internetAddress6.encodedPersonal = strUnquote;
                }
                arrayList.add(internetAddress6);
            }
        }
        InternetAddress[] internetAddressArr = new InternetAddress[arrayList.size()];
        arrayList.toArray(internetAddressArr);
        return internetAddressArr;
    }

    public void setPersonal(String str) {
        this.personal = str;
        if (str != null) {
            this.encodedPersonal = MimeUtility.encodeWord(str);
        } else {
            this.encodedPersonal = null;
        }
    }

    public InternetAddress(String str, boolean z2) throws AddressException {
        this(str);
        if (z2) {
            if (isGroup()) {
                getGroup(true);
            } else {
                checkAddress(this.address, true, true);
            }
        }
    }

    public InternetAddress(String str, String str2) {
        this(str, str2, null);
    }

    public InternetAddress(String str, String str2, String str3) {
        this.address = str;
        setPersonal(str2, str3);
    }

    public static String toString(Address[] addressArr) {
        return toString(addressArr, 0);
    }

    public static String toString(Address[] addressArr, int i2) {
        if (addressArr == null || addressArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < addressArr.length; i3++) {
            if (i3 != 0) {
                sb.append(", ");
                i2 += 2;
            }
            String strFold = MimeUtility.fold(0, addressArr[i3].toString());
            if (lengthOfFirstSegment(strFold) + i2 > 76) {
                int length = sb.length();
                if (length > 0) {
                    int i4 = length - 1;
                    if (sb.charAt(i4) == ' ') {
                        sb.setLength(i4);
                    }
                }
                sb.append("\r\n\t");
                i2 = 8;
            }
            sb.append(strFold);
            i2 = lengthOfLastSegment(strFold, i2);
        }
        return sb.toString();
    }

    public static String toUnicodeString(Address[] addressArr) {
        return toUnicodeString(addressArr, 0);
    }

    public static String toUnicodeString(Address[] addressArr, int i2) {
        if (addressArr == null || addressArr.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z2 = false;
        for (int i3 = 0; i3 < addressArr.length; i3++) {
            if (i3 != 0) {
                sb.append(", ");
                i2 += 2;
            }
            String unicodeString = ((InternetAddress) addressArr[i3]).toUnicodeString();
            if (MimeUtility.checkAscii(unicodeString) != 1) {
                unicodeString = new String(unicodeString.getBytes(StandardCharsets.UTF_8), StandardCharsets.ISO_8859_1);
                z2 = true;
            }
            String strFold = MimeUtility.fold(0, unicodeString);
            if (lengthOfFirstSegment(strFold) + i2 > 76) {
                int length = sb.length();
                if (length > 0) {
                    int i4 = length - 1;
                    if (sb.charAt(i4) == ' ') {
                        sb.setLength(i4);
                    }
                }
                sb.append("\r\n\t");
                i2 = 8;
            }
            sb.append(strFold);
            i2 = lengthOfLastSegment(strFold, i2);
        }
        String string = sb.toString();
        return z2 ? new String(string.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8) : string;
    }
}

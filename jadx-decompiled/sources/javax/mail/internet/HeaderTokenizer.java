package javax.mail.internet;

/* JADX INFO: loaded from: classes.dex */
public class HeaderTokenizer {
    private static final Token EOFToken = new Token(-4, null);
    public static final String MIME = "()<>@,;:\\\"\t []/?=";
    public static final String RFC822 = "()<>@,;:\\\"\t .[]";
    private int currentPos;
    private String delimiters;
    private int maxPos;
    private int nextPos;
    private int peekPos;
    private boolean skipComments;
    private String string;

    public static class Token {
        public static final int ATOM = -1;
        public static final int COMMENT = -3;
        public static final int EOF = -4;
        public static final int QUOTEDSTRING = -2;
        private int type;
        private String value;

        public Token(int i2, String str) {
            this.type = i2;
            this.value = str;
        }

        public int getType() {
            return this.type;
        }

        public String getValue() {
            return this.value;
        }
    }

    public HeaderTokenizer(String str, String str2, boolean z2) {
        str = str == null ? "" : str;
        this.string = str;
        this.skipComments = z2;
        this.delimiters = str2;
        this.peekPos = 0;
        this.nextPos = 0;
        this.currentPos = 0;
        this.maxPos = str.length();
    }

    private Token collectString(char c2, boolean z2) throws ParseException {
        int i2 = this.currentPos;
        boolean z3 = false;
        while (true) {
            int i3 = this.currentPos;
            if (i3 >= this.maxPos) {
                if (c2 != '\"') {
                    return new Token(-2, trimWhiteSpace(z3 ? filterToken(this.string, i2, i3, z2) : this.string.substring(i2, i3)));
                }
                throw new ParseException("Unbalanced quoted string");
            }
            char cCharAt = this.string.charAt(i3);
            if (cCharAt == '\\') {
                this.currentPos++;
            } else {
                if (cCharAt != '\r') {
                    if (cCharAt == c2) {
                        int i4 = this.currentPos;
                        this.currentPos = i4 + 1;
                        String strFilterToken = z3 ? filterToken(this.string, i2, i4, z2) : this.string.substring(i2, i4);
                        if (cCharAt != '\"') {
                            strFilterToken = trimWhiteSpace(strFilterToken);
                            this.currentPos--;
                        }
                        return new Token(-2, strFilterToken);
                    }
                }
                this.currentPos++;
            }
            z3 = true;
            this.currentPos++;
        }
    }

    private static String filterToken(String str, int i2, int i3, boolean z2) {
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        boolean z4 = false;
        while (i2 < i3) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\n' && z3) {
                z3 = false;
            } else if (z4) {
                if (z2) {
                    sb.append('\\');
                }
                sb.append(cCharAt);
                z3 = false;
                z4 = false;
            } else if (cCharAt == '\\') {
                z3 = false;
                z4 = true;
            } else if (cCharAt == '\r') {
                z3 = true;
            } else {
                sb.append(cCharAt);
                z3 = false;
            }
            i2++;
        }
        return sb.toString();
    }

    private Token getNext(char c2, boolean z2) throws ParseException {
        char cCharAt;
        if (this.currentPos < this.maxPos && skipWhiteSpace() != -4) {
            char cCharAt2 = this.string.charAt(this.currentPos);
            boolean z3 = false;
            while (cCharAt2 == '(') {
                int i2 = this.currentPos + 1;
                this.currentPos = i2;
                int i3 = 1;
                while (i3 > 0) {
                    int i4 = this.currentPos;
                    if (i4 >= this.maxPos) {
                        break;
                    }
                    char cCharAt3 = this.string.charAt(i4);
                    if (cCharAt3 == '\\') {
                        this.currentPos++;
                    } else {
                        if (cCharAt3 != '\r') {
                            if (cCharAt3 == '(') {
                                i3++;
                            } else if (cCharAt3 == ')') {
                                i3--;
                            }
                        }
                        this.currentPos++;
                    }
                    z3 = true;
                    this.currentPos++;
                }
                if (i3 != 0) {
                    throw new ParseException("Unbalanced comments");
                }
                if (!this.skipComments) {
                    return new Token(-3, z3 ? filterToken(this.string, i2, this.currentPos - 1, z2) : this.string.substring(i2, this.currentPos - 1));
                }
                if (skipWhiteSpace() == -4) {
                    return EOFToken;
                }
                cCharAt2 = this.string.charAt(this.currentPos);
            }
            if (cCharAt2 == '\"') {
                this.currentPos++;
                return collectString('\"', z2);
            }
            if (cCharAt2 < ' ' || cCharAt2 >= 127 || this.delimiters.indexOf(cCharAt2) >= 0) {
                if (c2 > 0 && cCharAt2 != c2) {
                    return collectString(c2, z2);
                }
                this.currentPos++;
                return new Token(cCharAt2, new String(new char[]{cCharAt2}));
            }
            int i5 = this.currentPos;
            while (true) {
                int i6 = this.currentPos;
                if (i6 < this.maxPos) {
                    cCharAt = this.string.charAt(i6);
                    if (cCharAt < ' ' || cCharAt >= 127 || cCharAt == '(' || cCharAt == ' ' || cCharAt == '\"' || this.delimiters.indexOf(cCharAt) >= 0) {
                        break;
                    }
                    this.currentPos++;
                }
                return new Token(-1, this.string.substring(i5, this.currentPos));
            }
            if (c2 > 0 && cCharAt != c2) {
                this.currentPos = i5;
                return collectString(c2, z2);
            }
            return new Token(-1, this.string.substring(i5, this.currentPos));
        }
        return EOFToken;
    }

    private int skipWhiteSpace() {
        while (true) {
            int i2 = this.currentPos;
            if (i2 >= this.maxPos) {
                return -4;
            }
            char cCharAt = this.string.charAt(i2);
            if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                return this.currentPos;
            }
            this.currentPos++;
        }
    }

    private static String trimWhiteSpace(String str) {
        int length = str.length() - 1;
        while (length >= 0) {
            char cCharAt = str.charAt(length);
            if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                break;
            }
            length--;
        }
        return length <= 0 ? "" : str.substring(0, length + 1);
    }

    public String getRemainder() {
        if (this.nextPos >= this.string.length()) {
            return null;
        }
        return this.string.substring(this.nextPos);
    }

    public Token next() {
        return next((char) 0, false);
    }

    public Token peek() throws ParseException {
        this.currentPos = this.peekPos;
        Token next = getNext((char) 0, false);
        this.peekPos = this.currentPos;
        return next;
    }

    public Token next(char c2) {
        return next(c2, false);
    }

    public Token next(char c2, boolean z2) throws ParseException {
        this.currentPos = this.nextPos;
        Token next = getNext(c2, z2);
        int i2 = this.currentPos;
        this.peekPos = i2;
        this.nextPos = i2;
        return next;
    }

    public HeaderTokenizer(String str, String str2) {
        this(str, str2, true);
    }

    public HeaderTokenizer(String str) {
        this(str, RFC822);
    }
}

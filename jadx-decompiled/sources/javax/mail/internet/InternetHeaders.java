package javax.mail.internet;

import M.d0;
import com.sun.mail.util.LineInputStream;
import com.sun.mail.util.PropUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import javax.mail.Header;
import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes.dex */
public class InternetHeaders {
    private static final boolean ignoreWhitespaceLines = PropUtil.getBooleanSystemProperty("mail.mime.ignorewhitespacelines", false);
    protected List<InternetHeader> headers;

    public static class MatchEnum {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Iterator<InternetHeader> f3738e;
        private boolean match;
        private String[] names;
        private InternetHeader next_header = null;
        private boolean want_line;

        public MatchEnum(List<InternetHeader> list, String[] strArr, boolean z2, boolean z3) {
            this.f3738e = list.iterator();
            this.names = strArr;
            this.match = z2;
            this.want_line = z3;
        }

        private InternetHeader nextMatch() {
            while (this.f3738e.hasNext()) {
                InternetHeader next = this.f3738e.next();
                if (next.line != null) {
                    if (this.names != null) {
                        int i2 = 0;
                        while (true) {
                            String[] strArr = this.names;
                            if (i2 >= strArr.length) {
                                if (this.match) {
                                    break;
                                }
                                return next;
                            }
                            if (strArr[i2].equalsIgnoreCase(next.getName())) {
                                if (!this.match) {
                                    break;
                                }
                                return next;
                            }
                            i2++;
                        }
                    } else {
                        if (this.match) {
                            return null;
                        }
                        return next;
                    }
                }
            }
            return null;
        }

        public boolean hasMoreElements() {
            if (this.next_header == null) {
                this.next_header = nextMatch();
            }
            return this.next_header != null;
        }

        public Object nextElement() {
            if (this.next_header == null) {
                this.next_header = nextMatch();
            }
            InternetHeader internetHeader = this.next_header;
            if (internetHeader == null) {
                throw new NoSuchElementException("No more headers");
            }
            this.next_header = null;
            return this.want_line ? internetHeader.line : new Header(internetHeader.getName(), internetHeader.getValue());
        }
    }

    public static class MatchHeaderEnum extends MatchEnum implements Enumeration<Header> {
        public MatchHeaderEnum(List<InternetHeader> list, String[] strArr, boolean z2) {
            super(list, strArr, z2, false);
        }

        @Override // javax.mail.internet.InternetHeaders.MatchEnum, java.util.Enumeration
        public Header nextElement() {
            return (Header) super.nextElement();
        }
    }

    public static class MatchStringEnum extends MatchEnum implements Enumeration<String> {
        public MatchStringEnum(List<InternetHeader> list, String[] strArr, boolean z2) {
            super(list, strArr, z2, true);
        }

        @Override // javax.mail.internet.InternetHeaders.MatchEnum, java.util.Enumeration
        public String nextElement() {
            return (String) super.nextElement();
        }
    }

    public InternetHeaders() {
        ArrayList arrayList = new ArrayList(40);
        this.headers = arrayList;
        arrayList.add(new InternetHeader("Return-Path", null));
        d0.p("Received", null, this.headers);
        d0.p("Resent-Date", null, this.headers);
        d0.p("Resent-From", null, this.headers);
        d0.p("Resent-Sender", null, this.headers);
        d0.p("Resent-To", null, this.headers);
        d0.p("Resent-Cc", null, this.headers);
        d0.p("Resent-Bcc", null, this.headers);
        d0.p("Resent-Message-Id", null, this.headers);
        d0.p("Date", null, this.headers);
        d0.p("From", null, this.headers);
        d0.p("Sender", null, this.headers);
        d0.p("Reply-To", null, this.headers);
        d0.p("To", null, this.headers);
        d0.p("Cc", null, this.headers);
        d0.p("Bcc", null, this.headers);
        d0.p("Message-Id", null, this.headers);
        d0.p("In-Reply-To", null, this.headers);
        d0.p("References", null, this.headers);
        d0.p("Subject", null, this.headers);
        d0.p("Comments", null, this.headers);
        d0.p("Keywords", null, this.headers);
        d0.p("Errors-To", null, this.headers);
        d0.p("MIME-Version", null, this.headers);
        d0.p("Content-Type", null, this.headers);
        d0.p("Content-Transfer-Encoding", null, this.headers);
        d0.p("Content-MD5", null, this.headers);
        d0.p(":", null, this.headers);
        d0.p("Content-Length", null, this.headers);
        d0.p("Status", null, this.headers);
    }

    private static final boolean isEmpty(String str) {
        return str.length() == 0 || (ignoreWhitespaceLines && str.trim().length() == 0);
    }

    public void addHeader(String str, String str2) {
        int size = this.headers.size();
        boolean z2 = str.equalsIgnoreCase("Received") || str.equalsIgnoreCase("Return-Path");
        if (z2) {
            size = 0;
        }
        for (int size2 = this.headers.size() - 1; size2 >= 0; size2--) {
            InternetHeader internetHeader = this.headers.get(size2);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                if (!z2) {
                    this.headers.add(size2 + 1, new InternetHeader(str, str2));
                    return;
                }
                size = size2;
            }
            if (!z2 && internetHeader.getName().equals(":")) {
                size = size2;
            }
        }
        this.headers.add(size, new InternetHeader(str, str2));
    }

    public void addHeaderLine(String str) {
        try {
            char cCharAt = str.charAt(0);
            if (cCharAt == ' ' || cCharAt == '\t') {
                List<InternetHeader> list = this.headers;
                list.get(list.size() - 1).line += "\r\n" + str;
            } else {
                this.headers.add(new InternetHeader(str));
            }
        } catch (StringIndexOutOfBoundsException | NoSuchElementException unused) {
        }
    }

    public Enumeration<String> getAllHeaderLines() {
        return getNonMatchingHeaderLines(null);
    }

    public Enumeration<Header> getAllHeaders() {
        return new MatchHeaderEnum(this.headers, null, false);
    }

    public String[] getHeader(String str) {
        ArrayList arrayList = new ArrayList();
        for (InternetHeader internetHeader : this.headers) {
            if (str.equalsIgnoreCase(internetHeader.getName()) && internetHeader.line != null) {
                arrayList.add(internetHeader.getValue());
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public Enumeration<String> getMatchingHeaderLines(String[] strArr) {
        return new MatchStringEnum(this.headers, strArr, true);
    }

    public Enumeration<Header> getMatchingHeaders(String[] strArr) {
        return new MatchHeaderEnum(this.headers, strArr, true);
    }

    public Enumeration<String> getNonMatchingHeaderLines(String[] strArr) {
        return new MatchStringEnum(this.headers, strArr, false);
    }

    public Enumeration<Header> getNonMatchingHeaders(String[] strArr) {
        return new MatchHeaderEnum(this.headers, strArr, false);
    }

    public void load(InputStream inputStream) throws MessagingException {
        load(inputStream, false);
    }

    public void removeHeader(String str) {
        for (int i2 = 0; i2 < this.headers.size(); i2++) {
            InternetHeader internetHeader = this.headers.get(i2);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                internetHeader.line = null;
            }
        }
    }

    public void setHeader(String str, String str2) {
        int iIndexOf;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < this.headers.size()) {
            InternetHeader internetHeader = this.headers.get(i2);
            if (str.equalsIgnoreCase(internetHeader.getName())) {
                if (z2) {
                    this.headers.remove(i2);
                    i2--;
                } else {
                    String str3 = internetHeader.line;
                    if (str3 == null || (iIndexOf = str3.indexOf(58)) < 0) {
                        internetHeader.line = str + ": " + str2;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append(internetHeader.line.substring(0, iIndexOf + 1));
                        internetHeader.line = d0.g(sb, " ", str2);
                    }
                    z2 = true;
                }
            }
            i2++;
        }
        if (z2) {
            return;
        }
        addHeader(str, str2);
    }

    public void load(InputStream inputStream, boolean z2) throws MessagingException {
        LineInputStream lineInputStream = new LineInputStream(inputStream, z2);
        StringBuilder sb = new StringBuilder();
        boolean z3 = true;
        String str = null;
        while (true) {
            try {
                String line = lineInputStream.readLine();
                if (line == null || !(line.startsWith(" ") || line.startsWith("\t"))) {
                    if (str != null) {
                        addHeaderLine(str);
                    } else if (sb.length() > 0) {
                        addHeaderLine(sb.toString());
                        sb.setLength(0);
                    }
                    str = line;
                } else {
                    if (str != null) {
                        sb.append(str);
                        str = null;
                    }
                    if (z3) {
                        String strTrim = line.trim();
                        if (strTrim.length() > 0) {
                            sb.append(strTrim);
                        }
                    } else {
                        if (sb.length() > 0) {
                            sb.append("\r\n");
                        }
                        sb.append(line);
                    }
                }
                if (line == null || isEmpty(line)) {
                    return;
                } else {
                    z3 = false;
                }
            } catch (IOException e2) {
                throw new MessagingException("Error in input stream", e2);
            }
        }
    }

    public static final class InternetHeader extends Header {
        String line;

        public InternetHeader(String str) {
            super("", "");
            int iIndexOf = str.indexOf(58);
            if (iIndexOf < 0) {
                this.name = str.trim();
            } else {
                this.name = str.substring(0, iIndexOf).trim();
            }
            this.line = str;
        }

        @Override // javax.mail.Header
        public String getValue() {
            char cCharAt;
            int iIndexOf = this.line.indexOf(58);
            if (iIndexOf < 0) {
                return this.line;
            }
            while (true) {
                iIndexOf++;
                if (iIndexOf >= this.line.length() || ((cCharAt = this.line.charAt(iIndexOf)) != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n')) {
                    break;
                }
            }
            return this.line.substring(iIndexOf);
        }

        public InternetHeader(String str, String str2) {
            super(str, "");
            if (str2 != null) {
                this.line = str + ": " + str2;
                return;
            }
            this.line = null;
        }
    }

    public String getHeader(String str, String str2) {
        String[] header = getHeader(str);
        if (header == null) {
            return null;
        }
        if (header.length != 1 && str2 != null) {
            StringBuilder sb = new StringBuilder(header[0]);
            for (int i2 = 1; i2 < header.length; i2++) {
                sb.append(str2);
                sb.append(header[i2]);
            }
            return sb.toString();
        }
        return header[0];
    }

    public InternetHeaders(InputStream inputStream) {
        this(inputStream, false);
    }

    public InternetHeaders(InputStream inputStream, boolean z2) throws MessagingException {
        this.headers = new ArrayList(40);
        load(inputStream, z2);
    }
}

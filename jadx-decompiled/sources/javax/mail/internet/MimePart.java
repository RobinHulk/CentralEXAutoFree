package javax.mail.internet;

import java.util.Enumeration;
import javax.mail.Part;

/* JADX INFO: loaded from: classes.dex */
public interface MimePart extends Part {
    void addHeaderLine(String str);

    Enumeration<String> getAllHeaderLines();

    String getContentID();

    String[] getContentLanguage();

    String getContentMD5();

    String getEncoding();

    String getHeader(String str, String str2);

    Enumeration<String> getMatchingHeaderLines(String[] strArr);

    Enumeration<String> getNonMatchingHeaderLines(String[] strArr);

    void setContentLanguage(String[] strArr);

    void setContentMD5(String str);

    void setText(String str);

    void setText(String str, String str2);

    void setText(String str, String str2, String str3);
}

package javax.mail.search;

/* JADX INFO: loaded from: classes.dex */
public abstract class StringTerm extends SearchTerm {
    private static final long serialVersionUID = 1274042129007696269L;
    protected boolean ignoreCase;
    protected String pattern;

    public StringTerm(String str) {
        this.pattern = str;
        this.ignoreCase = true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof StringTerm)) {
            return false;
        }
        StringTerm stringTerm = (StringTerm) obj;
        if (this.ignoreCase) {
            return stringTerm.pattern.equalsIgnoreCase(this.pattern) && stringTerm.ignoreCase == this.ignoreCase;
        }
        return stringTerm.pattern.equals(this.pattern) && stringTerm.ignoreCase == this.ignoreCase;
    }

    public boolean getIgnoreCase() {
        return this.ignoreCase;
    }

    public String getPattern() {
        return this.pattern;
    }

    public int hashCode() {
        return this.ignoreCase ? this.pattern.hashCode() : ~this.pattern.hashCode();
    }

    public boolean match(String str) {
        int length = str.length() - this.pattern.length();
        for (int i2 = 0; i2 <= length; i2++) {
            boolean z2 = this.ignoreCase;
            String str2 = this.pattern;
            if (str.regionMatches(z2, i2, str2, 0, str2.length())) {
                return true;
            }
        }
        return false;
    }

    public StringTerm(String str, boolean z2) {
        this.pattern = str;
        this.ignoreCase = z2;
    }
}

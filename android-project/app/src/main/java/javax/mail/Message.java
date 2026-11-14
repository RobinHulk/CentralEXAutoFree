package javax.mail;

import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.Date;
import javax.mail.search.SearchTerm;

/* JADX INFO: loaded from: classes.dex */
public abstract class Message implements Part {
    protected boolean expunged;
    protected Folder folder;
    protected int msgnum;
    protected Session session;

    public static class RecipientType implements Serializable {
        private static final long serialVersionUID = -7479791750606340008L;
        protected String type;
        public static final RecipientType TO = new RecipientType("To");
        public static final RecipientType CC = new RecipientType("Cc");
        public static final RecipientType BCC = new RecipientType("Bcc");

        public RecipientType(String str) {
            this.type = str;
        }

        public Object readResolve() throws InvalidObjectException {
            if (this.type.equals("To")) {
                return TO;
            }
            if (this.type.equals("Cc")) {
                return CC;
            }
            if (this.type.equals("Bcc")) {
                return BCC;
            }
            throw new InvalidObjectException("Attempt to resolve unknown RecipientType: " + this.type);
        }

        public String toString() {
            return this.type;
        }
    }

    public Message() {
        this.msgnum = 0;
        this.expunged = false;
        this.folder = null;
        this.session = null;
    }

    public abstract void addFrom(Address[] addressArr);

    public void addRecipient(RecipientType recipientType, Address address) {
        addRecipients(recipientType, new Address[]{address});
    }

    public abstract void addRecipients(RecipientType recipientType, Address[] addressArr);

    public Address[] getAllRecipients() {
        int length;
        Address[] recipients = getRecipients(RecipientType.TO);
        Address[] recipients2 = getRecipients(RecipientType.CC);
        Address[] recipients3 = getRecipients(RecipientType.BCC);
        if (recipients2 == null && recipients3 == null) {
            return recipients;
        }
        Address[] addressArr = new Address[(recipients != null ? recipients.length : 0) + (recipients2 != null ? recipients2.length : 0) + (recipients3 != null ? recipients3.length : 0)];
        if (recipients != null) {
            System.arraycopy(recipients, 0, addressArr, 0, recipients.length);
            length = recipients.length;
        } else {
            length = 0;
        }
        if (recipients2 != null) {
            System.arraycopy(recipients2, 0, addressArr, length, recipients2.length);
            length += recipients2.length;
        }
        if (recipients3 != null) {
            System.arraycopy(recipients3, 0, addressArr, length, recipients3.length);
        }
        return addressArr;
    }

    public abstract Flags getFlags();

    public Folder getFolder() {
        return this.folder;
    }

    public abstract Address[] getFrom();

    public int getMessageNumber() {
        return this.msgnum;
    }

    public abstract Date getReceivedDate();

    public abstract Address[] getRecipients(RecipientType recipientType);

    public Address[] getReplyTo() {
        return getFrom();
    }

    public abstract Date getSentDate();

    public Session getSession() {
        return this.session;
    }

    public abstract String getSubject();

    public boolean isExpunged() {
        return this.expunged;
    }

    public boolean isSet(Flags.Flag flag) {
        return getFlags().contains(flag);
    }

    public boolean match(SearchTerm searchTerm) {
        return searchTerm.match(this);
    }

    public abstract Message reply(boolean z2);

    public abstract void saveChanges();

    public void setExpunged(boolean z2) {
        this.expunged = z2;
    }

    public void setFlag(Flags.Flag flag, boolean z2) {
        setFlags(new Flags(flag), z2);
    }

    public abstract void setFlags(Flags flags, boolean z2);

    public abstract void setFrom();

    public abstract void setFrom(Address address);

    public void setMessageNumber(int i2) {
        this.msgnum = i2;
    }

    public void setRecipient(RecipientType recipientType, Address address) {
        if (address == null) {
            setRecipients(recipientType, null);
        } else {
            setRecipients(recipientType, new Address[]{address});
        }
    }

    public abstract void setRecipients(RecipientType recipientType, Address[] addressArr);

    public void setReplyTo(Address[] addressArr) throws MethodNotSupportedException {
        throw new MethodNotSupportedException("setReplyTo not supported");
    }

    public abstract void setSentDate(Date date);

    public abstract void setSubject(String str);

    public Message(Folder folder, int i2) {
        this.expunged = false;
        this.session = null;
        this.folder = folder;
        this.msgnum = i2;
        this.session = folder.store.session;
    }

    public Message(Session session) {
        this.msgnum = 0;
        this.expunged = false;
        this.folder = null;
        this.session = session;
    }
}

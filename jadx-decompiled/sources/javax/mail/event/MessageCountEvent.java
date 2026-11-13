package javax.mail.event;

import javax.mail.Folder;
import javax.mail.Message;

/* JADX INFO: loaded from: classes.dex */
public class MessageCountEvent extends MailEvent {
    public static final int ADDED = 1;
    public static final int REMOVED = 2;
    private static final long serialVersionUID = -7447022340837897369L;
    protected transient Message[] msgs;
    protected boolean removed;
    protected int type;

    public MessageCountEvent(Folder folder, int i2, boolean z2, Message[] messageArr) {
        super(folder);
        this.type = i2;
        this.removed = z2;
        this.msgs = messageArr;
    }

    @Override // javax.mail.event.MailEvent
    public void dispatch(Object obj) {
        if (this.type == 1) {
            ((MessageCountListener) obj).messagesAdded(this);
        } else {
            ((MessageCountListener) obj).messagesRemoved(this);
        }
    }

    public Message[] getMessages() {
        return this.msgs;
    }

    public int getType() {
        return this.type;
    }

    public boolean isRemoved() {
        return this.removed;
    }
}

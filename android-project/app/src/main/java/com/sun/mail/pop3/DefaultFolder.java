package com.sun.mail.pop3;

import javax.mail.Flags;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.MethodNotSupportedException;

/* JADX INFO: loaded from: classes.dex */
public class DefaultFolder extends Folder {
    public DefaultFolder(POP3Store pOP3Store) {
        super(pOP3Store);
    }

    @Override // javax.mail.Folder
    public void appendMessages(Message[] messageArr) throws MethodNotSupportedException {
        throw new MethodNotSupportedException("Append not supported");
    }

    @Override // javax.mail.Folder
    public void close(boolean z2) throws MethodNotSupportedException {
        throw new MethodNotSupportedException("close");
    }

    @Override // javax.mail.Folder
    public boolean create(int i2) {
        return false;
    }

    @Override // javax.mail.Folder
    public boolean delete(boolean z2) throws MethodNotSupportedException {
        throw new MethodNotSupportedException("delete");
    }

    @Override // javax.mail.Folder
    public boolean exists() {
        return true;
    }

    @Override // javax.mail.Folder
    public Message[] expunge() throws MethodNotSupportedException {
        throw new MethodNotSupportedException("expunge");
    }

    @Override // javax.mail.Folder
    public Folder getFolder(String str) throws MessagingException {
        if (str.equalsIgnoreCase("INBOX")) {
            return getInbox();
        }
        throw new MessagingException("only INBOX supported");
    }

    @Override // javax.mail.Folder
    public String getFullName() {
        return "";
    }

    public Folder getInbox() {
        return getStore().getFolder("INBOX");
    }

    @Override // javax.mail.Folder
    public Message getMessage(int i2) throws MethodNotSupportedException {
        throw new MethodNotSupportedException("getMessage");
    }

    @Override // javax.mail.Folder
    public int getMessageCount() {
        return 0;
    }

    @Override // javax.mail.Folder
    public String getName() {
        return "";
    }

    @Override // javax.mail.Folder
    public Folder getParent() {
        return null;
    }

    @Override // javax.mail.Folder
    public Flags getPermanentFlags() {
        return new Flags();
    }

    @Override // javax.mail.Folder
    public char getSeparator() {
        return '/';
    }

    @Override // javax.mail.Folder
    public int getType() {
        return 2;
    }

    @Override // javax.mail.Folder
    public boolean hasNewMessages() {
        return false;
    }

    @Override // javax.mail.Folder
    public boolean isOpen() {
        return false;
    }

    @Override // javax.mail.Folder
    public Folder[] list(String str) {
        return new Folder[]{getInbox()};
    }

    @Override // javax.mail.Folder
    public void open(int i2) throws MethodNotSupportedException {
        throw new MethodNotSupportedException("open");
    }

    @Override // javax.mail.Folder
    public boolean renameTo(Folder folder) throws MethodNotSupportedException {
        throw new MethodNotSupportedException("renameTo");
    }
}

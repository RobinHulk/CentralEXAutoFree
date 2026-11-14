package com.sun.mail.imap;

import com.sun.mail.imap.protocol.IMAPProtocol;
import com.sun.mail.imap.protocol.ListInfo;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MethodNotSupportedException;

/* JADX INFO: loaded from: classes.dex */
public class DefaultFolder extends IMAPFolder {
    public DefaultFolder(IMAPStore iMAPStore) {
        super("", (char) 65535, iMAPStore, null);
        this.exists = true;
        this.type = 2;
    }

    @Override // com.sun.mail.imap.IMAPFolder, javax.mail.Folder
    public void appendMessages(Message[] messageArr) throws MethodNotSupportedException {
        throw new MethodNotSupportedException("Cannot append to Default Folder");
    }

    @Override // com.sun.mail.imap.IMAPFolder, javax.mail.Folder
    public boolean delete(boolean z2) throws MethodNotSupportedException {
        throw new MethodNotSupportedException("Cannot delete Default Folder");
    }

    @Override // com.sun.mail.imap.IMAPFolder, javax.mail.Folder
    public Message[] expunge() throws MethodNotSupportedException {
        throw new MethodNotSupportedException("Cannot expunge Default Folder");
    }

    @Override // com.sun.mail.imap.IMAPFolder, javax.mail.Folder
    public Folder getFolder(String str) {
        return ((IMAPStore) this.store).newIMAPFolder(str, (char) 65535);
    }

    @Override // com.sun.mail.imap.IMAPFolder, javax.mail.Folder
    public synchronized String getName() {
        return this.fullName;
    }

    @Override // com.sun.mail.imap.IMAPFolder, javax.mail.Folder
    public Folder getParent() {
        return null;
    }

    @Override // com.sun.mail.imap.IMAPFolder, javax.mail.Folder
    public boolean hasNewMessages() {
        return false;
    }

    @Override // com.sun.mail.imap.IMAPFolder, javax.mail.Folder
    public synchronized Folder[] list(final String str) {
        ListInfo[] listInfoArr = (ListInfo[]) doCommand(new IMAPFolder.ProtocolCommand() { // from class: com.sun.mail.imap.DefaultFolder.1
            @Override // com.sun.mail.imap.IMAPFolder.ProtocolCommand
            public Object doCommand(IMAPProtocol iMAPProtocol) {
                return iMAPProtocol.list("", str);
            }
        });
        if (listInfoArr == null) {
            return new Folder[0];
        }
        int length = listInfoArr.length;
        IMAPFolder[] iMAPFolderArr = new IMAPFolder[length];
        for (int i2 = 0; i2 < length; i2++) {
            iMAPFolderArr[i2] = ((IMAPStore) this.store).newIMAPFolder(listInfoArr[i2]);
        }
        return iMAPFolderArr;
    }

    @Override // com.sun.mail.imap.IMAPFolder, javax.mail.Folder
    public synchronized Folder[] listSubscribed(final String str) {
        ListInfo[] listInfoArr = (ListInfo[]) doCommand(new IMAPFolder.ProtocolCommand() { // from class: com.sun.mail.imap.DefaultFolder.2
            @Override // com.sun.mail.imap.IMAPFolder.ProtocolCommand
            public Object doCommand(IMAPProtocol iMAPProtocol) {
                return iMAPProtocol.lsub("", str);
            }
        });
        if (listInfoArr == null) {
            return new Folder[0];
        }
        int length = listInfoArr.length;
        IMAPFolder[] iMAPFolderArr = new IMAPFolder[length];
        for (int i2 = 0; i2 < length; i2++) {
            iMAPFolderArr[i2] = ((IMAPStore) this.store).newIMAPFolder(listInfoArr[i2]);
        }
        return iMAPFolderArr;
    }

    @Override // com.sun.mail.imap.IMAPFolder, javax.mail.Folder
    public boolean renameTo(Folder folder) throws MethodNotSupportedException {
        throw new MethodNotSupportedException("Cannot rename Default Folder");
    }
}

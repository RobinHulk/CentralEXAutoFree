package javax.mail;

import java.util.Vector;
import javax.mail.event.FolderEvent;
import javax.mail.event.FolderListener;
import javax.mail.event.StoreEvent;
import javax.mail.event.StoreListener;

/* JADX INFO: loaded from: classes.dex */
public abstract class Store extends Service {
    private volatile Vector<FolderListener> folderListeners;
    private volatile Vector<StoreListener> storeListeners;

    public Store(Session session, URLName uRLName) {
        super(session, uRLName);
        this.storeListeners = null;
        this.folderListeners = null;
    }

    public synchronized void addFolderListener(FolderListener folderListener) {
        try {
            if (this.folderListeners == null) {
                this.folderListeners = new Vector<>();
            }
            this.folderListeners.addElement(folderListener);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void addStoreListener(StoreListener storeListener) {
        try {
            if (this.storeListeners == null) {
                this.storeListeners = new Vector<>();
            }
            this.storeListeners.addElement(storeListener);
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract Folder getDefaultFolder();

    public abstract Folder getFolder(String str);

    public abstract Folder getFolder(URLName uRLName);

    public Folder[] getPersonalNamespaces() {
        return new Folder[]{getDefaultFolder()};
    }

    public Folder[] getSharedNamespaces() {
        return new Folder[0];
    }

    public Folder[] getUserNamespaces(String str) {
        return new Folder[0];
    }

    public void notifyFolderListeners(int i2, Folder folder) {
        if (this.folderListeners == null) {
            return;
        }
        queueEvent(new FolderEvent(this, folder, i2), this.folderListeners);
    }

    public void notifyFolderRenamedListeners(Folder folder, Folder folder2) {
        if (this.folderListeners == null) {
            return;
        }
        queueEvent(new FolderEvent(this, folder, folder2, 3), this.folderListeners);
    }

    public void notifyStoreListeners(int i2, String str) {
        if (this.storeListeners == null) {
            return;
        }
        queueEvent(new StoreEvent(this, i2, str), this.storeListeners);
    }

    public synchronized void removeFolderListener(FolderListener folderListener) {
        if (this.folderListeners != null) {
            this.folderListeners.removeElement(folderListener);
        }
    }

    public synchronized void removeStoreListener(StoreListener storeListener) {
        if (this.storeListeners != null) {
            this.storeListeners.removeElement(storeListener);
        }
    }
}

package javax.mail;

import java.io.OutputStream;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public abstract class Multipart {
    protected Part parent;
    protected Vector<BodyPart> parts = new Vector<>();
    protected String contentType = "multipart/mixed";

    public synchronized void addBodyPart(BodyPart bodyPart) {
        try {
            if (this.parts == null) {
                this.parts = new Vector<>();
            }
            this.parts.addElement(bodyPart);
            bodyPart.setParent(this);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized BodyPart getBodyPart(int i2) {
        Vector<BodyPart> vector;
        vector = this.parts;
        if (vector == null) {
            throw new IndexOutOfBoundsException("No such BodyPart");
        }
        return vector.elementAt(i2);
    }

    public synchronized String getContentType() {
        return this.contentType;
    }

    public synchronized int getCount() {
        Vector<BodyPart> vector = this.parts;
        if (vector == null) {
            return 0;
        }
        return vector.size();
    }

    public synchronized Part getParent() {
        return this.parent;
    }

    public synchronized boolean removeBodyPart(BodyPart bodyPart) {
        boolean zRemoveElement;
        Vector<BodyPart> vector = this.parts;
        if (vector == null) {
            throw new MessagingException("No such body part");
        }
        zRemoveElement = vector.removeElement(bodyPart);
        bodyPart.setParent(null);
        return zRemoveElement;
    }

    public synchronized void setMultipartDataSource(MultipartDataSource multipartDataSource) {
        this.contentType = multipartDataSource.getContentType();
        int count = multipartDataSource.getCount();
        for (int i2 = 0; i2 < count; i2++) {
            addBodyPart(multipartDataSource.getBodyPart(i2));
        }
    }

    public synchronized void setParent(Part part) {
        this.parent = part;
    }

    public abstract void writeTo(OutputStream outputStream);

    public synchronized void addBodyPart(BodyPart bodyPart, int i2) {
        try {
            if (this.parts == null) {
                this.parts = new Vector<>();
            }
            this.parts.insertElementAt(bodyPart, i2);
            bodyPart.setParent(this);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void removeBodyPart(int i2) {
        Vector<BodyPart> vector = this.parts;
        if (vector != null) {
            BodyPart bodyPartElementAt = vector.elementAt(i2);
            this.parts.removeElementAt(i2);
            bodyPartElementAt.setParent(null);
        } else {
            throw new IndexOutOfBoundsException("No such BodyPart");
        }
    }
}

package javax.mail.internet;

import com.sun.mail.util.FolderClosedIOException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.UnknownServiceException;
import javax.activation.DataSource;
import javax.mail.FolderClosedException;
import javax.mail.MessageAware;
import javax.mail.MessageContext;
import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes.dex */
public class MimePartDataSource implements DataSource, MessageAware {
    private MessageContext context;
    protected MimePart part;

    public MimePartDataSource(MimePart mimePart) {
        this.part = mimePart;
    }

    @Override // javax.activation.DataSource
    public String getContentType() {
        try {
            return this.part.getContentType();
        } catch (MessagingException unused) {
            return "application/octet-stream";
        }
    }

    @Override // javax.activation.DataSource
    public InputStream getInputStream() throws IOException {
        InputStream contentStream;
        try {
            MimePart mimePart = this.part;
            if (mimePart instanceof MimeBodyPart) {
                contentStream = ((MimeBodyPart) mimePart).getContentStream();
            } else {
                if (!(mimePart instanceof MimeMessage)) {
                    throw new MessagingException("Unknown part");
                }
                contentStream = ((MimeMessage) mimePart).getContentStream();
            }
            MimePart mimePart2 = this.part;
            String strRestrictEncoding = MimeBodyPart.restrictEncoding(mimePart2, mimePart2.getEncoding());
            return strRestrictEncoding != null ? MimeUtility.decode(contentStream, strRestrictEncoding) : contentStream;
        } catch (FolderClosedException e2) {
            throw new FolderClosedIOException(e2.getFolder(), e2.getMessage());
        } catch (MessagingException e3) {
            IOException iOException = new IOException(e3.getMessage());
            iOException.initCause(e3);
            throw iOException;
        }
    }

    @Override // javax.mail.MessageAware
    public synchronized MessageContext getMessageContext() {
        try {
            if (this.context == null) {
                this.context = new MessageContext(this.part);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.context;
    }

    @Override // javax.activation.DataSource
    public String getName() {
        try {
            MimePart mimePart = this.part;
            return mimePart instanceof MimeBodyPart ? ((MimeBodyPart) mimePart).getFileName() : "";
        } catch (MessagingException unused) {
            return "";
        }
    }

    @Override // javax.activation.DataSource
    public OutputStream getOutputStream() throws UnknownServiceException {
        throw new UnknownServiceException("Writing not supported");
    }
}

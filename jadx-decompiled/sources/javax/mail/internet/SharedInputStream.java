package javax.mail.internet;

import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public interface SharedInputStream {
    long getPosition();

    InputStream newStream(long j2, long j3);
}

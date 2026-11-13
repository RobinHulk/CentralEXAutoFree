package javax.mail.util;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import javax.mail.internet.SharedInputStream;

/* JADX INFO: loaded from: classes.dex */
public class SharedByteArrayInputStream extends ByteArrayInputStream implements SharedInputStream {
    protected int start;

    public SharedByteArrayInputStream(byte[] bArr) {
        super(bArr);
        this.start = 0;
    }

    @Override // javax.mail.internet.SharedInputStream
    public long getPosition() {
        return ((ByteArrayInputStream) this).pos - this.start;
    }

    @Override // javax.mail.internet.SharedInputStream
    public InputStream newStream(long j2, long j3) {
        if (j2 < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (j3 == -1) {
            j3 = ((ByteArrayInputStream) this).count - this.start;
        }
        return new SharedByteArrayInputStream(((ByteArrayInputStream) this).buf, this.start + ((int) j2), (int) (j3 - j2));
    }

    public SharedByteArrayInputStream(byte[] bArr, int i2, int i3) {
        super(bArr, i2, i3);
        this.start = i2;
    }
}

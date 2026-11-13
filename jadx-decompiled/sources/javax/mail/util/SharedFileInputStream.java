package javax.mail.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import javax.mail.internet.SharedInputStream;

/* JADX INFO: loaded from: classes.dex */
public class SharedFileInputStream extends BufferedInputStream implements SharedInputStream {
    private static int defaultBufferSize = 2048;
    protected long bufpos;
    protected int bufsize;
    protected long datalen;
    protected RandomAccessFile in;
    private boolean master;
    private SharedFile sf;
    protected long start;

    public SharedFileInputStream(File file) {
        this(file, defaultBufferSize);
    }

    private void ensureOpen() throws IOException {
        if (this.in == null) {
            throw new IOException("Stream closed");
        }
    }

    private void fill() {
        if (((BufferedInputStream) this).markpos < 0) {
            ((BufferedInputStream) this).pos = 0;
            this.bufpos += (long) ((BufferedInputStream) this).count;
        } else if (((BufferedInputStream) this).pos >= ((BufferedInputStream) this).buf.length) {
            int i2 = ((BufferedInputStream) this).markpos;
            if (i2 > 0) {
                int i3 = ((BufferedInputStream) this).pos - i2;
                System.arraycopy(((BufferedInputStream) this).buf, ((BufferedInputStream) this).markpos, ((BufferedInputStream) this).buf, 0, i3);
                ((BufferedInputStream) this).pos = i3;
                this.bufpos += (long) ((BufferedInputStream) this).markpos;
                ((BufferedInputStream) this).markpos = 0;
            } else {
                int length = ((BufferedInputStream) this).buf.length;
                int i4 = ((BufferedInputStream) this).marklimit;
                if (length >= i4) {
                    ((BufferedInputStream) this).markpos = -1;
                    ((BufferedInputStream) this).pos = 0;
                    this.bufpos += (long) ((BufferedInputStream) this).count;
                } else {
                    int i5 = ((BufferedInputStream) this).pos * 2;
                    if (i5 <= i4) {
                        i4 = i5;
                    }
                    byte[] bArr = new byte[i4];
                    System.arraycopy(((BufferedInputStream) this).buf, 0, bArr, 0, ((BufferedInputStream) this).pos);
                    ((BufferedInputStream) this).buf = bArr;
                }
            }
        }
        ((BufferedInputStream) this).count = ((BufferedInputStream) this).pos;
        int length2 = ((BufferedInputStream) this).buf.length;
        int i6 = ((BufferedInputStream) this).pos;
        int i7 = length2 - i6;
        long j2 = this.bufpos;
        long j3 = this.start;
        long j4 = (j2 - j3) + ((long) i6) + ((long) i7);
        long j5 = this.datalen;
        if (j4 > j5) {
            i7 = (int) (j5 - ((j2 - j3) + ((long) i6)));
        }
        synchronized (this.in) {
            try {
                this.in.seek(this.bufpos + ((long) ((BufferedInputStream) this).pos));
                int i8 = this.in.read(((BufferedInputStream) this).buf, ((BufferedInputStream) this).pos, i7);
                if (i8 > 0) {
                    ((BufferedInputStream) this).count = i8 + ((BufferedInputStream) this).pos;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int in_available() {
        return (int) ((this.start + this.datalen) - (this.bufpos + ((long) ((BufferedInputStream) this).count)));
    }

    private void init(SharedFile sharedFile, int i2) {
        this.sf = sharedFile;
        RandomAccessFile randomAccessFileOpen = sharedFile.open();
        this.in = randomAccessFileOpen;
        this.start = 0L;
        this.datalen = randomAccessFileOpen.length();
        this.bufsize = i2;
        ((BufferedInputStream) this).buf = new byte[i2];
    }

    private int read1(byte[] bArr, int i2, int i3) {
        int i4 = ((BufferedInputStream) this).count - ((BufferedInputStream) this).pos;
        if (i4 <= 0) {
            fill();
            i4 = ((BufferedInputStream) this).count - ((BufferedInputStream) this).pos;
            if (i4 <= 0) {
                return -1;
            }
        }
        if (i4 < i3) {
            i3 = i4;
        }
        System.arraycopy(((BufferedInputStream) this).buf, ((BufferedInputStream) this).pos, bArr, i2, i3);
        ((BufferedInputStream) this).pos += i3;
        return i3;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() {
        ensureOpen();
        return (((BufferedInputStream) this).count - ((BufferedInputStream) this).pos) + in_available();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.in == null) {
            return;
        }
        try {
            if (this.master) {
                this.sf.forceClose();
            } else {
                this.sf.close();
            }
        } finally {
            this.sf = null;
            this.in = null;
            ((BufferedInputStream) this).buf = null;
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        close();
    }

    @Override // javax.mail.internet.SharedInputStream
    public long getPosition() {
        if (this.in != null) {
            return (this.bufpos + ((long) ((BufferedInputStream) this).pos)) - this.start;
        }
        throw new RuntimeException("Stream closed");
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i2) {
        ((BufferedInputStream) this).marklimit = i2;
        ((BufferedInputStream) this).markpos = ((BufferedInputStream) this).pos;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // javax.mail.internet.SharedInputStream
    public synchronized InputStream newStream(long j2, long j3) {
        try {
            if (this.in == null) {
                throw new RuntimeException("Stream closed");
            }
            if (j2 < 0) {
                throw new IllegalArgumentException("start < 0");
            }
            if (j3 == -1) {
                j3 = this.datalen;
            }
        } catch (Throwable th) {
            throw th;
        }
        return new SharedFileInputStream(this.sf, this.start + j2, j3 - j2, this.bufsize);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() {
        ensureOpen();
        if (((BufferedInputStream) this).pos >= ((BufferedInputStream) this).count) {
            fill();
            if (((BufferedInputStream) this).pos >= ((BufferedInputStream) this).count) {
                return -1;
            }
        }
        byte[] bArr = ((BufferedInputStream) this).buf;
        int i2 = ((BufferedInputStream) this).pos;
        ((BufferedInputStream) this).pos = i2 + 1;
        return bArr[i2] & 255;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        ensureOpen();
        int i2 = ((BufferedInputStream) this).markpos;
        if (i2 < 0) {
            throw new IOException("Resetting to invalid mark");
        }
        ((BufferedInputStream) this).pos = i2;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j2) {
        ensureOpen();
        if (j2 <= 0) {
            return 0L;
        }
        long j3 = ((BufferedInputStream) this).count - ((BufferedInputStream) this).pos;
        if (j3 <= 0) {
            fill();
            j3 = ((BufferedInputStream) this).count - ((BufferedInputStream) this).pos;
            if (j3 <= 0) {
                return 0L;
            }
        }
        if (j3 < j2) {
            j2 = j3;
        }
        ((BufferedInputStream) this).pos = (int) (((long) ((BufferedInputStream) this).pos) + j2);
        return j2;
    }

    public static class SharedFile {
        private int cnt;
        private RandomAccessFile in;

        public SharedFile(String str) {
            this.in = new RandomAccessFile(str, "r");
        }

        public synchronized void close() {
            int i2 = this.cnt;
            if (i2 > 0) {
                int i3 = i2 - 1;
                this.cnt = i3;
                if (i3 <= 0) {
                    this.in.close();
                }
            }
        }

        public void finalize() throws Throwable {
            try {
                this.in.close();
            } finally {
                super.finalize();
            }
        }

        public synchronized void forceClose() {
            if (this.cnt > 0) {
                this.cnt = 0;
                this.in.close();
            } else {
                try {
                    this.in.close();
                } catch (IOException unused) {
                }
            }
        }

        public synchronized RandomAccessFile open() {
            this.cnt++;
            return this.in;
        }

        public SharedFile(File file) {
            this.in = new RandomAccessFile(file, "r");
        }
    }

    public SharedFileInputStream(String str) {
        this(str, defaultBufferSize);
    }

    public SharedFileInputStream(File file, int i2) {
        super(null);
        this.start = 0L;
        this.master = true;
        if (i2 > 0) {
            init(new SharedFile(file), i2);
            return;
        }
        throw new IllegalArgumentException("Buffer size <= 0");
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i2, int i3) {
        ensureOpen();
        int i4 = i2 + i3;
        if ((i2 | i3 | i4 | (bArr.length - i4)) < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i3 == 0) {
            return 0;
        }
        int i5 = read1(bArr, i2, i3);
        if (i5 <= 0) {
            return i5;
        }
        while (i5 < i3) {
            int i6 = read1(bArr, i2 + i5, i3 - i5);
            if (i6 <= 0) {
                break;
            }
            i5 += i6;
        }
        return i5;
    }

    public SharedFileInputStream(String str, int i2) {
        super(null);
        this.start = 0L;
        this.master = true;
        if (i2 > 0) {
            init(new SharedFile(str), i2);
            return;
        }
        throw new IllegalArgumentException("Buffer size <= 0");
    }

    private SharedFileInputStream(SharedFile sharedFile, long j2, long j3, int i2) {
        super(null);
        this.start = 0L;
        this.master = false;
        this.sf = sharedFile;
        this.in = sharedFile.open();
        this.start = j2;
        this.bufpos = j2;
        this.datalen = j3;
        this.bufsize = i2;
        ((BufferedInputStream) this).buf = new byte[i2];
    }
}

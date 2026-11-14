.class public final LT/I1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LT/I1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/DataInputStream;)LM/q;
    .locals 8

    const/16 v0, 0x18

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    not-int v6, v1

    if-ne v6, v0, :cond_3

    new-array v0, v4, [B

    if-lez v4, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_0
    const/4 p0, 0x0

    move v6, p0

    :goto_0
    if-ge p0, v4, :cond_1

    aget-byte v7, v0, p0

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-ne v6, v5, :cond_2

    new-instance p0, LM/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, LM/q;->a:I

    iput v2, p0, LM/q;->b:I

    iput v3, p0, LM/q;->c:I

    iput-object v0, p0, LM/q;->d:Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "checksum ADB invalido"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cabecalho ADB invalido"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/io/OutputStream;III[B)V
    .locals 3

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length p2, p4

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length p2, p4

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-ge p3, p2, :cond_0

    aget-byte v2, p4, p3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    not-int p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, LT/I1;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    sget-object p2, LT/G3;->a:LT/G3;

    sget-object v0, LT/G3;->e:LT/F3;

    invoke-virtual {p2, v0, v3, v4, v2}, LT/G3;->c(LT/F3;JZ)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    sget-object p2, LT/G3;->a:LT/G3;

    sget-object v0, LT/G3;->e:LT/F3;

    invoke-virtual {p2, v0, v3, v4, v2}, LT/G3;->c(LT/F3;JZ)V

    throw p1
.end method

.method public c(ILjava/lang/String;)Ljava/lang/String;
    .locals 18

    move/from16 v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    :try_start_0
    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "127.0.0.1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v6, p0

    :try_start_1
    iget v7, v6, LT/I1;->a:I

    invoke-direct {v4, v5, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const-string v5, "host::central-geely"

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v7, v5

    add-int/lit8 v8, v7, 0x1

    new-array v8, v8, [B

    array-length v9, v5

    const/4 v10, 0x0

    invoke-static {v5, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v10, v8, v7

    const/high16 v5, 0x1000000

    const/16 v7, 0x1000

    const v9, 0x4e584e43    # 9.072519E8f

    invoke-static {v4, v9, v5, v7, v8}, LT/I1;->d(Ljava/io/OutputStream;III[B)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v7, v1, v7

    const-wide/16 v11, 0x0

    cmp-long v5, v7, v11

    const-string v13, "prazo total do comando ADB estourado"

    if-lez v5, :cond_a

    const-wide/32 v14, 0x7fffffff

    :try_start_2
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    invoke-virtual {v3, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {v0}, LT/I1;->a(Ljava/io/DataInputStream;)LM/q;

    move-result-object v5

    iget v5, v5, LM/q;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, "adbd pediu autenticacao por chave"

    const v8, 0x48545541

    if-eq v5, v8, :cond_9

    if-ne v5, v9, :cond_0

    if-ne v5, v9, :cond_8

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shell:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v9, v5

    add-int/lit8 v8, v9, 0x1

    new-array v8, v8, [B

    array-length v14, v5

    invoke-static {v5, v10, v8, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v10, v8, v9

    const v5, 0x4e45504f    # 8.2759366E8f

    const/4 v9, 0x1

    invoke-static {v4, v5, v9, v10, v8}, LT/I1;->d(Ljava/io/OutputStream;III[B)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v8, v10

    move v14, v8

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v9, v1, v16

    cmp-long v16, v9, v11

    if-lez v16, :cond_7

    const-wide/32 v11, 0x7fffffff

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v3, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {v0}, LT/I1;->a(Ljava/io/DataInputStream;)LM/q;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget v10, v9, LM/q;->a:I

    const v11, 0x48545541

    if-eq v10, v11, :cond_6

    const v12, 0x59414b4f

    iget v11, v9, LM/q;->b:I

    if-ne v10, v12, :cond_2

    :try_start_4
    iget v9, v9, LM/q;->c:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move v14, v11

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    goto :goto_0

    :cond_1
    move v9, v10

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_3
    move-object v1, v0

    goto :goto_4

    :cond_2
    const v15, 0x45545257

    if-ne v10, v15, :cond_4

    if-nez v8, :cond_3

    move v14, v11

    const/4 v8, 0x1

    :cond_3
    iget-object v9, v9, LM/q;->d:Ljava/lang/Object;

    check-cast v9, [B

    invoke-virtual {v5, v9}, Ljava/io/OutputStream;->write([B)V

    const/4 v9, 0x0

    new-array v10, v9, [B

    const/4 v9, 0x1

    invoke-static {v4, v12, v9, v11, v10}, LT/I1;->d(Ljava/io/OutputStream;III[B)V

    goto :goto_1

    :cond_4
    const v0, 0x45534c43

    if-ne v10, v0, :cond_5

    const/4 v8, 0x0

    new-array v1, v8, [B

    const/4 v2, 0x1

    invoke-static {v4, v0, v2, v14, v1}, LT/I1;->d(Ljava/io/OutputStream;III[B)V

    const-string v0, "UTF-8"

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    return-object v0

    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mensagem ADB inesperada: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "handshake ADB inesperado"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_3

    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
.end method

.class public final Lcom/ex/auto/PhoneSyncService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static volatile v:Z


# instance fields
.field public volatile a:Z

.field public b:Ljava/net/ServerSocket;

.field public c:Landroid/bluetooth/BluetoothServerSocket;

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public e:Landroid/car/Car;

.field public volatile f:Landroid/car/hardware/property/CarPropertyManager;

.field public volatile g:Landroid/car/media/CarAudioManager;

.field public volatile h:LT/G4;

.field public volatile i:Ljava/lang/Integer;

.field public final j:[I

.field public final k:Ljava/lang/Object;

.field public l:Ljava/lang/Integer;

.field public m:J

.field public n:Ljava/lang/Integer;

.field public o:J

.field public p:Ljava/lang/Boolean;

.field public q:J

.field public final r:Ljava/lang/Object;

.field public final s:Ljava/util/List;

.field public final t:Ljava/util/List;

.field public final u:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->d:Ljava/util/concurrent/ExecutorService;

    const/16 v0, 0x31

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    filled-new-array {v1, v0, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->j:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->k:Ljava/lang/Object;

    new-instance v0, LT/T3;

    const/4 v4, 0x0

    const-string v7, "Travar ao se afastar"

    const v3, 0x2140201a

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, LT/T3;-><init>(IIIILjava/lang/String;)V

    new-instance v2, Lv0/a;

    const-string v3, "away_lock"

    invoke-direct {v2, v3, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LT/T3;

    const/4 v6, 0x0

    const-string v9, "Destravar ao aproximar"

    const v5, 0x2140a117

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, LT/T3;-><init>(IIIILjava/lang/String;)V

    new-instance v3, Lv0/a;

    const-string v4, "approach_unlock"

    invoke-direct {v3, v4, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LT/T3;

    const/high16 v7, 0x20000000

    const-string v10, "Porta-malas ao aproximar"

    const v6, 0x2140201c

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, LT/T3;-><init>(IIIILjava/lang/String;)V

    new-instance v4, Lv0/a;

    const-string v5, "tail_approach"

    invoke-direct {v4, v5, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LT/T3;

    const/4 v8, 0x0

    const-string v11, "Travamento por velocidade"

    const v7, 0x21402015

    const/4 v9, 0x2

    const/4 v10, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, LT/T3;-><init>(IIIILjava/lang/String;)V

    new-instance v5, Lv0/a;

    const-string v6, "speed_auto_lock"

    invoke-direct {v5, v6, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v4, v5}, [Lv0/a;

    move-result-object v0

    invoke-static {v0}, Lw0/u;->V([Lv0/a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->r:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lv0/a;

    const-string v2, "fl"

    invoke-direct {v1, v2, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lv0/a;

    const-string v4, "fr"

    invoke-direct {v3, v4, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lv0/a;

    const-string v7, "rl"

    invoke-direct {v6, v7, v5}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lv0/a;

    const-string v10, "rr"

    invoke-direct {v9, v10, v8}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v3, v6, v9}, [Lv0/a;

    move-result-object v1

    invoke-static {v1}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/PhoneSyncService;->s:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lv0/a;

    invoke-direct {v1, v2, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lv0/a;

    invoke-direct {v2, v4, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lv0/a;

    invoke-direct {v3, v7, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lv0/a;

    invoke-direct {v4, v10, v0}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3, v4}, [Lv0/a;

    move-result-object v0

    invoke-static {v0}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->t:Ljava/util/List;

    const-string v3, "mfi-kernel"

    const-string v4, "mfi-state"

    const-string v1, "connadaptor-log"

    const-string v2, "connadaptor-logs"

    const-string v5, "i2c-mfi"

    const-string v6, "carplay-diag"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->u:Ljava/util/List;

    return-void
.end method

.method public static e(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const/16 p0, 0x3ff

    int-to-long v3, p0

    add-long/2addr v1, v3

    const/16 p0, 0x400

    int-to-long v3, p0

    div-long/2addr v1, v3

    long-to-int p0, v1

    const-string v1, "sizeKb"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/io/BufferedInputStream;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3f

    const-string v3, ""

    invoke-static {p1, v2, v3}, LO0/j;->Q0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [C

    const/16 v3, 0x26

    aput-char v3, v2, v0

    invoke-static {p1, v2}, LO0/j;->N0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v5, 0x3d

    const/4 v6, 0x6

    invoke-static {v3, v5, v0, v0, v6}, LO0/j;->C0(Ljava/lang/String;CIZI)I

    move-result v5

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v6, "substring(...)"

    invoke-static {v4, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lv0/a;

    invoke-direct {v5, v4, v3}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lv0/a;

    iget-object v3, v3, Lv0/a;->a:Ljava/lang/Object;

    const-string v5, "filename"

    invoke-static {v3, v5}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_4
    move-object v2, v4

    :goto_2
    check-cast v2, Lv0/a;

    if-eqz v2, :cond_5

    iget-object p1, v2, Lv0/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v4

    :goto_3
    const-string v2, "put(...)"

    const-string v3, "error"

    const-string v5, "ok"

    if-nez p1, :cond_6

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "filename obrigat\u00f3rio"

    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_6
    invoke-static {p1}, Lcom/ex/auto/PhoneSyncService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "nome inv\u00e1lido (use .wav)"

    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_7
    const-wide/16 v6, 0x1

    cmp-long v6, v6, p2

    if-gtz v6, :cond_b

    const-wide/32 v6, 0x1900001

    cmp-long v6, p2, v6

    if-gez v6, :cond_b

    long-to-int v6, p2

    invoke-static {p0, v6}, Lcom/ex/auto/PhoneSyncService;->m(Ljava/io/BufferedInputStream;I)[B

    move-result-object p0

    array-length v6, p0

    int-to-long v6, v6

    cmp-long p2, v6, p2

    if-eqz p2, :cond_8

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "upload interrompido"

    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_8
    :try_start_0
    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object p2

    new-instance p3, LT/n;

    invoke-direct {p3, v0}, LT/n;-><init>(I)V

    const/16 v2, 0x2710

    invoke-static {p2, v2, v4, p3}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    new-instance p2, Ljava/io/File;

    const-string p3, "/data/local/tmp/sons"

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_5

    :cond_9
    :goto_4
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p2, v4}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p3, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    const-string p2, "PhoneSyncService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avas_sound salvo: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes)"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "message"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Som enviado: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2014 abra o AvasSomAtivador no carro para aplicar"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catchall_0
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-static {p2, p0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    :cond_a
    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_b
    const-wide/16 v6, 0x0

    cmp-long p1, p2, v6

    if-lez p1, :cond_c

    const-wide/32 v6, 0x1900000

    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-static {p0, p1}, Lcom/ex/auto/PhoneSyncService;->m(Ljava/io/BufferedInputStream;I)[B

    :cond_c
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "arquivo vazio ou acima de 25 MB"

    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static h(Ljava/io/BufferedInputStream;Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    const-string v3, "Som de bloqueio aplicado: "

    const-string v4, "carlock bind ("

    const/16 v5, 0x3f

    const-string v6, ""

    move-object/from16 v7, p1

    invoke-static {v7, v5, v6}, LO0/j;->Q0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "remove"

    invoke-static {v5, v6}, Lcom/ex/auto/PhoneSyncService;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-static {v6, v7}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "message"

    const-string v8, "exit_code=0"

    const-wide/16 v9, 0x0

    const-string v11, "put(...)"

    const-string v12, "ok"

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v6, :cond_2

    cmp-long v3, v1, v9

    if-lez v3, :cond_0

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/ex/auto/PhoneSyncService;->m(Ljava/io/BufferedInputStream;I)[B

    :cond_0
    :try_start_0
    invoke-static {}, LT/Y;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT/n;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LT/n;-><init>(I)V

    const/16 v2, 0x4e20

    invoke-static {v0, v2, v13, v1}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "erro: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, v8, v14}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v0, "Som original restaurado"

    goto :goto_1

    :cond_1
    const-string v0, "Falha ao restaurar"

    :goto_1
    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v6, "filename"

    invoke-static {v5, v6}, Lcom/ex/auto/PhoneSyncService;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "error"

    if-nez v5, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "filename obrigat\u00f3rio"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-static {v5}, Lcom/ex/auto/PhoneSyncService;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "nome inv\u00e1lido (use .wav)"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-wide/16 v15, 0x1

    cmp-long v15, v15, v1

    if-gtz v15, :cond_a

    const-wide/32 v15, 0x1900001

    cmp-long v15, v1, v15

    if-gez v15, :cond_a

    long-to-int v9, v1

    invoke-static {v0, v9}, Lcom/ex/auto/PhoneSyncService;->m(Ljava/io/BufferedInputStream;I)[B

    move-result-object v0

    array-length v9, v0

    int-to-long v9, v9

    cmp-long v1, v9, v1

    if-eqz v1, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "upload interrompido"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_5
    :try_start_1
    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v1

    new-instance v2, LT/n;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, LT/n;-><init>(I)V

    const/16 v9, 0x2710

    invoke-static {v1, v9, v13, v2}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/sons"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_5

    :cond_6
    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1, v13}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v14}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LT/Y;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LT/n;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, LT/n;-><init>(I)V

    const/16 v9, 0x61a8

    invoke-static {v1, v9, v13, v2}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, v14}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "BIND_NAO_CONFIRMADO"

    invoke-static {v1, v2, v14}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move v0, v14

    :goto_3
    const-string v2, "PhoneSyncService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x12c

    invoke-static {v4, v1}, LO0/j;->W0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_8

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    const-string v0, "Falha ao aplicar o som"

    :goto_4
    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-static {v1, v2}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_a
    cmp-long v3, v1, v9

    if-lez v3, :cond_b

    const-wide/32 v3, 0x1900000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/ex/auto/PhoneSyncService;->m(Ljava/io/BufferedInputStream;I)[B

    :cond_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "arquivo vazio ou acima de 25 MB"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x26

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {p0, v1}, LO0/j;->N0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x6

    const/16 v6, 0x3d

    invoke-static {v2, v6, v3, v3, v5}, LO0/j;->C0(Ljava/lang/String;CIZI)I

    move-result v5

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v6, "substring(...)"

    invoke-static {v4, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lv0/a;

    invoke-direct {v5, v4, v2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lv0/a;

    iget-object v1, v1, Lv0/a;->a:Ljava/lang/Object;

    invoke-static {v1, p1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_4
    move-object v0, v4

    :goto_2
    check-cast v0, Lv0/a;

    if-eqz v0, :cond_5

    iget-object p0, v0, Lv0/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    return-object v4
.end method

.method public static k(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lw0/s;->a:Lw0/s;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v3}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static m(Ljava/io/BufferedInputStream;I)[B
    .locals 3

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string p0, "copyOf(...)"

    invoke-static {v0, p0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public static o(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aput-byte v2, p0, v1

    move v1, v3

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static p(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ok"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "put(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static q(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LT/S3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LT/S3;-><init>(Ljava/lang/Object;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ok"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "message"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "put(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-static {p0, v0}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    invoke-static {p0, v0}, LO0/j;->S0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^A-Za-z0-9._-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "replaceAll(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, ".wav"

    invoke-static {v0, v2, v1}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v1, v0, :cond_1

    const/16 v1, 0x79

    if-ge v0, v1, :cond_1

    const-string v0, "."

    invoke-static {p0, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 5

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "getBytes(...)"

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_0

    const-string v2, "OK"

    goto :goto_0

    :cond_0
    const-string v2, "Bad Request"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP/1.1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\nConnection: close\r\nContent-Type: application/json; charset=utf-8\r\nContent-Length: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p1

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\r\n\r\n"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p2, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x1

    const-string v1, "PhoneSyncService"

    const-string v2, "key"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LT/Q3;->a:LT/Q3;

    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    sget-object v3, LT/Q3;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LT/N3;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ok"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "chave desconhecida: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "put(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v5, v3, LT/N3;->c:LT/O3;

    sget-object v6, LT/O3;->b:LT/O3;

    if-ne v5, v6, :cond_1

    invoke-static {p0}, LT/Q3;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-static {p0}, LT/Q3;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    :goto_0
    iget-object v3, v3, LT/N3;->b:LT/P3;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v6, "value"

    if-eqz v3, :cond_3

    if-ne v3, v0, :cond_2

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_2
    new-instance p1, LO/c;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    invoke-static {p0}, LT/Q3;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-class v7, Lcom/ex/auto/CentralWatchdogService;

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    :try_start_1
    const-string v5, "auto_proxy_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "auto_proxy_changed"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    :catch_0
    move-exception v3

    goto/16 :goto_4

    :sswitch_1
    const-string v5, "auto_route_on_aa_connect"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_5

    :cond_5
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "auto_route_changed"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    :sswitch_2
    const-string v4, "rvc_black_bg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_5

    :cond_6
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, LT/z;

    const/16 v7, 0xf

    invoke-direct {v5, v3, v2, p0, v7}, LT/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    :sswitch_3
    const-string v5, "status_battery_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_8
    sget-object v3, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {p0}, LT/A4;->d(Landroid/content/Context;)V

    :goto_2
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-static {}, LT/Y;->a0()V

    goto/16 :goto_5

    :sswitch_4
    const-string v5, "hvac_stepper_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sget-boolean v4, Lcom/geely/hvacstepperv2/TempStepperService;->Z:Z

    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/geely/hvacstepperv2/TempStepperService;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v3, :cond_9

    if-nez v4, :cond_9

    invoke-virtual {p0, v5}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    :cond_9
    if-nez v3, :cond_14

    if-eqz v4, :cond_14

    invoke-virtual {p0, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_5

    :sswitch_5
    const-string v3, "saved_regen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_5

    :sswitch_6
    const-string v3, "saved_drive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_5

    :cond_a
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-nez v3, :cond_b

    goto/16 :goto_5

    :cond_b
    iget-object v4, v3, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v5, LT/t0;

    const/16 v7, 0x15

    invoke-direct {v5, v3, v7}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :sswitch_7
    const-string v5, "telemetry_autostart"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_5

    :cond_c
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "telemetry_on"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0, v4}, Lcom/ex/auto/VhalProviderService;->b(Landroid/content/Context;Z)V

    goto/16 :goto_5

    :sswitch_8
    const-string v5, "avas_muted_saved"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_5

    :cond_d
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, LT/I;

    invoke-direct {v5, p0, v3, v0}, LT/I;-><init>(Ljava/lang/Object;ZI)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    :sswitch_9
    const-string v4, "hvac_digital_ext_temp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_5

    :sswitch_a
    const-string v5, "status_temp_ext_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_5

    :cond_e
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    :cond_f
    sget-object v3, LT/A4;->a:Ljava/util/HashMap;

    invoke-static {p0}, LT/A4;->e(Landroid/content/Context;)V

    :goto_3
    sget-object v3, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-static {}, LT/Y;->a0()V

    goto/16 :goto_5

    :sswitch_b
    const-string v3, "floater_alpha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_5

    :cond_10
    new-instance v3, Landroid/content/Intent;

    const-string v4, "UPDATE_FLOATER_ALPHA"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "alpha"

    invoke-static {p0}, LT/Q3;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const/16 v7, 0x64

    invoke-interface {v5, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    :sswitch_c
    const-string v5, "quick_access_enabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_5

    :cond_11
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sget-object v4, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    sget-boolean v4, Lcom/ex/auto/QuickAccessFloaterService;->m0:Z

    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v3, :cond_12

    if-nez v4, :cond_12

    invoke-virtual {p0, v5}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5

    :cond_12
    if-nez v3, :cond_14

    if-eqz v4, :cond_14

    invoke-virtual {p0, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_5

    :sswitch_d
    const-string v4, "hvac_digital_temp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_5

    :sswitch_e
    const-string v4, "hvac_digital_batt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_5

    :cond_13
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, LT/H;

    const/16 v7, 0x1b

    invoke-direct {v5, p0, v3, v7}, LT/H;-><init>(Landroid/content/ContextWrapper;Landroid/content/SharedPreferences;I)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    const-string v4, "applySideEffect("

    const-string v5, "): "

    invoke-static {v4, v2, v5}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_5
    const-string v3, "set_setting ativo: "

    const-string v4, " = "

    invoke-static {v3, v2, v4}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Config "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " aplicada"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5271050b -> :sswitch_e
        -0x5268c836 -> :sswitch_d
        -0x42c9ac08 -> :sswitch_c
        -0x38d6ce58 -> :sswitch_b
        -0x1ac43c1b -> :sswitch_a
        -0x1a057d8 -> :sswitch_9
        0x91819b -> :sswitch_8
        0xfd8a70d -> :sswitch_7
        0x17b429d2 -> :sswitch_6
        0x18738085 -> :sswitch_5
        0x2dfb7b44 -> :sswitch_4
        0x33d184c2 -> :sswitch_3
        0x4cd16625 -> :sswitch_2
        0x6bff5025 -> :sswitch_1
        0x6f6f3fe0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 6

    const-string v0, "central_events.log"

    const-string v1, "central_boot.log"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "getFilesDir(...)"

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 14

    sget-object v0, Lw0/q;->a:Lw0/q;

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/storage/emulated/0/Download"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ex/auto/PhoneSyncService;->u:Ljava/util/List;

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v7, "getName(...)"

    invoke-static {v11, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "prefix"

    invoke-static {v12, v7}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v8, 0x0

    const/4 v13, 0x1

    const/4 v9, 0x0

    invoke-static/range {v8 .. v13}, LO0/s;->t0(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, LT/E;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, LT/E;-><init>(I)V

    invoke-static {v2, v1}, Lw0/i;->f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-object v0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 12

    sget-object v0, LT/Q3;->a:LT/Q3;

    const-string v0, "?"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :catch_0
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-object v3, LT/Q3;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LT/N3;

    iget-object v6, v4, LT/N3;->c:LT/O3;

    sget-object v7, LT/O3;->b:LT/O3;

    if-ne v6, v7, :cond_1

    invoke-static {p0}, LT/Q3;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    goto :goto_2

    :cond_1
    invoke-static {p0}, LT/Q3;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    :goto_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v8, v4, LT/N3;->b:LT/P3;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const-string v9, "v"

    iget-object v10, v4, LT/N3;->a:Ljava/lang/String;

    if-eqz v8, :cond_3

    if-ne v8, v5, :cond_2

    iget v4, v4, LT/N3;->e:I

    invoke-interface {v6, v10, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    :cond_2
    new-instance v0, LO/c;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    iget-boolean v4, v4, LT/N3;->d:Z

    invoke-interface {v6, v10, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_3
    const-string v4, "phone_sync_meta"

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "getSharedPreferences(...)"

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-interface {v4, v10, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "t"

    invoke-virtual {v7, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v2, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "protocol"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "device"

    const-string v6, "central"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "settings"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "put(...)"

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/ex/auto/PhoneSyncService;->h:LT/G4;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, LT/G4;->a()LT/F4;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    :cond_5
    move-object v3, v2

    :goto_4
    if-nez v3, :cond_7

    :cond_6
    move-object v4, v2

    goto/16 :goto_5

    :cond_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, v3, LT/F4;->a:Ljava/lang/Float;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "speedKmh"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v6, v3, LT/F4;->b:Ljava/lang/Integer;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const-string v7, "gear"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_9
    iget-object v6, v3, LT/F4;->c:Ljava/lang/String;

    if-eqz v6, :cond_a

    const-string v7, "gearLabel"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v6, v3, LT/F4;->d:Ljava/lang/Float;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "socPct"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v6, v3, LT/F4;->e:Ljava/lang/Float;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "rangeKm"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    iget-object v6, v3, LT/F4;->f:Ljava/lang/Float;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "odometerKm"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-object v6, v3, LT/F4;->g:Ljava/lang/Float;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "instPowerKw"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v6, v3, LT/F4;->m:Ljava/lang/Float;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "outsideTempC"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    iget-object v6, v3, LT/F4;->n:Ljava/lang/Float;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "aux12vVolt"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    iget-object v6, v3, LT/F4;->j:Ljava/lang/Boolean;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "acOn"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_11
    iget-object v6, v3, LT/F4;->k:Ljava/lang/Integer;

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const-string v7, "acFanLevel"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_12
    iget-object v6, v3, LT/F4;->l:Ljava/lang/Float;

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "hvacTempSetC"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    iget-object v6, v3, LT/F4;->q:Ljava/lang/Float;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "chargeKw"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    iget-object v6, v3, LT/F4;->o:Ljava/lang/Boolean;

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "charging"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_15
    iget-object v6, v3, LT/F4;->p:Ljava/lang/Boolean;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "dcfc"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_16
    iget-object v6, v3, LT/F4;->r:Ljava/lang/Boolean;

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "vhalLive"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_17
    iget-object v6, v3, LT/F4;->s:Ljava/lang/String;

    const-string v7, "unknown"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "carId"

    iget-object v3, v3, LT/F4;->s:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_6

    :goto_5
    if-eqz v4, :cond_19

    const-string v3, "telemetry"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_19
    iget-object v3, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_1b

    :cond_1a
    move-object v4, v2

    goto :goto_6

    :cond_1b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const v6, 0x25401036

    invoke-static {v3, v6, v5}, LT/U;->b(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const-string v8, "driverTemp"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c
    const/4 v7, 0x4

    invoke-static {v3, v6, v7}, LT/U;->b(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-string v6, "passengerTemp"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1d
    invoke-virtual {p0}, Lcom/ex/auto/PhoneSyncService;->n()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v6, "fanLevel"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1e
    invoke-virtual {p0}, Lcom/ex/auto/PhoneSyncService;->l()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v6, "acOn"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1f
    iget-object v3, p0, Lcom/ex/auto/PhoneSyncService;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    const-string v6, "fanTs"

    iget-wide v7, p0, Lcom/ex/auto/PhoneSyncService;->m:J

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "tempTs"

    iget-wide v7, p0, Lcom/ex/auto/PhoneSyncService;->o:J

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "acTs"

    iget-wide v7, p0, Lcom/ex/auto/PhoneSyncService;->q:J

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1a

    :goto_6
    if-eqz v4, :cond_20

    const-string v3, "hvac"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    iget-object v3, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_22

    :cond_21
    move-object v4, v2

    goto/16 :goto_a

    :cond_22
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const v6, 0x2040fc00

    invoke-static {v3, v6, v1}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_23

    move v6, v5

    goto :goto_7

    :cond_23
    move v6, v1

    :goto_7
    const-string v7, "locked"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_24
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, p0, Lcom/ex/auto/PhoneSyncService;->s:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v1

    :cond_25
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv0/a;

    iget-object v10, v9, Lv0/a;->a:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v9, v9, Lv0/a;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    const v11, 0x16400b00

    invoke-static {v3, v11, v9}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_25

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_26

    move v8, v5

    goto :goto_9

    :cond_26
    move v8, v1

    :goto_9
    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move v8, v5

    goto :goto_8

    :cond_27
    if-eqz v8, :cond_28

    const-string v3, "open"

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_21

    :goto_a
    if-eqz v4, :cond_29

    const-string v3, "doors"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29
    iget-object v3, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_2b

    :cond_2a
    move-object v4, v2

    goto :goto_c

    :cond_2b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, p0, Lcom/ex/auto/PhoneSyncService;->t:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v1

    :cond_2c
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv0/a;

    iget-object v9, v8, Lv0/a;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v8, v8, Lv0/a;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const v10, 0x13400bc0

    invoke-static {v3, v10, v8}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_2c

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move v7, v5

    goto :goto_b

    :cond_2d
    if-eqz v7, :cond_2a

    :goto_c
    if-eqz v4, :cond_2e

    const-string v3, "windows"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2e
    iget-object v3, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_2f

    goto :goto_f

    :cond_2f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, p0, Lcom/ex/auto/PhoneSyncService;->r:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v1

    :cond_30
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LT/T3;

    sget-object v10, LT/U;->a:Ljava/util/concurrent/ExecutorService;

    iget v10, v8, LT/T3;->a:I

    iget v11, v8, LT/T3;->b:I

    invoke-static {v3, v10, v11}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_30

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget v8, v8, LT/T3;->e:I

    if-eq v7, v8, :cond_31

    move v7, v5

    goto :goto_e

    :cond_31
    move v7, v1

    :goto_e
    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move v7, v5

    goto :goto_d

    :cond_32
    if-eqz v7, :cond_33

    move-object v2, v4

    :cond_33
    :goto_f
    if-eqz v2, :cond_34

    const-string v1, "presence"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_34
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final f(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "error"

    const-string v5, "state"

    const/4 v6, 0x0

    const-string v7, "put(...)"

    const-string v8, "ok"

    const/4 v9, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/PhoneSyncService;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_14

    :sswitch_1
    const-string v2, "merge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/PhoneSyncService;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "applied"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_14

    :sswitch_2
    const-string v2, "ping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "service"

    const-string v3, "TelaPretaSync"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "protocol"

    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "device"

    const-string v3, "central"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_14

    :sswitch_3
    const-string v3, "action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "op desconhecida: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_3
    const-string v0, "temp"

    const-string v3, "reboot"

    const-string v7, "a\u00e7\u00e3o desconhecida: "

    const-string v10, "Temperatura "

    if-eqz v2, :cond_4

    const-string v12, "name"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    const-string v13, ""

    if-nez v12, :cond_5

    move-object v12, v13

    :cond_5
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v15, "on"

    move-object/from16 p1, v7

    const-wide/16 v6, 0x0

    const-string v11, "t"

    sparse-switch v14, :sswitch_data_1

    goto/16 :goto_12

    :sswitch_4
    :try_start_1
    const-string v0, "ac_power"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_12

    :cond_6
    invoke-static/range {p2 .. p2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v11, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v2, v15, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, v1, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_8

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    :cond_8
    sget-object v3, LT/q;->f:[I

    array-length v7, v3

    const/4 v10, 0x0

    :goto_2
    const v11, 0x15600099

    if-ge v10, v7, :cond_9

    aget v12, v3, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v2, v11, v12, v0}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    add-int/2addr v10, v9

    goto :goto_2

    :cond_9
    :try_start_3
    sget-object v3, LT/q;->f:[I

    array-length v7, v3

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_7

    aget v12, v3, v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v2, v11, v12, v0}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    add-int/2addr v10, v9

    goto :goto_3

    :goto_4
    if-eqz v9, :cond_a

    :try_start_5
    const-string v2, "ac"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/ex/auto/PhoneSyncService;->w(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_13

    :cond_a
    :goto_5
    if-eqz v0, :cond_b

    const-string v0, "A/C ligado"

    goto :goto_6

    :cond_b
    const-string v0, "A/C desligado"

    :goto_6
    invoke-static {v0, v9}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_5
    const-string v0, "set_setting"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_12

    :cond_c
    invoke-static/range {p2 .. p2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/ex/auto/PhoneSyncService;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_6
    const-string v0, "modo_oficina_ocultar"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_12

    :cond_d
    invoke-static/range {p0 .. p0}, LT/J3;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "j\u00e1 estava em modo oficina"

    invoke-static {v0, v9}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :cond_e
    const/16 v0, 0x18

    if-eqz v2, :cond_f

    const-string v3, "horas"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_f
    invoke-static {v1, v0}, LT/J3;->f(Landroid/content/Context;I)LT/I3;

    move-result-object v0

    iget-boolean v2, v0, LT/I3;->a:Z

    iget-object v0, v0, LT/I3;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_7
    const-string v0, "stream_stop"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_12

    :cond_10
    const-string v0, "phone-request"

    sget-object v2, LT/m;->i:LT/n1;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v0}, LT/n1;->g(Ljava/lang/String;)V

    :cond_11
    const-string v0, "ExSapoCast encerrado"

    invoke-static {v0, v9}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_8
    const-string v0, "windows"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_12

    :cond_12
    invoke-static/range {p2 .. p2}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v0, "open"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, v1, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_13

    const/4 v10, 0x0

    goto :goto_9

    :cond_13
    if-eqz v0, :cond_14

    const/16 v3, 0x64

    goto :goto_7

    :cond_14
    const/4 v3, 0x0

    :goto_7
    sget-object v5, LT/q;->b:[I

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_8
    if-ge v7, v6, :cond_15

    aget v11, v5, v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const v12, 0x13400bc0

    :try_start_6
    invoke-virtual {v2, v12, v11, v3}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move v10, v9

    :catch_3
    add-int/2addr v7, v9

    goto :goto_8

    :cond_15
    :goto_9
    if-eqz v0, :cond_16

    :try_start_7
    const-string v0, "Janelas abrindo"

    goto :goto_a

    :cond_16
    const-string v0, "Janelas fechando"

    :goto_a
    invoke-static {v0, v10}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_9
    const-string v0, "lock_doors"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_12

    :cond_17
    invoke-static/range {p2 .. p2}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v0, "lock"

    invoke-virtual {v2, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ex/auto/PhoneSyncService;->t(Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_a
    const-string v0, "hvac_fan"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_12

    :cond_18
    invoke-static/range {p2 .. p2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v11, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v0, "level"

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, LA/b;->o(III)I

    move-result v0

    iget-object v2, v1, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_1a

    :cond_19
    const/4 v9, 0x0

    goto :goto_c

    :cond_1a
    iget-object v3, v1, Lcom/ex/auto/PhoneSyncService;->i:Ljava/lang/Integer;

    const v7, 0x15400500

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    invoke-virtual {v2, v7, v3, v0}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_c

    :catch_4
    const/4 v3, 0x0

    :try_start_9
    iput-object v3, v1, Lcom/ex/auto/PhoneSyncService;->i:Ljava/lang/Integer;

    :cond_1b
    iget-object v3, v1, Lcom/ex/auto/PhoneSyncService;->j:[I

    array-length v10, v3

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v10, :cond_19

    aget v12, v3, v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    invoke-virtual {v2, v7, v12, v0}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v1, Lcom/ex/auto/PhoneSyncService;->i:Ljava/lang/Integer;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_c

    :catch_5
    add-int/2addr v11, v9

    goto :goto_b

    :goto_c
    if-eqz v9, :cond_1c

    :try_start_b
    const-string v2, "fan"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/ex/auto/PhoneSyncService;->w(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ventila\u00e7\u00e3o \u2192 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_b
    const-string v0, "modo_oficina_restaurar"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_12

    :cond_1d
    invoke-static/range {p0 .. p0}, LT/J3;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "n\u00e3o estava em modo oficina"

    invoke-static {v0, v9}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :cond_1e
    const-string v0, "celular"

    invoke-static {v1, v0}, LT/J3;->h(Landroid/content/Context;Ljava/lang/String;)LT/I3;

    move-result-object v0

    iget-boolean v2, v0, LT/I3;->a:Z

    iget-object v0, v0, LT/I3;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_c
    const-string v0, "aa_deactivate"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_12

    :cond_1f
    invoke-static {}, LT/Y;->A()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Desativa\u00e7\u00e3o enviada"

    const/16 v3, 0x7530

    invoke-static {v0, v3, v2}, Lcom/ex/auto/PhoneSyncService;->q(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_d
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_12

    :cond_20
    const-string v0, "Reboot enviado"

    const/16 v2, 0x1388

    invoke-static {v3, v2, v0}, Lcom/ex/auto/PhoneSyncService;->q(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_e
    const/4 v3, 0x0

    const-string v0, "stream_offer"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    if-nez v0, :cond_21

    goto/16 :goto_12

    :cond_21
    const-string v0, "pip"

    if-eqz v2, :cond_22

    :try_start_c
    const-string v3, "display"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_d

    :cond_22
    move-object v11, v3

    :goto_d
    if-nez v11, :cond_23

    goto :goto_e

    :cond_23
    move-object v13, v11

    :goto_e
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_24

    goto :goto_f

    :cond_24
    move-object v0, v13

    :goto_f
    sget-object v2, LT/m;->b:LT/m;

    invoke-virtual {v2, v1, v0}, LT/m;->p(Lcom/ex/auto/PhoneSyncService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_f
    const-string v0, "list_logs"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_12

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/PhoneSyncService;->j()Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_10
    const-string v0, "presence"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_12

    :cond_26
    invoke-static/range {p2 .. p2}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v0, "key"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_10

    :cond_27
    const-string v3, "value"

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_28

    goto :goto_10

    :cond_28
    const/4 v9, 0x0

    :goto_10
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v9}, Lcom/ex/auto/PhoneSyncService;->u(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_11
    const-string v3, "hvac_set_temp"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto/16 :goto_12

    :cond_29
    invoke-static/range {p2 .. p2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v11, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/high16 v11, 0x4036000000000000L    # 22.0

    invoke-virtual {v2, v0, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    double-to-float v3, v11

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v11, 0x42000000    # 32.0f

    invoke-static {v3, v7, v11}, LA/b;->n(FFF)F

    move-result v3

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    const-string v7, "zone"

    const-string v11, "driver"

    invoke-virtual {v2, v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "both"

    invoke-static {v2, v7}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v11, 0x4

    if-eqz v7, :cond_2a

    invoke-virtual {v1, v9, v3}, Lcom/ex/auto/PhoneSyncService;->v(IF)Z

    move-result v7

    invoke-virtual {v1, v11, v3}, Lcom/ex/auto/PhoneSyncService;->v(IF)Z

    move-result v9

    or-int/2addr v7, v9

    goto :goto_11

    :cond_2a
    const-string v7, "passenger"

    invoke-static {v2, v7}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-virtual {v1, v11, v3}, Lcom/ex/auto/PhoneSyncService;->v(IF)Z

    move-result v7

    goto :goto_11

    :cond_2b
    invoke-virtual {v1, v9, v3}, Lcom/ex/auto/PhoneSyncService;->v(IF)Z

    move-result v7

    :goto_11
    if-eqz v7, :cond_2c

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v0, v9, v5, v6}, Lcom/ex/auto/PhoneSyncService;->w(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2192 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " \u00b0C"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/ex/auto/PhoneSyncService;->p(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_12
    const-string v0, "aa_activate"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_12

    :cond_2d
    invoke-static {}, LT/Y;->Q()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ativa\u00e7\u00e3o AA/CarPlay enviada"

    const v3, 0x1d4c0

    invoke-static {v0, v3, v2}, Lcom/ex/auto/PhoneSyncService;->q(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_14

    :sswitch_13
    const-string v0, "proxy_ready"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_12

    :cond_2e
    invoke-static/range {p2 .. p2}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v0, "ip"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "port"

    const/16 v6, 0x1f90

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "up"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v0, v3, v2}, LT/Y;->j0(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_14

    :sswitch_14
    const-string v0, "aa_restart"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    :goto_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v2, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_14

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\n            "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n            _STA_ANTES=0\n            grep -qE \"[[:space:]]ap0$\" /proc/net/arp 2>/dev/null && _STA_ANTES=1\n            echo \"STA_ANTES=$_STA_ANTES\"\n            if ip link show ap0 >/dev/null 2>&1; then\n  ip link set ap0 down 2>/dev/null || true\n  ip rule show | grep -w \'ap0\' | awk \'{print $1}\' | sed \'s/://\' | while read p; do ip rule del prio $p 2>/dev/null; done\nfi\nsleep 1\n            am force-stop com.njda.adapter\n            am force-stop com.njda.aauto\n            sleep 5\n            setprop ctl.restart AAutoMonitor\n    "

    invoke-static {v2}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            echo \"restart_enviado\"\n    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Rein\u00edcio AA/CarPlay enviado"

    const v3, 0xea60

    invoke-static {v0, v3, v2}, Lcom/ex/auto/PhoneSyncService;->q(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_14

    :goto_13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_30

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_30
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_14
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_3
        0x348172 -> :sswitch_2
        0x62fa438 -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7443cf10 -> :sswitch_14
        -0x6ea0036e -> :sswitch_13
        -0x62d361ce -> :sswitch_12
        -0x520fc8c0 -> :sswitch_11
        -0x4c186305 -> :sswitch_10
        -0x48f97f50 -> :sswitch_f
        -0x411bd323 -> :sswitch_e
        -0x37ba085b -> :sswitch_d
        0x13cf45f3 -> :sswitch_c
        0x2a3f4fd5 -> :sswitch_b
        0x40bf7004 -> :sswitch_a
        0x48c8ae71 -> :sswitch_9
        0x506fa283 -> :sswitch_8
        0x61012161 -> :sswitch_7
        0x69c04a94 -> :sswitch_6
        0x75a6ef73 -> :sswitch_5
        0x79d5d6a8 -> :sswitch_4
    .end sparse-switch
.end method

.method public final j()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/ex/auto/PhoneSyncService;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Lcom/ex/auto/PhoneSyncService;->e(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/ex/auto/PhoneSyncService;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lcom/ex/auto/PhoneSyncService;->e(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ok"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "logger"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "telapretacentral"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "put(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final l()Ljava/lang/Boolean;
    .locals 8

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, LT/q;->f:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const v6, 0x15600099

    if-ge v5, v3, :cond_2

    aget v7, v2, v5

    invoke-static {v0, v6, v7}, LT/U;->a(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_1

    return-object v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, LT/q;->f:[I

    array-length v3, v2

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    aget v7, v2, v5

    invoke-static {v0, v6, v7}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method public final n()Ljava/lang/Integer;
    .locals 7

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/ex/auto/PhoneSyncService;->i:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v2, v4, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/ex/auto/PhoneSyncService;->j:[I

    :goto_0
    array-length v2, v4

    :goto_1
    if-ge v3, v2, :cond_3

    aget v5, v4, v3

    const v6, 0x15400500

    invoke-static {v0, v6, v5}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x7f0f025c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "phone_sync"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v1, v2}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    sget-object v0, LT/Q3;->a:LT/Q3;

    invoke-virtual {v0, p0}, LT/Q3;->b(Landroid/app/Service;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/PhoneSyncService;->a:Z

    sput-boolean v0, Lcom/ex/auto/PhoneSyncService;->v:Z

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->b:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->c:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :try_start_2
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->e:Landroid/car/Car;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->e:Landroid/car/Car;

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->g:Landroid/car/media/CarAudioManager;

    iput-object v0, p0, Lcom/ex/auto/PhoneSyncService;->h:LT/G4;

    const-string v0, "PhoneSyncService"

    const-string v1, "PhoneSyncService destru\u00eddo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string p1, "PhoneSyncService"

    const p2, 0xbab9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x7f0f025d

    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "getString(...)"

    invoke-static {p2, p3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroid/app/Notification$Builder;

    const-string v0, "phone_sync"

    invoke-direct {p3, p0, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x1080080

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p3

    const v0, 0x7f0f025e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const-string p3, "build(...)"

    invoke-static {p2, p3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x34

    invoke-virtual {p0, p3, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    sget-boolean p2, Lcom/ex/auto/PhoneSyncService;->v:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    :cond_0
    sput-boolean p3, Lcom/ex/auto/PhoneSyncService;->v:Z

    iput-boolean p3, p0, Lcom/ex/auto/PhoneSyncService;->a:Z

    :try_start_0
    new-instance p2, LT/s1;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, LT/s1;-><init>(Landroid/content/ContextWrapper;I)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p2}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object p2

    iput-object p2, p0, Lcom/ex/auto/PhoneSyncService;->e:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectCar: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, LT/R3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LT/R3;-><init>(Lcom/ex/auto/PhoneSyncService;I)V

    const-string v1, "phone-sync-tcp"

    invoke-direct {p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, LT/R3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LT/R3;-><init>(Lcom/ex/auto/PhoneSyncService;I)V

    const-string v1, "phone-sync-bt"

    invoke-direct {p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, LT/R3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LT/R3;-><init>(Lcom/ex/auto/PhoneSyncService;I)V

    const-string v1, "phone-sync-hvac"

    invoke-direct {p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    const-string p2, "PhoneSyncService iniciado"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method public final s(Lorg/json/JSONObject;Ljava/io/OutputStream;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "toString(...)"

    const-string v3, "error"

    const-string v4, "ok"

    const-string v5, "PhoneSyncService"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v8, "logger"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    move-object v8, v7

    :goto_0
    invoke-static {v8}, Lcom/ex/auto/PhoneSyncService;->k(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v8

    if-eqz v0, :cond_1

    const-string v9, "telapretacentral"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v7

    :goto_1
    invoke-static {v0}, Lcom/ex/auto/PhoneSyncService;->k(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/PhoneSyncService;->c()Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/PhoneSyncService;->b()Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {v10, v9}, Lw0/i;->e0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "nenhum log v\u00e1lido escolhido"

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x190

    invoke-static {v1, v0, v7}, Lcom/ex/auto/PhoneSyncService;->x(Ljava/io/OutputStream;Ljava/lang/String;I)V

    return-void

    :cond_6
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v10, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v10, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v12, "logs_zip: "

    if-eqz v0, :cond_7

    :try_start_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v14, v10}, LA/b;->t(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v14, v7}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v15, v0

    :try_start_6
    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object/from16 v16, v0

    :try_start_7
    invoke-static {v14, v15}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    :try_start_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " falhou: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v7, v0

    goto :goto_6

    :cond_7
    :try_start_9
    invoke-static {v10, v7}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v7, LT/L3;->a:LT/L3;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " arquivo(s), "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v0

    div-int/lit16 v8, v8, 0x400

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " KB"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 200 OK\r\nContent-Type: application/zip\r\nContent-Length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\r\nConnection: close\r\n\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v9, "UTF_8"

    invoke-static {v8, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string v8, "getBytes(...)"

    invoke-static {v7, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    :goto_6
    :try_start_a
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    move-object v8, v0

    :try_start_b
    invoke-static {v10, v7}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "servirZipDeLogs: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v7, v5}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :try_start_c
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "falha ao montar o zip"

    :cond_8
    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x1f4

    invoke-static {v1, v0, v2}, Lcom/ex/auto/PhoneSyncService;->x(Ljava/io/OutputStream;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    :goto_8
    return-void
.end method

.method public final t(Z)Lorg/json/JSONObject;
    .locals 14

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    const-string v1, "ok"

    const-string v2, "error"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "sem CarPropertyManager"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "put(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v4, "trancar"

    goto :goto_0

    :cond_1
    const-string v4, "destrancar"

    :goto_0
    const v5, 0x2140a152

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lv0/a;

    const-string v7, "0x2140a152"

    invoke-direct {v6, v5, v7}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x2140a621    # 6.5272E-19f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lv0/a;

    const-string v8, "0x2140a621"

    invoke-direct {v7, v5, v8}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v7}, [Lv0/a;

    move-result-object v5

    invoke-static {v5}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string v7, ""

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv0/a;

    iget-object v10, v8, Lv0/a;->a:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    iget-object v8, v8, Lv0/a;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0, v10, v3, p1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v11, 0xc8

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-static {v0, v10, v3}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v8

    goto :goto_3

    :catch_1
    move-exception v7

    move-object v9, v8

    goto :goto_2

    :catch_2
    move-exception v9

    move-object v13, v9

    move-object v9, v7

    move-object v7, v13

    :goto_2
    const-string v10, ": "

    invoke-static {v8, v10}, LM/d0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    :cond_2
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-object v7, v9

    goto :goto_1

    :cond_3
    move-object v0, v9

    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    const-string v8, "Trava ("

    if-nez v5, :cond_9

    const-string v10, "): nenhuma prop aceitou a escrita ("

    invoke-static {v8, v4, v10}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    instance-of v8, v6, Ljava/util/List;

    if-eqz v8, :cond_6

    move-object v8, v6

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    :cond_6
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    :goto_5
    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_8

    const-string v9, "?"

    :cond_8
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_9
    const/16 v3, 0x3d

    const-string v9, "): escrito "

    if-eqz v0, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rel\u00ea="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \u2014 confira se o carro respondeu"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (prop n\u00e3o leg\u00edvel) \u2014 confira no carro"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "lock_doors lock="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " prop="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " wrote="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " readBack="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " errs="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "PhoneSyncService"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "message"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "wrote"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "prop"

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "value"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v0, :cond_b

    const-string v1, "after"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_b
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v7, "; "

    const/4 v8, 0x0

    const/16 v11, 0x3e

    invoke-static/range {v6 .. v11}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    if-nez v5, :cond_d

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    invoke-static {p1}, LI0/f;->b(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final u(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 13

    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->r:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/T3;

    const-string v1, "put(...)"

    const-string v2, "ok"

    const-string v3, "error"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "chave desconhecida: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v5, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v5, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "sem CarPropertyManager"

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    iget v1, v0, LT/T3;->d:I

    goto :goto_0

    :cond_2
    iget v1, v0, LT/T3;->e:I

    :goto_0
    iget-object v6, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    sget-object v8, LT/U;->a:Ljava/util/concurrent/ExecutorService;

    iget v8, v0, LT/T3;->a:I

    iget v9, v0, LT/T3;->b:I

    invoke-static {v6, v8, v9}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v7

    :goto_1
    const/4 v8, 0x1

    :try_start_0
    iget v9, v0, LT/T3;->a:I

    iget v10, v0, LT/T3;->b:I

    invoke-virtual {v5, v9, v10, v1}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v7

    move v5, v8

    goto :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    :cond_4
    move v5, v4

    :goto_2
    const-wide/16 v10, 0xc8

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v10, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v10, :cond_5

    sget-object v7, LT/U;->a:Ljava/util/concurrent/ExecutorService;

    iget v7, v0, LT/T3;->a:I

    iget v11, v0, LT/T3;->b:I

    invoke-static {v10, v7, v11}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v7

    :cond_5
    if-eqz v7, :cond_6

    move v10, v8

    goto :goto_3

    :cond_6
    move v10, v4

    :goto_3
    if-eqz v10, :cond_8

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v1, :cond_8

    move v11, v8

    goto :goto_5

    :cond_8
    :goto_4
    move v11, v4

    :goto_5
    if-eqz v5, :cond_a

    if-nez v11, :cond_9

    if-nez v10, :cond_a

    :cond_9
    move v4, v8

    :cond_a
    if-nez v5, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, LT/T3;->c:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": erro ao escrever ("

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_b

    const-string v8, "?"

    goto :goto_6

    :cond_b
    move-object v8, v9

    :goto_6
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_c
    if-eqz v11, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, LT/T3;->c:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_d

    const-string p2, "ligado"

    goto :goto_7

    :cond_d
    const-string p2, "desligado"

    :goto_7
    const-string v12, " \u2713 confirmado"

    invoke-static {v8, p2, v12}, LM/d0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_e
    if-nez v10, :cond_f

    iget-object p2, v0, LT/T3;->c:Ljava/lang/String;

    const-string v8, ": escrito, mas o carro n\u00e3o exp\u00f5e leitura p/ confirmar"

    invoke-virtual {p2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, LT/T3;->c:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": N\u00c3O persistiu (pedido="

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", carro="

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") \u2014 VHAL ignorou"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_8
    const-string v8, "presence "

    const-string v12, " prop="

    invoke-static {v8, p1, v12}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v8, v0, LT/T3;->a:I

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " area="

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, LT/T3;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " target="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " before="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " after="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " wrote="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " confirmed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " err="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneSyncService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "wrote"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "target"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "readable"

    invoke-virtual {p1, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "confirmed"

    invoke-virtual {p1, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v6, :cond_10

    const-string v0, "before"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_10
    if-eqz v7, :cond_11

    const-string v0, "after"

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_11
    if-eqz v9, :cond_12

    invoke-virtual {p1, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    if-nez v4, :cond_13

    if-nez v9, :cond_13

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    invoke-static {p1}, LI0/f;->b(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final v(IF)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/PhoneSyncService;->f:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_0

    const v2, 0x25401036

    invoke-virtual {v1, v2, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V

    sget-object p1, Lv0/e;->c:Lv0/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setZoneTemp area=0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhoneSyncService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return v0
.end method

.method public final w(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    :goto_0
    iget-object v0, p0, Lcom/ex/auto/PhoneSyncService;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc22

    if-eq v1, v2, :cond_5

    const v2, 0x18b13

    if-eq v1, v2, :cond_3

    const v2, 0x3643d4

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "temp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/ex/auto/PhoneSyncService;->n:Ljava/lang/Integer;

    iput-wide p3, p0, Lcom/ex/auto/PhoneSyncService;->o:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    const-string v1, "fan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/ex/auto/PhoneSyncService;->l:Ljava/lang/Integer;

    iput-wide p3, p0, Lcom/ex/auto/PhoneSyncService;->m:J

    goto :goto_1

    :cond_5
    const-string v1, "ac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/ex/auto/PhoneSyncService;->p:Ljava/lang/Boolean;

    iput-wide p3, p0, Lcom/ex/auto/PhoneSyncService;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method

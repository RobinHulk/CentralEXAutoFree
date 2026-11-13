.class public final LT/G3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LT/G3;

.field public static final b:[J

.field public static final c:LT/F3;

.field public static final d:LT/F3;

.field public static final e:LT/F3;

.field public static final f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LT/G3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LT/G3;->a:LT/G3;

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, LT/G3;->b:[J

    new-instance v0, LT/F3;

    const-string v1, "toque\u2192quadro"

    invoke-direct {v0, v1}, LT/F3;-><init>(Ljava/lang/String;)V

    sput-object v0, LT/G3;->c:LT/F3;

    new-instance v0, LT/F3;

    const-string v1, "leitura carro"

    invoke-direct {v0, v1}, LT/F3;-><init>(Ljava/lang/String;)V

    sput-object v0, LT/G3;->d:LT/F3;

    new-instance v0, LT/F3;

    const-string v1, "shell adbd"

    invoke-direct {v0, v1}, LT/F3;-><init>(Ljava/lang/String;)V

    sput-object v0, LT/G3;->e:LT/F3;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LT/G3;->f:Ljava/util/HashMap;

    return-void

    nop

    :array_0
    .array-data 8
        0x10
        0x32
        0x64
        0xc8
        0x1f4
        0x3e8
        0x7d0
        0x1388
    .end array-data
.end method

.method public static a(LT/F3;)Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, LT/F3;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    iget-object v1, p0, LT/F3;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, ": 0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string v0, ": n="

    invoke-static {v1, v0}, LM/d0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, LT/F3;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " m\u00e9dia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, LT/F3;->c:J

    iget-wide v6, p0, LT/F3;->b:J

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms p50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, v4, v5}, LT/G3;->b(LT/F3;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " p95"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v4, 0x3fee666666666666L    # 0.95

    invoke-static {p0, v4, v5}, LT/G3;->b(LT/F3;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " m\u00e1x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, LT/F3;->d:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, LT/F3;->e:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " estouros="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, LT/F3;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static b(LT/F3;D)Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, LT/F3;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string p0, "-"

    return-object p0

    :cond_0
    long-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    iget-object p0, p0, LT/F3;->f:[J

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    sget-object v4, LT/G3;->b:[J

    const-string v5, ">"

    const-string v6, "ms"

    if-ge v1, v0, :cond_3

    aget-wide v7, p0, v1

    add-long/2addr v2, v7

    cmp-long v7, v2, p1

    if-ltz v7, :cond_2

    const/16 p0, 0x8

    if-ge v1, p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "\u2264"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-wide p1, v4, v1

    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lw0/h;->Y([J)J

    move-result-wide p1

    goto :goto_1

    :goto_2
    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lw0/h;->Y([J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized c(LT/F3;JZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "s"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, LT/F3;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, LT/F3;->b:J

    iget-wide v0, p1, LT/F3;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p1, LT/F3;->c:J

    iget-wide v0, p1, LT/F3;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    iput-wide p2, p1, LT/F3;->d:J

    :cond_0
    if-eqz p4, :cond_1

    iget-wide v0, p1, LT/F3;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p1, LT/F3;->e:J

    :cond_1
    const/4 p4, 0x0

    :goto_0
    sget-object v0, LT/G3;->b:[J

    const/16 v1, 0x8

    if-ge p4, v1, :cond_2

    aget-wide v0, v0, p4

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    iget-object p1, p1, LT/F3;->f:[J

    aget-wide p2, p1, p4

    add-long/2addr p2, v2

    aput-wide p2, p1, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

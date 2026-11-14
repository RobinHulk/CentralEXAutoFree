.class public final Lv0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:LH0/a;

.field public volatile b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LH0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/c;->a:LH0/a;

    sget-object p1, Lv0/e;->b:Lv0/e;

    iput-object p1, p0, Lv0/c;->b:Ljava/lang/Object;

    iput-object p0, p0, Lv0/c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lv0/c;->b:Ljava/lang/Object;

    sget-object v1, Lv0/e;->b:Lv0/e;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lv0/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lv0/c;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lv0/c;->a:LH0/a;

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, LH0/a;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lv0/c;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lv0/c;->a:LH0/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lv0/c;->b:Ljava/lang/Object;

    sget-object v1, Lv0/e;->b:Lv0/e;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lv0/c;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    :goto_0
    return-object v0
.end method

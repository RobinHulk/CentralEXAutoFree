.class public final LQ0/a;
.super LP0/p;
.source "SourceFile"

# interfaces
.implements LP0/i;


# instance fields
.field private volatile _immediate:LQ0/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:LQ0/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1, v1, v0}, LQ0/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, LP0/c;-><init>()V

    .line 2
    iput-object p1, p0, LQ0/a;->b:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, LQ0/a;->c:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, LQ0/a;->d:Z

    if-eqz p3, :cond_0

    move-object p3, p0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5
    :goto_0
    iput-object p3, p0, LQ0/a;->_immediate:LQ0/a;

    .line 6
    iget-object p3, p0, LQ0/a;->_immediate:LQ0/a;

    if-nez p3, :cond_1

    .line 7
    new-instance p3, LQ0/a;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, LQ0/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, LQ0/a;->_immediate:LQ0/a;

    .line 8
    :cond_1
    iput-object p3, p0, LQ0/a;->e:LQ0/a;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LQ0/a;

    if-eqz v0, :cond_0

    check-cast p1, LQ0/a;

    iget-object p1, p1, LQ0/a;->b:Landroid/os/Handler;

    iget-object v0, p0, LQ0/a;->b:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LQ0/a;->b:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget v0, LP0/k;->a:I

    sget-object v0, LR0/f;->a:LP0/p;

    if-ne p0, v0, :cond_0

    const-string v0, "Dispatchers.Main"

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    check-cast v0, LQ0/a;

    iget-object v0, v0, LQ0/a;->e:LQ0/a;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string v0, "Dispatchers.Main.immediate"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, LQ0/a;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, LQ0/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean v1, p0, LQ0/a;->d:Z

    if-eqz v1, :cond_3

    const-string v1, ".immediate"

    invoke-static {v1, v0}, LI0/f;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

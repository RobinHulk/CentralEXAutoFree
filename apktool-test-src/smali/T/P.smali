.class public final synthetic LT/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/car/Car$CarServiceLifecycleListener;


# instance fields
.field public final synthetic a:Ly/f;

.field public final synthetic b:LT/u1;


# direct methods
.method public synthetic constructor <init>(Ly/f;LT/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/P;->a:Ly/f;

    iput-object p2, p0, LT/P;->b:LT/u1;

    return-void
.end method


# virtual methods
.method public final onLifecycleChanged(Landroid/car/Car;Z)V
    .locals 5

    if-eqz p2, :cond_5

    iget-object p2, p0, LT/P;->a:Ly/f;

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p2, Ly/f;->f:Ljava/lang/Object;

    if-nez p1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    filled-new-array {v2}, [I

    move-result-object v3

    const-string v4, "getVolumeGroupIdForUsage"

    invoke-static {p1, v4, v3}, Ly/f;->a(Ljava/lang/Object;Ljava/lang/String;[I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    filled-new-array {v3, v2}, [I

    move-result-object v2

    invoke-static {p1, v4, v2}, Ly/f;->a(Ljava/lang/Object;Ljava/lang/String;[I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    filled-new-array {v2}, [I

    move-result-object v2

    const-string v4, "getVolumeGroupIdForStreamType"

    invoke-static {p1, v4, v2}, Ly/f;->a(Ljava/lang/Object;Ljava/lang/String;[I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ltz p1, :cond_4

    move v3, p1

    :cond_4
    :goto_1
    iput v3, p2, Ly/f;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    iput-object v1, p2, Ly/f;->f:Ljava/lang/Object;

    iput v0, p2, Ly/f;->c:I

    :cond_5
    :goto_2
    iget-object p1, p0, LT/P;->b:LT/u1;

    invoke-virtual {p1}, LT/u1;->a()Ljava/lang/Object;

    return-void
.end method

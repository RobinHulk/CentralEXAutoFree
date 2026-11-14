.class public final synthetic LW/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/c;->a:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iput p2, p0, LW/c;->b:I

    iput p3, p0, LW/c;->c:I

    iput-object p4, p0, LW/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    iget-object v1, p0, LW/c;->a:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->y:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v2, p0, LW/c;->b:I

    if-ne v2, v0, :cond_2

    iget-object v0, v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->q:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LW/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_regen"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, LW/c;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->b(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void
.end method

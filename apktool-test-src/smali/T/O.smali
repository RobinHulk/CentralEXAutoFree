.class public final LT/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public volatile a:Z

.field public final synthetic b:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:LA/c;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/Context;LA/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/O;->b:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, LT/O;->c:Ljava/lang/String;

    iput-object p3, p0, LT/O;->d:Landroid/content/Context;

    iput-object p4, p0, LT/O;->e:LA/c;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "BtHfpClient"

    :try_start_0
    iget-object v0, p0, LT/O;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2, v0}, LT/m;->a(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transact falhou: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_0
    sget-object v0, LT/L3;->a:LT/L3;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect direto no HFP-Client de "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LT/O;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, "aceito"

    goto :goto_1

    :cond_0
    const-string v2, "recusado"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object p1, p0, LT/O;->d:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-boolean p1, p0, LT/O;->a:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LT/O;->a:Z

    iget-object p1, p0, LT/O;->e:LA/c;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, LA/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-boolean p1, p0, LT/O;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LT/O;->a:Z

    iget-object p1, p0, LT/O;->e:LA/c;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, LA/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

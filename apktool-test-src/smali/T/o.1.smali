.class public final synthetic LT/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, LT/o;->a:I

    iput-object p1, p0, LT/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LT/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LT/o;->b:Ljava/lang/String;

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    sget-object v1, LT/B3;->a:LT/B3;

    invoke-static {p1, v0}, LT/B3;->m(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, LT/B3;->v:Z

    sget-object p1, LT/B3;->k:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance v0, LT/a0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LT/a0;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_0
    check-cast p1, LT/p;

    const-string v0, "b"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, LT/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LT/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; echo \"MONITOR_BUILD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LT/p;->a:Ljava/lang/String;

    const-string v1, "\" ;;"

    invoke-static {v0, p1, v1}, LM/d0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic LT/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MediaBarFloaterService;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MediaBarFloaterService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/w3;->a:Lcom/ex/auto/MediaBarFloaterService;

    iput-object p2, p0, LT/w3;->b:Ljava/lang/String;

    iput-object p3, p0, LT/w3;->c:Ljava/lang/String;

    iput-object p4, p0, LT/w3;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, LT/w3;->a:Lcom/ex/auto/MediaBarFloaterService;

    iget-object p1, v2, Lcom/ex/auto/MediaBarFloaterService;->c:Landroid/os/Handler;

    new-instance v7, LT/b3;

    iget-object v4, p0, LT/w3;->c:Ljava/lang/String;

    iget-object v5, p0, LT/w3;->d:Ljava/lang/String;

    iget-object v3, p0, LT/w3;->b:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LT/b3;-><init>(Ljava/lang/Object;Landroid/content/ContextWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1
.end method

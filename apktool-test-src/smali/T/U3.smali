.class public final synthetic LT/U3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/p;
.implements LT/M4;


# instance fields
.field public final synthetic a:Lcom/ex/auto/QuickAccessFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/QuickAccessFloaterService;)V
    .locals 0

    iput-object p1, p0, LT/U3;->a:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v0, "c"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LT/U3;->a:Lcom/ex/auto/QuickAccessFloaterService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/ex/auto/QuickAccessFloaterService;->G(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

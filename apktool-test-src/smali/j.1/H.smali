.class public final Lj/H;
.super Lj/v0;
.source "SourceFile"


# instance fields
.field public final synthetic j:Lj/P;

.field public final synthetic k:Lj/T;


# direct methods
.method public constructor <init>(Lj/T;Lj/T;Lj/P;)V
    .locals 0

    iput-object p1, p0, Lj/H;->k:Lj/T;

    iput-object p3, p0, Lj/H;->j:Lj/P;

    invoke-direct {p0, p2}, Lj/v0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Li/C;
    .locals 1

    iget-object v0, p0, Lj/H;->j:Lj/P;

    return-object v0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lj/H;->k:Lj/T;

    invoke-virtual {v0}, Lj/T;->getInternalPopup()Lj/S;

    move-result-object v1

    invoke-interface {v1}, Lj/S;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lj/J;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v0}, Lj/J;->a(Landroid/view/View;)I

    move-result v2

    iget-object v0, v0, Lj/T;->f:Lj/S;

    invoke-interface {v0, v1, v2}, Lj/S;->d(II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

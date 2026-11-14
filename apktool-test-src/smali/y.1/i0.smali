.class public Ly/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ly/j0;


# instance fields
.field public final a:Ly/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ly/a0;

    invoke-direct {v0}, Ly/a0;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Ly/Z;

    invoke-direct {v0}, Ly/Z;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Ly/Y;

    invoke-direct {v0}, Ly/Y;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ly/b0;->b()Ly/j0;

    move-result-object v0

    iget-object v0, v0, Ly/j0;->a:Ly/i0;

    invoke-virtual {v0}, Ly/i0;->a()Ly/j0;

    move-result-object v0

    iget-object v0, v0, Ly/j0;->a:Ly/i0;

    invoke-virtual {v0}, Ly/i0;->b()Ly/j0;

    move-result-object v0

    iget-object v0, v0, Ly/j0;->a:Ly/i0;

    invoke-virtual {v0}, Ly/i0;->c()Ly/j0;

    move-result-object v0

    sput-object v0, Ly/i0;->b:Ly/j0;

    return-void
.end method

.method public constructor <init>(Ly/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/i0;->a:Ly/j0;

    return-void
.end method


# virtual methods
.method public a()Ly/j0;
    .locals 1

    iget-object v0, p0, Ly/i0;->a:Ly/j0;

    return-object v0
.end method

.method public b()Ly/j0;
    .locals 1

    iget-object v0, p0, Ly/i0;->a:Ly/j0;

    return-object v0
.end method

.method public c()Ly/j0;
    .locals 1

    iget-object v0, p0, Ly/i0;->a:Ly/j0;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e()Ly/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ly/i0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ly/i0;

    invoke-virtual {p0}, Ly/i0;->k()Z

    move-result v1

    invoke-virtual {p1}, Ly/i0;->k()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Ly/i0;->j()Z

    move-result v1

    invoke-virtual {p1}, Ly/i0;->j()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Ly/i0;->h()Lr/c;

    move-result-object v1

    invoke-virtual {p1}, Ly/i0;->h()Lr/c;

    move-result-object v3

    invoke-static {v1, v3}, Lx/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ly/i0;->g()Lr/c;

    move-result-object v1

    invoke-virtual {p1}, Ly/i0;->g()Lr/c;

    move-result-object v3

    invoke-static {v1, v3}, Lx/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ly/i0;->e()Ly/i;

    move-result-object v1

    invoke-virtual {p1}, Ly/i0;->e()Ly/i;

    move-result-object p1

    invoke-static {v1, p1}, Lx/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Lr/c;
    .locals 1

    invoke-virtual {p0}, Ly/i0;->h()Lr/c;

    move-result-object v0

    return-object v0
.end method

.method public g()Lr/c;
    .locals 1

    sget-object v0, Lr/c;->e:Lr/c;

    return-object v0
.end method

.method public h()Lr/c;
    .locals 1

    sget-object v0, Lr/c;->e:Lr/c;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Ly/i0;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Ly/i0;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Ly/i0;->h()Lr/c;

    move-result-object v2

    invoke-virtual {p0}, Ly/i0;->g()Lr/c;

    move-result-object v3

    invoke-virtual {p0}, Ly/i0;->e()Ly/i;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lx/b;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(IIII)Ly/j0;
    .locals 0

    sget-object p1, Ly/i0;->b:Ly/j0;

    return-object p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l([Lr/c;)V
    .locals 0

    return-void
.end method

.method public m(Ly/j0;)V
    .locals 0

    return-void
.end method

.method public n(Lr/c;)V
    .locals 0

    return-void
.end method

.class public final Landroidx/fragment/app/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h;
.implements LN/f;
.implements Landroidx/lifecycle/J;


# instance fields
.field public final a:Landroidx/lifecycle/I;

.field public b:Landroidx/lifecycle/s;

.field public c:LN/e;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/I;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/M;->b:Landroidx/lifecycle/s;

    iput-object v0, p0, Landroidx/fragment/app/M;->c:LN/e;

    iput-object p1, p0, Landroidx/fragment/app/M;->a:Landroidx/lifecycle/I;

    return-void
.end method


# virtual methods
.method public final b()LN/d;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/M;->f()V

    iget-object v0, p0, Landroidx/fragment/app/M;->c:LN/e;

    iget-object v0, v0, LN/e;->b:LN/d;

    return-object v0
.end method

.method public final c()Landroidx/lifecycle/I;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/M;->f()V

    iget-object v0, p0, Landroidx/fragment/app/M;->a:Landroidx/lifecycle/I;

    return-object v0
.end method

.method public final d()Landroidx/lifecycle/s;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/M;->f()V

    iget-object v0, p0, Landroidx/fragment/app/M;->b:Landroidx/lifecycle/s;

    return-object v0
.end method

.method public final e(Landroidx/lifecycle/k;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/M;->b:Landroidx/lifecycle/s;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/M;->b:Landroidx/lifecycle/s;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/fragment/app/M;->b:Landroidx/lifecycle/s;

    new-instance v0, LN/e;

    invoke-direct {v0, p0}, LN/e;-><init>(LN/f;)V

    iput-object v0, p0, Landroidx/fragment/app/M;->c:LN/e;

    :cond_0
    return-void
.end method

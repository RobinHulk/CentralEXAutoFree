.class public final Landroidx/fragment/app/r;
.super LA/b;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/J;
.implements Landroidx/lifecycle/q;
.implements Landroidx/fragment/app/H;


# instance fields
.field public final c:Le/j;

.field public final d:Le/j;

.field public final e:Landroid/os/Handler;

.field public final f:Landroidx/fragment/app/E;

.field public final synthetic g:Le/j;


# direct methods
.method public constructor <init>(Le/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/r;->g:Le/j;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/fragment/app/E;

    invoke-direct {v1}, Landroidx/fragment/app/E;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    iput-object p1, p0, Landroidx/fragment/app/r;->c:Le/j;

    iput-object p1, p0, Landroidx/fragment/app/r;->d:Le/j;

    iput-object v0, p0, Landroidx/fragment/app/r;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final N(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->g:Le/j;

    invoke-virtual {v0, p1}, Le/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final O()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->g:Le/j;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final c()Landroidx/lifecycle/I;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->g:Le/j;

    invoke-virtual {v0}, Landroidx/activity/g;->c()Landroidx/lifecycle/I;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroidx/lifecycle/s;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/r;->g:Le/j;

    iget-object v0, v0, Le/j;->o:Landroidx/lifecycle/s;

    return-object v0
.end method

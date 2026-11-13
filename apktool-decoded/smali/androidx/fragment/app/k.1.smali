.class public final Landroidx/fragment/app/k;
.super LA/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:Landroidx/fragment/app/m;

.field public final synthetic d:Landroidx/fragment/app/l;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l;Landroidx/fragment/app/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/k;->d:Landroidx/fragment/app/l;

    iput-object p2, p0, Landroidx/fragment/app/k;->c:Landroidx/fragment/app/m;

    return-void
.end method


# virtual methods
.method public final N(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/k;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/m;->N(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/k;->d:Landroidx/fragment/app/l;

    iget-object v0, v0, Landroidx/fragment/app/l;->a0:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final O()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/k;->c:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->O()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/k;->d:Landroidx/fragment/app/l;

    iget-boolean v0, v0, Landroidx/fragment/app/l;->d0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

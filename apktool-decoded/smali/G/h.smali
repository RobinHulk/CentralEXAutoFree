.class public final LG/h;
.super LA/b;
.source "SourceFile"


# instance fields
.field public final c:LG/g;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG/g;

    invoke-direct {v0, p1}, LG/g;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, LG/h;->c:LG/g;

    return-void
.end method


# virtual methods
.method public final G()Z
    .locals 1

    iget-object v0, p0, LG/h;->c:LG/g;

    iget-boolean v0, v0, LG/g;->e:Z

    return v0
.end method

.method public final c0(Z)V
    .locals 1

    sget-object v0, Landroidx/emoji2/text/i;->j:Landroidx/emoji2/text/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LG/h;->c:LG/g;

    invoke-virtual {v0, p1}, LG/g;->c0(Z)V

    return-void
.end method

.method public final d0(Z)V
    .locals 2

    sget-object v0, Landroidx/emoji2/text/i;->j:Landroidx/emoji2/text/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LG/h;->c:LG/g;

    if-nez v0, :cond_1

    iput-boolean p1, v1, LG/g;->e:Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, LG/g;->d0(Z)V

    :goto_1
    return-void
.end method

.method public final j0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/i;->j:Landroidx/emoji2/text/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, LG/h;->c:LG/g;

    invoke-virtual {v0, p1}, LG/g;->j0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p1

    return-object p1
.end method

.method public final y([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/i;->j:Landroidx/emoji2/text/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, LG/h;->c:LG/g;

    invoke-virtual {v0, p1}, LG/g;->y([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

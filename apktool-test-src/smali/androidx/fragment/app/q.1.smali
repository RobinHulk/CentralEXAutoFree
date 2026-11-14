.class public final Landroidx/fragment/app/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le/j;


# direct methods
.method public synthetic constructor <init>(Le/j;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/q;->a:I

    iput-object p1, p0, Landroidx/fragment/app/q;->b:Le/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Landroidx/fragment/app/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/q;->b:Le/j;

    invoke-virtual {v0}, Le/j;->i()Le/n;

    move-result-object v1

    invoke-virtual {v1}, Le/n;->e()V

    iget-object v0, v0, Landroidx/activity/g;->e:LN/e;

    iget-object v0, v0, LN/e;->b:LN/d;

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2}, LN/d;->c(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {v1}, Le/n;->h()V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/q;->b:Le/j;

    iget-object v1, v0, Le/j;->n:LA/e;

    iget-object v2, v1, LA/e;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/r;

    iget-object v3, v2, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v4}, Landroidx/fragment/app/E;->b(Landroidx/fragment/app/r;LA/b;Landroidx/fragment/app/o;)V

    iget-object v0, v0, Landroidx/activity/g;->e:LN/e;

    iget-object v0, v0, LN/e;->b:LN/d;

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2}, LN/d;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, v1, LA/e;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/r;

    iget-object v1, v1, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/E;->M(Landroid/os/Parcelable;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

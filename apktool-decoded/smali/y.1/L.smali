.class public final Ly/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/OnReceiveContentListener;


# instance fields
.field public final a:Ly/r;


# direct methods
.method public constructor <init>(Ly/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/L;->a:Ly/r;

    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroid/view/View;Landroid/view/ContentInfo;)Landroid/view/ContentInfo;
    .locals 2

    new-instance v0, Ly/h;

    new-instance v1, LA/e;

    invoke-direct {v1, p2}, LA/e;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, Ly/h;-><init>(Ly/g;)V

    iget-object v1, p0, Ly/L;->a:Ly/r;

    check-cast v1, LB/u;

    invoke-virtual {v1, p1, v0}, LB/u;->a(Landroid/view/View;Ly/h;)Ly/h;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p2

    :cond_1
    iget-object p1, p1, Ly/h;->a:Ly/g;

    invoke-interface {p1}, Ly/g;->k()Landroid/view/ContentInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ly/d;->e(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Landroidx/activity/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/a;


# instance fields
.field public final synthetic a:Landroidx/activity/m;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/i;->a:Landroidx/activity/m;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Landroidx/activity/i;->a:Landroidx/activity/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Le/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/activity/m;->c()V

    :cond_0
    return-void
.end method

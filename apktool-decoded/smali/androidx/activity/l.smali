.class public final Landroidx/activity/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/a;


# instance fields
.field public final a:Landroidx/fragment/app/x;

.field public final synthetic b:Landroidx/activity/m;


# direct methods
.method public constructor <init>(Landroidx/activity/m;Landroidx/fragment/app/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/l;->b:Landroidx/activity/m;

    iput-object p2, p0, Landroidx/activity/l;->a:Landroidx/fragment/app/x;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/l;->b:Landroidx/activity/m;

    iget-object v1, v0, Landroidx/activity/m;->b:Ljava/util/ArrayDeque;

    iget-object v2, p0, Landroidx/activity/l;->a:Landroidx/fragment/app/x;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v1, v2, Landroidx/fragment/app/x;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Le/a;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v2, Landroidx/fragment/app/x;->c:Landroidx/activity/i;

    invoke-virtual {v0}, Landroidx/activity/m;->c()V

    :cond_0
    return-void
.end method

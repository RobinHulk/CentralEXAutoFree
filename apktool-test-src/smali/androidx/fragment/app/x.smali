.class public final Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public c:Landroidx/activity/i;

.field public final synthetic d:Landroidx/fragment/app/E;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/E;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/x;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/x;->a:Z

    return-void
.end method

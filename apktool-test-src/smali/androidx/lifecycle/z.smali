.class public final Landroidx/lifecycle/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# static fields
.field public static final i:Landroidx/lifecycle/z;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/s;

.field public final g:LB/b;

.field public final h:LA/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    sput-object v0, Landroidx/lifecycle/z;->i:Landroidx/lifecycle/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/z;->a:I

    iput v0, p0, Landroidx/lifecycle/z;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/z;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/z;->d:Z

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/lifecycle/z;->f:Landroidx/lifecycle/s;

    new-instance v0, LB/b;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, LB/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/lifecycle/z;->g:LB/b;

    new-instance v0, LA/e;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LA/e;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/lifecycle/z;->h:LA/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/z;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/z;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/z;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/z;->f:Landroidx/lifecycle/s;

    sget-object v1, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/z;->c:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/z;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/z;->g:LB/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()Landroidx/lifecycle/s;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/z;->f:Landroidx/lifecycle/s;

    return-object v0
.end method

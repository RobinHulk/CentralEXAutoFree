.class public abstract Lkotlinx/coroutines/scheduling/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:I

.field public static final d:J

.field public static final e:Lkotlinx/coroutines/scheduling/f;

.field public static final f:LT/I1;

.field public static final g:LT/I1;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-wide v5, 0x7fffffffffffffffL

    const-wide/16 v3, 0x1

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    invoke-static/range {v0 .. v6}, LA/b;->f0(Ljava/lang/String;JJJ)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/i;->a:J

    sget v0, LR0/h;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/16 v1, 0x8

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, LA/b;->g0(IIIILjava/lang/String;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/i;->b:I

    const/4 v0, 0x4

    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    const v2, 0x1ffffe

    invoke-static {v2, v4, v2, v0, v1}, LA/b;->g0(IIIILjava/lang/String;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/i;->c:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v10, 0x7fffffffffffffffL

    const-wide/16 v8, 0x1

    const-string v5, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v6, 0x3c

    invoke-static/range {v5 .. v11}, LA/b;->f0(Ljava/lang/String;JJJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/i;->d:J

    sget-object v0, Lkotlinx/coroutines/scheduling/f;->a:Lkotlinx/coroutines/scheduling/f;

    sput-object v0, Lkotlinx/coroutines/scheduling/i;->e:Lkotlinx/coroutines/scheduling/f;

    new-instance v0, LT/I1;

    invoke-direct {v0, v4}, LT/I1;-><init>(I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/i;->f:LT/I1;

    new-instance v0, LT/I1;

    invoke-direct {v0, v3}, LT/I1;-><init>(I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/i;->g:LT/I1;

    return-void
.end method

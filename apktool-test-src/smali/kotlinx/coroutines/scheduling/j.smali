.class public final Lkotlinx/coroutines/scheduling/j;
.super LP0/c;
.source "SourceFile"


# static fields
.field public static final b:Lkotlinx/coroutines/scheduling/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/j;

    invoke-direct {v0}, LP0/c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/j;->b:Lkotlinx/coroutines/scheduling/j;

    return-void
.end method


# virtual methods
.method public final a(Lz0/i;Ljava/lang/Runnable;)V
    .locals 2

    sget-object p1, Lkotlinx/coroutines/scheduling/d;->c:Lkotlinx/coroutines/scheduling/d;

    sget-object v0, Lkotlinx/coroutines/scheduling/i;->g:LT/I1;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/g;->b:Lkotlinx/coroutines/scheduling/b;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/b;->b(Ljava/lang/Runnable;LT/I1;Z)V

    return-void
.end method

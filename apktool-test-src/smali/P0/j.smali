.class public final LP0/j;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final a:Lz0/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lz0/j;->a:Lz0/j;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, LP0/j;->a:Lz0/j;

    return-void
.end method


# virtual methods
.method public final fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public final getLocalizedMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LP0/j;->a:Lz0/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method

.class public final LM/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LT/j1;


# instance fields
.field public a:I

.field public b:LM/J;

.field public c:LM/J;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LT/j1;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LT/j1;-><init>(I)V

    sput-object v0, LM/p0;->d:LT/j1;

    return-void
.end method

.method public static a()LM/p0;
    .locals 1

    sget-object v0, LM/p0;->d:LT/j1;

    invoke-virtual {v0}, LT/j1;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM/p0;

    if-nez v0, :cond_0

    new-instance v0, LM/p0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method

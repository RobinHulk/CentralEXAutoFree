.class public abstract LJ0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ0/d;

.field public static final b:LJ0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LJ0/d;

    invoke-direct {v0}, LJ0/e;-><init>()V

    sput-object v0, LJ0/e;->a:LJ0/d;

    sget-object v0, LE0/a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LJ0/c;

    invoke-direct {v0}, LJ0/c;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, LK0/a;

    invoke-direct {v0}, LJ0/e;-><init>()V

    :goto_1
    sput-object v0, LJ0/e;->b:LJ0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

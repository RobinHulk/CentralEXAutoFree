.class public abstract LB0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LB0/b;

.field public static b:LB0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB0/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, LB0/b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, LB0/c;->a:LB0/b;

    return-void
.end method

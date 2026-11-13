.class public final LP0/a;
.super LI0/g;
.source "SourceFile"

# interfaces
.implements LH0/l;


# static fields
.field public static final a:LP0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LP0/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LI0/g;-><init>(I)V

    sput-object v0, LP0/a;->a:LP0/a;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lz0/g;

    instance-of v0, p1, LP0/c;

    if-eqz v0, :cond_0

    check-cast p1, LP0/c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.class public final Lz0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/i;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lz0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz0/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz0/j;->a:Lz0/j;

    return-void
.end method


# virtual methods
.method public final fold(Ljava/lang/Object;LH0/p;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final get(Lz0/h;)Lz0/g;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final minusKey(Lz0/h;)Lz0/i;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method

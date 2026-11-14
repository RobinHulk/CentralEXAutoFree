.class public final LT/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/math/BigInteger;

.field public final b:Ljava/math/BigInteger;

.field public final c:Ljava/math/BigInteger;

.field public final d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const-string v0, "y"

    invoke-static {p2, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "z"

    invoke-static {p3, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/c1;->a:Ljava/math/BigInteger;

    iput-object p2, p0, LT/c1;->b:Ljava/math/BigInteger;

    iput-object p3, p0, LT/c1;->c:Ljava/math/BigInteger;

    iput-object p4, p0, LT/c1;->d:Ljava/math/BigInteger;

    return-void
.end method

.class public abstract LT/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/math/BigInteger;

.field public static final b:Ljava/math/BigInteger;

.field public static final c:Ljava/math/BigInteger;

.field public static final d:Ljava/math/BigInteger;

.field public static final e:Ljava/math/BigInteger;

.field public static final f:Ljava/math/BigInteger;

.field public static final g:Ljava/math/BigInteger;

.field public static final h:Ljava/math/BigInteger;

.field public static final i:Ljava/math/BigInteger;

.field public static final j:Lv0/c;

.field public static final k:LT/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-string v1, "ZERO"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LT/d1;->a:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const-string v2, "ONE"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, LT/d1;->b:Ljava/math/BigInteger;

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const-string v3, "valueOf(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, LT/d1;->c:Ljava/math/BigInteger;

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, LT/d1;->d:Ljava/math/BigInteger;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    const-string v5, "pow(...)"

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x13

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v6, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v6, "subtract(...)"

    invoke-static {v4, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, LT/d1;->e:Ljava/math/BigInteger;

    const/16 v7, 0xfc

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v8, "27742317777372353535851937790883648493"

    invoke-direct {v5, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v7, "add(...)"

    invoke-static {v5, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, LT/d1;->f:Ljava/math/BigInteger;

    const-wide/32 v7, -0x1db41

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v7, 0x1db42

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    const-string v8, "modInverse(...)"

    invoke-static {v7, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v7, "multiply(...)"

    invoke-static {v5, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v9, "mod(...)"

    invoke-static {v5, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, LT/d1;->g:Ljava/math/BigInteger;

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0x4

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v6, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v6, "divide(...)"

    invoke-static {v5, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v5, "modPow(...)"

    invoke-static {v2, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, LT/d1;->h:Ljava/math/BigInteger;

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, LT/d1;->i:Ljava/math/BigInteger;

    new-instance v2, LT/b1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LT/b1;-><init>(I)V

    new-instance v3, Lv0/c;

    invoke-direct {v3, v2}, Lv0/c;-><init>(LH0/a;)V

    sput-object v3, LT/d1;->j:Lv0/c;

    new-instance v2, LT/c1;

    invoke-direct {v2, v0, v1, v1, v0}, LT/c1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v2, LT/d1;->k:LT/c1;

    return-void
.end method

.method public static a(LT/c1;LT/c1;)LT/c1;
    .locals 9

    iget-object v0, p0, LT/c1;->b:Ljava/math/BigInteger;

    iget-object v1, p0, LT/c1;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v2, "subtract(...)"

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, LT/c1;->b:Ljava/math/BigInteger;

    iget-object v4, p1, LT/c1;->a:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v3, "multiply(...)"

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, LT/d1;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v6, p0, LT/c1;->b:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v6, "add(...)"

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p1, LT/c1;->b:Ljava/math/BigInteger;

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v4, p0, LT/c1;->d:Ljava/math/BigInteger;

    sget-object v7, LT/d1;->c:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, LT/d1;->g:Ljava/math/BigInteger;

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p1, LT/c1;->d:Ljava/math/BigInteger;

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object p0, p0, LT/c1;->c:Ljava/math/BigInteger;

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LT/c1;->c:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v1}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, LT/c1;

    invoke-static {p1}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v6, "mod(...)"

    invoke-static {v4, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4, v7, p0, p1}, LT/c1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public static b(LT/c1;LT/c1;)Z
    .locals 7

    iget-object v0, p0, LT/c1;->a:Ljava/math/BigInteger;

    iget-object v1, p1, LT/c1;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v2, "multiply(...)"

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, LT/c1;->a:Ljava/math/BigInteger;

    iget-object v4, p0, LT/c1;->c:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v3, "subtract(...)"

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, LT/d1;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v6, LT/d1;->a:Ljava/math/BigInteger;

    invoke-static {v0, v6}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, LT/c1;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LT/c1;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0, v6}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c([B)LT/c1;
    .locals 4

    array-length v0, p0

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "copyOf(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1f

    aget-byte v1, p0, v0

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    invoke-static {p0}, LT/d1;->d([B)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, LT/d1;->e:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    return-object v2

    :cond_2
    invoke-static {p0, v3}, LT/d1;->f(Ljava/math/BigInteger;Z)LT/c1;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Ljava/math/BigInteger;
    .locals 5

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    array-length v3, p0

    sub-int/2addr v3, v2

    aget-byte v4, p0, v2

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static e(LT/c1;Ljava/math/BigInteger;)LT/c1;
    .locals 2

    sget-object v0, LT/d1;->k:LT/c1;

    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, LT/d1;->a(LT/c1;LT/c1;)LT/c1;

    move-result-object v0

    :cond_0
    invoke-static {p0, p0}, LT/d1;->a(LT/c1;LT/c1;)LT/c1;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static f(Ljava/math/BigInteger;Z)LT/c1;
    .locals 10

    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, LT/d1;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    sget-object v2, LT/d1;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v4, "subtract(...)"

    invoke-static {v3, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v5, LT/d1;->g:Ljava/math/BigInteger;

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v5, "multiply(...)"

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v6, "add(...)"

    invoke-static {v0, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    const-wide/16 v7, 0x7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v3}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v6}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v6, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    const-string v8, "remainder(...)"

    invoke-static {v6, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    const-string v9, "valueOf(...)"

    invoke-static {v8, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v8, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, LT/d1;->d:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    const-string v9, "divide(...)"

    invoke-static {v8, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    const-string v8, "modPow(...)"

    invoke-static {v7, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v6, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v0, v7}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    const-string v7, "negate(...)"

    invoke-static {v3, v7}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v3}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LT/d1;->h:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_0

    :cond_0
    return-object v8

    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    return-object v8

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eq v0, p1, :cond_3

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    :cond_3
    new-instance p1, LT/c1;

    invoke-static {v6}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "mod(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v6, p0, v2, v0}, LT/c1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p1
.end method

.method public static g([B[B[B)Z
    .locals 6

    const-string v0, "copyOfRange(...)"

    const-string v1, "publicKey"

    invoke-static {p0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    array-length v2, p2

    const/16 v4, 0x40

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    array-length v2, p2

    invoke-static {v3, v2}, Le/a;->n(II)V

    invoke-static {p2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, p2

    invoke-static {v4, v5}, Le/a;->n(II)V

    invoke-static {p2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    invoke-static {p2, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, LT/d1;->d([B)Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p0}, LT/d1;->c([B)LT/c1;

    move-result-object v0

    invoke-static {v2}, LT/d1;->c([B)LT/c1;

    move-result-object v3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    sget-object v4, LT/d1;->f:Ljava/math/BigInteger;

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "SHA-512"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {p0}, LT/d1;->d([B)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, LT/d1;->j:Lv0/c;

    invoke-virtual {p1}, Lv0/c;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT/c1;

    invoke-static {p1, p2}, LT/d1;->e(LT/c1;Ljava/math/BigInteger;)LT/c1;

    move-result-object p1

    invoke-static {p0}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v0, p0}, LT/d1;->e(LT/c1;Ljava/math/BigInteger;)LT/c1;

    move-result-object p0

    invoke-static {v3, p0}, LT/d1;->a(LT/c1;LT/c1;)LT/c1;

    move-result-object p0

    invoke-static {p1, p0}, LT/d1;->b(LT/c1;LT/c1;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return v1
.end method

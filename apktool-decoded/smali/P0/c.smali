.class public abstract LP0/c;
.super Lz0/a;
.source "SourceFile"

# interfaces
.implements Lz0/f;


# static fields
.field public static final a:LP0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LP0/b;

    sget-object v1, Lz0/e;->a:Lz0/e;

    sget-object v2, LP0/a;->a:LP0/a;

    invoke-direct {v0, v1, v2}, LP0/b;-><init>(Lz0/h;LH0/l;)V

    sput-object v0, LP0/c;->a:LP0/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lz0/e;->a:Lz0/e;

    invoke-direct {p0, v0}, Lz0/a;-><init>(Lz0/h;)V

    return-void
.end method


# virtual methods
.method public final get(Lz0/h;)Lz0/g;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, LP0/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, LP0/b;

    invoke-virtual {p0}, Lz0/a;->getKey()Lz0/h;

    move-result-object v1

    invoke-static {v1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_0

    iget-object v0, p1, LP0/b;->b:Lz0/h;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object p1, p1, LP0/b;->a:LI0/g;

    invoke-interface {p1, p0}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz0/g;

    if-eqz p1, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_1
    sget-object v0, Lz0/e;->a:Lz0/e;

    if-ne v0, p1, :cond_2

    move-object v2, p0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public final minusKey(Lz0/h;)Lz0/i;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, LP0/b;

    sget-object v2, Lz0/j;->a:Lz0/j;

    if-eqz v1, :cond_2

    check-cast p1, LP0/b;

    invoke-virtual {p0}, Lz0/a;->getKey()Lz0/h;

    move-result-object v1

    invoke-static {v1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_0

    iget-object v0, p1, LP0/b;->b:Lz0/h;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p1, p1, LP0/b;->a:LI0/g;

    invoke-interface {p1, p0}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz0/g;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    goto :goto_0

    :cond_2
    sget-object v0, Lz0/e;->a:Lz0/e;

    if-ne v0, p1, :cond_1

    :goto_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract LI0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient a:LI0/d;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LI0/d;->b:Ljava/lang/Class;

    iput-object p3, p0, LI0/d;->c:Ljava/lang/String;

    iput-object p4, p0, LI0/d;->d:Ljava/lang/String;

    iput-boolean v0, p0, LI0/d;->e:Z

    iput p1, p0, LI0/d;->f:I

    iput v0, p0, LI0/d;->g:I

    return-void
.end method


# virtual methods
.method public final c()LI0/b;
    .locals 2

    iget-object v0, p0, LI0/d;->b:Ljava/lang/Class;

    iget-boolean v1, p0, LI0/d;->e:Z

    if-eqz v1, :cond_0

    sget-object v1, LI0/m;->a:LI0/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LI0/h;

    invoke-direct {v1, v0}, LI0/h;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    sget-object v1, LI0/m;->a:LI0/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LI0/c;

    invoke-direct {v1, v0}, LI0/c;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LI0/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, LI0/d;

    iget-object v1, p1, LI0/d;->c:Ljava/lang/String;

    iget-object v3, p0, LI0/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LI0/d;->d:Ljava/lang/String;

    iget-object v3, p1, LI0/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, LI0/d;->g:I

    iget v3, p1, LI0/d;->g:I

    if-ne v1, v3, :cond_1

    iget v1, p0, LI0/d;->f:I

    iget v3, p1, LI0/d;->f:I

    if-ne v1, v3, :cond_1

    sget-object v1, LI0/a;->a:LI0/a;

    invoke-virtual {v1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, LI0/d;->c()LI0/b;

    move-result-object v1

    invoke-virtual {p1}, LI0/d;->c()LI0/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    instance-of v0, p1, LI0/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, LI0/d;->a:LI0/d;

    if-nez v0, :cond_3

    sget-object v0, LI0/m;->a:LI0/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p0, LI0/d;->a:LI0/d;

    move-object v0, p0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, LI0/d;->c()LI0/b;

    invoke-virtual {p0}, LI0/d;->c()LI0/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, LI0/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LM/d0;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, LI0/d;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LI0/d;->a:LI0/d;

    if-nez v0, :cond_0

    sget-object v0, LI0/m;->a:LI0/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p0, LI0/d;->a:LI0/d;

    move-object v0, p0

    :cond_0
    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, LI0/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, LI0/d;->c:Ljava/lang/String;

    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "constructor (Kotlin reflection is not available)"

    goto :goto_0

    :cond_2
    const-string v1, "function "

    const-string v2, " (Kotlin reflection is not available)"

    invoke-static {v1, v0, v2}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

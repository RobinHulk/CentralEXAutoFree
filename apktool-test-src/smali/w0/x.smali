.class public final Lw0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/p;
.implements Lz0/d;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lz0/d;

.field public b:Ljava/lang/Object;

.field public c:Ljava/util/Iterator;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(IILjava/util/Iterator;Lz0/d;)V
    .locals 0

    iput p1, p0, Lw0/x;->g:I

    iput p2, p0, Lw0/x;->h:I

    iput-object p3, p0, Lw0/x;->i:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lw0/x;->a:Lz0/d;

    invoke-interface {p4}, Lz0/d;->a()Lz0/i;

    move-result-object p1

    sget-object p2, Lz0/j;->a:Lz0/j;

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lz0/i;
    .locals 1

    sget-object v0, Lz0/j;->a:Lz0/j;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    move-object v0, p0

    :goto_0
    check-cast v0, Lw0/x;

    iget-object v1, v0, Lw0/x;->a:Lz0/d;

    :try_start_0
    invoke-virtual {v0, p1}, Lw0/x;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, LA0/a;->a:LA0/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v2, Lv0/b;

    invoke-direct {v2, p1}, Lv0/b;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v1, Lw0/x;

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Lz0/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, LN0/g;

    check-cast p2, Lz0/d;

    new-instance v0, Lw0/x;

    iget-object v1, p0, Lw0/x;->i:Ljava/util/Iterator;

    iget v2, p0, Lw0/x;->g:I

    iget v3, p0, Lw0/x;->h:I

    invoke-direct {v0, v2, v3, v1, p2}, Lw0/x;-><init>(IILjava/util/Iterator;Lz0/d;)V

    iput-object p1, v0, Lw0/x;->f:Ljava/lang/Object;

    sget-object p1, Lv0/e;->c:Lv0/e;

    invoke-virtual {v0, p1}, Lw0/x;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, LA0/a;->a:LA0/a;

    iget v2, v0, Lw0/x;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    iget v8, v0, Lw0/x;->h:I

    iget v9, v0, Lw0/x;->g:I

    const/4 v10, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    if-eq v2, v7, :cond_0

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    :cond_0
    invoke-static/range {p1 .. p1}, Le/a;->S(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v2, v0, Lw0/x;->b:Ljava/lang/Object;

    check-cast v2, Lw0/w;

    iget-object v3, v0, Lw0/x;->f:Ljava/lang/Object;

    check-cast v3, LN0/g;

    invoke-static/range {p1 .. p1}, Le/a;->S(Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Lw0/w;->b(I)V

    goto/16 :goto_4

    :cond_3
    iget-object v2, v0, Lw0/x;->c:Ljava/util/Iterator;

    iget-object v7, v0, Lw0/x;->b:Ljava/lang/Object;

    check-cast v7, Lw0/w;

    iget-object v11, v0, Lw0/x;->f:Ljava/lang/Object;

    check-cast v11, LN0/g;

    invoke-static/range {p1 .. p1}, Le/a;->S(Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Lw0/w;->b(I)V

    goto/16 :goto_2

    :cond_4
    iget v2, v0, Lw0/x;->d:I

    iget-object v4, v0, Lw0/x;->c:Ljava/util/Iterator;

    iget-object v5, v0, Lw0/x;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v5, v0, Lw0/x;->f:Ljava/lang/Object;

    check-cast v5, LN0/g;

    invoke-static/range {p1 .. p1}, Le/a;->S(Ljava/lang/Object;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v2

    goto :goto_1

    :cond_5
    invoke-static/range {p1 .. p1}, Le/a;->S(Ljava/lang/Object;)V

    iget-object v2, v0, Lw0/x;->f:Ljava/lang/Object;

    check-cast v2, LN0/g;

    const/16 v11, 0x400

    if-le v9, v11, :cond_6

    goto :goto_0

    :cond_6
    move v11, v9

    :goto_0
    sub-int v12, v8, v9

    iget-object v13, v0, Lw0/x;->i:Ljava/util/Iterator;

    const/4 v14, 0x0

    if-ltz v12, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v2

    move-object v4, v13

    move v2, v14

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-lez v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v9, :cond_7

    iput-object v5, v0, Lw0/x;->f:Ljava/lang/Object;

    iput-object v6, v0, Lw0/x;->b:Ljava/lang/Object;

    iput-object v4, v0, Lw0/x;->c:Ljava/util/Iterator;

    iput v12, v0, Lw0/x;->d:I

    iput v3, v0, Lw0/x;->e:I

    invoke-virtual {v5, v6, v0}, LN0/g;->d(Ljava/lang/Object;Lw0/x;)V

    return-object v1

    :cond_9
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    iput-object v10, v0, Lw0/x;->f:Ljava/lang/Object;

    iput-object v10, v0, Lw0/x;->b:Ljava/lang/Object;

    iput-object v10, v0, Lw0/x;->c:Ljava/util/Iterator;

    iput v7, v0, Lw0/x;->e:I

    invoke-virtual {v5, v6, v0}, LN0/g;->d(Ljava/lang/Object;Lw0/x;)V

    return-object v1

    :cond_a
    new-instance v7, Lw0/w;

    new-array v11, v11, [Ljava/lang/Object;

    invoke-direct {v7, v14, v11}, Lw0/w;-><init>(I[Ljava/lang/Object;)V

    move-object v11, v2

    move-object v2, v13

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7}, Lw0/w;->a()I

    move-result v13

    iget v14, v7, Lw0/w;->b:I

    if-eq v13, v14, :cond_f

    iget v13, v7, Lw0/w;->c:I

    iget v15, v7, Lw0/w;->d:I

    add-int/2addr v13, v15

    rem-int/2addr v13, v14

    iget-object v4, v7, Lw0/w;->a:[Ljava/lang/Object;

    aput-object v12, v4, v13

    add-int/lit8 v15, v15, 0x1

    iput v15, v7, Lw0/w;->d:I

    invoke-virtual {v7}, Lw0/w;->a()I

    move-result v12

    if-ne v12, v14, :cond_d

    iget v12, v7, Lw0/w;->d:I

    if-ge v12, v9, :cond_e

    shr-int/lit8 v12, v14, 0x1

    add-int/2addr v14, v12

    add-int/2addr v14, v3

    if-le v14, v9, :cond_b

    move v14, v9

    :cond_b
    iget v12, v7, Lw0/w;->c:I

    if-nez v12, :cond_c

    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v12, "copyOf(...)"

    invoke-static {v4, v12}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    new-array v4, v14, [Ljava/lang/Object;

    invoke-virtual {v7, v4}, Lw0/w;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    :goto_3
    new-instance v12, Lw0/w;

    iget v7, v7, Lw0/w;->d:I

    invoke-direct {v12, v7, v4}, Lw0/w;-><init>(I[Ljava/lang/Object;)V

    move-object v7, v12

    :cond_d
    const/4 v4, 0x5

    goto :goto_2

    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v0, Lw0/x;->f:Ljava/lang/Object;

    iput-object v7, v0, Lw0/x;->b:Ljava/lang/Object;

    iput-object v2, v0, Lw0/x;->c:Ljava/util/Iterator;

    iput v6, v0, Lw0/x;->e:I

    invoke-virtual {v11, v3, v0}, LN0/g;->d(Ljava/lang/Object;Lw0/x;)V

    return-object v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ring buffer is full"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move-object v2, v7

    move-object v3, v11

    :goto_4
    iget v4, v2, Lw0/w;->d:I

    if-le v4, v8, :cond_11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lw0/x;->f:Ljava/lang/Object;

    iput-object v2, v0, Lw0/x;->b:Ljava/lang/Object;

    iput-object v10, v0, Lw0/x;->c:Ljava/util/Iterator;

    iput v5, v0, Lw0/x;->e:I

    invoke-virtual {v3, v4, v0}, LN0/g;->d(Ljava/lang/Object;Lw0/x;)V

    return-object v1

    :cond_11
    invoke-virtual {v2}, Lw0/e;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    iput-object v10, v0, Lw0/x;->f:Ljava/lang/Object;

    iput-object v10, v0, Lw0/x;->b:Ljava/lang/Object;

    iput-object v10, v0, Lw0/x;->c:Ljava/util/Iterator;

    const/4 v4, 0x5

    iput v4, v0, Lw0/x;->e:I

    invoke-virtual {v3, v2, v0}, LN0/g;->d(Ljava/lang/Object;Lw0/x;)V

    return-object v1

    :cond_12
    :goto_5
    sget-object v1, Lv0/e;->c:Lv0/e;

    return-object v1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Continuation at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, LB0/a;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, LB0/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-interface {v1}, LB0/a;->v()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_e

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "label"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    check-cast v5, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    sub-int/2addr v5, v4

    goto :goto_2

    :catch_0
    move v5, v3

    :goto_2
    if-gez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v1}, LB0/a;->l()[I

    move-result-object v3

    aget v3, v3, v5

    :goto_3
    sget-object v4, LB0/c;->b:LB0/b;

    sget-object v5, LB0/c;->a:LB0/b;

    if-nez v4, :cond_4

    :try_start_1
    const-class v4, Ljava/lang/Class;

    const-string v6, "getModule"

    invoke-virtual {v4, v6, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "java.lang.Module"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDescriptor"

    invoke-virtual {v6, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "java.lang.module.ModuleDescriptor"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-instance v8, LB0/b;

    invoke-direct {v8, v4, v6, v7}, LB0/b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v8, LB0/c;->b:LB0/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v8

    goto :goto_4

    :catch_1
    sput-object v5, LB0/c;->b:LB0/b;

    move-object v4, v5

    :cond_4
    :goto_4
    if-ne v4, v5, :cond_5

    goto :goto_8

    :cond_5
    iget-object v5, v4, LB0/b;->a:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_5

    :cond_6
    move-object v5, v2

    :goto_5
    if-nez v5, :cond_7

    goto :goto_8

    :cond_7
    iget-object v6, v4, LB0/b;->b:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_8

    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    :cond_8
    move-object v5, v2

    :goto_6
    if-nez v5, :cond_9

    goto :goto_8

    :cond_9
    iget-object v4, v4, LB0/b;->c:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_7

    :cond_a
    move-object v4, v2

    :goto_7
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_b

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    :cond_b
    :goto_8
    if-nez v2, :cond_c

    invoke-interface {v1}, LB0/a;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, LB0/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    new-instance v4, Ljava/lang/StackTraceElement;

    invoke-interface {v1}, LB0/a;->m()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, LB0/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v5, v1, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v4

    :goto_a
    if-eqz v2, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Debug metadata version mismatch. Expected: 1, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Please update the Kotlin standard library."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

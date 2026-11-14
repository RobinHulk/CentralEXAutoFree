.class public abstract LR0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LP0/p;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "kotlinx.coroutines.fast.service.loader"

    sget v1, LR0/h;->a:I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :goto_1
    :try_start_1
    new-instance v0, Lkotlinx/coroutines/android/AndroidDispatcherFactory;

    invoke-direct {v0}, Lkotlinx/coroutines/android/AndroidDispatcherFactory;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [LR0/e;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v2, "<this>"

    invoke-static {v0, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LF0/b;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, LF0/b;-><init>(Ljava/lang/Object;I)V

    new-instance v0, LN0/a;

    invoke-direct {v0, v2}, LN0/a;-><init>(LN0/f;)V

    invoke-static {v0}, LN0/h;->n0(LN0/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v3

    check-cast v4, LR0/e;

    invoke-interface {v4}, LR0/e;->getLoadPriority()I

    move-result v4

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, LR0/e;

    invoke-interface {v6}, LR0/e;->getLoadPriority()I

    move-result v6

    if-ge v4, v6, :cond_4

    move-object v3, v5

    move v4, v6

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    check-cast v3, LR0/e;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    :try_start_2
    invoke-interface {v3, v0}, LR0/e;->createDispatcher(Ljava/util/List;)LP0/p;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v1, :cond_6

    sput-object v1, LR0/f;->a:LP0/p;

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, LR0/e;->hintOnError()Ljava/lang/String;

    throw v0

    :catchall_1
    move-exception v0

    new-instance v1, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

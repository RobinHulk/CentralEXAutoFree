.class public abstract LP0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    sget v1, LR0/h;->a:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    sget v0, LP0/g;->d:I

    goto :goto_2

    :cond_1
    sget v0, LP0/k;->a:I

    sget-object v0, LR0/f;->a:LP0/p;

    move-object v1, v0

    check-cast v1, LQ0/a;

    iget-object v1, v1, LQ0/a;->e:LQ0/a;

    instance-of v1, v0, LP0/i;

    if-nez v1, :cond_2

    sget v0, LP0/g;->d:I

    goto :goto_2

    :cond_2
    check-cast v0, LP0/i;

    :goto_2
    return-void
.end method

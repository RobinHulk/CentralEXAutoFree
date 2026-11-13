.class public abstract Le/j;
.super Landroidx/activity/g;
.source "SourceFile"

# interfaces
.implements Le/k;


# instance fields
.field public final n:LA/e;

.field public final o:Landroidx/lifecycle/s;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Le/x;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/g;-><init>()V

    new-instance v0, Landroidx/fragment/app/r;

    invoke-direct {v0, p0}, Landroidx/fragment/app/r;-><init>(Le/j;)V

    new-instance v1, LA/e;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2}, LA/e;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Le/j;->n:LA/e;

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Le/j;->o:Landroidx/lifecycle/s;

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/j;->r:Z

    iget-object v0, p0, Landroidx/activity/g;->e:LN/e;

    iget-object v0, v0, LN/e;->b:LN/d;

    new-instance v1, Landroidx/fragment/app/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/p;-><init>(Le/j;I)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, LN/d;->e(Ljava/lang/String;LN/c;)V

    new-instance v0, Landroidx/fragment/app/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/q;-><init>(Le/j;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/g;->f(La/b;)V

    iget-object v0, p0, Landroidx/activity/g;->e:LN/e;

    iget-object v0, v0, LN/e;->b:LN/d;

    new-instance v1, Landroidx/fragment/app/p;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/fragment/app/p;-><init>(Le/j;I)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, LN/d;->e(Ljava/lang/String;LN/c;)V

    new-instance v0, Landroidx/fragment/app/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/q;-><init>(Le/j;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/g;->f(La/b;)V

    return-void
.end method

.method public static k(Landroidx/fragment/app/E;)Z
    .locals 7

    iget-object p0, p0, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {p0}, LM/d;->n()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/o;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, v2, Landroidx/fragment/app/r;->g:Le/j;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/o;->g()Landroidx/fragment/app/E;

    move-result-object v2

    invoke-static {v2}, Le/j;->k(Landroidx/fragment/app/E;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_3
    iget-object v2, v1, Landroidx/fragment/app/o;->M:Landroidx/fragment/app/M;

    sget-object v3, Landroidx/lifecycle/l;->d:Landroidx/lifecycle/l;

    const-string v4, "setCurrentState"

    sget-object v5, Landroidx/lifecycle/l;->c:Landroidx/lifecycle/l;

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/fragment/app/M;->f()V

    iget-object v2, v2, Landroidx/fragment/app/M;->b:Landroidx/lifecycle/s;

    iget-object v2, v2, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/l;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v1, Landroidx/fragment/app/o;->M:Landroidx/fragment/app/M;

    iget-object v0, v0, Landroidx/fragment/app/M;->b:Landroidx/lifecycle/s;

    invoke-virtual {v0, v4}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroidx/lifecycle/s;->e(Landroidx/lifecycle/l;)V

    move v0, v6

    :cond_4
    iget-object v2, v1, Landroidx/fragment/app/o;->L:Landroidx/lifecycle/s;

    iget-object v2, v2, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/l;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/l;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/o;->L:Landroidx/lifecycle/s;

    invoke-virtual {v0, v4}, Landroidx/lifecycle/s;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroidx/lifecycle/s;->e(Landroidx/lifecycle/l;)V

    move v0, v6

    goto :goto_0

    :cond_5
    return v0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0}, Le/j;->j()V

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v0}, Le/x;->C()V

    iget-object v1, v0, Le/x;->A:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, v0, Le/x;->m:Le/t;

    iget-object p2, v0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/t;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 10

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le/x;->O:Z

    iget v2, v0, Le/x;->S:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Le/n;->b:I

    :goto_0
    invoke-virtual {v0, p1, v2}, Le/x;->I(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1}, Le/n;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Le/n;->s(Landroid/content/Context;)V

    :cond_1
    invoke-static {p1}, Le/x;->v(Landroid/content/Context;)Lu/e;

    move-result-object v2

    sget-boolean v3, Le/x;->k0:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v3, :cond_2

    invoke-static {p1, v0, v2, v5, v4}, Le/x;->z(Landroid/content/Context;ILu/e;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_0
    move-object v6, p1

    check-cast v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    :cond_2
    instance-of v3, p1, Lh/d;

    if-eqz v3, :cond_3

    invoke-static {p1, v0, v2, v5, v4}, Le/x;->z(Landroid/content/Context;ILu/e;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_1
    move-object v4, p1

    check-cast v4, Lh/d;

    invoke-virtual {v4, v3}, Lh/d;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    :cond_3
    sget-boolean v3, Le/x;->j0:Z

    if-nez v3, :cond_4

    goto/16 :goto_7

    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    const/4 v6, -0x1

    iput v6, v4, Landroid/content/res/Configuration;->uiMode:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v8, v7, Landroid/content/res/Configuration;->uiMode:I

    iput v8, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v8

    if-nez v8, :cond_1a

    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput v6, v8, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v4, v7}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_1

    :cond_5
    iget v6, v4, Landroid/content/res/Configuration;->fontScale:F

    iget v9, v7, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_6

    iput v9, v8, Landroid/content/res/Configuration;->fontScale:F

    :cond_6
    iget v6, v4, Landroid/content/res/Configuration;->mcc:I

    iget v9, v7, Landroid/content/res/Configuration;->mcc:I

    if-eq v6, v9, :cond_7

    iput v9, v8, Landroid/content/res/Configuration;->mcc:I

    :cond_7
    iget v6, v4, Landroid/content/res/Configuration;->mnc:I

    iget v9, v7, Landroid/content/res/Configuration;->mnc:I

    if-eq v6, v9, :cond_8

    iput v9, v8, Landroid/content/res/Configuration;->mnc:I

    :cond_8
    invoke-static {v4, v7, v8}, Le/r;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v6, v4, Landroid/content/res/Configuration;->touchscreen:I

    iget v9, v7, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v6, v9, :cond_9

    iput v9, v8, Landroid/content/res/Configuration;->touchscreen:I

    :cond_9
    iget v6, v4, Landroid/content/res/Configuration;->keyboard:I

    iget v9, v7, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v9, :cond_a

    iput v9, v8, Landroid/content/res/Configuration;->keyboard:I

    :cond_a
    iget v6, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v9, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v6, v9, :cond_b

    iput v9, v8, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_b
    iget v6, v4, Landroid/content/res/Configuration;->navigation:I

    iget v9, v7, Landroid/content/res/Configuration;->navigation:I

    if-eq v6, v9, :cond_c

    iput v9, v8, Landroid/content/res/Configuration;->navigation:I

    :cond_c
    iget v6, v4, Landroid/content/res/Configuration;->navigationHidden:I

    iget v9, v7, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v6, v9, :cond_d

    iput v9, v8, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_d
    iget v6, v4, Landroid/content/res/Configuration;->orientation:I

    iget v9, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v9, :cond_e

    iput v9, v8, Landroid/content/res/Configuration;->orientation:I

    :cond_e
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0xf

    if-eq v6, v9, :cond_f

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_f
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0xc0

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v9, v9, 0xc0

    if-eq v6, v9, :cond_10

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x30

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v9, v9, 0x30

    if-eq v6, v9, :cond_11

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v6, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0x300

    iget v9, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v9, v9, 0x300

    if-eq v6, v9, :cond_12

    iget v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->screenLayout:I

    :cond_12
    iget v6, v4, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0x3

    iget v9, v7, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v9, v9, 0x3

    if-eq v6, v9, :cond_13

    iget v6, v8, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->colorMode:I

    :cond_13
    iget v6, v4, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0xc

    iget v9, v7, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v9, v9, 0xc

    if-eq v6, v9, :cond_14

    iget v6, v8, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->colorMode:I

    :cond_14
    iget v6, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    iget v9, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0xf

    if-eq v6, v9, :cond_15

    iget v6, v8, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->uiMode:I

    :cond_15
    iget v6, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    iget v9, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    if-eq v6, v9, :cond_16

    iget v6, v8, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v6, v9

    iput v6, v8, Landroid/content/res/Configuration;->uiMode:I

    :cond_16
    iget v6, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v9, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v6, v9, :cond_17

    iput v9, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_17
    iget v6, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v9, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v6, v9, :cond_18

    iput v9, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_18
    iget v6, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v9, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v6, v9, :cond_19

    iput v9, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_19
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    iget v6, v7, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v6, :cond_1b

    iput v6, v8, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_1

    :cond_1a
    move-object v8, v5

    :cond_1b
    :goto_1
    invoke-static {p1, v0, v2, v8, v1}, Le/x;->z(Landroid/content/Context;ILu/e;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v2, Lh/d;

    const v4, 0x7f10018d

    invoke-direct {v2, p1, v4}, Lh/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Lh/d;->a(Landroid/content/res/Configuration;)V

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz p1, :cond_1f

    invoke-virtual {v2}, Lh/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/16 v0, 0x1d

    if-lt v3, v0, :cond_1c

    invoke-static {p1}, Lq/m;->a(Landroid/content/res/Resources$Theme;)V

    goto :goto_6

    :cond_1c
    sget-object v0, Lq/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v3, Lq/b;->g:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_1d

    :try_start_4
    const-class v3, Landroid/content/res/Resources$Theme;

    const-string v4, "rebase"

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lq/b;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v3

    :try_start_5
    const-string v4, "ResourcesCompat"

    const-string v6, "Failed to retrieve rebase() method"

    invoke-static {v4, v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    sput-boolean v1, Lq/b;->g:Z

    :cond_1d
    sget-object v1, Lq/b;->f:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_1e

    :try_start_6
    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_3

    :catch_4
    move-exception p1

    :goto_3
    :try_start_7
    const-string v1, "ResourcesCompat"

    const-string v3, "Failed to invoke rebase() method via reflection"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v5, Lq/b;->f:Ljava/lang/reflect/Method;

    :cond_1e
    :goto_4
    monitor-exit v0

    goto :goto_6

    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :catch_5
    :cond_1f
    :goto_6
    move-object p1, v2

    :goto_7
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v0}, Le/x;->G()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v0}, Le/x;->G()V

    invoke-super {p0, p1}, Landroidx/activity/g;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Le/j;->p:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Le/j;->q:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Le/j;->r:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, LG/a;

    invoke-interface {p0}, Landroidx/lifecycle/J;->c()Landroidx/lifecycle/I;

    move-result-object v2

    invoke-direct {v1, p0, v2}, LG/a;-><init>(Landroidx/lifecycle/q;Landroidx/lifecycle/I;)V

    invoke-virtual {v1, v0, p3}, LG/a;->q(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v0, p0, Le/j;->n:LA/e;

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/E;->t(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v0}, Le/x;->C()V

    iget-object v0, v0, Le/x;->l:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    iget-object v1, v0, Le/x;->p:Lh/i;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Le/x;->G()V

    new-instance v1, Lh/i;

    iget-object v2, v0, Le/x;->o:Le/J;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Le/J;->n0()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Le/x;->k:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v2}, Lh/i;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Le/x;->p:Lh/i;

    :cond_1
    iget-object v0, v0, Le/x;->p:Lh/i;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    sget v0, Lj/s1;->a:I

    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final i()Le/n;
    .locals 2

    iget-object v0, p0, Le/j;->s:Le/x;

    if-nez v0, :cond_0

    sget-object v0, Le/n;->a:Le/D;

    new-instance v0, Le/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Le/x;-><init>(Landroid/content/Context;Landroid/view/Window;Le/k;Ljava/lang/Object;)V

    iput-object v0, p0, Le/j;->s:Le/x;

    :cond_0
    iget-object v0, p0, Le/j;->s:Le/x;

    return-object v0
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    invoke-virtual {v0}, Le/n;->f()V

    return-void
.end method

.method public final j()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902ff

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090302

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f090301

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f090300

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final l(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Le/j;->n:LA/e;

    invoke-virtual {v0}, LA/e;->u()V

    invoke-super {p0, p1}, Landroidx/activity/g;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, v0, LA/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/r;

    iget-object p1, p1, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {p1}, Landroidx/fragment/app/E;->h()V

    return-void
.end method

.method public final m()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Le/j;->n:LA/e;

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {v0}, Landroidx/fragment/app/E;->k()V

    iget-object v0, p0, Le/j;->o:Landroidx/lifecycle/s;

    sget-object v1, Landroidx/lifecycle/k;->ON_DESTROY:Landroidx/lifecycle/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    return-void
.end method

.method public final n(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/activity/g;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p2, p0, Le/j;->n:LA/e;

    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p2, LA/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/r;

    iget-object p1, p1, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {p1}, Landroidx/fragment/app/E;->i()Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p2, LA/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/r;

    iget-object p1, p1, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {p1}, Landroidx/fragment/app/E;->n()Z

    move-result p1

    return p1
.end method

.method public final o(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Le/j;->n:LA/e;

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {v0}, Landroidx/fragment/app/E;->o()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/g;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Le/j;->n:LA/e;

    invoke-virtual {v0}, LA/e;->u()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/g;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p0, p1}, Le/j;->l(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object p1

    check-cast p1, Le/x;

    iget-boolean v0, p1, Le/x;->F:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Le/x;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Le/x;->G()V

    iget-object v0, p1, Le/x;->o:Le/J;

    if-eqz v0, :cond_0

    iget-object v1, v0, Le/J;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Le/J;->q0(Z)V

    :cond_0
    invoke-static {}, Lj/s;->a()Lj/s;

    move-result-object v0

    iget-object v1, p1, Le/x;->k:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lj/s;->a:Lj/M0;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Lj/M0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lm/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p1, Le/x;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p1, Le/x;->R:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Le/x;->t(ZZ)Z

    return-void

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/g;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Le/j;->o:Landroidx/lifecycle/s;

    sget-object v0, Landroidx/lifecycle/k;->ON_CREATE:Landroidx/lifecycle/k;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    iget-object p1, p0, Le/j;->n:LA/e;

    iget-object p1, p1, LA/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/r;

    iget-object p1, p1, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/E;->y:Z

    iput-boolean v0, p1, Landroidx/fragment/app/E;->z:Z

    iget-object v1, p1, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iput-boolean v0, v1, Landroidx/fragment/app/G;->h:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/E;->s(I)V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/activity/g;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    invoke-virtual {p0}, Le/j;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object p1, p0, Le/j;->n:LA/e;

    iget-object p1, p1, LA/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/r;

    iget-object p1, p1, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {p1}, Landroidx/fragment/app/E;->j()Z

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/g;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    return v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Le/j;->n:LA/e;

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->f:Landroidx/fragment/app/v;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/v;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 5
    iget-object v0, p0, Le/j;->n:LA/e;

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    .line 6
    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    iget-object v0, v0, Landroidx/fragment/app/E;->f:Landroidx/fragment/app/v;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/fragment/app/v;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Le/j;->m()V

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    invoke-virtual {v0}, Le/n;->i()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Le/j;->n:LA/e;

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {v0}, Landroidx/fragment/app/E;->l()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Le/j;->n(ILandroid/view/MenuItem;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object p1

    check-cast p1, Le/x;

    invoke-virtual {p1}, Le/x;->G()V

    iget-object p1, p1, Le/x;->o:Le/J;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v1, 0x102002c

    const/4 v2, 0x0

    if-ne p2, v1, :cond_8

    if-eqz p1, :cond_8

    iget-object p1, p1, Le/J;->g:Lj/j0;

    check-cast p1, Lj/q1;

    iget p1, p1, Lj/q1;->b:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_8

    invoke-static {p0}, LA/b;->A(Le/j;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p0, p1}, Landroidx/core/app/d;->c(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, LA/b;->A(Le/j;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p0}, LA/b;->A(Le/j;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :try_start_0
    invoke-static {p0, v1}, LA/b;->B(Le/j;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, LA/b;->B(Le/j;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_1
    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    new-array p2, v2, [Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    new-instance p2, Landroid/content/Intent;

    aget-object v1, p1, v2

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    aput-object p2, p1, v2

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroidx/core/content/a;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_1
    invoke-static {p0}, Landroidx/core/app/a;->a(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {p0, p1}, Landroidx/core/app/d;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    return v0

    :cond_8
    return v2
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Le/j;->n:LA/e;

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/E;->m(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Le/j;->n:LA/e;

    invoke-virtual {v0}, LA/e;->u()V

    invoke-super {p0, p1}, Landroidx/activity/g;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le/j;->o(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/j;->q:Z

    iget-object v0, p0, Le/j;->n:LA/e;

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/E;->s(I)V

    iget-object v0, p0, Le/j;->o:Landroidx/lifecycle/s;

    sget-object v1, Landroidx/lifecycle/k;->ON_PAUSE:Landroidx/lifecycle/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Le/j;->n:LA/e;

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/E;->q(Z)V

    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object p1

    check-cast p1, Le/x;

    invoke-virtual {p1}, Le/x;->C()V

    return-void
.end method

.method public final onPostResume()V
    .locals 2

    invoke-virtual {p0}, Le/j;->p()V

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v0}, Le/x;->G()V

    iget-object v0, v0, Le/x;->o:Le/J;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Le/J;->v:Z

    :cond_0
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/g;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    iget-object p1, p0, Le/j;->n:LA/e;

    iget-object p1, p1, LA/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/r;

    iget-object p1, p1, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {p1}, Landroidx/fragment/app/E;->r()Z

    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/g;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    return v0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Le/j;->n:LA/e;

    invoke-virtual {v0}, LA/e;->u()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/g;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Le/j;->n:LA/e;

    invoke-virtual {v0}, LA/e;->u()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/j;->q:Z

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/E;->w(Z)Z

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-virtual {p0}, Le/j;->q()V

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le/x;->t(ZZ)Z

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Le/j;->n:LA/e;

    invoke-virtual {v0}, LA/e;->u()V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-virtual {p0}, Le/j;->r()V

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v0}, Le/x;->G()V

    iget-object v0, v0, Le/x;->o:Le/J;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Le/J;->v:Z

    iget-object v0, v0, Le/J;->u:Lh/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/k;->a()V

    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Le/n;->r(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final openOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    invoke-virtual {v0}, Le/x;->G()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Le/j;->o:Landroidx/lifecycle/s;

    sget-object v1, Landroidx/lifecycle/k;->ON_RESUME:Landroidx/lifecycle/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    iget-object v0, p0, Le/j;->n:LA/e;

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/E;->y:Z

    iput-boolean v1, v0, Landroidx/fragment/app/E;->z:Z

    iget-object v2, v0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iput-boolean v1, v2, Landroidx/fragment/app/G;->h:Z

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/E;->s(I)V

    return-void
.end method

.method public final q()V
    .locals 5

    iget-object v0, p0, Le/j;->n:LA/e;

    invoke-virtual {v0}, LA/e;->u()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Le/j;->r:Z

    iget-boolean v2, p0, Le/j;->p:Z

    const/4 v3, 0x1

    iget-object v0, v0, LA/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    if-nez v2, :cond_0

    iput-boolean v3, p0, Le/j;->p:Z

    iget-object v2, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    iput-boolean v1, v2, Landroidx/fragment/app/E;->y:Z

    iput-boolean v1, v2, Landroidx/fragment/app/E;->z:Z

    iget-object v4, v2, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iput-boolean v1, v4, Landroidx/fragment/app/G;->h:Z

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroidx/fragment/app/E;->s(I)V

    :cond_0
    iget-object v2, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/E;->w(Z)Z

    iget-object v2, p0, Le/j;->o:Landroidx/lifecycle/s;

    sget-object v3, Landroidx/lifecycle/k;->ON_START:Landroidx/lifecycle/k;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    iput-boolean v1, v0, Landroidx/fragment/app/E;->y:Z

    iput-boolean v1, v0, Landroidx/fragment/app/E;->z:Z

    iget-object v2, v0, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iput-boolean v1, v2, Landroidx/fragment/app/G;->h:Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/E;->s(I)V

    return-void
.end method

.method public final r()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/j;->r:Z

    :cond_0
    iget-object v1, p0, Le/j;->n:LA/e;

    iget-object v2, v1, LA/e;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/r;

    iget-object v2, v2, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    invoke-static {v2}, Le/j;->k(Landroidx/fragment/app/E;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, LA/e;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/r;

    iget-object v1, v1, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/E;

    iput-boolean v0, v1, Landroidx/fragment/app/E;->z:Z

    iget-object v2, v1, Landroidx/fragment/app/E;->F:Landroidx/fragment/app/G;

    iput-boolean v0, v2, Landroidx/fragment/app/G;->h:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/E;->s(I)V

    iget-object v0, p0, Le/j;->o:Landroidx/lifecycle/s;

    sget-object v1, Landroidx/lifecycle/k;->ON_STOP:Landroidx/lifecycle/k;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/s;->d(Landroidx/lifecycle/k;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/j;->j()V

    .line 2
    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/n;->m(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Le/j;->j()V

    .line 4
    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/n;->n(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Le/j;->j()V

    .line 6
    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/n;->p(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p0}, Le/j;->i()Le/n;

    move-result-object v0

    check-cast v0, Le/x;

    iput p1, v0, Le/x;->T:I

    return-void
.end method

.class public abstract Le/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/D;

.field public static b:I

.field public static c:Lu/e;

.field public static d:Lu/e;

.field public static e:Ljava/lang/Boolean;

.field public static f:Z

.field public static final g:Lm/c;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/D;

    new-instance v1, Le/E;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Le/D;-><init>(Le/E;)V

    sput-object v0, Le/n;->a:Le/D;

    const/16 v0, -0x64

    sput v0, Le/n;->b:I

    const/4 v0, 0x0

    sput-object v0, Le/n;->c:Lu/e;

    sput-object v0, Le/n;->d:Lu/e;

    sput-object v0, Le/n;->e:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Le/n;->f:Z

    new-instance v0, Lm/c;

    invoke-direct {v0}, Lm/c;-><init>()V

    sput-object v0, Le/n;->g:Lm/c;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/n;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/n;->i:Ljava/lang/Object;

    return-void
.end method

.method public static a()V
    .locals 5

    sget-object v0, Le/n;->g:Lm/c;

    invoke-virtual {v0}, Lm/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v1, v0

    check-cast v1, Lm/g;

    invoke-virtual {v1}, Lm/g;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lm/g;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/n;

    if-eqz v1, :cond_0

    check-cast v1, Le/x;

    iget-object v2, v1, Le/x;->k:Landroid/content/Context;

    invoke-static {v2}, Le/n;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Le/n;->c:Lu/e;

    if-eqz v3, :cond_1

    sget-object v4, Le/n;->d:Lu/e;

    invoke-virtual {v3, v4}, Lu/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, LT/H3;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, LT/H3;-><init>(Landroid/content/Context;I)V

    sget-object v2, Le/n;->a:Le/D;

    invoke-virtual {v2, v3}, Le/D;->execute(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Le/x;->t(ZZ)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static c()Lu/e;
    .locals 3

    invoke-static {}, Le/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Le/n;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Le/m;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, Lu/e;

    new-instance v2, Lu/f;

    invoke-direct {v2, v0}, Lu/f;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {v1, v2}, Lu/e;-><init>(Lu/f;)V

    return-object v1

    :cond_0
    sget-object v0, Le/n;->c:Lu/e;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lu/e;->b:Lu/e;

    return-object v0
.end method

.method public static d()Ljava/lang/Object;
    .locals 3

    sget-object v0, Le/n;->g:Lm/c;

    invoke-virtual {v0}, Lm/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Lm/g;

    invoke-virtual {v1}, Lm/g;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lm/g;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/n;

    if-eqz v1, :cond_0

    check-cast v1, Le/x;

    iget-object v1, v1, Le/x;->k:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v0, "locale"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Le/n;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    sget v0, Le/C;->a:I

    invoke-static {}, Le/B;->a()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Le/C;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "autoStoreLocales"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Le/n;->e:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppCompatDelegate"

    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Le/n;->e:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object p0, Le/n;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static j(Le/x;)V
    .locals 4

    sget-object v0, Le/n;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/n;->g:Lm/c;

    invoke-virtual {v1}, Lm/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    move-object v2, v1

    check-cast v2, Lm/g;

    invoke-virtual {v2}, Lm/g;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lm/g;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/n;

    if-eq v3, p0, :cond_1

    if-nez v3, :cond_0

    :cond_1
    invoke-virtual {v2}, Lm/g;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static l(Lu/e;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Le/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Le/n;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lu/e;->a:Lu/f;

    iget-object p0, p0, Lu/f;->a:Landroid/os/LocaleList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/l;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {v0, p0}, Le/m;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    goto :goto_0

    :cond_0
    sget-object v0, Le/n;->c:Lu/e;

    invoke-virtual {p0, v0}, Lu/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Le/n;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Le/n;->c:Lu/e;

    invoke-static {}, Le/n;->a()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static q(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "AppCompatDelegate"

    const-string v0, "setDefaultNightMode() called with an unknown mode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    sget v0, Le/n;->b:I

    if-eq v0, p0, :cond_3

    sput p0, Le/n;->b:I

    sget-object p0, Le/n;->h:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Le/n;->g:Lm/c;

    invoke-virtual {v0}, Lm/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v2, v0

    check-cast v2, Lm/g;

    invoke-virtual {v2}, Lm/g;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lm/g;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/n;

    if-eqz v2, :cond_1

    check-cast v2, Le/x;

    invoke-virtual {v2, v1, v1}, Le/x;->t(ZZ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public static s(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Le/n;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Le/a;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Le/n;->f:Z

    if-nez v0, :cond_6

    sget-object v0, Le/n;->a:Le/D;

    new-instance v1, LT/H3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LT/H3;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Le/D;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    sget-object v0, Le/n;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/n;->c:Lu/e;

    if-nez v1, :cond_4

    sget-object v1, Le/n;->d:Lu/e;

    if-nez v1, :cond_2

    invoke-static {p0}, Le/a;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lu/e;->a(Ljava/lang/String;)Lu/e;

    move-result-object p0

    sput-object p0, Le/n;->d:Lu/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    sget-object p0, Le/n;->d:Lu/e;

    invoke-virtual {p0}, Lu/e;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    sget-object p0, Le/n;->d:Lu/e;

    sput-object p0, Le/n;->c:Lu/e;

    goto :goto_1

    :cond_4
    sget-object v2, Le/n;->d:Lu/e;

    invoke-virtual {v1, v2}, Lu/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Le/n;->c:Lu/e;

    sput-object v1, Le/n;->d:Lu/e;

    iget-object v1, v1, Lu/e;->a:Lu/f;

    iget-object v1, v1, Lu/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Le/a;->L(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_1
    monitor-exit v0

    :cond_6
    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract k(I)Z
.end method

.method public abstract m(I)V
.end method

.method public abstract n(Landroid/view/View;)V
.end method

.method public abstract p(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract r(Ljava/lang/CharSequence;)V
.end method

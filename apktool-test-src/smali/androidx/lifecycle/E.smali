.class public final Landroidx/lifecycle/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/c;


# instance fields
.field public final a:LN/d;

.field public b:Z

.field public c:Landroid/os/Bundle;

.field public final d:Lv0/c;


# direct methods
.method public constructor <init>(LN/d;Landroidx/activity/g;)V
    .locals 1

    const-string v0, "savedStateRegistry"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/E;->a:LN/d;

    new-instance p1, Landroidx/lifecycle/D;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroidx/lifecycle/D;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lv0/c;

    invoke-direct {p2, p1}, Lv0/c;-><init>(LH0/a;)V

    iput-object p2, p0, Landroidx/lifecycle/E;->d:Lv0/c;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/lifecycle/E;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/E;->d:Lv0/c;

    invoke-virtual {v1}, Lv0/c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/F;

    iget-object v1, v1, Landroidx/lifecycle/F;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/lifecycle/E;->b:Z

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.class public final Landroidx/lifecycle/D;
.super LI0/g;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/lifecycle/D;->a:I

    iput-object p1, p0, Landroidx/lifecycle/D;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LI0/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Landroidx/lifecycle/D;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/lifecycle/D;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/lifecycle/D;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/g;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, LI0/m;->a:LI0/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LI0/c;

    const-class v3, Landroidx/lifecycle/F;

    invoke-direct {v2, v3}, LI0/c;-><init>(Ljava/lang/Class;)V

    new-instance v4, LJ/d;

    invoke-interface {v2}, LI0/b;->a()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {v2, v5}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v2}, LJ/d;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    new-array v4, v2, [LJ/d;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, [LJ/d;

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LJ/d;

    const-string v4, "initializers"

    invoke-static {v1, v4}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/activity/g;->c()Landroidx/lifecycle/I;

    move-result-object v4

    const-string v5, "owner.viewModelStore"

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/lifecycle/h;->a()LJ/b;

    move-result-object v0

    const-string v5, "{\n        owner.defaultV\u2026ModelCreationExtras\n    }"

    invoke-static {v0, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, Landroidx/lifecycle/I;->a:Ljava/util/HashMap;

    const-string v5, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/G;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v6, LJ/c;

    invoke-direct {v6, v0}, LJ/c;-><init>(LJ/b;)V

    sget-object v0, Landroidx/lifecycle/H;->b:Landroidx/lifecycle/H;

    iget-object v7, v6, LJ/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    array-length v0, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v8, v1, v2

    iget-object v8, v8, LJ/d;->a:Ljava/lang/Class;

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v7, Landroidx/lifecycle/B;->a:Landroidx/lifecycle/B;

    invoke-virtual {v7, v6}, Landroidx/lifecycle/B;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/G;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_5

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/G;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/lifecycle/G;->a()V

    :cond_4
    move-object v6, v7

    :goto_1
    check-cast v6, Landroidx/lifecycle/F;

    return-object v6

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No initializer set for given class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

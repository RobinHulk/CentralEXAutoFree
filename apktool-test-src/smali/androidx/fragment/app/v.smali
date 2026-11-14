.class public final Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Landroidx/fragment/app/E;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/E;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 2
    const-class v4, Landroidx/fragment/app/t;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Fragment "

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, v1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/E;

    if-eqz v4, :cond_14

    .line 3
    new-instance v0, Landroidx/fragment/app/t;

    .line 4
    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-boolean v9, v0, Landroidx/fragment/app/t;->d:Z

    .line 6
    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v4

    .line 7
    sget-object v11, LH/a;->b:[I

    invoke-virtual {v2, v3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 9
    :cond_0
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 12
    invoke-virtual {v10, v3}, Landroidx/fragment/app/E;->y(I)Landroidx/fragment/app/o;

    move-result-object v12

    if-eqz v4, :cond_11

    if-nez v12, :cond_11

    .line 13
    const-string v12, " with tag "

    if-gtz v3, :cond_2

    if-eqz v11, :cond_1

    .line 14
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, ""

    .line 16
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "FragmentContainerView must have an android:id to add Fragment "

    .line 17
    invoke-static {v3, v4, v0}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_2
    invoke-virtual {v10}, Landroidx/fragment/app/E;->A()Landroidx/fragment/app/y;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/y;->a(Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v2

    .line 20
    iput-boolean v9, v2, Landroidx/fragment/app/o;->C:Z

    .line 21
    iget-object v3, v2, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    if-nez v3, :cond_3

    move-object v3, v8

    goto :goto_1

    :cond_3
    iget-object v3, v3, Landroidx/fragment/app/r;->c:Le/j;

    :goto_1
    if-eqz v3, :cond_4

    .line 22
    iput-boolean v9, v2, Landroidx/fragment/app/o;->C:Z

    .line 23
    :cond_4
    new-instance v3, Landroidx/fragment/app/a;

    invoke-direct {v3, v10}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/E;)V

    .line 24
    iput-boolean v9, v3, Landroidx/fragment/app/a;->o:Z

    .line 25
    iput-object v0, v2, Landroidx/fragment/app/o;->D:Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 28
    invoke-virtual {v13}, Ljava/lang/Class;->getModifiers()I

    move-result v14

    .line 29
    invoke-virtual {v13}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v15

    if-nez v15, :cond_10

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 30
    invoke-virtual {v13}, Ljava/lang/Class;->isMemberClass()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 31
    :cond_5
    const-string v5, " now "

    const-string v13, ": was "

    if-eqz v11, :cond_8

    .line 32
    iget-object v14, v2, Landroidx/fragment/app/o;->x:Ljava/lang/String;

    if-eqz v14, :cond_7

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_2

    .line 33
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t change tag of fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroidx/fragment/app/o;->x:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_7
    :goto_2
    iput-object v11, v2, Landroidx/fragment/app/o;->x:Ljava/lang/String;

    :cond_8
    if-eqz v4, :cond_c

    if-eq v4, v6, :cond_b

    .line 35
    iget v6, v2, Landroidx/fragment/app/o;->v:I

    if-eqz v6, :cond_a

    if-ne v6, v4, :cond_9

    goto :goto_3

    .line 36
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t change container ID of fragment "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroidx/fragment/app/o;->v:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_a
    :goto_3
    iput v4, v2, Landroidx/fragment/app/o;->v:I

    iput v4, v2, Landroidx/fragment/app/o;->w:I

    goto :goto_4

    .line 38
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t add fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to container view with no id"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_c
    :goto_4
    new-instance v4, Landroidx/fragment/app/L;

    invoke-direct {v4, v9, v2}, Landroidx/fragment/app/L;-><init>(ILandroidx/fragment/app/o;)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/L;)V

    .line 40
    iget-object v4, v3, Landroidx/fragment/app/a;->p:Landroidx/fragment/app/E;

    iput-object v4, v2, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    .line 41
    iget-boolean v2, v3, Landroidx/fragment/app/a;->g:Z

    if-nez v2, :cond_f

    .line 42
    iget-object v2, v4, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    if-eqz v2, :cond_11

    .line 43
    iget-boolean v2, v4, Landroidx/fragment/app/E;->A:Z

    if-eqz v2, :cond_d

    goto :goto_5

    .line 44
    :cond_d
    invoke-virtual {v4, v9}, Landroidx/fragment/app/E;->v(Z)V

    .line 45
    iget-object v2, v4, Landroidx/fragment/app/E;->C:Ljava/util/ArrayList;

    iget-object v5, v4, Landroidx/fragment/app/E;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v5}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 46
    iput-boolean v9, v4, Landroidx/fragment/app/E;->b:Z

    .line 47
    :try_start_0
    iget-object v2, v4, Landroidx/fragment/app/E;->C:Ljava/util/ArrayList;

    iget-object v3, v4, Landroidx/fragment/app/E;->D:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Landroidx/fragment/app/E;->L(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v4}, Landroidx/fragment/app/E;->d()V

    .line 49
    invoke-virtual {v4}, Landroidx/fragment/app/E;->V()V

    .line 50
    iget-boolean v2, v4, Landroidx/fragment/app/E;->B:Z

    if-eqz v2, :cond_e

    .line 51
    iput-boolean v7, v4, Landroidx/fragment/app/E;->B:Z

    .line 52
    invoke-virtual {v4}, Landroidx/fragment/app/E;->U()V

    .line 53
    :cond_e
    iget-object v2, v4, Landroidx/fragment/app/E;->c:LM/d;

    iget-object v2, v2, LM/d;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 54
    invoke-static {v8}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 55
    invoke-virtual {v4}, Landroidx/fragment/app/E;->d()V

    .line 56
    throw v0

    .line 57
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "This transaction is already being added to the back stack"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_11
    :goto_5
    iget-object v2, v10, Landroidx/fragment/app/E;->c:LM/d;

    invoke-virtual {v2}, LM/d;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/K;

    .line 60
    iget-object v4, v3, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    .line 61
    iget v5, v4, Landroidx/fragment/app/o;->w:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v5, v6, :cond_12

    iget-object v5, v4, Landroidx/fragment/app/o;->E:Landroid/view/View;

    if-eqz v5, :cond_12

    .line 62
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_12

    .line 63
    iput-object v0, v4, Landroidx/fragment/app/o;->D:Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {v3}, Landroidx/fragment/app/K;->b()V

    goto :goto_6

    :cond_13
    return-object v0

    .line 65
    :cond_14
    const-string v4, "fragment"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return-object v8

    .line 66
    :cond_15
    const-string v0, "class"

    invoke-interface {v3, v8, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    sget-object v4, LH/a;->a:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    if-nez v0, :cond_16

    .line 68
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_16
    invoke-virtual {v4, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    const/4 v12, 0x2

    .line 70
    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 71
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_17

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 73
    :try_start_1
    invoke-static {v4, v0}, Landroidx/fragment/app/y;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 74
    const-class v14, Landroidx/fragment/app/o;

    invoke-virtual {v14, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move v4, v7

    :goto_7
    if-nez v4, :cond_18

    :cond_17
    move-object v0, v8

    goto/16 :goto_11

    :cond_18
    if-eqz p1, :cond_19

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    :cond_19
    if-ne v7, v6, :cond_1b

    if-ne v11, v6, :cond_1b

    if-eqz v13, :cond_1a

    goto :goto_8

    .line 76
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    :goto_8
    if-eq v11, v6, :cond_1c

    .line 77
    invoke-virtual {v10, v11}, Landroidx/fragment/app/E;->y(I)Landroidx/fragment/app/o;

    move-result-object v4

    goto :goto_9

    :cond_1c
    move-object v4, v8

    :goto_9
    if-nez v4, :cond_21

    if-eqz v13, :cond_21

    .line 78
    iget-object v4, v10, Landroidx/fragment/app/E;->c:LM/d;

    .line 79
    iget-object v14, v4, LM/d;->d:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v9

    :goto_a
    if-ltz v15, :cond_1e

    .line 80
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroidx/fragment/app/o;

    if-eqz v8, :cond_1d

    .line 81
    iget-object v12, v8, Landroidx/fragment/app/o;->x:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    :goto_b
    move-object v4, v8

    goto :goto_c

    :cond_1d
    add-int/lit8 v15, v15, -0x1

    const/4 v8, 0x0

    const/4 v12, 0x2

    goto :goto_a

    .line 82
    :cond_1e
    iget-object v4, v4, LM/d;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/K;

    if-eqz v8, :cond_1f

    .line 83
    iget-object v8, v8, Landroidx/fragment/app/K;->c:Landroidx/fragment/app/o;

    iget-object v12, v8, Landroidx/fragment/app/o;->x:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    goto :goto_b

    :cond_20
    const/4 v4, 0x0

    :cond_21
    :goto_c
    if-nez v4, :cond_22

    if-eq v7, v6, :cond_22

    .line 84
    invoke-virtual {v10, v7}, Landroidx/fragment/app/E;->y(I)Landroidx/fragment/app/o;

    move-result-object v4

    .line 85
    :cond_22
    const-string v6, "FragmentManager"

    if-nez v4, :cond_26

    .line 86
    invoke-virtual {v10}, Landroidx/fragment/app/E;->A()Landroidx/fragment/app/y;

    move-result-object v3

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 88
    invoke-virtual {v3, v0}, Landroidx/fragment/app/y;->a(Ljava/lang/String;)Landroidx/fragment/app/o;

    move-result-object v4

    .line 89
    iput-boolean v9, v4, Landroidx/fragment/app/o;->m:Z

    if-eqz v11, :cond_23

    move v2, v11

    goto :goto_d

    :cond_23
    move v2, v7

    .line 90
    :goto_d
    iput v2, v4, Landroidx/fragment/app/o;->v:I

    .line 91
    iput v7, v4, Landroidx/fragment/app/o;->w:I

    .line 92
    iput-object v13, v4, Landroidx/fragment/app/o;->x:Ljava/lang/String;

    .line 93
    iput-boolean v9, v4, Landroidx/fragment/app/o;->n:Z

    .line 94
    iput-object v10, v4, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    .line 95
    iget-object v2, v10, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    .line 96
    iput-object v2, v4, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    .line 97
    iget-object v3, v2, Landroidx/fragment/app/r;->d:Le/j;

    .line 98
    iput-boolean v9, v4, Landroidx/fragment/app/o;->C:Z

    if-nez v2, :cond_24

    const/4 v8, 0x0

    goto :goto_e

    .line 99
    :cond_24
    iget-object v8, v2, Landroidx/fragment/app/r;->c:Le/j;

    :goto_e
    if-eqz v8, :cond_25

    .line 100
    iput-boolean v9, v4, Landroidx/fragment/app/o;->C:Z

    .line 101
    :cond_25
    invoke-virtual {v10, v4}, Landroidx/fragment/app/E;->a(Landroidx/fragment/app/o;)Landroidx/fragment/app/K;

    move-result-object v2

    const/4 v3, 0x2

    .line 102
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 106
    :cond_26
    iget-boolean v2, v4, Landroidx/fragment/app/o;->n:Z

    if-nez v2, :cond_2d

    .line 107
    iput-boolean v9, v4, Landroidx/fragment/app/o;->n:Z

    .line 108
    iput-object v10, v4, Landroidx/fragment/app/o;->r:Landroidx/fragment/app/E;

    .line 109
    iget-object v2, v10, Landroidx/fragment/app/E;->n:Landroidx/fragment/app/r;

    .line 110
    iput-object v2, v4, Landroidx/fragment/app/o;->s:Landroidx/fragment/app/r;

    .line 111
    iget-object v3, v2, Landroidx/fragment/app/r;->d:Le/j;

    .line 112
    iput-boolean v9, v4, Landroidx/fragment/app/o;->C:Z

    if-nez v2, :cond_27

    const/4 v8, 0x0

    goto :goto_f

    .line 113
    :cond_27
    iget-object v8, v2, Landroidx/fragment/app/r;->c:Le/j;

    :goto_f
    if-eqz v8, :cond_28

    .line 114
    iput-boolean v9, v4, Landroidx/fragment/app/o;->C:Z

    .line 115
    :cond_28
    invoke-virtual {v10, v4}, Landroidx/fragment/app/E;->f(Landroidx/fragment/app/o;)Landroidx/fragment/app/K;

    move-result-object v2

    const/4 v3, 0x2

    .line 116
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Retained Fragment "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_29
    :goto_10
    move-object/from16 v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v4, Landroidx/fragment/app/o;->D:Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {v2}, Landroidx/fragment/app/K;->k()V

    .line 122
    invoke-virtual {v2}, Landroidx/fragment/app/K;->j()V

    .line 123
    iget-object v3, v4, Landroidx/fragment/app/o;->E:Landroid/view/View;

    if-eqz v3, :cond_2c

    if-eqz v11, :cond_2a

    .line 124
    invoke-virtual {v3, v11}, Landroid/view/View;->setId(I)V

    .line 125
    :cond_2a
    iget-object v0, v4, Landroidx/fragment/app/o;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 126
    iget-object v0, v4, Landroidx/fragment/app/o;->E:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    :cond_2b
    iget-object v0, v4, Landroidx/fragment/app/o;->E:Landroid/view/View;

    new-instance v3, Landroidx/fragment/app/u;

    invoke-direct {v3, v1, v2}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/v;Landroidx/fragment/app/K;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 128
    iget-object v0, v4, Landroidx/fragment/app/o;->E:Landroid/view/View;

    return-object v0

    .line 129
    :cond_2c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, " did not create a view."

    .line 130
    invoke-static {v5, v0, v3}, LM/d0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tag "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", or parent id 0x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with another fragment for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_11
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/v;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

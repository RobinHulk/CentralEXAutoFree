.class public final Lcom/ex/auto/HomeFloatingWidgetsService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final Q:Ljava/util/List;

.field public static volatile R:Lcom/ex/auto/HomeFloatingWidgetsService;


# instance fields
.field public A:Landroid/widget/GridLayout;

.field public B:Landroid/widget/LinearLayout;

.field public C:Landroid/widget/LinearLayout;

.field public D:Landroid/widget/FrameLayout;

.field public E:LT/G1;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/TextView;

.field public H:LT/F1;

.field public I:Landroid/widget/SeekBar;

.field public J:LT/D1;

.field public K:Ly/f;

.field public L:LT/N;

.field public final M:LT/F1;

.field public final N:[I

.field public final O:[I

.field public final P:LT/F1;

.field public a:Landroid/view/WindowManager;

.field public b:Landroid/content/SharedPreferences;

.field public final c:Landroid/os/Handler;

.field public d:Landroid/car/Car;

.field public volatile e:Landroid/car/hardware/property/CarPropertyManager;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Float;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Boolean;

.field public n:Ljava/lang/Boolean;

.field public o:Ljava/lang/Boolean;

.field public p:Ljava/lang/Boolean;

.field public q:Ljava/lang/Boolean;

.field public r:Ljava/lang/Integer;

.field public s:Ljava/lang/Integer;

.field public t:Ljava/lang/Boolean;

.field public u:Landroid/view/View;

.field public v:Landroid/view/View;

.field public w:Landroid/view/View;

.field public x:Landroid/view/View;

.field public y:Landroid/view/View;

.field public z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v5, "widget_float_heating_enabled"

    const-string v6, "widget_float_apps_enabled"

    const-string v0, "widget_float_drive_regen_enabled"

    const-string v1, "widget_float_fan_enabled"

    const-string v2, "widget_float_temp_enabled"

    const-string v3, "widget_float_vent_enabled"

    const-string v4, "widget_float_vent_fan_enabled"

    const-string v7, "widget_float_volume_enabled"

    const-string v8, "widget_float_sysinfo_enabled"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    new-instance v0, LT/F1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LT/F1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->M:LT/F1;

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->N:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->O:[I

    new-instance v0, LT/F1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LT/F1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->P:LT/F1;

    return-void

    :array_0
    .array-data 4
        0x7f09010e
        0x7f09010f
        0x7f090110
        0x7f090111
        0x7f090112
        0x7f090113
        0x7f090114
    .end array-data

    :array_1
    .array-data 4
        0x7f09010e
        0x7f09010f
        0x7f090110
        0x7f090111
        0x7f090112
        0x7f090113
        0x7f090114
    .end array-data
.end method

.method public static varargs D(Landroid/view/View;[I)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final a(Lcom/ex/auto/HomeFloatingWidgetsService;)V
    .locals 3

    const-string v0, "widget_float_drive_regen_enabled"

    const-string v1, "widget_float_drive_regen_pinned"

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->c()V

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Landroid/view/View;

    :cond_1
    const-string v0, "widget_float_fan_enabled"

    const-string v2, "widget_float_fan_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->d()V

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Landroid/view/View;

    :cond_3
    const-string v0, "widget_float_temp_enabled"

    const-string v2, "widget_float_temp_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Landroid/view/View;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->h()V

    :cond_4
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Landroid/view/View;

    :cond_5
    const-string v0, "widget_float_vent_enabled"

    const-string v2, "widget_float_vent_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Landroid/view/View;

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->j()V

    :cond_6
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Landroid/view/View;

    :cond_7
    const-string v0, "widget_float_vent_fan_enabled"

    const-string v2, "widget_float_vent_fan_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Landroid/view/View;

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->i()V

    :cond_8
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Landroid/view/View;

    :cond_9
    const-string v0, "widget_float_heating_enabled"

    const-string v2, "widget_float_heating_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Landroid/view/View;

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->e()V

    :cond_a
    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Landroid/view/View;

    :cond_b
    const-string v0, "widget_float_apps_enabled"

    const-string v2, "widget_float_apps_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Landroid/widget/GridLayout;

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->b()V

    :cond_c
    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Landroid/widget/GridLayout;

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Landroid/widget/GridLayout;

    :cond_d
    const-string v0, "widget_float_volume_enabled"

    const-string v2, "widget_float_volume_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/widget/LinearLayout;

    if-nez v2, :cond_e

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->k()V

    :cond_e
    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->t()V

    :cond_f
    const-string v0, "widget_float_sysinfo_enabled"

    const-string v2, "widget_float_sysinfo_pinned"

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/widget/LinearLayout;

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->g()V

    :cond_10
    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:LT/F1;

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:LT/F1;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->p()V

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/widget/TextView;

    :cond_12
    invoke-static {p0}, LT/Y;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_13
    return-void
.end method

.method public static f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILT/u1;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    and-int/lit8 v1, p7, 0x20

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    move v3, v1

    goto :goto_0

    :cond_0
    move/from16 v3, p5

    :goto_0
    and-int/lit8 v1, p7, 0x40

    if-eqz v1, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v12, p6

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x800033

    move/from16 v2, p3

    move/from16 v4, p4

    invoke-static {v0, v14, v1, v2, v4}, LT/Y;->U(Landroid/content/Context;Ljava/lang/String;III)LT/K3;

    move-result-object v1

    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x108

    const/4 v7, -0x3

    const/4 v4, -0x2

    const/16 v5, 0x7f6

    move-object v2, v11

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v2, v1, LT/K3;->a:I

    iput v2, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, v1, LT/K3;->b:I

    iput v3, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, LT/K3;->c:I

    iput v1, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x30

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "android"

    const-string v4, "status_bar_height"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    :cond_2
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v1

    :goto_2
    iget v2, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v2, v1, :cond_3

    iput v1, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_3
    const v1, 0x7f090305

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, LI0/f;->b(Ljava/lang/Object;)V

    new-instance v4, LI0/j;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, LI0/j;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, LI0/k;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v8, LI0/k;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, LI0/i;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v2, LI0/i;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v7, LT/z1;

    move-object v1, v7

    move-object/from16 v3, p0

    move-object v15, v7

    move-object v7, v11

    move-object v14, v10

    move-object/from16 v10, p1

    move-object/from16 v16, v11

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v12}, LT/z1;-><init>(LI0/i;Lcom/ex/auto/HomeFloatingWidgetsService;LI0/j;LI0/j;LI0/k;Landroid/view/WindowManager$LayoutParams;LI0/k;LI0/i;Landroid/view/View;Ljava/lang/String;LH0/a;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_0
    iget-object v0, v0, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    const-string v0, "wm"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    const-string v1, "addOverlayView("

    const-string v2, "): "

    move-object/from16 v3, p2

    invoke-static {v1, v3, v2}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HomeFloatingWidgets"

    invoke-static {v0, v1, v2}, LM/d0;->r(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public static final l(Ly/f;Landroid/widget/ImageView;)V
    .locals 1

    invoke-virtual {p0}, Ly/f;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const v0, 0x7f0700ba

    goto :goto_0

    :cond_0
    const v0, 0x7f0700b9

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p0, :cond_1

    const p0, -0xadae

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public static final m(Lcom/ex/auto/HomeFloatingWidgetsService;FZLy/f;Landroid/widget/ImageView;Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p5, -0x1

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p5, 0x41d00000    # 26.0f

    mul-float/2addr p5, p1

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p5, 0x11

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p5, 0x0

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v0, p5, p5, p5, p5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result p2

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p2, p5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p5, 0x2

    invoke-virtual {p0, p5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    if-ge p0, p5, :cond_1

    goto :goto_1

    :cond_1
    move p5, p0

    :goto_1
    const p0, -0x66000001

    invoke-virtual {p2, p5, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p0, LT/y1;

    const/4 p1, 0x0

    invoke-direct {p0, p3, p6, p4, p1}, LT/y1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public final A(I)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, LT/H1;->e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_1
    add-int/2addr p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {p1, v2, v3}, LA/b;->o(III)I

    move-result p1

    if-eq p1, v1, :cond_3

    invoke-static {v0, p1}, LT/H1;->s(Landroid/car/hardware/property/CarPropertyManager;I)V

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->F()V

    return-void
.end method

.method public final B(I)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, LT/H1;->e(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_1
    add-int/2addr p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {p1, v2, v3}, LA/b;->o(III)I

    move-result p1

    if-eq p1, v1, :cond_3

    invoke-static {v0, p1}, LT/H1;->s(Landroid/car/hardware/property/CarPropertyManager;I)V

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->I()V

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->F()V

    return-void
.end method

.method public final C(F)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->k:Ljava/lang/Float;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, LT/H1;->k(Landroid/car/hardware/property/CarPropertyManager;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x41b00000    # 22.0f

    :goto_1
    add-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {p1, v2, v3}, LA/b;->n(FFF)F

    move-result p1

    cmpg-float v1, p1, v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, LT/H1;->a:[I

    const/4 v1, 0x1

    const v2, 0x25401036

    :try_start_0
    invoke-virtual {v0, v2, v1, p1}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {v0, v2, v1, p1}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->k:Ljava/lang/Float;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->H()V

    return-void
.end method

.method public final E()V
    .locals 6

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "drive_regen"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->K(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->h:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x22010101

    if-ne v1, v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    const v4, 0x7f0900d7

    const v5, 0x7f0902e1

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->h:Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x22010102

    if-ne v1, v4, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    const v4, 0x7f0900d6

    const v5, 0x7f0902e0

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->h:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x22010103

    if-ne v1, v4, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v2

    :goto_5
    const v4, 0x7f0900d8

    const v5, 0x7f0902e3

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/lang/Integer;

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x20020501

    if-ne v1, v4, :cond_8

    move v1, v3

    goto :goto_7

    :cond_8
    :goto_6
    move v1, v2

    :goto_7
    const v4, 0x7f0900e0

    const v5, 0x7f0902eb

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/lang/Integer;

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x20020502

    if-ne v1, v4, :cond_a

    move v1, v3

    goto :goto_9

    :cond_a
    :goto_8
    move v1, v2

    :goto_9
    const v4, 0x7f0900e1

    const v5, 0x7f0902ec

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/lang/Integer;

    if-nez v1, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0x20020503

    if-ne v1, v4, :cond_c

    move v2, v3

    :cond_c
    :goto_a
    const v1, 0x7f0900df

    const v3, 0x7f0902ea

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    return-void
.end method

.method public final F()V
    .locals 10

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "fan"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->K(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f0902d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "\u2014"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->N:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v5, v3, :cond_4

    aget v7, v2, v5

    add-int/lit8 v8, v6, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v6, v9, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v6, :cond_3

    const v6, 0x7f0700f0

    goto :goto_3

    :cond_3
    const v6, 0x7f0700ef

    :goto_3
    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final G()V
    .locals 11

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "heating"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->K(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->o:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f0900e9

    const v4, 0x7f0902f5

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0f0363

    invoke-virtual {p0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->n:Ljava/lang/Boolean;

    invoke-static {v1, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f0900db

    const v4, 0x7f0902e5

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0f0365

    invoke-virtual {p0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->p:Ljava/lang/Boolean;

    invoke-static {v1, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f0900da

    const v4, 0x7f0902e4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0f035f

    invoke-virtual {p0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->q:Ljava/lang/Boolean;

    invoke-static {v1, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0900ea

    const v3, 0x7f0902f7

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0364

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const v4, 0x7f0900e2

    const v5, 0x7f0902ed

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f0361

    invoke-virtual {p0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Integer;

    const v7, 0x7f0f035e

    const/4 v8, 0x4

    const-string v9, "\u2014"

    if-nez v6, :cond_3

    move-object v6, v9

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v10, v8, :cond_4

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-lez v1, :cond_6

    move v2, v3

    :cond_6
    const v1, 0x7f0900e3

    const v3, 0x7f0902ee

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f0362

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v8, :cond_8

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final H()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "temp"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->K(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f0902dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->k:Ljava/lang/Float;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "\u2014"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final I()V
    .locals 10

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "vent_fan"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->K(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    const v4, 0x7f0900e4

    const v5, 0x7f0902ef

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    const v4, 0x7f0900e6

    const v5, 0x7f0902f1

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v2

    :goto_5
    const v4, 0x7f0900e5

    const v5, 0x7f0902f0

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_8

    move v1, v3

    goto :goto_7

    :cond_8
    :goto_6
    move v1, v2

    :goto_7
    const v4, 0x7f0900e8

    const v5, 0x7f0902f4

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_a

    move v1, v3

    goto :goto_9

    :cond_a
    :goto_8
    move v1, v2

    :goto_9
    const v4, 0x7f0900e7

    const v5, 0x7f0902f2

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->m:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v5, 0x7f0900dd

    const v6, 0x7f0902e7

    invoke-virtual {p0, v0, v5, v6, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    const v1, 0x7f0902d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/lang/Integer;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    goto :goto_a

    :cond_b
    const-string v6, "\u2014"

    :goto_a
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->t:Ljava/lang/Boolean;

    invoke-static {v5, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f0900d9

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_c

    const v6, 0x7f0700ed

    goto :goto_b

    :cond_c
    const v6, 0x7f0700ec

    :goto_b
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v4, :cond_d

    const v4, 0x7f050038

    goto :goto_c

    :cond_d
    const v4, 0x7f050041

    :goto_c
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->O:[I

    array-length v4, v1

    move v5, v2

    move v6, v5

    :goto_d
    if-ge v5, v4, :cond_10

    aget v7, v1, v5

    add-int/lit8 v8, v6, 0x1

    iget-object v9, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->j:Ljava/lang/Integer;

    if-eqz v9, :cond_e

    invoke-static {v9}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v6, v9, :cond_e

    move v6, v3

    goto :goto_e

    :cond_e
    move v6, v2

    :goto_e
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v6, :cond_f

    const v6, 0x7f0700f0

    goto :goto_f

    :cond_f
    const v6, 0x7f0700ef

    :goto_f
    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_d

    :cond_10
    return-void
.end method

.method public final J()V
    .locals 6

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "vent"

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->K(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    const v4, 0x7f0900e4

    const v5, 0x7f0902ef

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    const v4, 0x7f0900e6

    const v5, 0x7f0902f1

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v2

    :goto_5
    const v4, 0x7f0900e5

    const v5, 0x7f0902f0

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_8

    move v1, v3

    goto :goto_7

    :cond_8
    :goto_6
    move v1, v2

    :goto_7
    const v4, 0x7f0900e8

    const v5, 0x7f0902f4

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_a

    move v2, v3

    :cond_a
    :goto_8
    const v1, 0x7f0900e7

    const v3, 0x7f0902f2

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->m:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0900dd

    const v3, 0x7f0902e7

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->n(Landroid/view/View;IIZ)V

    return-void
.end method

.method public final K(Ljava/lang/String;)I
    .locals 2

    sget-object v0, LT/H1;->a:[I

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "drive_regen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "widget_float_drive_regen_alpha_pct"

    goto :goto_1

    :sswitch_1
    const-string v1, "vent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "widget_float_vent_alpha_pct"

    goto :goto_1

    :sswitch_2
    const-string v1, "temp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "widget_float_temp_alpha_pct"

    goto :goto_1

    :sswitch_3
    const-string v1, "apps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "widget_float_apps_alpha_pct"

    goto :goto_1

    :sswitch_4
    const-string v1, "fan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "widget_float_fan_alpha_pct"

    goto :goto_1

    :sswitch_5
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "widget_float_volume_alpha_pct"

    goto :goto_1

    :sswitch_6
    const-string v1, "sysinfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const-string p1, "widget_float_sysinfo_alpha_pct"

    goto :goto_1

    :sswitch_7
    const-string v1, "vent_fan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_0
    const-string p1, "widget_float_heating_alpha_pct"

    goto :goto_1

    :cond_7
    const-string p1, "widget_float_vent_fan_alpha_pct"

    :goto_1
    const/16 v1, 0x64

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, LT/H1;->b(I)I

    move-result p1

    return p1

    :cond_8
    const-string p1, "prefs"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7d1b7b77 -> :sswitch_7
        -0x67930b05 -> :sswitch_6
        -0x305518e6 -> :sswitch_5
        0x18b13 -> :sswitch_4
        0x2dca72 -> :sswitch_3
        0x3643d4 -> :sswitch_2
        0x372cb5 -> :sswitch_1
        0x2b4e1d48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final L(Ljava/lang/String;)F
    .locals 2

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "drive_regen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "widget_float_drive_regen_size_pct"

    goto :goto_1

    :sswitch_1
    const-string v1, "vent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "widget_float_vent_size_pct"

    goto :goto_1

    :sswitch_2
    const-string v1, "temp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "widget_float_temp_size_pct"

    goto :goto_1

    :sswitch_3
    const-string v1, "apps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "widget_float_apps_size_pct"

    goto :goto_1

    :sswitch_4
    const-string v1, "fan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "widget_float_fan_size_pct"

    goto :goto_1

    :sswitch_5
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "widget_float_volume_size_pct"

    goto :goto_1

    :sswitch_6
    const-string v1, "sysinfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const-string p1, "widget_float_sysinfo_size_pct"

    goto :goto_1

    :sswitch_7
    const-string v1, "vent_fan"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_0
    const-string p1, "widget_float_heating_size_pct"

    goto :goto_1

    :cond_7
    const-string p1, "widget_float_vent_fan_size_pct"

    :goto_1
    const/16 v1, 0x64

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x32

    const/16 v1, 0xc8

    invoke-static {p1, v0, v1}, LA/b;->o(III)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const v0, 0x3fcccccd    # 1.6f

    mul-float/2addr p1, v0

    return p1

    :cond_8
    const-string p1, "prefs"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7d1b7b77 -> :sswitch_7
        -0x67930b05 -> :sswitch_6
        -0x305518e6 -> :sswitch_5
        0x18b13 -> :sswitch_4
        0x2dca72 -> :sswitch_3
        0x3643d4 -> :sswitch_2
        0x372cb5 -> :sswitch_1
        0x2b4e1d48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final M(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, LT/H1;->o(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b()V
    .locals 20

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const-string v1, "prefs"

    if-eqz v0, :cond_c

    const-string v3, "widget_apps_list"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v3, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_b

    const-string v4, "widget_apps_rows"

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x6

    invoke-static {v3, v4, v6}, LA/b;->o(III)I

    move-result v3

    iget-object v7, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v7, :cond_a

    const-string v9, "widget_apps_cols"

    const/4 v10, 0x3

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7, v4, v6}, LA/b;->o(III)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-virtual {v8, v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v10

    const/16 v11, 0x4a

    invoke-virtual {v8, v11}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v11

    iget-object v12, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v12, :cond_9

    const-string v13, "widget_float_apps_alpha_pct"

    const/16 v14, 0x64

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v14}, LA/b;->o(III)I

    move-result v12

    iget-object v15, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v15, :cond_8

    const-string v1, "widget_float_apps_size_pct"

    invoke-interface {v15, v1, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v15, 0x32

    const/16 v5, 0xc8

    invoke-static {v1, v15, v5}, LA/b;->o(III)I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v1, v5

    new-instance v15, Landroid/widget/GridLayout;

    invoke-direct {v15, v8}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090305

    invoke-virtual {v15, v5}, Landroid/view/View;->setId(I)V

    invoke-virtual {v15, v3}, Landroid/widget/GridLayout;->setRowCount(I)V

    invoke-virtual {v15, v7}, Landroid/widget/GridLayout;->setColumnCount(I)V

    const/16 v5, 0x8

    invoke-virtual {v8, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    invoke-virtual {v15, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v2, 0x12

    invoke-virtual {v8, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v2, 0x7f0500e3

    invoke-virtual {v8, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    mul-int/lit16 v12, v12, 0xe6

    div-int/2addr v12, v14

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v12, v14, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v15, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v13

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    mul-int v6, v3, v7

    if-ge v2, v6, :cond_5

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_4

    :catch_0
    move-object/from16 v17, v0

    move/from16 v19, v1

    move/from16 v18, v3

    move v0, v4

    move-object/from16 v16, v9

    const/4 v3, 0x6

    const/4 v4, 0x2

    goto/16 :goto_5

    :cond_4
    :try_start_0
    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v12}, LI0/f;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v9, v5, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-object v14, v5

    :goto_4
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x4

    move-object/from16 v17, v0

    invoke-virtual {v8, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v0

    move/from16 v18, v3

    move-object/from16 v16, v9

    const/4 v3, 0x6

    invoke-virtual {v8, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    invoke-virtual {v8, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    move/from16 v19, v1

    invoke-virtual {v8, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v1

    invoke-virtual {v13, v0, v9, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const v1, 0x33ffffff

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, LT/v1;

    const/4 v4, 0x0

    invoke-direct {v1, v6, v8, v5, v4}, LT/v1;-><init>(Ljava/lang/Object;Landroid/app/Service;Ljava/lang/Object;I)V

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    div-int v4, v2, v7

    invoke-static {v4}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    rem-int v5, v2, v7

    invoke-static {v5}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    iput v11, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    const/4 v4, 0x2

    invoke-virtual {v8, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    invoke-virtual {v8, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    invoke-virtual {v8, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    invoke-virtual {v8, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v12

    invoke-virtual {v1, v5, v6, v9, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    :goto_5
    move v4, v0

    move-object/from16 v9, v16

    move-object/from16 v0, v17

    move/from16 v3, v18

    move/from16 v1, v19

    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_5
    move/from16 v19, v1

    if-nez v2, :cond_6

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f033e

    invoke-virtual {v8, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v2

    invoke-virtual {v8, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v3

    invoke-virtual {v8, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    invoke-virtual {v8, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v19, v0

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    move/from16 v1, v19

    invoke-virtual {v8, v15, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->u(Landroid/view/View;F)V

    :goto_6
    const/16 v0, 0x28

    invoke-virtual {v8, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v3

    const/16 v0, 0x78

    invoke-virtual {v8, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "widget_float_apps"

    const/16 v7, 0x60

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-static/range {v0 .. v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILT/u1;I)V

    iput-object v15, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->A:Landroid/widget/GridLayout;

    return-void

    :cond_8
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_9
    const/4 v0, 0x0

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const v1, 0x7f0900d8

    const v2, 0x7f0900e0

    const v3, 0x7f0900d7

    const v4, 0x7f0900d6

    const v5, 0x7f0900e1

    const v6, 0x7f0900df

    const/4 v7, 0x6

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-static {v0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Landroid/view/View;[I)V

    const-string v7, "drive_regen"

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->L(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {p0, v0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->u(Landroid/view/View;F)V

    const v7, 0x7f0902e2

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f035b

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0902e9

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f0367

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0902eb

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f0369

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0902ec

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f036a

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0902ea

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f0368

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v7, LT/t1;

    const/16 v8, 0xc

    invoke-direct {v7, p0, v8}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, LT/t1;

    const/16 v7, 0xd

    invoke-direct {v4, p0, v7}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, LT/t1;

    const/16 v4, 0xe

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT/t1;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT/t1;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT/t1;

    const/16 v3, 0x11

    invoke-direct {v2, p0, v3}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "widget_float_drive_regen"

    const/16 v10, 0x60

    move-object v3, p0

    move-object v4, v0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILT/u1;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->E()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0900d7
        0x7f0900d6
        0x7f0900d8
        0x7f0900e0
        0x7f0900e1
        0x7f0900df
    .end array-data
.end method

.method public final d()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const v1, 0x7f09012b

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Landroid/view/View;[I)V

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "fan"

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->L(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->u(Landroid/view/View;F)V

    const v1, 0x7f0902d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f035d

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT/t1;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT/t1;

    const/16 v3, 0xb

    invoke-direct {v2, p0, v3}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v1, 0x118

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "widget_float_fan"

    const/16 v10, 0x60

    move-object v3, p0

    move-object v4, v0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILT/u1;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->F()V

    return-void
.end method

.method public final e()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v1, "heating"

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->L(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->u(Landroid/view/View;F)V

    const v2, 0x7f0902e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f0360

    invoke-virtual {p0, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0900e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/16 v4, 0x12

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900db

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/16 v4, 0x13

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/16 v4, 0x14

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/16 v4, 0x15

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/16 v4, 0x16

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/16 v4, 0x17

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0xe6

    int-to-float v2, v2

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->L(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v1, 0x2f8

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const-string v5, "widget_float_heating"

    const/4 v9, 0x0

    const/16 v10, 0x40

    move-object v3, p0

    move-object v4, v0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILT/u1;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->G()V

    return-void
.end method

.method public final g()V
    .locals 13

    const/4 v0, 0x0

    sput-object v0, LT/q4;->a:Lv0/a;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const-string v2, "prefs"

    if-eqz v1, :cond_2

    const-string v3, "widget_float_sysinfo_alpha_pct"

    const/16 v4, 0x64

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v4}, LA/b;->o(III)I

    move-result v1

    iget-object v5, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_1

    const-string v0, "widget_float_sysinfo_size_pct"

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x32

    const/16 v5, 0xc8

    invoke-static {v0, v2, v5}, LA/b;->o(III)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090305

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    invoke-virtual {p0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    invoke-virtual {v2, v6, v8, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v7, 0x12

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    mul-int/lit16 v1, v1, 0xe6

    div-int/2addr v1, v4

    const/16 v4, 0x1c

    const/16 v7, 0x14

    const/16 v8, 0x18

    invoke-static {v1, v7, v8, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float/2addr v6, v0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const-string v7, "\ud83c\udf21 --\u00b0C"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const-string v3, "CPU --%"

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->F:Landroid/widget/TextView;

    iput-object v7, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->G:Landroid/widget/TextView;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v9

    new-instance v11, LT/u1;

    const/4 v0, 0x0

    invoke-direct {v11, p0, v0}, LT/u1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    const-string v7, "widget_float_sysinfo"

    const/4 v10, 0x0

    const/16 v12, 0x20

    move-object v5, p0

    move-object v6, v2

    invoke-static/range {v5 .. v12}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILT/u1;I)V

    iput-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:LT/F1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, LT/F1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LT/F1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->H:LT/F1;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const v1, 0x7f090285

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Landroid/view/View;[I)V

    const v1, 0x7f090284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "temp"

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->L(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->u(Landroid/view/View;F)V

    const v1, 0x7f0902db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f036b

    invoke-virtual {p0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT/t1;

    const/16 v3, 0x1a

    invoke-direct {v2, p0, v3}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT/t1;

    const/16 v3, 0x1b

    invoke-direct {v2, p0, v3}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v1, 0x1b8

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "widget_float_temp"

    const/16 v10, 0x60

    move-object v3, p0

    move-object v4, v0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILT/u1;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->H()V

    return-void
.end method

.method public final i()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const-string v1, "vent_fan"

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->L(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/HomeFloatingWidgetsService;->u(Landroid/view/View;F)V

    const v2, 0x7f0900e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900e6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900e7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900dd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900b9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/4 v4, 0x7

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900ba

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900d9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, LT/t1;

    const/16 v4, 0x9

    invoke-direct {v3, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x104

    int-to-float v2, v2

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->L(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v8

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v1, 0x370

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const-string v5, "widget_float_vent_fan"

    const/4 v9, 0x0

    const/16 v10, 0x40

    move-object v3, p0

    move-object v4, v0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILT/u1;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->I()V

    return-void
.end method

.method public final j()V
    .locals 11

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    const v1, 0x7f0900e5

    const v2, 0x7f0900e8

    const v3, 0x7f0900e4

    const v4, 0x7f0900e6

    const v5, 0x7f0900e7

    const v6, 0x7f0900dd

    const/4 v7, 0x6

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-static {v0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->D(Landroid/view/View;[I)V

    const-string v7, "vent"

    invoke-virtual {p0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->L(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {p0, v0, v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->u(Landroid/view/View;F)V

    const v7, 0x7f0902f3

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f0370

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0902ef

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f036c

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0902f1

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f036e

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0902f0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f036d

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0902f4

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f0372

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0902f2

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f036f

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0902e7

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0f0366

    invoke-virtual {p0, v8}, Lcom/ex/auto/HomeFloatingWidgetsService;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v7, LT/t1;

    const/16 v8, 0x1c

    invoke-direct {v7, p0, v8}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, LT/t1;

    const/16 v7, 0x1d

    invoke-direct {v4, p0, v7}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, LT/A1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, LT/A1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT/A1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LT/A1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT/A1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, LT/A1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT/t1;

    invoke-direct {v2, p0, v4}, LT/t1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v6

    const/16 v1, 0x258

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "widget_float_vent"

    const/16 v10, 0x60

    move-object v3, p0

    move-object v4, v0

    invoke-static/range {v3 .. v10}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILT/u1;I)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    return-void

    :array_0
    .array-data 4
        0x7f0900e4
        0x7f0900e6
        0x7f0900e5
        0x7f0900e8
        0x7f0900e7
        0x7f0900dd
    .end array-data
.end method

.method public final k()V
    .locals 16

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Ly/f;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ly/f;

    invoke-direct {v0, v8}, Ly/f;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;)V

    iput-object v0, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Ly/f;

    new-instance v1, LT/u1;

    const/4 v2, 0x1

    invoke-direct {v1, v8, v2}, LT/u1;-><init>(Lcom/ex/auto/HomeFloatingWidgetsService;I)V

    :try_start_0
    new-instance v2, LT/P;

    invoke-direct {v2, v0, v1}, LT/P;-><init>(Ly/f;LT/u1;)V

    const-wide/16 v3, 0x0

    invoke-static {v8, v7, v3, v4, v2}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v2

    iput-object v2, v0, Ly/f;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {v1}, LT/u1;->a()Ljava/lang/Object;

    :cond_0
    :goto_0
    move-object v9, v0

    invoke-virtual {v9}, Ly/f;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v9}, Ly/f;->f()I

    move-result v1

    iget-object v2, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const-string v3, "prefs"

    if-eqz v2, :cond_9

    const-string v4, "widget_volume_vertical"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iget-object v2, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_8

    const-string v4, "widget_float_volume_alpha_pct"

    const/16 v6, 0x64

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2, v5, v6}, LA/b;->o(III)I

    move-result v2

    iget-object v4, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_7

    const-string v11, "widget_float_volume_size_pct"

    invoke-interface {v4, v11, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v11, 0x32

    const/16 v12, 0xc8

    invoke-static {v4, v11, v12}, LA/b;->o(III)I

    move-result v4

    int-to-float v4, v4

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v11, v4, v11

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090305

    invoke-virtual {v12, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x11

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v13, 0xe

    invoke-virtual {v8, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v14

    const/16 v15, 0xc

    invoke-virtual {v8, v15}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    invoke-virtual {v8, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v13

    invoke-virtual {v8, v15}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v15

    invoke-virtual {v12, v14, v4, v13, v15}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v13, 0x12

    invoke-virtual {v8, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v4, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    mul-int/lit16 v2, v2, 0xe6

    div-int/2addr v2, v6

    const/16 v6, 0x14

    const/16 v13, 0x18

    const/16 v14, 0x1c

    invoke-static {v2, v6, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v12, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v14}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    float-to-int v2, v2

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v9, v13}, Lcom/ex/auto/HomeFloatingWidgetsService;->l(Ly/f;Landroid/widget/ImageView;)V

    new-instance v2, LT/v1;

    const/4 v4, 0x1

    invoke-direct {v2, v9, v8, v13, v4}, LT/v1;-><init>(Ljava/lang/Object;Landroid/app/Service;Ljava/lang/Object;I)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, LT/D1;

    invoke-direct {v2, v9, v13}, LT/D1;-><init>(Ly/f;Landroid/widget/ImageView;)V

    iput-object v2, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->J:LT/D1;

    iget-object v2, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_6

    const-string v3, "widget_volume_signs"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v10, :cond_2

    const-string v5, "+"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v10

    move-object v3, v9

    move-object v4, v13

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->m(Lcom/ex/auto/HomeFloatingWidgetsService;FZLy/f;Landroid/widget/ImageView;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "\u2212"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->m(Lcom/ex/auto/HomeFloatingWidgetsService;FZLy/f;Landroid/widget/ImageView;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const-string v5, "\u2212"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move v1, v11

    move v2, v10

    move-object v3, v9

    move-object v4, v13

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->m(Lcom/ex/auto/HomeFloatingWidgetsService;FZLy/f;Landroid/widget/ImageView;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v5, "+"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/HomeFloatingWidgetsService;->m(Lcom/ex/auto/HomeFloatingWidgetsService;FZLy/f;Landroid/widget/ImageView;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    iput-object v7, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/SeekBar;

    goto/16 :goto_2

    :cond_3
    new-instance v2, LT/E1;

    invoke-direct {v2, v9, v13}, LT/E1;-><init>(Ly/f;Landroid/widget/ImageView;)V

    const/16 v3, 0xd2

    invoke-virtual {v8, v3}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    const/16 v4, 0x30

    invoke-virtual {v8, v4}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    float-to-int v4, v4

    const/16 v5, 0xa

    if-nez v10, :cond_4

    new-instance v4, Landroid/widget/SeekBar;

    invoke-direct {v4, v8}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v4, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/SeekBar;

    goto :goto_2

    :cond_4
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v5

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/SeekBar;

    invoke-direct {v5, v8}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {v5, v0}, Landroid/view/View;->setRotation(F)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v5, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/SeekBar;

    :goto_2
    iget-object v0, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->L:LT/N;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, LT/N;

    const/4 v1, 0x1

    invoke-direct {v0, v8, v1}, LT/N;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->L:LT/N;

    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_3
    const/16 v0, 0x28

    invoke-virtual {v8, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v3

    const/16 v0, 0x12c

    invoke-virtual {v8, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->q(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "widget_float_volume"

    const/16 v7, 0x60

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-static/range {v0 .. v7}, Lcom/ex/auto/HomeFloatingWidgetsService;->f(Lcom/ex/auto/HomeFloatingWidgetsService;Landroid/view/View;Ljava/lang/String;IIILT/u1;I)V

    iput-object v12, v8, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/widget/LinearLayout;

    return-void

    :cond_6
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_7
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_8
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_9
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v7
.end method

.method public final n(Landroid/view/View;IIZ)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p4, :cond_0

    const v0, 0x7f0700ed

    goto :goto_0

    :cond_0
    const v0, 0x7f0700ee

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p4, :cond_1

    const p2, 0x7f050038

    goto :goto_1

    :cond_1
    const p2, 0x7f050041

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final o(Z)V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    :goto_1
    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3

    :cond_3
    invoke-static {v0, v3}, LT/H1;->j(Landroid/car/hardware/property/CarPropertyManager;I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, -0x1

    :goto_3
    add-int/2addr v4, v2

    if-le v4, v1, :cond_5

    const/4 v4, 0x0

    :cond_5
    sget-object v1, LT/H1;->a:[I

    const v1, 0x1540050b

    :try_start_0
    invoke-virtual {v0, v1, v3, v4}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz p1, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->r:Ljava/lang/Integer;

    goto :goto_4

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->s:Ljava/lang/Integer;

    :goto_4
    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->G()V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 9

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/ex/auto/HomeFloatingWidgetsService;->R:Lcom/ex/auto/HomeFloatingWidgetsService;

    const-string v0, "tela_preta_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    const v0, 0x7f0f037f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(...)"

    invoke-static {v3, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0f037e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "home_floating_widgets"

    const v5, 0x1080039

    const/16 v8, 0x30

    move-object v1, p0

    invoke-static/range {v1 .. v8}, LT/Y;->I(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x76

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :try_start_0
    new-instance v0, LT/s1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LT/s1;-><init>(Landroid/content/ContextWrapper;I)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Landroid/car/Car;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->P:LT/F1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->M:LT/F1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "HomeFloatingWidgets"

    const-string v1, "HomeFloatingWidgetsService iniciado"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/ex/auto/HomeFloatingWidgetsService;->R:Lcom/ex/auto/HomeFloatingWidgetsService;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->L:LT/N;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->L:LT/N;

    :try_start_1
    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->d:Landroid/car/Car;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->p()V

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->u:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->w:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->x:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->y:Landroid/view/View;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->z:Landroid/view/View;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:LT/G1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->E:LT/G1;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v1, "wm"

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->D:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final q(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Ly/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ly/f;->d()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ly/f;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->J:LT/D1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LT/D1;->a()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final s(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string p1, "wm"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/ex/auto/HomeFloatingWidgetsService;->s(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->B:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->I:Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->J:LT/D1;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->L:LT/N;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->L:LT/N;

    iget-object v1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Ly/f;

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v2, v1, Ly/f;->e:Ljava/lang/Object;

    check-cast v2, Landroid/car/Car;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    iput-object v0, v1, Ly/f;->e:Ljava/lang/Object;

    iput-object v0, v1, Ly/f;->f:Ljava/lang/Object;

    const/4 v2, -0x1

    iput v2, v1, Ly/f;->c:I

    :cond_2
    iput-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->K:Ly/f;

    return-void
.end method

.method public final u(Landroid/view/View;F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v2, v3

    mul-float/2addr v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x1

    if-lez v2, :cond_2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_3

    int-to-float v2, v4

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    :goto_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Lcom/ex/auto/HomeFloatingWidgetsService;->u(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final v(I)V
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v0, p1}, LT/H1;->r(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->h:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->E()V

    return-void
.end method

.method public final w(I)V
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v0, p1}, LT/H1;->u(Landroid/app/Service;Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->i:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->E()V

    return-void
.end method

.method public final x(I)V
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, LT/H1;->v(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    return-void
.end method

.method public final y(I)V
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->e:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, LT/H1;->v(Landroid/car/hardware/property/CarPropertyManager;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->l:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->I()V

    invoke-virtual {p0}, Lcom/ex/auto/HomeFloatingWidgetsService;->J()V

    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "prefs"

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->g:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->b:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/ex/auto/HomeFloatingWidgetsService;->f:Z

    if-eqz p1, :cond_2

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return v3

    :cond_3
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

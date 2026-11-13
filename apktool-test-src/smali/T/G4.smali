.class public final LT/G4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:[I


# instance fields
.field public final a:Landroid/car/hardware/property/CarPropertyManager;

.field public final b:LT/F4;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;

.field public e:Z

.field public f:J

.field public g:Ljava/lang/String;

.field public final h:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, 0x1000000

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, LT/G4;->i:[I

    return-void
.end method

.method public constructor <init>(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LT/F4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "unknown"

    iput-object v1, v0, LT/F4;->s:Ljava/lang/String;

    iput-object v0, p0, LT/G4;->b:LT/F4;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LT/G4;->h:Ljava/util/ArrayDeque;

    iput-object p1, p0, LT/G4;->a:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method


# virtual methods
.method public final a()LT/F4;
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, LT/G4;->b:LT/F4;

    iget-object v3, v0, LT/G4;->a:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    const v4, 0x11600208

    invoke-virtual {v0, v4}, LT/G4;->c(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41900000    # 18.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, LT/F4;->a:Ljava/lang/Float;

    goto :goto_0

    :cond_1
    const v4, 0x11600207

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, LT/F4;->a:Ljava/lang/Float;

    :cond_2
    :goto_0
    const v4, 0x11400401

    invoke-virtual {v0, v4}, LT/G4;->c(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v4, :cond_8

    iput-object v4, v2, LT/F4;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_6

    if-eq v4, v6, :cond_5

    if-eq v4, v7, :cond_4

    const/16 v8, 0x8

    const-string v9, "D"

    if-eq v4, v8, :cond_7

    const/16 v8, 0x10

    if-lt v4, v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v9, v4

    goto :goto_2

    :cond_3
    const-string v4, "?"

    goto :goto_1

    :cond_4
    const-string v9, "P"

    goto :goto_2

    :cond_5
    const-string v9, "R"

    goto :goto_2

    :cond_6
    const-string v9, "N"

    :cond_7
    :goto_2
    iput-object v9, v2, LT/F4;->c:Ljava/lang/String;

    :cond_8
    const v4, 0x11600204

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_9

    iput-object v4, v2, LT/F4;->f:Ljava/lang/Float;

    :cond_9
    const v4, 0x11400308

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_a

    iput-object v4, v2, LT/F4;->e:Ljava/lang/Float;

    :cond_a
    const v4, 0x2140a6ed

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v4

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x42c80000    # 100.0f

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v10, v4, v9

    if-lez v10, :cond_b

    div-float/2addr v4, v8

    :cond_b
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, LT/F4;->d:Ljava/lang/Float;

    :cond_c
    const v4, 0x2140a6f8

    invoke-virtual {v0, v4}, LT/G4;->c(I)Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_d

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    :cond_d
    sget-object v4, LT/G4;->i:[I

    const/4 v10, 0x0

    move v11, v10

    :goto_3
    const/4 v12, 0x0

    if-ge v11, v5, :cond_12

    aget v13, v4, v11

    const v14, 0x2140a625

    :try_start_0
    invoke-virtual {v3, v14, v13}, Landroid/car/hardware/property/CarPropertyManager;->getBooleanProperty(II)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    :try_start_1
    invoke-virtual {v3, v14, v13}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    goto :goto_4

    :cond_e
    move-object v13, v12

    :goto_4
    instance-of v14, v13, Ljava/lang/Boolean;

    if-eqz v14, :cond_f

    check-cast v13, Ljava/lang/Boolean;

    move-object v4, v13

    goto :goto_6

    :cond_f
    instance-of v14, v13, Ljava/lang/Integer;

    if-eqz v14, :cond_11

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_10

    move v13, v1

    goto :goto_5

    :cond_10
    move v13, v10

    :goto_5
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    :cond_11
    add-int/2addr v11, v1

    goto :goto_3

    :cond_12
    move-object v4, v12

    :goto_6
    if-eqz v4, :cond_13

    iput-object v4, v2, LT/F4;->j:Ljava/lang/Boolean;

    :cond_13
    const v4, 0x2160a6e9

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_14

    iput-object v4, v2, LT/F4;->h:Ljava/lang/Float;

    :cond_14
    const v4, 0x2160a6eb

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_15

    iput-object v4, v2, LT/F4;->i:Ljava/lang/Float;

    :cond_15
    const v4, 0x2160a6ec

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    const v4, 0x21408006

    invoke-virtual {v0, v4}, LT/G4;->c(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v11, 0x447a0000    # 1000.0f

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_17

    :cond_16
    move-object v4, v12

    goto :goto_7

    :cond_17
    cmpl-float v13, v4, v5

    if-ltz v13, :cond_18

    const/high16 v13, 0x41a00000    # 20.0f

    cmpg-float v13, v4, v13

    if-gtz v13, :cond_18

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_7

    :cond_18
    const v13, 0x459c4000    # 5000.0f

    cmpl-float v13, v4, v13

    if-ltz v13, :cond_19

    const v13, 0x469c4000    # 20000.0f

    cmpg-float v13, v4, v13

    if-gtz v13, :cond_19

    div-float/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_7

    :cond_19
    const/high16 v13, 0x42480000    # 50.0f

    cmpl-float v13, v4, v13

    if-ltz v13, :cond_16

    const/high16 v13, 0x43480000    # 200.0f

    cmpg-float v13, v4, v13

    if-gtz v13, :cond_16

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :goto_7
    if-eqz v4, :cond_1a

    iput-object v4, v2, LT/F4;->n:Ljava/lang/Float;

    :cond_1a
    const v4, 0x2140a417

    invoke-virtual {v0, v4}, LT/G4;->c(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1b

    iput-object v4, v2, LT/F4;->k:Ljava/lang/Integer;

    :cond_1b
    const v4, 0x25401036

    :try_start_2
    invoke-virtual {v3, v4, v1}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    :try_start_3
    invoke-virtual {v3, v4, v1}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_8

    :cond_1c
    move-object v4, v12

    :goto_8
    instance-of v13, v4, Ljava/lang/Float;

    if-eqz v13, :cond_1d

    check-cast v4, Ljava/lang/Float;

    goto :goto_9

    :cond_1d
    instance-of v13, v4, Ljava/lang/Integer;

    if-eqz v13, :cond_1e

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_9

    :cond_1e
    instance-of v13, v4, Ljava/lang/Long;

    if-eqz v13, :cond_1f

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    :cond_1f
    move-object v4, v12

    :goto_9
    const/4 v13, 0x0

    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v13

    if-nez v14, :cond_25

    :cond_20
    const v4, 0x2140a6dc

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v4

    const v14, 0x15200503

    invoke-virtual {v0, v14}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v14

    filled-new-array {v4, v14}, [Ljava/lang/Float;

    move-result-object v4

    move v14, v10

    :goto_a
    if-ge v14, v6, :cond_22

    aget-object v15, v4, v14

    if-eqz v15, :cond_21

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v16, v16, v13

    if-eqz v16, :cond_21

    :goto_b
    move-object v4, v15

    goto :goto_d

    :cond_21
    add-int/2addr v14, v1

    goto :goto_a

    :cond_22
    move v14, v10

    :goto_c
    if-ge v14, v6, :cond_24

    aget-object v15, v4, v14

    if-eqz v15, :cond_23

    goto :goto_b

    :cond_23
    add-int/2addr v14, v1

    goto :goto_c

    :cond_24
    move-object v4, v12

    :cond_25
    :goto_d
    if-eqz v4, :cond_26

    iput-object v4, v2, LT/F4;->l:Ljava/lang/Float;

    :cond_26
    const v4, 0x2140a377

    :try_start_4
    invoke-virtual {v3, v4, v10}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_f

    :catch_4
    :try_start_5
    invoke-virtual {v3, v4, v10}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_e

    :cond_27
    move-object v4, v12

    :goto_e
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_28

    check-cast v4, Ljava/lang/Integer;

    goto :goto_f

    :cond_28
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_29

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_f

    :catch_5
    :cond_29
    move-object v4, v12

    :goto_f
    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x50

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    const/high16 v6, -0x3db80000    # -50.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2a

    const/high16 v6, 0x428c0000    # 70.0f

    cmpg-float v6, v4, v6

    if-gez v6, :cond_2a

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, LT/F4;->m:Ljava/lang/Float;

    :cond_2a
    iget-object v4, v2, LT/F4;->m:Ljava/lang/Float;

    if-nez v4, :cond_2c

    const v4, 0x2740a679

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v13

    if-eqz v6, :cond_2b

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, LT/F4;->m:Ljava/lang/Float;

    goto :goto_10

    :cond_2b
    const v4, 0x11400703

    invoke-virtual {v0, v4}, LT/G4;->b(I)Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_2c

    iput-object v4, v2, LT/F4;->m:Ljava/lang/Float;

    :cond_2c
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v4, v2, LT/F4;->d:Ljava/lang/Float;

    if-eqz v4, :cond_2f

    iget-object v4, v0, LT/G4;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LT/E4;

    if-eqz v6, :cond_2d

    iget-object v8, v2, LT/F4;->d:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v6, v6, LT/E4;->b:F

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v16, 0x3d4ccccd    # 0.05f

    cmpl-float v6, v6, v16

    if-ltz v6, :cond_2d

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    :cond_2d
    new-instance v6, LT/E4;

    iget-object v8, v2, LT/F4;->d:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct {v6, v14, v15, v8}, LT/E4;-><init>(JF)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_11
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LT/E4;

    iget-wide v7, v6, LT/E4;->a:J

    sub-long v6, v14, v7

    const-wide/16 v17, 0x7530

    cmp-long v6, v6, v17

    if-lez v6, :cond_2e

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    const/4 v7, 0x4

    goto :goto_11

    :cond_2e
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LT/E4;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LT/E4;

    if-eqz v6, :cond_2f

    if-eqz v4, :cond_2f

    iget-wide v7, v4, LT/E4;->a:J

    move-wide/from16 v18, v14

    iget-wide v13, v6, LT/E4;->a:J

    sub-long/2addr v7, v13

    const-wide/16 v13, 0x1388

    cmp-long v13, v7, v13

    if-ltz v13, :cond_30

    iget v6, v6, LT/E4;->b:F

    iget v4, v4, LT/E4;->b:F

    sub-float/2addr v6, v4

    long-to-float v4, v7

    div-float/2addr v4, v11

    div-float/2addr v6, v9

    const v7, 0x47185800    # 39000.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x45610000    # 3600.0f

    mul-float/2addr v6, v7

    div-float/2addr v6, v4

    div-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, LT/F4;->g:Ljava/lang/Float;

    iget-object v4, v2, LT/F4;->a:Ljava/lang/Float;

    if-eqz v4, :cond_30

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_30

    iget-object v4, v2, LT/F4;->g:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, LT/F4;->a:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_12

    :cond_2f
    move-wide/from16 v18, v14

    :cond_30
    :goto_12
    iput-object v12, v2, LT/F4;->o:Ljava/lang/Boolean;

    iput-object v12, v2, LT/F4;->p:Ljava/lang/Boolean;

    iput-object v12, v2, LT/F4;->q:Ljava/lang/Float;

    iget-object v4, v2, LT/F4;->b:Ljava/lang/Integer;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_33

    iget-object v4, v2, LT/F4;->g:Ljava/lang/Float;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_32

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v2, LT/F4;->o:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v2, LT/F4;->q:Ljava/lang/Float;

    const/high16 v5, 0x41700000    # 15.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_31

    move v4, v1

    goto :goto_13

    :cond_31
    move v4, v10

    :goto_13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, LT/F4;->p:Ljava/lang/Boolean;

    goto :goto_14

    :cond_32
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v2, LT/F4;->o:Ljava/lang/Boolean;

    :cond_33
    :goto_14
    iget-boolean v4, v0, LT/G4;->e:Z

    iget-object v5, v2, LT/F4;->d:Ljava/lang/Float;

    if-eqz v5, :cond_35

    iget-object v6, v0, LT/G4;->c:Ljava/lang/Float;

    if-eqz v6, :cond_34

    invoke-virtual {v5, v6}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    move v5, v1

    goto :goto_15

    :cond_34
    move v5, v10

    :goto_15
    iget-object v6, v2, LT/F4;->d:Ljava/lang/Float;

    iput-object v6, v0, LT/G4;->c:Ljava/lang/Float;

    goto :goto_16

    :cond_35
    move v5, v10

    :goto_16
    iget-object v6, v2, LT/F4;->f:Ljava/lang/Float;

    if-eqz v6, :cond_37

    iget-object v7, v0, LT/G4;->d:Ljava/lang/Float;

    if-eqz v7, :cond_36

    invoke-virtual {v6, v7}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    move v5, v1

    :cond_36
    iget-object v6, v2, LT/F4;->f:Ljava/lang/Float;

    iput-object v6, v0, LT/G4;->d:Ljava/lang/Float;

    :cond_37
    iget-object v6, v2, LT/F4;->a:Ljava/lang/Float;

    if-eqz v6, :cond_38

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_39

    :cond_38
    iget-object v6, v2, LT/F4;->b:Ljava/lang/Integer;

    if-eqz v6, :cond_3a

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3a

    :cond_39
    move v6, v1

    goto :goto_17

    :cond_3a
    move v6, v10

    :goto_17
    if-nez v5, :cond_3b

    if-eqz v6, :cond_3c

    :cond_3b
    move-wide/from16 v4, v18

    goto :goto_18

    :cond_3c
    if-nez v4, :cond_3d

    iput-boolean v1, v0, LT/G4;->e:Z

    move-wide/from16 v4, v18

    iput-wide v4, v0, LT/G4;->f:J

    goto :goto_19

    :cond_3d
    move-wide/from16 v4, v18

    iget-wide v6, v0, LT/G4;->f:J

    sub-long v14, v4, v6

    const-wide/32 v4, 0x2bf20

    cmp-long v1, v14, v4

    if-ltz v1, :cond_3e

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v2, LT/F4;->r:Ljava/lang/Boolean;

    goto :goto_19

    :goto_18
    iput-boolean v1, v0, LT/G4;->e:Z

    iput-wide v4, v0, LT/G4;->f:J

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v2, LT/F4;->r:Ljava/lang/Boolean;

    :cond_3e
    :goto_19
    const-class v1, Ljava/lang/String;

    iget-object v4, v0, LT/G4;->g:Ljava/lang/String;

    if-eqz v4, :cond_3f

    goto/16 :goto_1e

    :cond_3f
    const v4, 0x21109031

    :try_start_6
    invoke-virtual {v3, v4, v10}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1a

    :cond_40
    move-object v3, v12

    :goto_1a
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_41

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1b

    :cond_41
    move-object v3, v12

    :goto_1b
    move-object v4, v3

    goto :goto_1c

    :catchall_0
    move-object v4, v12

    :goto_1c
    if-eqz v4, :cond_42

    iput-object v4, v0, LT/G4;->g:Ljava/lang/String;

    goto :goto_1e

    :cond_42
    :try_start_7
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "persist.device.real.serialno"

    const-string v4, ""

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_43

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_43

    check-cast v1, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v12, v1

    :catchall_1
    :cond_43
    if-eqz v12, :cond_44

    move-object v4, v12

    goto :goto_1d

    :cond_44
    const-string v1, "unknown"

    move-object v4, v1

    :goto_1d
    iput-object v4, v0, LT/G4;->g:Ljava/lang/String;

    :goto_1e
    iput-object v4, v2, LT/F4;->s:Ljava/lang/String;

    return-object v2
.end method

.method public final b(I)Ljava/lang/Float;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, LT/G4;->a:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v2, LT/G4;->i:[I

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_5

    aget v4, v2, v3

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :try_start_1
    invoke-virtual {v1, p1, v4}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/Float;

    return-object v4

    :cond_2
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final c(I)Ljava/lang/Integer;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, LT/G4;->a:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v2, LT/G4;->i:[I

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    aget v4, v2, v3

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

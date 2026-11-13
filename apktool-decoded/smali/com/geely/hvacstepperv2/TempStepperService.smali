.class public Lcom/geely/hvacstepperv2/TempStepperService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final X:[I

.field public static final Y:[I

.field public static Z:Z


# instance fields
.field public A:Z

.field public final B:LX/d;

.field public C:I

.field public D:I

.field public E:F

.field public F:F

.field public G:F

.field public H:F

.field public I:Z

.field public J:I

.field public final K:LX/d;

.field public L:Landroid/view/View;

.field public final M:[Landroid/widget/TextView;

.field public N:Z

.field public final O:LX/b;

.field public P:Z

.field public Q:I

.field public R:J

.field public S:LT/x0;

.field public T:LX/e;

.field public final U:LX/e;

.field public final V:LT/N;

.field public W:Z

.field public a:F

.field public b:F

.field public c:Landroid/view/WindowManager;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/car/Car;

.field public k:Landroid/car/hardware/property/CarPropertyManager;

.field public l:I

.field public m:F

.field public final n:Landroid/os/Handler;

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:F

.field public v:Z

.field public w:I

.field public x:F

.field public y:Z

.field public final z:LX/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x7

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    sput-object v4, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->Y:[I

    sput-boolean v2, Lcom/geely/hvacstepperv2/TempStepperService;->Z:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    sget-object v0, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->q:I

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->r:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->s:I

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->t:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->w:I

    iput v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->x:F

    new-instance v2, LX/d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LX/d;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    iput-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->z:LX/d;

    iput-boolean v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->A:Z

    new-instance v1, LX/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LX/d;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    iput-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->B:LX/d;

    new-instance v1, LX/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LX/d;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    iput-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->K:LX/d;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->M:[Landroid/widget/TextView;

    new-instance v1, LX/b;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, LX/b;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    iput-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->O:LX/b;

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->Q:I

    new-instance v0, LX/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LX/e;-><init>(Landroid/app/Service;I)V

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->U:LX/e;

    new-instance v0, LT/N;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LT/N;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->V:LT/N;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->S:LT/x0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->S:LT/x0;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->P:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->Q:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->R:J

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->O:LX/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->N:Z

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->L:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->f()V

    return-void
.end method

.method public final c(I)V
    .locals 11

    invoke-static {p0, p1}, LA/b;->J(Lcom/geely/hvacstepperv2/TempStepperService;I)LX/a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "HvacStepperV2"

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p1, "CarService indispon\u00edvel"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    iget v1, p1, LX/a;->a:I

    mul-int/lit8 v3, v1, 0x3c

    iget v4, p1, LX/a;->b:I

    add-int/2addr v3, v4

    const/16 v5, 0xa

    if-lt v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->i()V

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->j()V

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->a()V

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->g()I

    move-result v3

    const/16 v5, 0x8

    iget v6, p1, LX/a;->c:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, p0, Lcom/geely/hvacstepperv2/TempStepperService;->s:I

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v8, p1, LX/a;->d:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v8, p0, Lcom/geely/hvacstepperv2/TempStepperService;->s:I

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :try_start_0
    iget-object v8, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v9, 0x15400500

    invoke-virtual {v8, v9, v3, v6}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v7, p0, Lcom/geely/hvacstepperv2/TempStepperService;->P:Z

    iput v6, p0, Lcom/geely/hvacstepperv2/TempStepperService;->Q:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2ee

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/geely/hvacstepperv2/TempStepperService;->R:J

    new-instance v6, LT/x0;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v3, v5, v7}, LT/x0;-><init>(Landroid/app/Service;III)V

    iput-object v6, p0, Lcom/geely/hvacstepperv2/TempStepperService;->S:LT/x0;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    mul-int/lit8 v7, v1, 0x3c

    add-int/2addr v7, v4

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Programa ventoinha: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LX/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u2192 ap\u00f3s "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v4

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s n\u00edvel "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LX/b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LX/b;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->b()V

    invoke-virtual {p1}, LX/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ventoinha inicial: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "N\u00e3o foi poss\u00edvel definir ventoinha"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const-string p1, "Programa inv\u00e1lido ou tempo demasiado curto"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final d(I)Ljava/lang/Float;
    .locals 5

    const-string v0, "HvacStepperV2"

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const v3, 0x11600703

    :try_start_0
    invoke-virtual {v1, v3, p1}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "exterior float area 0x%x: %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v1, v3, p1}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    const/16 v3, -0x226

    if-le v1, v3, :cond_2

    const/16 v3, 0x2bc

    if-ge v1, v3, :cond_2

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_2
    const/16 v3, -0x2d

    if-lt v1, v3, :cond_3

    const/16 v3, 0x41

    if-gt v1, v3, :cond_3

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "exterior int area 0x%x: %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->M:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    invoke-static {p0, v2}, LA/b;->J(Lcom/geely/hvacstepperv2/TempStepperService;I)LX/a;

    move-result-object v3

    if-eqz v3, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    aget-object v4, v0, v2

    invoke-virtual {v3}, LX/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    aget-object v3, v0, v2

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final g()I
    .locals 8

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->r:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    iget v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/geely/hvacstepperv2/TempStepperService;->X:[I

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    aget v5, v1, v4

    move v6, v2

    :goto_1
    if-ge v6, v3, :cond_2

    aget v7, v0, v6

    if-ne v7, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v3, 0x1

    aput v5, v0, v3

    move v3, v6

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v2, v3, :cond_5

    aget v1, v0, v2

    :try_start_0
    iget-object v4, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x15400500

    invoke-virtual {v4, v5, v1}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v4

    if-ltz v4, :cond_4

    iget v5, p0, Lcom/geely/hvacstepperv2/TempStepperService;->s:I

    add-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_4

    iput v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->r:I

    const-string v5, "HvacStepperV2"

    const-string v6, "HVAC_FAN_SPEED leg\u00edvel area=0x%x \u2192 %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    return v0
.end method

.method public final h(F)V
    .locals 7

    const-string v0, "HvacStepperV2"

    iget v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    add-float/2addr v1, p1

    iget p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    sub-float/2addr v1, p1

    const/high16 p1, 0x3f000000    # 0.5f

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->b:F

    iget v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    sub-float/2addr v2, v3

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->a:F

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    iget p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    const-string p1, "btn"

    invoke-virtual {p0, p1}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez p1, :cond_1

    const-string p1, "CarService n\u00e3o dispon\u00edvel"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    :try_start_0
    iget v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    const v4, 0x15600503

    invoke-virtual {p1, v4, v3, v1}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V

    const-string p1, "Enviado HAL=%.1f UI=%.1f\u00b0C invert=%s (area=0x%x)"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v6, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/geely/hvacstepperv2/TempStepperService;->m(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Erro ao definir temperatura: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Erro ao enviar temperatura"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->z:LX/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->o:Z

    iget-boolean v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->y:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_1

    const v2, 0x1520050a

    :try_start_0
    iget v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v1, v2, v0, v0}, Landroid/car/hardware/property/CarPropertyManager;->setBooleanProperty(IIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->y:Z

    const-string v0, "HvacStepperV2"

    const-string v1, "AUTO OEM desligado"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->t:I

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->g:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->o:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->y:Z

    if-eqz v1, :cond_1

    const-string v1, "AUTO (sist.)"

    goto :goto_0

    :cond_1
    const-string v1, "AUTO \u25cf"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->g:Landroid/widget/TextView;

    const v1, -0xb52180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    const-string v1, "AUTO"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->g:Landroid/widget/TextView;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->l()V

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->m:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    rem-float v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.0f\u00b0"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%.1f\u00b0"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->o:Z

    const-string v1, " \u00b7cab %.0f\u00b0"

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->y:Z

    if-eqz p1, :cond_2

    const-string p1, " \u00b7AUTO-OEM"

    goto :goto_1

    :cond_2
    const-string p1, " \u00b7AUTO"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->y:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->t:I

    if-ltz p1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " \u00b7vent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    iget-boolean p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public final l()V
    .locals 7

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->i:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->p:Z

    const v1, -0x55007778

    const-string v2, "n/d"

    const v3, -0xb52180

    const-string v4, "%.1f \u00b0C"

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->h:Landroid/widget/TextView;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v6, p0, Lcom/geely/hvacstepperv2/TempStepperService;->u:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->v:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->i:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final m(F)V
    .locals 7

    const-string v0, "HvacStepperV2"

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->l:I

    const v3, 0x15600503

    invoke-virtual {v1, v3, v2}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v1

    sub-float v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    const-string v2, "Readback OK: HAL raw=%.2f \u2192 UI %.1f\u00b0C (pedido %.1f\u00b0C)"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v3, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const-string v3, "Readback DIVERGENTE: pedido UI=%.1f\u00b0C mas HAL devolve raw=%.2f \u2192 UI %.1f\u00b0C (\u0394=%.1f). Poss\u00edvel escrita int (wheel/XSF) ou outra zona."

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v4, v5, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "HAL leu %.1f\u00b0C (pediste %.1f) \u2014 ver logcat"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Readback p\u00f3s-set indispon\u00edvel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 11

    const-string v0, "HvacStepperV2"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/geely/hvacstepperv2/TempStepperService;->Z:Z

    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "hvac_stepper_v2"

    const-string v4, "HVAC Stepper V2"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v4, "Controlo de temperatura HVAC (com polling)"

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "HVAC Stepper V2 activo"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "Stepper com polling de 3 s"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x1080039

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->V:LT/N;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "com.geely.hvacstepperv2.PRESETS_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->W:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "registerReceiver PRESETS_CHANGED"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->W:Z

    :goto_0
    const/4 v3, 0x0

    :try_start_1
    new-instance v4, LT/s1;

    const/16 v6, 0x8

    invoke-direct {v4, p0, v6}, LT/s1;-><init>(Landroid/content/ContextWrapper;I)V

    const-wide/16 v6, 0x0

    invoke-static {p0, v3, v6, v7, v4}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v4

    iput-object v4, p0, Lcom/geely/hvacstepperv2/TempStepperService;->j:Landroid/car/Car;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Erro ao conectar ao CarService: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0c0054

    invoke-virtual {v4, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f0902da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f0902d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f0900b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f0902d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f0902d7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f0900bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v6, 0x7f0900bc

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v6, LX/c;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, LX/c;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, LX/c;

    const/4 v6, 0x1

    invoke-direct {v3, p0, v6}, LX/c;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->g:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    new-instance v4, LX/c;

    const/4 v6, 0x2

    invoke-direct {v4, p0, v6}, LX/c;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f0901e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->L:Landroid/view/View;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f0901d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/geely/hvacstepperv2/TempStepperService;->M:[Landroid/widget/TextView;

    aput-object v3, v4, v2

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v6, 0x7f0901d9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v1

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v6, 0x7f0901da

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    move v3, v2

    :goto_2
    const/4 v5, 0x3

    if-ge v3, v5, :cond_2

    aget-object v5, v4, v3

    if-eqz v5, :cond_1

    new-instance v6, LT/i;

    const/4 v7, 0x4

    invoke-direct {v6, p0, v3, v7}, LT/i;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->e:Landroid/widget/TextView;

    new-instance v4, LX/c;

    const/4 v6, 0x3

    invoke-direct {v4, p0, v6}, LX/c;-><init>(Lcom/geely/hvacstepperv2/TempStepperService;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->e()V

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    mul-int/2addr v3, v5

    iput v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->J:I

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    const v4, 0x7f09011c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, LT/t;

    const/16 v5, 0xb

    invoke-direct {v4, p0, v5}, LT/t;-><init>(Landroid/content/ContextWrapper;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x8

    const/4 v9, -0x3

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7f6

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v4, "hvac_stepper"

    const/16 v5, 0x51

    invoke-static {p0, v4, v5, v2, v3}, LT/Y;->U(Landroid/content/Context;Ljava/lang/String;III)LT/K3;

    move-result-object v2

    iget v3, v2, LT/K3;->a:I

    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v3, v2, LT/K3;->b:I

    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, LT/K3;->c:I

    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_2
    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    invoke-interface {v2, v3, v10}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->j()V

    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/geely/hvacstepperv2/TempStepperService;->k(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v2

    const-string v3, "addView overlay falhou (permiss\u00e3o SYSTEM_ALERT_WINDOW?)"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Overlay n\u00e3o exibido \u2014 conceda sobreposi\u00e7\u00e3o e reinicie o servi\u00e7o"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/geely/hvacstepperv2/TempStepperService;->Z:Z

    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->A:Z

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->B:LX/d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v2, "HvacStepperV2"

    const-string v3, "Polling parado"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->i()V

    invoke-virtual {p0}, Lcom/geely/hvacstepperv2/TempStepperService;->a()V

    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->O:LX/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->K:LX/d;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->W:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->V:LT/N;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->W:Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->U:LX/e;

    invoke-virtual {v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->T:LX/e;

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->k:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v2, v1}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iput-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->T:LX/e;

    :cond_1
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    :try_start_3
    iget-object v1, p0, Lcom/geely/hvacstepperv2/TempStepperService;->c:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_2
    iget-object v0, p0, Lcom/geely/hvacstepperv2/TempStepperService;->j:Landroid/car/Car;

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    const-string p2, "com.geely.hvacstepperv2.RUN_PRESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "preset_slot"

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/geely/hvacstepperv2/TempStepperService;->n:Landroid/os/Handler;

    new-instance p3, LT/S3;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, v0}, LT/S3;-><init>(Ljava/lang/Object;II)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

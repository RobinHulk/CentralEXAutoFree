.class public Lcom/ex/auto/MainActivity;
.super Le/j;
.source "SourceFile"


# static fields
.field public static final synthetic u0:I


# instance fields
.field public final A:I

.field public final B:I

.field public C:I

.field public final D:Lv0/c;

.field public E:Landroid/net/wifi/WifiManager;

.field public F:Landroid/car/Car;

.field public G:Landroid/car/hardware/property/CarPropertyManager;

.field public H:Landroid/car/media/CarAudioManager;

.field public I:Z

.field public J:I

.field public K:Z

.field public L:I

.field public M:Z

.field public final N:Ljava/lang/StringBuilder;

.field public final O:Ljava/lang/Object;

.field public P:Z

.field public Q:Z

.field public final R:LT/q3;

.field public S:Z

.field public final T:LB/b;

.field public final U:LT/q3;

.field public V:Z

.field public W:Ljava/util/List;

.field public X:I

.field public final Y:Ljava/util/LinkedHashMap;

.field public final Z:Ljava/util/HashMap;

.field public final a0:Ljava/util/List;

.field public b0:Ljava/lang/String;

.field public c0:LT/U1;

.field public volatile d0:Ljava/lang/String;

.field public volatile e0:Ljava/lang/String;

.field public f0:Landroid/media/MediaPlayer;

.field public g0:Landroid/widget/ProgressBar;

.field public h0:Le/i;

.field public final i0:Ljava/lang/String;

.field public final j0:I

.field public k0:Le/i;

.field public final l0:LT/q3;

.field public final m0:J

.field public n0:Z

.field public o0:Z

.field public p0:Z

.field public final q0:[I

.field public final r0:[I

.field public final s0:Ljava/util/Set;

.field public t:LU/a;

.field public final t0:Ljava/util/Set;

.field public final u:Lv0/c;

.field public final v:Landroid/os/Handler;

.field public final w:Ljava/util/concurrent/ExecutorService;

.field public final x:Ljava/util/ArrayList;

.field public final y:Ljava/util/ArrayList;

.field public final z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Le/j;-><init>()V

    new-instance v0, LT/i2;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v1, Lv0/c;

    invoke-direct {v1, v0}, Lv0/c;-><init>(LH0/a;)V

    iput-object v1, p0, Lcom/ex/auto/MainActivity;->u:Lv0/c;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->x:Ljava/util/ArrayList;

    const/16 v0, 0x4e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Corre\u00e7\u00e3o do som de travamento"

    invoke-static {v1}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "singletonMap(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->z:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ex/auto/MainActivity;->A:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/ex/auto/MainActivity;->B:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/ex/auto/MainActivity;->C:I

    new-instance v3, LT/i2;

    const/16 v4, 0xb

    invoke-direct {v3, v4, p0}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v4, Lv0/c;

    invoke-direct {v4, v3}, Lv0/c;-><init>(LH0/a;)V

    iput-object v4, p0, Lcom/ex/auto/MainActivity;->D:Lv0/c;

    iput v0, p0, Lcom/ex/auto/MainActivity;->L:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2000

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->N:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->O:Ljava/lang/Object;

    new-instance v3, LT/q3;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, LT/q3;-><init>(ILcom/ex/auto/MainActivity;)V

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->R:LT/q3;

    new-instance v3, LB/b;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4}, LB/b;-><init>(Ljava/lang/Object;I)V

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->T:LB/b;

    new-instance v3, LT/q3;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, LT/q3;-><init>(ILcom/ex/auto/MainActivity;)V

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->U:LT/q3;

    const/4 v3, -0x1

    iput v3, p0, Lcom/ex/auto/MainActivity;->X:I

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->Y:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ex/auto/MainActivity;->Z:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v1, v4, v5}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/MainActivity;->a0:Ljava/util/List;

    const-string v1, "/sys/devices/platform/1000b000.pinctrl/mt_gpio"

    iput-object v1, p0, Lcom/ex/auto/MainActivity;->i0:Ljava/lang/String;

    const/16 v1, 0x97

    iput v1, p0, Lcom/ex/auto/MainActivity;->j0:I

    new-instance v1, LT/q3;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0}, LT/q3;-><init>(ILcom/ex/auto/MainActivity;)V

    iput-object v1, p0, Lcom/ex/auto/MainActivity;->l0:LT/q3;

    const-wide/16 v3, 0x1e

    iput-wide v3, p0, Lcom/ex/auto/MainActivity;->m0:J

    filled-new-array {v2, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/ex/auto/MainActivity;->q0:[I

    const/high16 v1, 0x1000000

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->r0:[I

    const v0, 0x20020501

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x20020502

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x20020503

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Le/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->s0:Ljava/util/Set;

    const v0, 0x22010101

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x22010102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x22010103

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Le/a;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->t0:Ljava/util/Set;

    return-void
.end method

.method public static B1(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/ex/auto/MainActivity;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ERRO:"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "REGRAS_NAO_ENCONTRADAS"

    invoke-static {p0, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FWMARK_MATCH=MISMATCH"

    invoke-static {p0, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Salvo:"

    invoke-static {p0, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final D(Lcom/ex/auto/MainActivity;Landroid/widget/LinearLayout;FILH0/l;)V
    .locals 1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p0, 0x7f070059

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 p0, 0x10

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    invoke-interface {p4, v0}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p4, -0x2

    invoke-direct {p0, p2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p3, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final E(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;
    .locals 10

    move-object v3, p0

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, p2

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0255

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ex/auto/MainActivity;->G(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/SeekBar;

    invoke-direct {v8, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    sub-int v0, p5, p4

    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    sub-int v0, p3, p4

    const/4 v1, 0x0

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    invoke-static {v0, v1, v5}, LA/b;->o(III)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v9, LT/r3;

    const/4 v6, 0x0

    move-object v0, v9

    move v1, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, LT/r3;-><init>(ILandroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;LH0/l;I)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x6

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7
.end method

.method public static E0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "HTTP "

    invoke-static {p0}, Lcom/ex/auto/MainActivity;->W0(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v0, "getInputStream(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LO0/a;->a:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {p0, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0}, LA/b;->a0(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0, v2}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-static {p0, v0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " em "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    throw p0
.end method

.method public static final F(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, 0x7f050042

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x4

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public static synthetic F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V
    .locals 15

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move-object v13, v2

    goto :goto_2

    :cond_2
    move-object/from16 v13, p10

    :goto_2
    const/4 v14, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v14}, Lcom/ex/auto/MainActivity;->E1(Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;Z)V

    return-void
.end method

.method public static final G(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41980000    # 19.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const p1, 0x7f050041

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method public static final H(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;FLjava/lang/String;)F
    .locals 0

    invoke-interface {p0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, p3}, Lw0/u;->T(Ljava/util/LinkedHashMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    mul-float/2addr p0, p2

    return p0
.end method

.method public static final I(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Lcom/ex/auto/MainActivity;Landroid/content/SharedPreferences;Landroid/widget/TextView;F)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v6, 0x2

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lw0/i;->X(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v5

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    add-int/lit8 v12, v11, 0x1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v6, 0x7f070059

    invoke-virtual {v13, v6}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v6, 0x10

    int-to-float v14, v6

    mul-float/2addr v14, v3

    float-to-int v14, v14

    invoke-virtual {v13, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "qa_visible_"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v6, LT/J2;

    const/4 v4, 0x0

    invoke-direct {v6, v1, v4, v15}, LT/J2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v5, v6}, Lcom/ex/auto/MainActivity;->j2(ZLH0/l;)Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x8

    int-to-float v1, v6

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v14, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-static {v0, v15}, LT/Y;->P(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v4, 0x7f05002e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f070063

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v4, 0x7f05003e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v4, 0xf

    move-object/from16 v17, v7

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v4, v5, v7}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x2c

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v14, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, v15}, LT/Y;->O(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->G(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v4, 0x41980000    # 19.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v18, v10

    const/4 v7, -0x2

    const/4 v10, 0x0

    invoke-direct {v4, v10, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v14, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "split_screen"

    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "app_pip"

    if-nez v4, :cond_0

    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0f0198

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    const v6, 0x7f05003f

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f05003e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v5, v10, v5, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, LT/K2;

    invoke-direct {v5, v15, v0}, LT/K2;-><init>(Ljava/lang/String;Lcom/ex/auto/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x28

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    const/4 v10, -0x2

    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const-string v4, "aeb"

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x1c

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "getString(...)"

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v1, "power_off"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_3

    :cond_5
    const v1, 0x7f0f01af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_1
    const-string v1, "telemetry"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_3

    :cond_6
    const v1, 0x7f0f01b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_2
    const-string v1, "drive_regen"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_3

    :cond_7
    const v1, 0x7f0f01ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_3
    const-string v1, "aa_reset"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_3

    :cond_8
    const v1, 0x7f0f01aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_4
    const-string v1, "wifi"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_3

    :cond_9
    const v1, 0x7f0f04c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_5
    const-string v1, "avas"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_3

    :cond_a
    const v1, 0x7f0f01ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_6
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_3

    :cond_b
    const v1, 0x7f0f0084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_7
    const-string v1, "screen_rest"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_3

    :cond_c
    const v1, 0x7f0f01b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_8
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    const v1, 0x7f0f01b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_9
    const-string v1, "screen_off"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3

    :cond_e
    const v1, 0x7f0f02b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_a
    const-string v1, "recirc_guard"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_3

    :cond_f
    const v1, 0x7f0f0298

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_b
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_3

    :cond_10
    const v1, 0x7f0f01ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_c
    const-string v1, "aa_activate"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_3

    :cond_11
    const v1, 0x7f0f01a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :sswitch_d
    const-string v1, "close_apps"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_3
    const-string v1, ""

    goto :goto_4

    :cond_12
    const v1, 0x7f0f01ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    invoke-static {v0, v3, v1}, Lcom/ex/auto/MainActivity;->F(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v5, 0x6

    if-lez v11, :cond_13

    int-to-float v6, v5

    mul-float/2addr v6, v3

    float-to-int v6, v6

    goto :goto_5

    :cond_13
    move v6, v4

    :goto_5
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v11, v6, :cond_14

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    goto :goto_6

    :cond_14
    move v5, v4

    :goto_6
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v9, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v1, p3

    move v5, v4

    move v4, v7

    move v11, v12

    move-object/from16 v7, v17

    move-object/from16 v10, v18

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_15
    move-object/from16 v17, v7

    move v7, v4

    move v4, v5

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v5, p0

    invoke-virtual {v5, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v1, p3

    move v5, v4

    move v4, v7

    move-object/from16 v7, v17

    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_16
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ae95fa7 -> :sswitch_d
        -0x62d361ce -> :sswitch_c
        -0x2f4d9d87 -> :sswitch_b
        -0x2ce42810 -> :sswitch_a
        -0x18db78e4 -> :sswitch_9
        -0xab92ecf -> :sswitch_8
        -0x2924839 -> :sswitch_7
        0x178be -> :sswitch_6
        0x2ddf27 -> :sswitch_5
        0x37af15 -> :sswitch_4
        0x1020f470 -> :sswitch_3
        0x2b4e1d48 -> :sswitch_2
        0x2e8323b9 -> :sswitch_1
        0x32655b35 -> :sswitch_0
    .end sparse-switch
.end method

.method public static I0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            CREATE_OUT=$(pm install-create -r -g -d 2>&1)\n            echo \"$CREATE_OUT\"\n            SESSION=$(echo \"$CREATE_OUT\" | grep -oE \'[0-9]+\' | head -1)\n            if [ -z \"$SESSION\" ]; then\n              echo \"Failure: nao foi possivel criar sessao de instalacao\"\n            else\n              IDX=0\n              while IFS= read -r apk; do\n                SIZE=$(stat -c%s \"$apk\" 2>/dev/null)\n                pm install-write -S \"$SIZE\" \"$SESSION\" \"split_$IDX\" \"$apk\" 2>&1\n                IDX=$((IDX+1))\n              done < "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/filtered_apks.txt\n              pm install-commit \"$SESSION\" 2>&1\n            fi\n        "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final J(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aeb_restore_on_boot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f05002e

    goto :goto_0

    :cond_0
    const v1, 0x7f05003e

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static J0()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "list(...)"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Lw0/q;->a:Lw0/q;

    :cond_1
    new-instance v3, LT/E;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, LT/E;-><init>(I)V

    invoke-static {v1, v3}, Lw0/i;->f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    const-string v4, "getInetAddresses(...)"

    invoke-static {v3, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Ljava/net/Inet4Address;

    invoke-virtual {v5}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v4

    check-cast v5, Ljava/net/Inet4Address;

    invoke-virtual {v5}, Ljava/net/Inet4Address;->isSiteLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_4

    check-cast v4, Ljava/net/Inet4Address;

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    return-object v0
.end method

.method public static final K(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;
    .locals 1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const p2, 0x7f050042

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x4

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method public static final L(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41980000    # 19.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const p1, 0x7f050041

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method public static L0(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    const-string v0, "\"versionCode\"\\s*:\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "matcher(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LO0/e;->a()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, LO0/r;->q0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final M(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;
    .locals 4

    new-instance v0, LI0/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LI0/l;-><init>(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0x8

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    const/4 v3, 0x4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {v1, v2, p1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p1, LT/v1;

    const/4 v2, 0x2

    invoke-direct {p1, p0, p2, v0, v2}, LT/v1;-><init>(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, v0, LI0/l;->b:Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/ex/auto/MainActivity;->N(Lcom/ex/auto/MainActivity;Ljava/lang/String;LI0/l;)V

    iget-object p0, v0, LI0/l;->b:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :cond_0
    const-string p0, "btn"

    invoke-static {p0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\\s*:\\s*\"([^\"]+)\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pattern"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "matcher(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LO0/e;->a()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string p1, "/"

    const-string v0, "\\/"

    invoke-static {p0, v0, p1}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final N(Lcom/ex/auto/MainActivity;Ljava/lang/String;LI0/l;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iget-object p1, p2, LI0/l;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "btn"

    if-eqz p1, :cond_3

    check-cast p1, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const-string v2, "\ud83d\udd12"

    goto :goto_0

    :cond_0
    const-string v2, "\ud83d\udd13"

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, LI0/l;->b:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_2
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v0
.end method

.method public static final O(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;
    .locals 10

    move-object v3, p0

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, p2

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0255

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ex/auto/MainActivity;->L(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/SeekBar;

    invoke-direct {v8, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    sub-int v0, p5, p4

    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    sub-int v0, p3, p4

    const/4 v1, 0x0

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    invoke-static {v0, v1, v5}, LA/b;->o(III)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v9, LT/r3;

    const/4 v6, 0x1

    move-object v0, v9

    move v1, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, LT/r3;-><init>(ILandroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;LH0/l;I)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x4

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7
.end method

.method public static final P(Lcom/ex/auto/MainActivity;FLjava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .locals 17

    move-object/from16 v7, p0

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v0, ""

    invoke-static {v7, v0}, Lcom/ex/auto/MainActivity;->L(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v9

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static {v9, v10, v7, v11, v12}, Lcom/ex/auto/MainActivity;->R(Landroid/widget/TextView;Ljava/lang/String;Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v0, "\u2212"

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v5, LT/P2;

    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object v4, v9

    move-object v14, v5

    move-object/from16 v5, p2

    move v10, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, LT/P2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;ILandroid/widget/TextView;Ljava/lang/String;I)V

    invoke-virtual {v15, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x2c

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v14, v1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {v0, v1, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v1, 0x4

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v5, v1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v13, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v0, "+"

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v10, LT/P2;

    const/16 v16, 0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object v4, v9

    move v7, v5

    move-object/from16 v5, p2

    move v9, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, LT/P2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;ILandroid/widget/TextView;Ljava/lang/String;I)V

    invoke-virtual {v15, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v13, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v8
.end method

.method public static final Q(Lcom/ex/auto/MainActivity;Ljava/lang/String;ILandroid/widget/TextView;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, p5

    const/4 p5, 0x1

    const/4 v1, 0x6

    invoke-static {v0, p5, v1}, LA/b;->o(III)I

    move-result p5

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    invoke-interface {p5}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p3, p4, p0, p1, p2}, Lcom/ex/auto/MainActivity;->R(Landroid/widget/TextView;Ljava/lang/String;Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    sget-object p1, Lcom/ex/auto/HomeFloatingWidgetsService;->Q:Ljava/util/List;

    invoke-static {p0}, LT/Y;->E(Landroid/content/Context;)V

    const-string p0, "apps"

    invoke-static {p0}, LT/Y;->Z(Ljava/lang/String;)V

    return-void
.end method

.method public static final Q1(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->o0:Z

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1

    const-string v1, "aa"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0901f4

    goto :goto_0

    :cond_0
    const p1, 0x7f0901f5

    :goto_0
    iget-object v0, v0, LU/a;->v1:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ex/auto/MainActivity;->o0:Z

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final R(Landroid/widget/TextView;Ljava/lang/String;Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V
    .locals 1

    const-string v0, ": "

    invoke-static {p1, v0}, LM/d0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, p3, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x6

    invoke-static {p2, p3, p4}, LA/b;->o(III)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final R1(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->p0:Z

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1

    const-string v1, "1114"

    invoke-static {p1, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0901f3

    goto :goto_0

    :cond_0
    const p1, 0x7f0901f2

    :goto_0
    iget-object v0, v0, LU/a;->w1:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ex/auto/MainActivity;->p0:Z

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final S(Lcom/ex/auto/MainActivity;FIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 20

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p10

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v3, 0x7f070059

    invoke-virtual {v11, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v3, 0x10

    int-to-float v4, v3

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v11, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v0, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v5, LT/l2;

    const/4 v6, 0x4

    invoke-direct {v5, v7, v0, v6}, LT/l2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v7, v3, v5}, Lcom/ex/auto/MainActivity;->j2(ZLH0/l;)Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v3, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x8

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-int v14, v5

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(...)"

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/ex/auto/MainActivity;->L(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v5, v12, v2, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p5

    invoke-static {v7, v8, v0}, Lcom/ex/auto/MainActivity;->M(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v0, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8, v0}, Lcom/ex/auto/MainActivity;->K(Lcom/ex/auto/MainActivity;FLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v4, 0x64

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v2, LT/N2;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v7, v1, v10}, LT/N2;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x32

    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v18, v2

    move-object/from16 v2, p8

    move v12, v4

    move/from16 v4, v16

    move-object/from16 v19, v5

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->O(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, LT/N2;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v7, v9, v10}, LT/N2;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x64

    move-object/from16 p2, p0

    move/from16 p3, p1

    move-object/from16 p4, p9

    move/from16 p5, v1

    move/from16 p6, v3

    move/from16 p7, v4

    move-object/from16 p8, v2

    invoke-static/range {p2 .. p8}, Lcom/ex/auto/MainActivity;->O(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move-object/from16 v4, v19

    invoke-virtual {v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v11, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v11
.end method

.method public static T()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, LT/I1;

    const/16 v2, 0x15b3

    invoke-direct {v1, v2}, LT/I1;-><init>(I)V

    const-string v2, "echo CANAL_OK"

    const/16 v3, 0xbb8

    invoke-virtual {v1, v3, v2}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "runShell(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CANAL_OK"

    invoke-static {v1, v2, v0}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public static U([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public static final U1(Lcom/ex/auto/MainActivity;Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_0

    check-cast v2, Lv0/a;

    iget-object v2, v2, Lv0/a;->a:Ljava/lang/Object;

    check-cast v2, Landroid/widget/Button;

    new-instance v4, LT/y1;

    invoke-direct {v4, v1, p0, p1}, LT/y1;-><init>(ILcom/ex/auto/MainActivity;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lw0/j;->U()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public static V0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toLowerCase(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_0

    const/16 v4, 0x3a

    if-ge v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x61

    if-gt v4, v3, :cond_1

    const/16 v4, 0x67

    if-ge v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static W0(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    invoke-static {p0}, LO0/j;->y0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "&"

    goto :goto_0

    :cond_0
    const-string v0, "?"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "nocache="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p0, v0}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v0, 0x1d4c0

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Cache-Control"

    const-string v1, "no-cache, no-store"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Pragma"

    const-string v1, "no-cache"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final W1(Landroid/content/SharedPreferences;Lcom/ex/auto/MainActivity;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pill_mode"

    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/ex/auto/TempBattPillFloaterService;->u:Lcom/ex/auto/TempBattPillFloaterService;

    sget-object p0, Lcom/ex/auto/TempBattPillFloaterService;->u:Lcom/ex/auto/TempBattPillFloaterService;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/ex/auto/TempBattPillFloaterService;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/ex/auto/TempBattPillFloaterService;->f()V

    goto :goto_0

    :cond_0
    const-string p0, "pillPrefs"

    invoke-static {p0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/ex/auto/MainActivity;->r1()V

    return-void
.end method

.method public static X(Landroid/view/View;Landroid/graphics/drawable/Drawable$ConstantState;Ljava/util/ArrayList;)V
    .locals 5

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4, p1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v2}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {v2, p1, p2}, Lcom/ex/auto/MainActivity;->X(Landroid/view/View;Landroid/graphics/drawable/Drawable$ConstantState;Ljava/util/ArrayList;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static Y1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "s"

    invoke-static {p0, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\'\\\'\'"

    invoke-static {p0, v1, v2}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/ex/auto/MainActivity;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ERRO_falta_ca_fix"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CONNADAPTOR_INSTALL_OK"

    invoke-static {p0, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static Z0(Landroid/car/hardware/property/CarPropertyManager;I[ILjava/util/Set;)Ljava/lang/Integer;
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget v3, p2, v1

    invoke-static {p0, p1, v3}, LT/U;->d(Landroid/car/hardware/property/CarPropertyManager;II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getStatus()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    move-object v2, v3

    check-cast v2, Ljava/lang/Integer;

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static Z1()Ljava/lang/String;
    .locals 5

    const-string v0, "/data/local/tmp/CarplayMonitor-update"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/local/tmp/fixes/CarplayMonitor"

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n            setenforce 0 2>/dev/null || true\n            "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n            echo \"== instalar CarplayMonitor em fixes/ ==\"\n            cp -f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || exit 53\n            chown root:root "

    const-string v4, " 2>&1 || true\n            chmod 755 "

    invoke-static {v2, v3, v1, v4, v1}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, " 2>&1 || true\n            chcon u:object_r:system_file:s0 "

    const-string v4, " 2>&1 || true\n            restorecon -v "

    invoke-static {v2, v3, v1, v4, v1}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, " 2>/dev/null || true\n            rm -f "

    const-string v4, " 2>/dev/null || true\n            ls -l "

    invoke-static {v2, v3, v0, v4, v1}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " 2>&1\n            echo \"carplaymonitor_aplicado\"\n        "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a2()Ljava/lang/String;
    .locals 5

    new-instance v0, LT/n;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LT/n;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            WAS_ACTIVE=0\n            case \"$(pm path com.njda.adapter 2>/dev/null)\" in *\"/data/app/\"*) WAS_ACTIVE=1 ;; esac\n            if grep -F \" /system/app/ConnAdaptor/ConnAdaptor.apk \" /proc/mounts >/dev/null 2>&1; then\n              WAS_ACTIVE=1\n              echo \"== bind LEGADO ativo: parar AA, umount, migrar pra pm install ==\"\n              am force-stop com.njda.adapter 2>/dev/null || true\n              am force-stop com.njda.aauto 2>/dev/null || true\n              sleep 3\n              umount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/system/app/ConnAdaptor/ConnAdaptor.apk"

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || umount -l "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || exit 51\n            fi\n            mkdir -p "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/tmp/fixes"

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || exit 52\n            # Remove o ca_fix antigo ANTES de copiar: o ficheiro existente fica com label\n            # system_app_file:s0 root:root 644 e o cp -f por cima \u00e9 negado (SELinux/relabel).\n            rm -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/data/local/tmp/fixes/ca_fix.apk"

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || true\n            cp -f "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/data/local/tmp/ca_fix-update.apk"

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || exit 53\n            chown root:root "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || true\n            chmod 644 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2>&1 || true\n            rm -f "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>&1 || true\n            echo \"FIX_MD5=$(md5sum "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 2>/dev/null | awk \'{print $1}\')\"\n            if [ \"$WAS_ACTIVE\" = \"1\" ]; then\n              echo \"== estava ativo: reinstalando o novo por cima (pm install -r) ==\"\n              pm install -r -g "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, LT/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 | tail -n1\n              _p=$(pm path com.njda.adapter 2>/dev/null)\n              echo \"PM_PATH=$_p\"\n              case \"$_p\" in\n                *\"/data/app/\"*) echo \"CONNADAPTOR_UPDATE_APLICADO\" ;;\n                *)              echo \"CONNADAPTOR_UPDATE_FALHOU\" ;;\n              esac\n              am force-stop com.njda.adapter 2>/dev/null || true\n              am force-stop com.njda.aauto 2>/dev/null || true\n            else\n              echo \"== nada ativo: s\u00f3 staging, sem mexer em wifi/AA ==\"\n            fi\n            echo \"BIND_ATIVO=0\"\n            echo \"connadaptor_ca_fix_aplicado\"\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e2(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "\n            DEV_ABI=$(getprop ro.product.cpu.abi)\n            DEV_ABI_TOKEN=$(echo \"$DEV_ABI\" | tr \'-\' \'_\')\n            DENS=$(wm density 2>/dev/null | grep -oE \'[0-9]+\' | head -1)\n            if [ -z \"$DENS\" ]; then DENS=160; fi\n            if [ \"$DENS\" -le 120 ]; then BUCKET=ldpi\n            elif [ \"$DENS\" -le 160 ]; then BUCKET=mdpi\n            elif [ \"$DENS\" -le 213 ]; then BUCKET=tvdpi\n            elif [ \"$DENS\" -le 240 ]; then BUCKET=hdpi\n            elif [ \"$DENS\" -le 320 ]; then BUCKET=xhdpi\n            elif [ \"$DENS\" -le 480 ]; then BUCKET=xxhdpi\n            else BUCKET=xxxhdpi\n            fi\n            echo \"Device: abi=$DEV_ABI density=$DENS bucket=$BUCKET\"\n            find "

    const-string v1, "/extracted -maxdepth 2 -name \"*.apk\" | sort > "

    const-string v2, "/all_apks.txt\n            > "

    invoke-static {v0, p0, v1, p0, v2}, LM/d0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/filtered_apks.txt\n            ARCH_TOKENS=\"arm64_v8a armeabi_v7a armeabi x86_64 x86 mips64 mips\"\n            DPI_TOKENS=\"ldpi mdpi tvdpi hdpi xhdpi xxhdpi xxxhdpi\"\n            while IFS= read -r f; do\n              keep=1\n              for arch_tok in $ARCH_TOKENS; do\n                case \"$f\" in\n                  *\".$arch_tok.\"*)\n                    if [ \"$arch_tok\" != \"$DEV_ABI_TOKEN\" ]; then keep=0; fi\n                    ;;\n                esac\n              done\n              for dpi_tok in $DPI_TOKENS; do\n                case \"$f\" in\n                  *\".$dpi_tok.\"*)\n                    if [ \"$dpi_tok\" != \"$BUCKET\" ]; then keep=0; fi\n                    ;;\n                esac\n              done\n              if [ \"$keep\" -eq 1 ]; then echo \"$f\" >> "

    const-string v2, "/filtered_apks.txt; fi\n            done < "

    invoke-static {v0, p0, v1, p0, v2}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/all_apks.txt\n            # Fallback POR CATEGORIA (docs/92): o filtro avalia cada split isolado, ent\u00e3o se o pacote\n            # traz UM s\u00f3 split de densidade (norma em XAPK/APKM de APKPure/APKMirror) e ele n\u00e3o bate com\n            # o bucket do device, esse split \u00e9 descartado \u2014 e o base.apk de um App Bundle n\u00e3o guarda os\n            # recursos por densidade \u2192 o app instala mas crasha no 1\u00ba inflate (recurso ausente). Aqui:\n            # se ZERO splits de densidade sobraram mas o pacote tinha algum, recupera todos (o Android\n            # escala densidade diferente; s\u00f3 n\u00e3o sabe inventar recurso n\u00e3o-instalado). Idem p/ ABI.\n            DPI_RE=\'\\.(ldpi|mdpi|tvdpi|hdpi|xhdpi|xxhdpi|xxxhdpi)\\.\'\n            ABI_RE=\'\\.(arm64_v8a|armeabi_v7a|armeabi|x86_64|x86|mips64|mips)\\.\'\n            TOTAL_DPI=$(grep -cE \"$DPI_RE\" "

    const-string v2, "/all_apks.txt)\n            KEPT_DPI=$(grep -cE \"$DPI_RE\" "

    invoke-static {v0, p0, v1, p0, v2}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/filtered_apks.txt)\n            if [ \"$TOTAL_DPI\" -gt 0 ] && [ \"$KEPT_DPI\" -eq 0 ]; then\n              echo \"AVISO: nenhum split de densidade bate com $BUCKET -- mantendo todos (Android escala)\"\n              grep -E \"$DPI_RE\" "

    const-string v2, "/all_apks.txt >> "

    invoke-static {v0, p0, v1, p0, v2}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/filtered_apks.txt\n              sort -u "

    const-string v3, "/filtered_apks.txt > "

    invoke-static {v0, p0, v1, p0, v3}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "/filtered_apks.tmp && mv "

    const-string v5, "/filtered_apks.tmp "

    invoke-static {v0, p0, v4, p0, v5}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "/filtered_apks.txt\n            fi\n            TOTAL_ABI=$(grep -cE \"$ABI_RE\" "

    const-string v7, "/all_apks.txt)\n            KEPT_ABI=$(grep -cE \"$ABI_RE\" "

    invoke-static {v0, p0, v6, p0, v7}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "/filtered_apks.txt)\n            if [ \"$TOTAL_ABI\" -gt 0 ] && [ \"$KEPT_ABI\" -eq 0 ]; then\n              echo \"AVISO: nenhum split de abi bate com $DEV_ABI -- mantendo todos\"\n              grep -E \"$ABI_RE\" "

    invoke-static {v0, p0, v6, p0, v2}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, v1, p0, v3}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, v4, p0, v5}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/filtered_apks.txt\n            fi\n            if [ ! -s "

    const-string v2, "/filtered_apks.txt ]; then\n              echo \"AVISO: filtro de arch/densidade nao sobrou nenhum apk -- instalando tudo (fallback)\"\n              cp "

    invoke-static {v0, p0, v1, p0, v2}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/all_apks.txt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/filtered_apks.txt\n            fi\n        "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g2(Lcom/ex/auto/MainActivity;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, LT/H;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2, p1}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-wide/16 p0, 0xfa0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static i1(Lcom/ex/auto/MainActivity;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LT/c2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LT/c2;-><init>(Lcom/ex/auto/MainActivity;ZI)V

    iget-object p0, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static j0(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILH0/a;LH0/l;I)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v0, p9

    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p4

    :goto_0
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v5, p5

    :goto_1
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    goto :goto_2

    :cond_2
    move/from16 v6, p6

    :goto_2
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v7, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p8

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "getString(...)"

    const/4 v10, 0x0

    move-object v11, v5

    move v12, v10

    const/4 v0, 0x0

    move-object v5, v3

    move-object/from16 v3, p1

    :goto_5
    if-ge v12, v6, :cond_16

    add-int/lit8 v13, v12, 0x1

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    invoke-static {v3}, Lcom/ex/auto/MainActivity;->W0(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v14, 0xc8

    if-ne v0, v14, :cond_e

    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/high16 v0, 0x10000

    :try_start_3
    new-array v0, v0, [B

    const-wide/16 v18, 0x0

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    :goto_6
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-lez v10, :cond_6

    move/from16 v25, v12

    const/4 v12, 0x0

    :try_start_4
    invoke-virtual {v4, v0, v12, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v24, v13

    int-to-long v12, v10

    add-long v20, v20, v12

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-eqz v8, :cond_5

    sub-long v26, v12, v22

    const-wide/16 v28, 0x190

    cmp-long v10, v26, v28

    if-lez v10, :cond_5

    move-object/from16 p4, p0

    move-object/from16 p5, p3

    move-wide/from16 p6, v20

    move-wide/from16 p8, v16

    invoke-virtual/range {p4 .. p9}, Lcom/ex/auto/MainActivity;->u0(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide/from16 v22, v12

    :cond_5
    move/from16 v13, v24

    move/from16 v12, v25

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_7
    move-object v12, v0

    const/4 v10, 0x0

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move/from16 v24, v13

    goto :goto_7

    :cond_6
    move/from16 v25, v12

    move/from16 v24, v13

    const/4 v10, 0x0

    :try_start_6
    invoke-static {v4, v10}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {v14, v10}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v0, v12, v18

    if-lez v0, :cond_d

    cmp-long v0, v16, v18

    if-lez v0, :cond_8

    cmp-long v0, v12, v16

    if-nez v0, :cond_7

    goto :goto_9

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v4, v12}, [Ljava/lang/Object;

    move-result-object v4

    const v12, 0x7f0f0159

    invoke-virtual {v1, v12, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    :goto_8
    move-object v4, v0

    goto/16 :goto_10

    :cond_8
    :goto_9
    if-eqz v5, :cond_a

    const-string v0, "SHA-256"

    invoke-static {v2, v0}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_a

    :cond_9
    new-instance v4, LT/l3;

    const/16 v12, 0xc

    invoke-static {v12, v5}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v12, 0x7f0f02cb

    invoke-virtual {v1, v12, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    :goto_a
    if-eqz v11, :cond_c

    const-string v0, "MD5"

    invoke-static {v2, v0}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_b

    :cond_b
    new-instance v4, LT/l3;

    const/16 v12, 0x8

    invoke-static {v12, v11}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v12, 0x7f0f0204

    invoke-virtual {v1, v12, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    :goto_b
    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const v4, 0x7f0f0155

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catchall_2
    move-exception v0

    goto :goto_f

    :catchall_3
    move-exception v0

    :goto_c
    move-object v4, v0

    goto :goto_e

    :catchall_4
    move-exception v0

    move/from16 v25, v12

    move/from16 v24, v13

    const/4 v10, 0x0

    move-object v12, v0

    :goto_d
    :try_start_a
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    move-object v13, v0

    :try_start_b
    invoke-static {v4, v12}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_6
    move-exception v0

    move/from16 v25, v12

    move/from16 v24, v13

    const/4 v10, 0x0

    goto :goto_c

    :goto_e
    :try_start_c
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception v0

    move-object v12, v0

    :try_start_d
    invoke-static {v14, v4}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v12

    :catchall_8
    move-exception v0

    move/from16 v25, v12

    move/from16 v24, v13

    const/4 v10, 0x0

    goto :goto_f

    :cond_e
    move/from16 v25, v12

    move/from16 v24, v13

    const/4 v10, 0x0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HTTP "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_f
    :try_start_e
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :catch_3
    move-exception v0

    move/from16 v25, v12

    move/from16 v24, v13

    const/4 v10, 0x0

    goto/16 :goto_8

    :goto_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "download tentativa "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v12, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v13, 0x2f

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "MainActivity"

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, v4, LT/l3;

    if-eqz v0, :cond_11

    if-eqz v7, :cond_11

    :try_start_10
    invoke-interface {v7}, LH0/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0/a;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_11

    :catch_4
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "revalidar manifesto falhou: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v14, v13}, LM/d0;->n(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move-object v0, v10

    :goto_11
    if-eqz v0, :cond_11

    iget-object v13, v0, Lv0/a;->a:Ljava/lang/Object;

    invoke-static {v13, v3}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    iget-object v0, v0, Lv0/a;->b:Ljava/lang/Object;

    if-eqz v14, :cond_12

    if-nez v5, :cond_10

    if-nez v11, :cond_f

    const-string v14, ""

    goto :goto_12

    :cond_f
    move-object v14, v11

    goto :goto_12

    :cond_10
    move-object v14, v5

    :goto_12
    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_11

    goto :goto_13

    :cond_11
    move-object/from16 v14, p3

    goto :goto_16

    :cond_12
    :goto_13
    const-string v3, ": o manifesto mudou durante o download \u2014 seguindo o alvo novo ("

    move-object/from16 v14, p3

    invoke-static {v14, v3}, LM/d0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Ljava/lang/String;

    const/16 v12, 0xc

    invoke-static {v12, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x29

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "Update"

    invoke-virtual {v1, v12, v3}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v13

    check-cast v3, Ljava/lang/String;

    if-eqz v5, :cond_13

    move-object v5, v0

    goto :goto_14

    :cond_13
    move-object v11, v0

    :goto_14
    move-object v0, v4

    move/from16 v12, v25

    :goto_15
    const/4 v10, 0x0

    goto/16 :goto_5

    :goto_16
    if-ge v12, v6, :cond_15

    if-eqz v8, :cond_14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const v13, 0x7f0f0158

    invoke-virtual {v1, v13, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v0}, LH0/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    move-object/from16 p1, v11

    int-to-long v10, v12

    const-wide/16 v15, 0xbb8

    mul-long/2addr v15, v10

    mul-long/2addr v15, v10

    :try_start_11
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_17

    :cond_15
    move-object/from16 p1, v11

    :catch_5
    :goto_17
    move-object/from16 v11, p1

    move-object v0, v4

    goto :goto_15

    :cond_16
    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0f0156

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_18
    throw v0
.end method

.method public static final k1(IIILandroid/widget/Button;Z)V
    .locals 0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p4, :cond_1

    const/4 p2, -0x1

    :cond_1
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static n0(Ljava/lang/String;)LT/i3;
    .locals 10

    invoke-static {p0}, Lcom/ex/auto/MainActivity;->E0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->L0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    move-wide v4, v1

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    :goto_1
    const-string v1, "versionName"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v6, v1

    const-string v1, "apkUrl"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "pageUrl"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_3

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sem apkUrl nem pageUrl em "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    const-string p0, "sha256"

    invoke-static {v0, p0}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance p0, LT/i3;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, LT/i3;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static n2(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, LO0/j;->Y0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\u2026 ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " caracteres omitidos)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o0()LT/j3;
    .locals 3

    const-string v0, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/carplaymonitor.json"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->E0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "md5"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "fileUrl"

    invoke-static {v0, v2}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, LT/j3;

    invoke-direct {v2, v1, v0}, LT/j3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "carplaymonitor.json sem fileUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "carplaymonitor.json sem md5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic q0(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)LT/k3;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->c0()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ex/auto/MainActivity;->p0(Ljava/lang/String;Ljava/lang/String;)LT/k3;

    move-result-object p0

    return-object p0
.end method

.method public static r0()LT/m3;
    .locals 4

    const-string v0, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/geelyautokeyserver-patch.json"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->E0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apkUrl"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "sha256"

    invoke-static {v0, v2}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "versionName"

    invoke-static {v0, v3}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "?"

    :cond_0
    new-instance v3, LT/m3;

    invoke-direct {v3, v0, v1, v2}, LT/m3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "geelyautokeyserver-patch.json sem sha256"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "geelyautokeyserver-patch.json sem apkUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Falha no ADB local"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "exit_code="

    invoke-static {p0, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static s2()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "ro.build.version.versionname"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string v1, "H(\\d{4})\\d*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v3, "compile(...)"

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v3, "matcher(...)"

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LO0/e;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, LO0/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LO0/d;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    :catchall_0
    :cond_2
    return-object v2
.end method

.method public static t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x2000

    :try_start_0
    new-array p0, p0, [B

    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    invoke-static {v0, p0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string p1, "digest(...)"

    invoke-static {p0, p1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LT/n;

    const/16 v0, 0x1a

    invoke-direct {p1, v0}, LT/n;-><init>(I)V

    invoke-static {p0, p1}, Lw0/h;->X([BLH0/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, LA/b;->m(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V
    .locals 1

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ex/auto/MainActivity;->l2(Lcom/google/android/material/switchmaterial/SwitchMaterial;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p5

    invoke-interface {p5, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p1, p3}, Lj/d1;->setChecked(Z)V

    new-instance p3, LT/g2;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p2, p4, p5}, LT/g2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static final w0(Lcom/ex/auto/MainActivity;LT/C;Ljava/lang/String;I)Landroid/widget/Button;
    .locals 2

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    const v1, 0x7f05003f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f05003e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-ltz p3, :cond_0

    const/4 v1, 0x5

    if-ge p3, v1, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    new-instance p2, LT/y1;

    invoke-direct {p2, p0, p1, p3}, LT/y1;-><init>(Lcom/ex/auto/MainActivity;LT/C;I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static final y0(LT/D;Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 4

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "ctx"

    invoke-static {p1, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, p2

    :goto_0
    invoke-static {v1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    const v1, 0x7f0f01f3

    goto :goto_1

    :cond_1
    const v1, 0x7f0f01f2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(...)"

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v1, 0x7f05003f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f05003e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance v1, LT/Z2;

    invoke-direct {v1, p0, p1, p2, p3}, LT/Z2;-><init>(LT/D;Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "aa"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "ambos"

    :cond_0
    move-object v4, v0

    new-instance v5, Ljava/io/File;

    invoke-static {v4, p2}, LT/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p2}, LT/q;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v5, v0}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "outra variante ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") j\u00e1 estava em cache"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Update"

    invoke-virtual {p0, p2, p1}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, LT/y0;

    const/4 v6, 0x6

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, LT/y0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final A0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {p1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p1

    :catch_0
    :catchall_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final A1(Ljava/lang/String;LH0/a;)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, LU/a;->Q:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LU/a;->J2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, LT/H;

    const/16 v0, 0x12

    invoke-direct {p1, p2, v0, p0}, LT/H;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final B(I)Ljava/lang/String;
    .locals 1

    if-gtz p1, :cond_0

    const p1, 0x7f0f00c4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x25

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final B0()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->u:Lv0/c;

    invoke-virtual {v0}, Lv0/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final C()V
    .locals 38

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const/4 v13, 0x1

    iget-object v0, v15, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_f

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v12, v0, LU/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v0, "quick_access_prefs"

    invoke-virtual {v15, v0, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x7f0f01b6

    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "getString(...)"

    invoke-static {v2, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qa_icon_size_pct"

    const/16 v5, 0x64

    invoke-interface {v11, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, LT/p2;

    invoke-direct {v4, v11, v14}, LT/p2;-><init>(Landroid/content/SharedPreferences;I)V

    const/16 v16, 0x32

    const/16 v17, 0x12c

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v18, v4

    move/from16 v4, v16

    move v7, v5

    move/from16 v5, v17

    move-object v8, v6

    move-object/from16 v6, v18

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->E(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v6

    const v0, 0x7f0f019b

    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qa_panel_height_pct"

    invoke-interface {v11, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v5, LT/n;

    const/16 v0, 0x18

    invoke-direct {v5, v0}, LT/n;-><init>(I)V

    const/16 v4, 0x32

    const/16 v18, 0xc8

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v19, v5

    move/from16 v5, v18

    move-object v14, v6

    move-object/from16 v6, v19

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->E(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v6

    const v0, 0x7f0f019e

    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qa_panel_width_pct"

    invoke-interface {v11, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v7, LT/n;

    const/16 v0, 0x19

    invoke-direct {v7, v0}, LT/n;-><init>(I)V

    const/16 v4, 0x32

    const/16 v5, 0xc8

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v20, v6

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->E(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v7

    const v0, 0x7f0f019d

    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qa_tab_alpha"

    const/16 v1, 0x5a

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v6, LT/p2;

    invoke-direct {v6, v11, v13}, LT/p2;-><init>(Landroid/content/SharedPreferences;I)V

    const/4 v4, 0x0

    const/16 v5, 0x64

    move-object/from16 v0, p0

    move v1, v10

    invoke-static/range {v0 .. v6}, Lcom/ex/auto/MainActivity;->E(Lcom/ex/auto/MainActivity;FLjava/lang/String;IIILH0/l;)Landroid/widget/LinearLayout;

    move-result-object v0

    move-object/from16 v1, v20

    filled-new-array {v14, v1, v7, v0}, [Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v6, 0x6

    if-lez v2, :cond_0

    int-to-float v7, v6

    mul-float/2addr v7, v10

    float-to-int v7, v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v13

    if-ge v2, v7, :cond_1

    int-to-float v2, v6

    mul-float/2addr v2, v10

    float-to-int v2, v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v9, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lw0/j;->U()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    const/4 v0, 0x4

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v7, v0

    new-instance v0, LT/q2;

    invoke-direct {v0, v9, v15, v10}, LT/q2;-><init>(Landroid/widget/LinearLayout;Lcom/ex/auto/MainActivity;F)V

    invoke-static {v15, v12, v10, v7, v0}, Lcom/ex/auto/MainActivity;->D(Lcom/ex/auto/MainActivity;Landroid/widget/LinearLayout;FILH0/l;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "quick_access_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, LT/W1;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v15}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v15, v0, v1}, Lcom/ex/auto/MainActivity;->j2(ZLH0/l;)Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object v9

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "\u21ba"

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x11

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6, v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v4, 0x7f070059

    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, LT/u;

    const/4 v1, 0x2

    invoke-direct {v0, v15, v1, v6}, LT/u;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v15, v6}, Lcom/ex/auto/MainActivity;->J(Lcom/ex/auto/MainActivity;Landroid/widget/TextView;)V

    const-string v0, "qa_icon_order"

    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_7

    :cond_4
    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LO0/j;->O0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    sget-object v8, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v8, -0x2

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-static {v0, v2}, Lw0/i;->e0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lw0/i;->j0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_6
    move-object v3, v0

    goto :goto_8

    :cond_a
    :goto_7
    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-static {v0}, Lw0/i;->j0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_6

    :goto_8
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x40

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v2, v0

    const/4 v0, 0x2

    mul-int/2addr v0, v7

    add-int/2addr v0, v2

    int-to-float v1, v0

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    const-string v14, "<this>"

    invoke-static {v0, v14}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, LN0/j;

    new-instance v4, Landroidx/lifecycle/D;

    invoke-direct {v4, v0, v13}, Landroidx/lifecycle/D;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v14, v4, v13}, LN0/j;-><init>(Ljava/lang/Object;I)V

    invoke-static {v14}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lw0/u;->U(I)I

    move-result v0

    const/16 v4, 0x10

    if-ge v0, v4, :cond_b

    move v0, v4

    :cond_b
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v14}, LN0/j;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    move-object v14, v0

    check-cast v14, Lw0/b;

    iget-object v13, v14, Lw0/b;->c:Ljava/lang/Object;

    check-cast v13, Ljava/util/Iterator;

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v14}, Lw0/b;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lw0/t;

    iget v14, v13, Lw0/t;->a:I

    iget-object v13, v13, Lw0/t;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    goto :goto_9

    :cond_c
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v18, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v13

    move-object/from16 v13, v22

    check-cast v13, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "qa_visible_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v11, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v25, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    move/from16 v25, v1

    invoke-static {v15, v13}, LT/Y;->P(Lcom/ex/auto/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x11

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    move-object/from16 v26, v6

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v1, 0x7f050041

    invoke-virtual {v15, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f070059

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f05003e

    invoke-virtual {v15, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-eqz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_d
    const v0, 0x3eb33333    # 0.35f

    :goto_b
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, LI0/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v21, LI0/j;

    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    new-instance v27, LI0/i;

    invoke-direct/range {v27 .. v27}, Ljava/lang/Object;-><init>()V

    new-instance v0, LT/r2;

    move-object/from16 v28, v0

    const/16 v22, 0x0

    const/16 v19, 0x11

    const v20, 0x7f070059

    move/from16 v29, v2

    move-object/from16 v2, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v27

    move-object v15, v4

    move/from16 v24, v6

    const/16 v6, 0x10

    move-object v4, v5

    move-object/from16 v30, v5

    move-object v5, v13

    move/from16 v6, v25

    move/from16 v31, v7

    move/from16 v7, v29

    move-object/from16 v17, v8

    move-object/from16 v8, v21

    move-object/from16 v32, v9

    move-object/from16 v9, p0

    move/from16 v27, v10

    move-object v10, v11

    move-object/from16 v33, v11

    move/from16 v11, v27

    move-object/from16 v34, v12

    move-object v12, v14

    move-object/from16 v36, v13

    move-object/from16 v35, v23

    move/from16 v23, v24

    move-object/from16 v13, v17

    move-object/from16 v37, v14

    move-object/from16 v14, v26

    invoke-direct/range {v0 .. v14}, LT/r2;-><init>(LI0/j;LI0/j;LI0/i;Ljava/util/LinkedHashMap;Ljava/lang/String;FILjava/util/ArrayList;Lcom/ex/auto/MainActivity;Landroid/content/SharedPreferences;FLjava/util/LinkedHashMap;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v1, v36

    move-object/from16 v0, v37

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v3, v29

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move/from16 v4, v31

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move-object/from16 v5, v21

    move-object/from16 v7, v30

    invoke-static {v5, v7, v6, v1}, Lcom/ex/auto/MainActivity;->H(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;FLjava/lang/String;)F

    move-result v1

    invoke-virtual {v15, v1}, Landroid/view/View;->setTranslationX(F)V

    move-object/from16 v1, v35

    invoke-virtual {v1, v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v15, p0

    move-object v14, v0

    move-object v13, v1

    move v2, v3

    move-object v3, v5

    move v1, v6

    move-object v5, v7

    move-object/from16 v8, v17

    move-object/from16 v6, v26

    move/from16 v10, v27

    move-object/from16 v9, v32

    move-object/from16 v11, v33

    move-object/from16 v12, v34

    const/4 v0, 0x0

    move v7, v4

    const/16 v4, 0x10

    goto/16 :goto_a

    :cond_e
    move-object v5, v3

    move-object/from16 v26, v6

    move-object/from16 v17, v8

    move-object/from16 v32, v9

    move/from16 v27, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move-object v1, v13

    new-instance v0, Landroid/widget/HorizontalScrollView;

    move-object/from16 v6, p0

    invoke-direct {v0, v6}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    int-to-float v7, v7

    move/from16 v8, v27

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move-object/from16 v7, v32

    invoke-virtual {v1, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, LT/q2;

    invoke-direct {v0, v6, v1, v8}, LT/q2;-><init>(Lcom/ex/auto/MainActivity;Landroid/widget/LinearLayout;F)V

    const/16 v1, 0xe

    int-to-float v1, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    move-object/from16 v2, v34

    invoke-static {v6, v2, v8, v1, v0}, Lcom/ex/auto/MainActivity;->D(Lcom/ex/auto/MainActivity;Landroid/widget/LinearLayout;FILH0/l;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v1, v5

    move-object/from16 v2, p0

    move-object/from16 v3, v33

    move-object/from16 v4, v26

    move v5, v8

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->I(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Lcom/ex/auto/MainActivity;Landroid/content/SharedPreferences;Landroid/widget/TextView;F)V

    return-void

    :cond_f
    move-object v6, v15

    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final C0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "cp -f "

    invoke-static {p1, p2}, LT/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/data/local/tmp/fixes/ca_fix.apk"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1; chown system:system "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null; chmod 664 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null; echo GUARDADO"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4e20

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "n\u00e3o consegui guardar no cache ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Update"

    invoke-virtual {p0, p2, p1}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final C1(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adb_port_migrated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, LT/I1;

    const/16 v1, 0x15b3

    invoke-direct {v0, v1}, LT/I1;-><init>(I)V

    invoke-virtual {v0, p1, p2}, LT/I1;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-static {p1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f0f00fd

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string p1, "Falha no ADB local: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final D0()Z
    .locals 6

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    const-string v1, "connectivity"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/ConnectivityManager;

    const-string v3, "getGlobalProxy"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/ProxyInfo;

    if-eqz v1, :cond_1

    move-object v5, v0

    check-cast v5, Landroid/net/ProxyInfo;

    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :catch_0
    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    :goto_2
    move v2, v4

    :catch_1
    :cond_4
    return v2
.end method

.method public final D1()V
    .locals 4

    const-string v0, "runKeyServerApply(userInitiated=true) iniciando"

    const-string v1, "KeyServerAtivador"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->c:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->s:Landroid/widget/TextView;

    const v1, 0x7f0f01e7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, LT/U1;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final E1(Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;Z)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v0, p8

    const/4 v1, 0x0

    move-object/from16 v12, p1

    invoke-virtual {v12, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual/range {p2 .. p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    invoke-static {v14, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v15, LT/b2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move/from16 v3, p6

    move-wide/from16 v6, p4

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p9

    move/from16 v11, p11

    move-object/from16 v12, p1

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, LT/b2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;IJJLandroid/widget/TextView;Ljava/lang/String;LH0/l;ZLandroid/widget/Button;LH0/l;)V

    iget-object v0, v14, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v15}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F0()V
    .locals 5

    const-string v0, "binding"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, LT/s1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, LT/s1;-><init>(Landroid/content/ContextWrapper;I)V

    const-wide/16 v3, 0x0

    invoke-static {p0, v1, v3, v4, v2}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;

    move-result-object v2

    iput-object v2, p0, Lcom/ex/auto/MainActivity;->F:Landroid/car/Car;

    if-eqz v2, :cond_0

    const-string v3, "property"

    invoke-virtual {v2, v3}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    instance-of v3, v2, Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/car/hardware/property/CarPropertyManager;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, p0, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->F:Landroid/car/Car;

    if-eqz v2, :cond_2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    instance-of v3, v2, Landroid/car/media/CarAudioManager;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/car/media/CarAudioManager;

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    iput-object v2, p0, Lcom/ex/auto/MainActivity;->H:Landroid/car/media/CarAudioManager;

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_5

    iget-object v2, v2, LU/a;->S2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v3, :cond_4

    const v3, 0x7f0f00cc

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    const v3, 0x7f0f00cd

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_5
    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iput-object v1, p0, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    iput-object v1, p0, Lcom/ex/auto/MainActivity;->H:Landroid/car/media/CarAudioManager;

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_6

    const v0, 0x7f0f00d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, LU/a;->S2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void

    :cond_6
    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p5, v0}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0f015c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, LT/V2;

    move-object v1, v0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, LT/V2;-><init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G1(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, LT/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LT/n;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0}, LT/m;->v(Ljava/lang/String;ILH0/l;LH0/p;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f0f00fd

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string p1, "Falha no ADB local: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final H0()Ljava/lang/String;
    .locals 4

    const-string v0, "/data/local/tmp/CentralEXAuto-update.apk"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            setenforce 0 2>/dev/null || true\n            "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n            echo \"== instalando update CentralEX ==\"\n            ls -l "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || exit 50\n            chown root:root "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>&1 || true\n            chmod 644 "

    const-string v3, " 2>&1 || true\n            restorecon -v "

    invoke-static {v1, v2, v0, v3, v0}, LM/d0;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " 2>/dev/null || true\n            "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n            echo \"== pm install ==\"\n            pm install -r -g -d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1\n            code=$?\n            echo \"exit_code=$code\"\n            exit $code\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x15f90

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->G1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final H1(Z)V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_7

    iget-object v0, v0, LU/a;->g:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_6

    iget-object v0, v0, LU/a;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5

    iget-object v0, v0, LU/a;->g:Landroid/widget/Button;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4

    iget-object v0, v0, LU/a;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3

    const v3, 0x7f0f0413

    if-eqz p1, :cond_0

    const v4, 0x7f0f03ef

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v0, v0, LU/a;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const p1, 0x7f0f03f0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v0, v0, LU/a;->h:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final I1(Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "\u2014"

    :goto_0
    invoke-static {p2}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0c0059

    invoke-direct {v0, p0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p2, 0x7f0c0059

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object p2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p2, :cond_5

    iget-object p2, p2, LU/a;->F1:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4

    iget-object v0, v0, LU/a;->H:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    iget p1, p0, Lcom/ex/auto/MainActivity;->C:I

    iget v0, p0, Lcom/ex/auto/MainActivity;->B:I

    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iget-object p2, p2, LU/a;->s:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_3
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final J1(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lu/e;->a(Ljava/lang/String;)Lu/e;

    move-result-object v0

    invoke-static {v0}, Le/n;->l(Lu/e;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_language_tag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final varargs K0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->H:Landroid/car/media/CarAudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->U([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public final K1(Z)V
    .locals 9

    const-string v0, "setAVASMode"

    const-string v1, "avas_sound_type_saved"

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, LT/q;->a:[I

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v4, v6

    const v8, 0x21407057

    invoke-static {v2, v8, v7}, LT/U;->c(Landroid/car/hardware/property/CarPropertyManager;II)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/MainActivity;->K0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/ex/auto/MainActivity;->L:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/MainActivity;->K0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, LT/C2;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, LT/C2;-><init>(Landroid/car/hardware/property/CarPropertyManager;II)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_2
    iput-boolean p1, p0, Lcom/ex/auto/MainActivity;->M:Z

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "avas_muted_saved"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->g1()V

    return-void
.end method

.method public final L1(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x22010102

    goto :goto_0

    :cond_0
    const p1, 0x22010103

    goto :goto_0

    :cond_1
    const p1, 0x22010101

    :goto_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->z0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_drive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/ex/auto/MainActivity;->j1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->Y0()V

    return-void
.end method

.method public final M1(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x20020502

    goto :goto_0

    :cond_0
    const p1, 0x20020503

    goto :goto_0

    :cond_1
    const p1, 0x20020501

    :goto_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->z0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_regen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/ex/auto/MainActivity;->j1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->Y0()V

    return-void
.end method

.method public final N0()Ljava/util/List;
    .locals 5

    const-string v0, "/data/data/com.aurora.store/cache/Downloads"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n            [ -d "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] || exit 0\n            for pkgdir in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/*/; do\n              [ -d \"$pkgdir\" ] || continue\n              for vcdir in \"$pkgdir\"*/; do\n                [ -f \"${vcdir}base.apk\" ] || continue\n                echo \"${vcdir%/}\"\n              done\n            done\n        "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/j;->H0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, "/data/data/com.aurora.store/cache/Downloads/"

    invoke-static {v3, v4}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lw0/i;->Y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final N1(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screen_rest_timeout_sec"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "quick_access_enabled"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ex/auto/QuickAccessFloaterService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const p1, 0x7f0f02c0

    invoke-static {p0, p1, p0, v1}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->t1()V

    return-void
.end method

.method public final O0()Ljava/util/List;
    .locals 8

    const-string v0, "/sdcard/Download"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/emulated/0/Download"

    invoke-static {v2}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\n            "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n            for dir in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; do\n              [ -d \"$dir\" ] || continue\n              for f in \"$dir\"/*.apk \"$dir\"/*.APK \"$dir\"/*.xapk \"$dir\"/*.XAPK \"$dir\"/*.apkm \"$dir\"/*.APKM; do\n                [ -f \"$f\" ] && echo \"$f\"\n              done\n            done\n        "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2ee0

    invoke-virtual {p0, v3, v1}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LO0/j;->H0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/sdcard/"

    const-string v6, "/storage/emulated/0/"

    invoke-static {v4, v5, v6}, LO0/s;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const-string v6, ".apk"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".xapk"

    invoke-static {v5, v6, v7}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".apkm"

    invoke-static {v5, v6, v7}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    invoke-static {v5, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5, v2}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lw0/i;->Y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->S:Z

    invoke-virtual {p1, p2}, Lj/d1;->setChecked(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ex/auto/MainActivity;->S:Z

    return-void
.end method

.method public final P0()Ljava/util/List;
    .locals 6

    const-string v0, "seen=\"\"\nfor root in /storage/* /mnt/media_rw/* /mnt/usb* /mnt/media_rw/usb*; do\n  [ -d \"$root\" ] || continue\n  case \"$root\" in\n    /storage/emulated|/storage/self|/storage/emulated/*|/storage/self/*) continue ;;\n  esac\n  grep -qE \"[[:space:]]${root}[[:space:]]\" /proc/mounts || continue\n  for f in \"$root\"/*.apk \"$root\"/*.xapk \"$root\"/*.apkm \"$root\"/*/*.apk \"$root\"/*/*.xapk \"$root\"/*/*.apkm \"$root\"/*/*/*.apk \"$root\"/*/*/*.xapk \"$root\"/*/*/*.apkm; do\n    [ -f \"$f\" ] || continue\n    bn=$(basename \"$f\" | tr \' \' \'_\')\n    sz=$(stat -c \'%s\' \"$f\" 2>/dev/null)\n    key=\"${bn}_${sz}\"\n    case \" $seen \" in\n      *\" $key \"*) continue ;;\n    esac\n    seen=\"$seen $key\"\n    echo \"$f\"\n  done\ndone"

    const/16 v1, 0x3a98

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/j;->H0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, "/"

    invoke-static {v3, v4}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ".apk"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".xapk"

    invoke-static {v3, v4, v5}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".apkm"

    invoke-static {v3, v4, v5}, LO0/s;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, "/storage/emulated"

    invoke-static {v3, v4}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "/storage/self"

    invoke-static {v3, v4}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lw0/i;->Y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final P1()V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    new-instance v1, LT/t;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LT/t;-><init>(Landroid/content/ContextWrapper;I)V

    iget-object v0, v0, LU/a;->S2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, LT/U1;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Q0(Landroid/view/View;Ljava/lang/String;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-nez v8, :cond_1

    return-void

    :cond_1
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    const/16 v5, 0x22

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f05002e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v5

    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v12

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "id"

    invoke-static {v7, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LT/Y;->W(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "\u2605"

    goto :goto_2

    :cond_2
    const-string v2, "\u2606"

    :goto_2
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_3

    :cond_3
    move v0, v12

    :goto_3
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x8

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v13, v0, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800035

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v13, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, LT/Y1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v3, v13

    move v4, v5

    move v5, v12

    invoke-direct/range {v0 .. v5}, LT/Y1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;Landroid/widget/TextView;II)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->Y:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->Z:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final R0()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.njda.adapter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "getApplicationInfo(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ex/auto/MainActivity;->d0:Ljava/lang/String;

    invoke-static {v1, v3}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->e0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v3, "MD5"

    invoke-static {v2, v3}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v0

    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/ex/auto/MainActivity;->d0:Ljava/lang/String;

    iput-object v2, p0, Lcom/ex/auto/MainActivity;->e0:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v2

    :catchall_1
    :goto_1
    return-object v0
.end method

.method public final S0(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    const-string v0, "MD5"

    const-string v1, "rm -f "

    :try_start_0
    invoke-static {p1, v0}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sem permiss\u00e3o de leitura em "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u2014 normalizando dono/modo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CaFix"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ex/auto/MainActivity;->T()Z

    move-result v2

    const/4 v4, 0x0

    const-string v5, "Update"

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": sem leitura e o canal ADB local est\u00e1 fora \u2014 ligue o ADB no app antes de tentar de novo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LT/L3;->a:LT/L3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ileg\u00edvel e canal ADB local fora \u2014 causa \u00e9 o canal, n\u00e3o o arquivo"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    const/16 v2, 0x1f40

    :try_start_1
    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    invoke-static {p1, v0}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": permiss\u00e3o corrigida, leitura OK"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " 2>&1; echo RM_FEITO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": ileg\u00edvel mesmo ap\u00f3s corrigir permiss\u00e3o \u2014 "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string p1, "apagado, ser\u00e1 baixado de novo"

    goto :goto_0

    :cond_1
    const-string p1, "e n\u00e3o consegui apagar"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/ex/auto/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public final S1()V
    .locals 10

    const v0, 0x7f070059

    invoke-static {p0, v0}, Landroidx/core/content/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->a0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "binding"

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v6, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v6, :cond_3

    iget-object v5, v6, LU/a;->T2:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v0, v6}, Lcom/ex/auto/MainActivity;->X(Landroid/view/View;Landroid/graphics/drawable/Drawable$ConstantState;Ljava/util/ArrayList;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_2

    check-cast v6, Landroid/view/View;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fav_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x5f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/ex/auto/MainActivity;->Q0(Landroid/view/View;Ljava/lang/String;)V

    move v4, v7

    goto :goto_1

    :cond_2
    invoke-static {}, Lw0/j;->U()V

    throw v3

    :cond_3
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_a

    iget-object v2, v2, LU/a;->R0:LU/b;

    iget-object v2, v2, LU/b;->h:Landroid/widget/LinearLayout;

    invoke-static {v2, v0, v1}, Lcom/ex/auto/MainActivity;->X(Landroid/view/View;Landroid/graphics/drawable/Drawable$ConstantState;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v4

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    if-ltz v2, :cond_5

    check-cast v6, Landroid/view/View;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fav_midia_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/ex/auto/MainActivity;->Q0(Landroid/view/View;Ljava/lang/String;)V

    move v2, v7

    goto :goto_2

    :cond_5
    invoke-static {}, Lw0/j;->U()V

    throw v3

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_9

    iget-object v2, v2, LU/a;->R0:LU/b;

    iget-object v2, v2, LU/b;->g:Landroid/widget/LinearLayout;

    invoke-static {v2, v0, v1}, Lcom/ex/auto/MainActivity;->X(Landroid/view/View;Landroid/graphics/drawable/Drawable$ConstantState;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v4, 0x1

    if-ltz v4, :cond_7

    check-cast v1, Landroid/view/View;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fav_gestos_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/ex/auto/MainActivity;->Q0(Landroid/view/View;Ljava/lang/String;)V

    move v4, v2

    goto :goto_3

    :cond_7
    invoke-static {}, Lw0/j;->U()V

    throw v3

    :cond_8
    return-void

    :cond_9
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-static {v5}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_b
    return-void
.end method

.method public final T0()V
    .locals 12

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, LU/a;->I0:Landroid/widget/LinearLayout;

    invoke-static {p0}, LT/Y;->W(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iget-object v4, p0, Lcom/ex/auto/MainActivity;->Y:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    if-eq v7, v0, :cond_0

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ph_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, 0x0

    invoke-direct {v6, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v7, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x4

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    const/16 v8, 0xa

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8, v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->p2()V

    return-void

    :cond_4
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final T1()V
    .locals 6

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->l1()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->m1()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->b1()V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->b:Landroid/widget/TextView;

    new-instance v3, LT/T1;

    const/16 v4, 0xb

    invoke-direct {v3, v4, p0}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->i:Landroid/widget/TextView;

    new-instance v3, LT/T1;

    const/16 v4, 0xc

    invoke-direct {v3, v4, p0}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->n:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "gestures_enabled"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, LT/W1;

    const/4 v5, 0x2

    invoke-direct {v4, v5, p0}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {p0, v0, v3, v4}, Lcom/ex/auto/MainActivity;->v2(Lcom/google/android/material/switchmaterial/SwitchMaterial;ZLH0/p;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->d:Landroid/widget/TextView;

    new-instance v1, LT/T1;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final U0()V
    .locals 9

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v0, v0, LU/a;->I0:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v3, v4}, LA/b;->i0(II)LL0/c;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, LL0/a;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    move-object v5, v3

    check-cast v5, LL0/b;

    iget-boolean v5, v5, LL0/b;->c:Z

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, LL0/b;

    invoke-virtual {v5}, LL0/b;->a()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/ex/auto/MainActivity;->Y:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    const-string v6, "<get-entries>(...)"

    invoke-static {v5, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_2

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    check-cast v6, Ljava/util/Map$Entry;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v6, :cond_9

    const-string v7, "ph_"

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, LU/a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_6
    move-object v7, v2

    :goto_3
    if-nez v7, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v8, p0, Lcom/ex/auto/MainActivity;->Z:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    if-nez v5, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    :cond_8
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_9
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->p2()V

    return-void

    :cond_b
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final V()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, LU/a;->m:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    const v1, 0x7f0f003a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, LU/a;->A2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->c0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT/V1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v0, v2}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final V1()V
    .locals 10

    const-string v0, "temp_batt_pill_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_c

    new-instance v4, LT/T1;

    const/16 v5, 0xf

    invoke-direct {v4, v5, p0}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v1, LU/a;->g1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_b

    iget-object v5, v1, LU/a;->p2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v8, LT/W1;

    const/4 v1, 0x4

    invoke-direct {v8, v1, p0}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v6, "temp_batt_pill_enabled"

    const/4 v7, 0x0

    const/4 v9, 0x4

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_a

    new-instance v4, LT/h2;

    const/4 v5, 0x0

    invoke-direct {v4, v0, p0, v5}, LT/h2;-><init>(Landroid/content/SharedPreferences;Lcom/ex/auto/MainActivity;I)V

    iget-object v1, v1, LU/a;->U:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_9

    new-instance v4, LT/h2;

    const/4 v5, 0x1

    invoke-direct {v4, v0, p0, v5}, LT/h2;-><init>(Landroid/content/SharedPreferences;Lcom/ex/auto/MainActivity;I)V

    iget-object v1, v1, LU/a;->S:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_8

    new-instance v4, LT/h2;

    const/4 v5, 0x2

    invoke-direct {v4, v0, p0, v5}, LT/h2;-><init>(Landroid/content/SharedPreferences;Lcom/ex/auto/MainActivity;I)V

    iget-object v1, v1, LU/a;->T:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->r1()V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_7

    new-instance v4, LT/h2;

    const/4 v5, 0x3

    invoke-direct {v4, v0, p0, v5}, LT/h2;-><init>(Landroid/content/SharedPreferences;Lcom/ex/auto/MainActivity;I)V

    iget-object v1, v1, LU/a;->W:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_6

    new-instance v4, LT/h2;

    const/4 v5, 0x4

    invoke-direct {v4, v0, p0, v5}, LT/h2;-><init>(Landroid/content/SharedPreferences;Lcom/ex/auto/MainActivity;I)V

    iget-object v1, v1, LU/a;->V:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->q1()V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_5

    iget-object v1, v1, LU/a;->z1:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_4

    const-string v5, "pill_alpha"

    const/16 v6, 0x55

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v1, v1, LU/a;->z1:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_3

    new-instance v5, LT/t3;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, LT/t3;-><init>(Landroid/content/SharedPreferences;I)V

    iget-object v1, v1, LU/a;->z1:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_2

    iget-object v1, v1, LU/a;->A1:Landroid/widget/SeekBar;

    const/16 v5, 0x96

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_1

    const-string v5, "pill_size_pct"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, -0x32

    iget-object v1, v1, LU/a;->A1:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_0

    new-instance v2, LT/t3;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, LT/t3;-><init>(Landroid/content/SharedPreferences;I)V

    iget-object v0, v1, LU/a;->A1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_0
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final W()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, LU/a;->n:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    const v1, 0x7f0f03cf

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, LU/a;->R2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, LT/U1;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final X0(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->f0:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    new-instance p1, LT/m2;

    invoke-direct {p1, p0}, LT/m2;-><init>(Lcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p1, LT/n2;

    invoke-direct {p1, p0}, LT/n2;-><init>(Lcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->f0:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f0f0273

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public final X1()V
    .locals 10

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update_channel"

    const-string v2, "stable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_3

    const v0, 0x7f0901f7
    iget-object v1, v1, LU/a;->x1:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2

    new-instance v1, LT/f2;

    const/4 v4, 0x0

    invoke-direct {v1, v4, p0}, LT/f2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->x1:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1

    iget-object v5, v0, LU/a;->Y1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v6, "auto_update_enabled"

    const/16 v9, 0x8

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    return-void

    :cond_1
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final Y()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.njda.adapter"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v2, "sourceDir"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "/data/app/"

    invoke-static {v1, v2, v0}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public final Y0()V
    .locals 9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "UPDATE_DRIVE_REGEN_MODES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->z0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "saved_regen"

    const v2, 0x20020502

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->z0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "saved_drive"

    const v3, 0x22010102

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->k0()V

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    filled-new-array {v3, v4}, [I

    move-result-object v5

    move v6, v3

    :goto_0
    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    aget v7, v5, v6

    const v8, 0x20020500

    :try_start_0
    invoke-virtual {v2, v8, v7, v0}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v2, LT/Z1;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v1, v4}, LT/Z1;-><init>(Lcom/ex/auto/MainActivity;II)V

    const-wide/16 v4, 0x1c2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->k0()V

    :cond_2
    return-void
.end method

.method public final a0()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "connadaptor_modo"

    const-string v2, "ambos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public final a1()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, LA/b;->i0(II)LL0/c;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, LL0/a;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v4, v2

    check-cast v4, LL0/b;

    iget-boolean v4, v4, LL0/b;->c:Z

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, LL0/b;

    invoke-virtual {v4}, LL0/b;->a()I

    move-result v4

    invoke-static {p0, v4}, LT/Y;->T(Landroid/content/Context;I)LT/k;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LT/k;

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Count overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    const v0, 0x7f0f0074

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0073

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, v2, LU/a;->U0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "aa"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f0217

    goto :goto_0

    :cond_0
    const-string v0, "carplay"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f021d

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0219

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b1()V
    .locals 5

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gestures_ac_swipe_single_step"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_3

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v4, 0x7f05002e

    goto :goto_0

    :cond_0
    const v4, 0x7f05003e

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_2

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final b2()V
    .locals 3

    const v0, 0x7f0f004e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f004d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/ex/auto/MainActivity;->d2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c0()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "connadaptor_versao_alvo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v2, v0

    :cond_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    invoke-static {}, Lcom/ex/auto/MainActivity;->s2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1114"

    const-string v2, "1111"

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, LT/L3;->a:LT/L3;

    const-string v4, "central reporta f\u00e1brica "

    const-string v5, " \u2014 n\u00e3o h\u00e1 artefato publicado para ela; a ativa\u00e7\u00e3o vai recusar por VERSION_DOWNGRADE"

    const-string v6, "ConnAdaptor"

    invoke-static {v4, v0, v5, v3, v6}, LM/d0;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LT/L3;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0, v1}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v2

    :cond_4
    :goto_0
    return-object v0
.end method

.method public final c1()V
    .locals 5

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adb_gpio_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    const v4, 0x7f0f0082

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const v4, 0x7f0f03dd

    goto :goto_0

    :goto_1
    iget-object v1, v1, LU/a;->c:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v0, -0xe0408b

    goto :goto_2

    :cond_1
    const v0, -0x231801

    :goto_2
    iget-object v1, v1, LU/a;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final c2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "exit_code=0"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v0, 0x7f0f01c9

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lv0/a;

    invoke-direct {v0, p1, p2}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "INSTALL_FAILURE: apkm_corrompido"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0f0098

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_1
    const-string v0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f0f02d2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_2
    const-string v0, "INSTALL_FAILED_INVALID_APK"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "INSTALL_PARSE_FAILED"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f0f01de

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_4
    const-string v0, "INSTALL_FAILED_VERSION_DOWNGRADE"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f0f01cd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_5
    const-string v0, "INSTALL_FAILED_ALREADY_EXISTS"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f0f02b6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_6
    const-string v0, "exit_code=41"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "cp:"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "exit"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_1

    :cond_7
    const-string v0, "INSTALL_FAILED_ABORTED"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x7f0f01c5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_8
    const-string v0, "Failure"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {p1}, LO0/j;->H0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_0

    :cond_a
    move-object p2, v2

    :goto_0
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_b

    invoke-static {p2}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    :cond_b
    const-string p1, ""

    :cond_c
    const p2, 0x7f0f01c8

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_d
    const-string v0, "exit_code=12"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const p1, 0x7f0f0135

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_e
    const-string v0, "exit_code=13"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const p1, 0x7f0f0399

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_f
    const-string v0, "exit_code=14"

    invoke-static {p1, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    const p1, 0x7f0f039a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_10
    const p1, 0x7f0f0165

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_11
    :goto_1
    const p1, 0x7f0f0191

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_12
    :goto_2
    const p1, 0x7f0f018f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {p1}, LI0/f;->b(Ljava/lang/Object;)V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lv0/a;

    invoke-direct {v0, p2, p1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    iget-object p1, v0, Lv0/a;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, v0, Lv0/a;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    new-instance v0, LT/j1;

    invoke-direct {v0, p0}, LT/j1;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_14

    const v1, 0x7f0f01d0

    :goto_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_14
    const v1, 0x7f0f01c6

    goto :goto_5

    :goto_6
    iget-object v3, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v1, v3, Le/e;->d:Ljava/lang/CharSequence;

    iput-object p2, v3, Le/e;->f:Ljava/lang/CharSequence;

    const p2, 0x7f0f0034

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, LT/j1;->j()Le/i;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance p2, LT/U1;

    const/16 v0, 0x12

    invoke-direct {p2, v0, p0}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    return-void
.end method

.method public final d0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "1114"

    invoke-static {p1, v0}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0128

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0127

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d1()V
    .locals 6

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "aeb_state_saved"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "aeb_desired"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v2, 0x0

    const-string v4, "binding"

    if-eqz v1, :cond_4

    const-string v5, "swAebFunction"

    iget-object v1, v1, LU/a;->T1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-static {v1, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aeb_restore_on_boot"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    const v3, 0x7f05002e

    :goto_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_1

    :cond_0
    const v3, 0x7f05003e

    goto :goto_0

    :goto_1
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v1, v1, LU/a;->d:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_2

    :cond_1
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_2
    iget-object v1, v1, LU/a;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final d2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, LT/j1;

    invoke-direct {v0, p0}, LT/j1;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v1, Le/e;

    iput-object p1, v1, Le/e;->d:Ljava/lang/CharSequence;

    iput-object p2, v1, Le/e;->f:Ljava/lang/CharSequence;

    const p1, 0x7f0f0199

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, LT/j1;->j()Le/i;

    return-void
.end method

.method public final e0()J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e1()V
    .locals 2

    iget-boolean v0, p0, Lcom/ex/auto/MainActivity;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LT/U1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f0()Ljava/lang/String;
    .locals 7

    const-string v0, "com.njda.adapter"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v3, "getApplicationInfo(...)"

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ex/auto/MainActivity;->d0:Ljava/lang/String;

    invoke-static {v3, v4}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->e0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v4, "MD5"

    invoke-static {v0, v4}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    :try_start_2
    iput-object v3, p0, Lcom/ex/auto/MainActivity;->d0:Ljava/lang/String;

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->e0:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v3, "sourceDir"

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "/data/app/"

    invoke-static {v1, v3, v2}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f0107

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v3, v1

    goto :goto_3

    :cond_1
    const v1, 0x7f0f0108

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_3
    invoke-static {v3}, LI0/f;->b(Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    invoke-static {v2, v0}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3
    const-string v0, "?"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    const v0, 0x7f0f0104

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method public final f1()V
    .locals 4

    const-string v0, "?"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-wide/16 v1, -0x1

    :goto_1
    iget-object v3, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0336

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, LU/a;->u2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n                setenforce 0 2>/dev/null || true\n                "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n                echo \"== copiar APK para tmp (pm install) ==\"\n                chmod 644 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true\n                rm -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 2>/dev/null || true\n                cp -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 || exit 47\n                sync 2>/dev/null || true\n                chown root:root "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 || true\n                chmod 644 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1 || true\n                restorecon -v "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>/dev/null || true\n                ls -l "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ex/auto/MainActivity;->Y1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 2>&1\n            "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1d4c0

    if-eqz p4, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->G1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const-string v0, "Falha no ADB local"

    const/4 v1, 0x1

    invoke-static {p4, v0, v1}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, -0x1

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p4}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p3, p2, p1, v0, p4}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f0f0136

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p4}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 6

    const-string v0, "temp"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "hvac_digital_ext_temp"

    const-string v2, "hvac_digital_batt"

    const-string v3, "batt"

    const-string v4, "hvac_digital_temp"

    if-eqz v0, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_3

    invoke-interface {v5, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->v1()V

    const p1, 0x7f0f02a3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, LT/j2;

    invoke-direct {v2, p0, p1, v0, v1}, LT/j2;-><init>(Lcom/ex/auto/MainActivity;ZZZ)V

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g1()V
    .locals 4

    iget-boolean v0, p0, Lcom/ex/auto/MainActivity;->M:Z

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2

    const v3, 0x7f0f031b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, LU/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1

    const v3, -0xe0408b

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v0, v0, LU/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LU/a;->f:Landroid/widget/Button;

    const v1, -0xf8ece1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_6

    const v3, 0x7f0f031a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, LU/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5

    const v3, -0x3fc6d5

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v0, v0, LU/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4

    iget-object v0, v0, LU/a;->f:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_4
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final h0()Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->i0:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LA/b;->Z(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/ex/auto/MainActivity;->j0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v1, ":"

    invoke-static {v2, v1}, LO0/j;->R0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v1, :cond_3

    move-object v0, v2

    :catchall_0
    :cond_3
    return-object v0
.end method

.method public final h1(Z)V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_5

    if-eqz p1, :cond_0

    const-string v3, "ON"

    goto :goto_0

    :cond_0
    const-string v3, "OFF"

    :goto_0
    iget-object v0, v0, LU/a;->w0:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    const v3, 0x7f05002e

    goto :goto_1

    :cond_1
    const v3, 0x7f05003e

    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v0, v0, LU/a;->w0:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_2

    :cond_2
    const p1, 0x7f05003f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :goto_2
    iget-object v0, v0, LU/a;->w0:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_3
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final h2(Landroid/widget/Button;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x7f05002e

    goto :goto_0

    :cond_0
    const v0, 0x7f05003e

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f05003f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_2

    const p2, 0x7f0f0310

    :goto_2
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_2
    const p2, 0x7f0f045e

    goto :goto_2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i0(LT/p3;LT/E2;)V
    .locals 12

    invoke-static {}, LT/Y;->C()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->G1(ILjava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CentralEXAuto-update-staging.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p1, LT/p3;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v9, LT/i2;

    const/16 v2, 0xa

    invoke-direct {v9, v2, p0}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v3, p1, LT/p3;->c:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v5, p1, LT/p3;->b:Ljava/lang/String;

    const/16 v11, 0x30

    move-object v2, p0

    move-object v4, v0

    move-object v6, v1

    move-object v10, p2

    invoke-static/range {v2 .. v11}, Lcom/ex/auto/MainActivity;->j0(Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILH0/a;LH0/l;I)V

    const-string p2, "SHA-256"

    if-nez v1, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, "?"

    :cond_1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f0f0325

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    iget-wide v4, p1, LT/p3;->a:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_6

    iget-object p1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez p1, :cond_3

    new-array p1, v1, [Landroid/content/pm/Signature;

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, p1, v1

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    const-string v5, "digest(...)"

    invoke-static {v4, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, LT/a3;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, LT/a3;-><init>(I)V

    invoke-static {v4, v5}, Lw0/h;->X([BLH0/l;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string p1, "c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8"

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const p2, 0x7f0f0324

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f0f0326

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance p1, Ljava/lang/IllegalStateException;

    const p2, 0x7f0f0323

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-static {v0, p2}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "/data/local/tmp/CentralEXAuto-update.apk"

    const-string v2, "update"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ex/auto/MainActivity;->f2(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x10

    invoke-static {v1, p1}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f0f030e

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i2(Landroid/widget/Button;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x7f05002e

    goto :goto_0

    :cond_0
    const v0, 0x7f05003e

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    goto :goto_1

    :cond_1
    const p2, 0x7f05003f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final j1(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 11

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->z0()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "saved_regen"

    const v1, 0x20020502

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->z0()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "saved_drive"

    const v1, 0x22010102

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    :goto_1
    const v0, 0x20020501

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const v0, 0x20020503

    if-eq p1, v0, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    const v0, 0x22010101

    if-eq p2, v0, :cond_5

    const v0, 0x22010103

    if-eq p2, v0, :cond_4

    move p2, v2

    goto :goto_3

    :cond_4
    move p2, v1

    goto :goto_3

    :cond_5
    move p2, v3

    :goto_3
    const v0, 0x7f05002e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v4, 0x7f05003e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    const v5, 0x7f05003f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iget-object v6, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v7, 0x0

    const-string v8, "binding"

    if-eqz v6, :cond_11

    const-string v9, "btnRegenFracoQuick"

    iget-object v6, v6, LU/a;->c0:Landroid/widget/Button;

    invoke-static {v6, v9}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    if-ne p1, v3, :cond_6

    move v10, v3

    goto :goto_4

    :cond_6
    move v10, v9

    :goto_4
    invoke-static {v0, v4, v5, v6, v10}, Lcom/ex/auto/MainActivity;->k1(IIILandroid/widget/Button;Z)V

    iget-object v6, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v6, :cond_10

    const-string v10, "btnRegenMedioQuick"

    iget-object v6, v6, LU/a;->d0:Landroid/widget/Button;

    invoke-static {v6, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v2, :cond_7

    move v10, v3

    goto :goto_5

    :cond_7
    move v10, v9

    :goto_5
    invoke-static {v0, v4, v5, v6, v10}, Lcom/ex/auto/MainActivity;->k1(IIILandroid/widget/Button;Z)V

    iget-object v6, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v6, :cond_f

    const-string v10, "btnRegenForteQuick"

    iget-object v6, v6, LU/a;->b0:Landroid/widget/Button;

    invoke-static {v6, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v1, :cond_8

    move p1, v3

    goto :goto_6

    :cond_8
    move p1, v9

    :goto_6
    invoke-static {v0, v4, v5, v6, p1}, Lcom/ex/auto/MainActivity;->k1(IIILandroid/widget/Button;Z)V

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p1, :cond_e

    const-string v6, "btnDriveEcoQuick"

    iget-object p1, p1, LU/a;->u:Landroid/widget/Button;

    invoke-static {p1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p2, v3, :cond_9

    move v6, v3

    goto :goto_7

    :cond_9
    move v6, v9

    :goto_7
    invoke-static {v0, v4, v5, p1, v6}, Lcom/ex/auto/MainActivity;->k1(IIILandroid/widget/Button;Z)V

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p1, :cond_d

    const-string v6, "btnDriveComfortQuick"

    iget-object p1, p1, LU/a;->t:Landroid/widget/Button;

    invoke-static {p1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p2, v2, :cond_a

    move v2, v3

    goto :goto_8

    :cond_a
    move v2, v9

    :goto_8
    invoke-static {v0, v4, v5, p1, v2}, Lcom/ex/auto/MainActivity;->k1(IIILandroid/widget/Button;Z)V

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz p1, :cond_c

    const-string v2, "btnDriveSportQuick"

    iget-object p1, p1, LU/a;->v:Landroid/widget/Button;

    invoke-static {p1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p2, v1, :cond_b

    goto :goto_9

    :cond_b
    move v3, v9

    :goto_9
    invoke-static {v0, v4, v5, p1, v3}, Lcom/ex/auto/MainActivity;->k1(IIILandroid/widget/Button;Z)V

    return-void

    :cond_c
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_d
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_e
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_f
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_10
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v7

    :cond_11
    invoke-static {v8}, LI0/f;->h(Ljava/lang/String;)V

    throw v7
.end method

.method public final j2(ZLH0/l;)Lcom/google/android/material/switchmaterial/SwitchMaterial;
    .locals 2

    new-instance v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->l2(Lcom/google/android/material/switchmaterial/SwitchMaterial;)V

    invoke-virtual {v0, p1}, Lj/d1;->setChecked(Z)V

    new-instance p1, LT/d2;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1}, LT/d2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0
.end method

.method public final k0()V
    .locals 2

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final k2(I)V
    .locals 14

    iget v0, p0, Lcom/ex/auto/MainActivity;->J:I

    iget v1, p0, Lcom/ex/auto/MainActivity;->X:I

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->U0()V

    :cond_0
    iput p1, p0, Lcom/ex/auto/MainActivity;->J:I

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1c

    iget-object v0, v0, LU/a;->T2:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1b

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez p1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    iget-object v0, v0, LU/a;->q1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1a

    if-nez p1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    iget-object v0, v0, LU/a;->t1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_19

    if-nez p1, :cond_3

    move v3, v4

    :cond_3
    iget-object v0, v0, LU/a;->r1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_18

    if-nez p1, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const v3, 0x3d4ccccd    # 0.05f

    :goto_2
    iget-object v0, v0, LU/a;->Q0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x7f050039

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v3, 0x7f050040

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v5, p0, Lcom/ex/auto/MainActivity;->W:Ljava/util/List;

    const-string v6, "navSections"

    if-eqz v5, :cond_17

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v4

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-ltz v7, :cond_d

    check-cast v8, LT/n3;

    const/4 v10, 0x1

    if-ne v7, p1, :cond_5

    move v7, v10

    goto :goto_4

    :cond_5
    move v7, v4

    :goto_4
    iget-object v11, v8, LT/n3;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v7}, Landroid/view/View;->setSelected(Z)V

    if-eqz v7, :cond_6

    move v11, v0

    goto :goto_5

    :cond_6
    move v11, v3

    :goto_5
    iget-object v8, v8, LT/n3;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/ImageView;

    if-eqz v13, :cond_7

    check-cast v12, Landroid/widget/ImageView;

    goto :goto_6

    :cond_7
    move-object v12, v1

    :goto_6
    if-eqz v12, :cond_8

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_8
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v12, v10, Landroid/widget/TextView;

    if-eqz v12, :cond_9

    check-cast v10, Landroid/widget/TextView;

    goto :goto_7

    :cond_9
    move-object v10, v1

    :goto_7
    if-eqz v10, :cond_a

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_a
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_c

    if-eqz v7, :cond_b

    move v7, v4

    goto :goto_8

    :cond_b
    const/4 v7, 0x4

    :goto_8
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    move v7, v9

    goto :goto_3

    :cond_d
    invoke-static {}, Lw0/j;->U()V

    throw v1

    :cond_e
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->W:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-static {v0, p1}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LT/n3;

    if-eqz v0, :cond_f

    iget-object v0, v0, LT/n3;->b:Ljava/lang/String;

    if-nez v0, :cond_10

    :cond_f
    const-string v0, "CentralEXAuto"

    :cond_10
    iget-object v3, p0, Lcom/ex/auto/MainActivity;->b0:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v4, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v4, :cond_11

    invoke-virtual {p0, v0, v3}, Lcom/ex/auto/MainActivity;->m2(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v2, v4, LU/a;->M2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_11
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_12
    iget-object v3, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v3, :cond_15

    iget-object v2, v3, LU/a;->M2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, LT/W0;

    invoke-direct {v2, p0, v0, p1}, LT/W0;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_9
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->W:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-static {v0, p1}, Lw0/i;->b0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LT/n3;

    if-eqz p1, :cond_13

    iget-object p1, p1, LT/n3;->c:LH0/a;

    if-eqz p1, :cond_13

    invoke-interface {p1}, LH0/a;->a()Ljava/lang/Object;

    :cond_13
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->w1()V

    return-void

    :cond_14
    invoke-static {v6}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_16
    invoke-static {v6}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_17
    invoke-static {v6}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_18
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_19
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1a
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1b
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1c
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final l0(Ljava/lang/String;Ljava/lang/String;LH0/l;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const-string v4, "queryIntentActivities(...)"

    invoke-static {v3, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v5}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lv0/a;

    invoke-direct {v7, v6, v5}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, LT/E;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, LT/E;-><init>(I)V

    invoke-static {v3, v2}, Lw0/i;->f0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    sget-object v2, Lw0/q;->a:Lw0/q;

    :goto_2
    const v3, 0x7f0f023c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2}, Lw0/k;->V(Ljava/lang/Iterable;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv0/a;

    iget-object v7, v6, Lv0/a;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v6, v6, Lv0/a;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, p2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "\u2713  "

    invoke-static {v7, v6}, LM/d0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-array p2, v1, [Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    const-string v4, "elements"

    invoke-static {p2, v4}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, p2

    const/4 v5, 0x1

    add-int v6, v5, v4

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, LI0/f;->b(Ljava/lang/Object;)V

    check-cast v3, [Ljava/lang/String;

    new-instance p2, LT/j1;

    invoke-direct {p2, p0}, LT/j1;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, LT/j1;->b:Ljava/lang/Object;

    check-cast v1, Le/e;

    iput-object p1, v1, Le/e;->d:Ljava/lang/CharSequence;

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance p1, LT/f;

    const/4 v4, 0x3

    invoke-direct {p1, p3, v4, v2}, LT/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v3, v1, Le/e;->n:[Ljava/lang/CharSequence;

    iput-object p1, v1, Le/e;->p:Landroid/content/DialogInterface$OnClickListener;

    const/high16 p1, 0x1040000

    invoke-virtual {p2, p1, v0}, LT/j1;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p2}, LT/j1;->j()Le/i;

    return-void
.end method

.method public final l1()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->n:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const-string v1, "swGesturesEnable"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "gestures_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/MainActivity;->O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final l2(Lcom/google/android/material/switchmaterial/SwitchMaterial;)V
    .locals 7

    const v0, 0x7f05002e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v1, 0x7f05003e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const v2, 0x7f0700dc

    invoke-static {p0, v2}, Landroidx/core/content/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lj/d1;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0700db

    invoke-static {p0, v2}, Landroidx/core/content/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lj/d1;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/content/res/ColorStateList;

    const v3, 0x10100a0

    filled-new-array {v3}, [I

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [I

    filled-new-array {v4, v6}, [[I

    move-result-object v4

    const/4 v6, -0x1

    filled-new-array {v6, v6}, [I

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v2}, Lj/d1;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {v3}, [I

    move-result-object v3

    new-array v4, v5, [I

    filled-new-array {v3, v4}, [[I

    move-result-object v3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v2}, Lj/d1;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Lj/d1;->setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lj/d1;->setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v5}, Lj/d1;->setThumbTextPadding(I)V

    const/16 v0, 0x3a

    int-to-float v0, v0

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lj/d1;->setSwitchMinWidth(I)V

    return-void
.end method

.method public final m0(Z)Z
    .locals 9

    const-string v0, "ADB"

    iget v1, p0, Lcom/ex/auto/MainActivity;->j0:I

    const-string v2, "GPIO "

    const-string v3, "out "

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/ex/auto/MainActivity;->i0:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, LA/b;->k0(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->h0()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    sget-object v6, LT/L3;->a:LT/L3;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " por sysfs: pedi "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", li "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    const-string v3, "n/d"

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3

    const-string p1, ""

    goto :goto_3

    :cond_3
    const-string p1, " \u2014 vou tentar pelo ADB local"

    :goto_3
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v0, p1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto :goto_5

    :goto_4
    sget-object v3, LT/L3;->a:LT/L3;

    const-string v5, " por sysfs falhou: "

    invoke-static {v2, v1, v5}, LM/d0;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return v4
.end method

.method public final m1()V
    .locals 5

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gestures_restore_on_boot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_3

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v4, 0x7f05002e

    goto :goto_0

    :cond_0
    const v4, 0x7f05003e

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_2

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v1, v1, LU/b;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final m2(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5

    const-string v0, "   "

    invoke-static {v0, p2}, LM/d0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - v2.19.78(674)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3faccccd    # 1.35f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f050041

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f3851ec    # 0.72f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0, v1, p2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, 0x7f050042

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, p2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public final n1()V
    .locals 8

    invoke-static {}, Le/n;->c()Lu/e;

    move-result-object v0

    const-string v1, "getApplicationLocales(...)"

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lu/e;->b()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "pt-BR"

    if-nez v1, :cond_1

    iget-object v0, v0, Lu/e;->a:Lu/f;

    iget-object v0, v0, Lu/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    :goto_0
    const-string v0, "es"

    invoke-static {v3, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ru"

    invoke-static {v3, v1}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v4, "vi"

    invoke-static {v3, v4}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "en"

    invoke-static {v3, v5}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v5, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v6, 0x0

    const-string v7, "binding"

    if-eqz v5, :cond_8

    iget-object v5, v5, LU/a;->K:Landroid/widget/Button;

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, v5, v2}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_7

    iget-object v2, v2, LU/a;->J:Landroid/widget/Button;

    invoke-virtual {p0, v2, v0}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_6

    iget-object v0, v0, LU/a;->L:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5

    iget-object v0, v0, LU/a;->M:Landroid/widget/Button;

    invoke-virtual {p0, v0, v4}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4

    iget-object v0, v0, LU/a;->I:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    return-void

    :cond_4
    invoke-static {v7}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_5
    invoke-static {v7}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_6
    invoke-static {v7}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_7
    invoke-static {v7}, LI0/f;->h(Ljava/lang/String;)V

    throw v6

    :cond_8
    invoke-static {v7}, LI0/f;->h(Ljava/lang/String;)V

    throw v6
.end method

.method public final o1()V
    .locals 2

    iget v0, p0, Lcom/ex/auto/MainActivity;->C:I

    new-instance v1, LT/Z1;

    invoke-direct {v1, v0, p0}, LT/Z1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o2(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v9, p0

    move-object v3, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    if-nez p1, :cond_0

    const v0, 0x7f0f024b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f05002e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f050038

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v8, LT/Q2;

    move-object v0, v8

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, LT/Q2;-><init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f01cc

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f05003f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v12, LT/R2;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p1

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, LT/R2;-><init>(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, LT/K2;

    move-object/from16 v1, p7

    invoke-direct {v0, p0, v1}, LT/K2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v6, p0

    const/16 v12, 0xb

    const/16 v16, 0x0

    const-string v17, "binding"

    const/16 v2, 0x16

    const/4 v1, 0x6

    const/4 v0, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x7

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-super/range {p0 .. p1}, Le/j;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    invoke-static/range {v18 .. v18}, LU/a;->a(Landroid/view/LayoutInflater;)LU/a;

    move-result-object v3

    iput-object v3, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    iget-object v3, v3, LU/a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Le/j;->setContentView(Landroid/view/View;)V

    const-string v3, "App"

    const-string v4, "Sess\u00e3o iniciada"

    invoke-virtual {v6, v3, v4}, Lcom/ex/auto/MainActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    invoke-static {v3, v4}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, v6, Lcom/ex/auto/MainActivity;->E:Landroid/net/wifi/WifiManager;

    new-instance v3, LT/U1;

    invoke-direct {v3, v12, v6}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v4, v6, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v3, LT/Y0;->a:LT/Y0;

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "<get-prefs>(...)"

    invoke-static {v3, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "dr_sent_v2"

    invoke-interface {v3, v12, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v12, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, LT/H;

    invoke-direct {v9, v6, v3, v1}, LT/H;-><init>(Landroid/content/ContextWrapper;Landroid/content/SharedPreferences;I)V

    const-wide/16 v10, 0x2ee0

    invoke-virtual {v12, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, LT/V0;

    invoke-direct {v10, v3, v13}, LT/V0;-><init>(Landroid/content/SharedPreferences;I)V

    const-wide/16 v11, 0x1770

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, LT/Y0;->m(Landroid/content/ContextWrapper;Landroid/content/SharedPreferences;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-static {v11, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v5, "versionName"

    invoke-static {v3, v5}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LT/G2;

    invoke-direct {v3, v2, v6}, LT/G2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v3, LT/n3;

    iget-object v5, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v5, :cond_88

    iget-object v5, v5, LU/a;->o1:Landroid/widget/LinearLayout;

    const v9, 0x7f0f04d0

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "getString(...)"

    invoke-static {v9, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, LT/b1;

    invoke-direct {v11, v15}, LT/b1;-><init>(I)V

    invoke-direct {v3, v5, v9, v11}, LT/n3;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;LH0/a;)V

    new-instance v5, LT/n3;

    iget-object v9, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v9, :cond_87

    iget-object v9, v9, LU/a;->n1:Landroid/widget/LinearLayout;

    const v11, 0x7f0f0428

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, LT/b1;

    invoke-direct {v12, v15}, LT/b1;-><init>(I)V

    invoke-direct {v5, v9, v11, v12}, LT/n3;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;LH0/a;)V

    new-instance v9, LT/n3;

    iget-object v11, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v11, :cond_86

    iget-object v11, v11, LU/a;->p1:Landroid/widget/LinearLayout;

    const v12, 0x7f0f0239

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LT/i2;

    invoke-direct {v1, v8, v6}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-direct {v9, v11, v12, v1}, LT/n3;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;LH0/a;)V

    new-instance v1, LT/n3;

    iget-object v11, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v11, :cond_85

    iget-object v11, v11, LU/a;->k1:Landroid/widget/LinearLayout;

    const v12, 0x7f0f03f5

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LT/i2;

    invoke-direct {v2, v14, v6}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-direct {v1, v11, v12, v2}, LT/n3;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;LH0/a;)V

    new-instance v2, LT/n3;

    iget-object v11, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v11, :cond_84

    iget-object v11, v11, LU/a;->j1:Landroid/widget/LinearLayout;

    const v12, 0x7f0f0237

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, LT/i2;

    invoke-direct {v8, v13, v6}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-direct {v2, v11, v12, v8}, LT/n3;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;LH0/a;)V

    new-instance v8, LT/n3;

    iget-object v11, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v11, :cond_83

    iget-object v11, v11, LU/a;->i1:Landroid/widget/LinearLayout;

    const v12, 0x7f0f03ec

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, LT/i2;

    invoke-direct {v13, v7, v6}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-direct {v8, v11, v12, v13}, LT/n3;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;LH0/a;)V

    new-instance v11, LT/n3;

    iget-object v12, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v12, :cond_82

    iget-object v12, v12, LU/a;->l1:Landroid/widget/LinearLayout;

    const v13, 0x7f0f023a

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, LT/b1;

    invoke-direct {v7, v15}, LT/b1;-><init>(I)V

    invoke-direct {v11, v12, v13, v7}, LT/n3;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;LH0/a;)V

    new-instance v7, LT/n3;

    iget-object v12, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v12, :cond_81

    iget-object v12, v12, LU/a;->m1:Landroid/widget/LinearLayout;

    const v13, 0x7f0f0238

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, LT/i2;

    invoke-direct {v10, v0, v6}, LT/i2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-direct {v7, v12, v13, v10}, LT/n3;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;LH0/a;)V

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v9

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v8

    move-object/from16 v25, v11

    move-object/from16 v26, v7

    filled-new-array/range {v19 .. v26}, [LT/n3;

    move-result-object v1

    invoke-static {v1}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Lcom/ex/auto/MainActivity;->W:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    iput v1, v6, Lcom/ex/auto/MainActivity;->X:I

    iget-object v1, v6, Lcom/ex/auto/MainActivity;->W:Ljava/util/List;

    if-eqz v1, :cond_80

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v3, LT/n3;

    iget-object v3, v3, LT/n3;->a:Landroid/widget/LinearLayout;

    new-instance v7, LT/i;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v2, v8}, LT/i;-><init>(Landroid/content/ContextWrapper;II)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v2, v5

    goto :goto_1

    :cond_2
    invoke-static {}, Lw0/j;->U()V

    throw v16

    :cond_3
    iget-object v1, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_7f

    new-instance v2, Lv0/a;

    iget-object v3, v1, LU/a;->N1:Landroid/widget/Button;

    iget-object v5, v1, LU/a;->J0:Landroid/widget/LinearLayout;

    invoke-direct {v2, v3, v5}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lv0/a;

    iget-object v5, v1, LU/a;->Q1:Landroid/widget/Button;

    iget-object v7, v1, LU/a;->M0:Landroid/widget/LinearLayout;

    invoke-direct {v3, v5, v7}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lv0/a;

    iget-object v7, v1, LU/a;->P1:Landroid/widget/Button;

    iget-object v8, v1, LU/a;->L0:Landroid/widget/LinearLayout;

    invoke-direct {v5, v7, v8}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lv0/a;

    iget-object v8, v1, LU/a;->O1:Landroid/widget/Button;

    iget-object v1, v1, LU/a;->K0:Landroid/widget/LinearLayout;

    invoke-direct {v7, v8, v1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v5, v7}, [Lv0/a;

    move-result-object v1

    invoke-static {v1}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ex/auto/MainActivity;->U1(Lcom/ex/auto/MainActivity;Ljava/util/List;)V

    iget-object v1, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_7e

    new-instance v2, Lv0/a;

    iget-object v3, v1, LU/a;->S1:Landroid/widget/Button;

    iget-object v5, v1, LU/a;->O0:Landroid/widget/LinearLayout;

    invoke-direct {v2, v3, v5}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lv0/a;

    iget-object v5, v1, LU/a;->R1:Landroid/widget/Button;

    iget-object v1, v1, LU/a;->N0:Landroid/widget/LinearLayout;

    invoke-direct {v3, v5, v1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Lv0/a;

    move-result-object v1

    invoke-static {v1}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ex/auto/MainActivity;->U1(Lcom/ex/auto/MainActivity;Ljava/util/List;)V

    iget-object v1, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_7d

    iget-object v1, v1, LU/a;->R0:LU/b;

    iget-object v2, v1, LU/b;->k:Landroid/widget/Button;

    iget-object v3, v1, LU/b;->a:Landroid/widget/LinearLayout;

    new-instance v5, Lv0/a;

    invoke-direct {v5, v2, v3}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, LU/b;->m:Landroid/widget/Button;

    iget-object v3, v1, LU/b;->t:Landroid/widget/LinearLayout;

    new-instance v7, Lv0/a;

    invoke-direct {v7, v2, v3}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, LU/b;->j:Landroid/widget/Button;

    iget-object v3, v1, LU/b;->g:Landroid/widget/LinearLayout;

    new-instance v8, Lv0/a;

    invoke-direct {v8, v2, v3}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, LU/b;->l:Landroid/widget/Button;

    iget-object v1, v1, LU/b;->h:Landroid/widget/LinearLayout;

    new-instance v3, Lv0/a;

    invoke-direct {v3, v2, v1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v7, v8, v3}, [Lv0/a;

    move-result-object v1

    invoke-static {v1}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ex/auto/MainActivity;->U1(Lcom/ex/auto/MainActivity;Ljava/util/List;)V

    iget-object v1, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_7c

    new-instance v2, Lv0/a;

    iget-object v3, v1, LU/a;->J1:Landroid/widget/Button;

    iget-object v5, v1, LU/a;->E0:Landroid/widget/LinearLayout;

    invoke-direct {v2, v3, v5}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lv0/a;

    iget-object v5, v1, LU/a;->I1:Landroid/widget/Button;

    iget-object v7, v1, LU/a;->D0:Landroid/widget/LinearLayout;

    invoke-direct {v3, v5, v7}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lv0/a;

    iget-object v7, v1, LU/a;->K1:Landroid/widget/Button;

    iget-object v1, v1, LU/a;->F0:Landroid/widget/LinearLayout;

    invoke-direct {v5, v7, v1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v5}, [Lv0/a;

    move-result-object v1

    invoke-static {v1}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ex/auto/MainActivity;->U1(Lcom/ex/auto/MainActivity;Ljava/util/List;)V

    iget-object v1, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_7b

    new-instance v2, Lv0/a;

    iget-object v3, v1, LU/a;->H1:Landroid/widget/Button;

    iget-object v5, v1, LU/a;->C0:Landroid/widget/LinearLayout;

    invoke-direct {v2, v3, v5}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lv0/a;

    iget-object v5, v1, LU/a;->G1:Landroid/widget/Button;

    iget-object v1, v1, LU/a;->B0:Landroid/widget/LinearLayout;

    invoke-direct {v3, v5, v1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Lv0/a;

    move-result-object v1

    invoke-static {v1}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ex/auto/MainActivity;->U1(Lcom/ex/auto/MainActivity;Ljava/util/List;)V

    iget-object v1, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_7a

    new-instance v2, Lv0/a;

    iget-object v3, v1, LU/a;->M1:Landroid/widget/Button;

    iget-object v5, v1, LU/a;->H0:Landroid/widget/LinearLayout;

    invoke-direct {v2, v3, v5}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lv0/a;

    iget-object v5, v1, LU/a;->L1:Landroid/widget/Button;

    iget-object v1, v1, LU/a;->G0:Landroid/widget/LinearLayout;

    invoke-direct {v3, v5, v1}, Lv0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Lv0/a;

    move-result-object v1

    invoke-static {v1}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/ex/auto/MainActivity;->U1(Lcom/ex/auto/MainActivity;Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->S1()V

    iget-object v1, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_79

    new-instance v2, LT/T1;

    const/16 v3, 0x1a

    invoke-direct {v2, v3, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v1, LU/a;->z0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_78

    iget-object v1, v1, LU/a;->o2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v5, LT/E2;

    const/16 v2, 0xd

    invoke-direct {v5, v2, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "telemetry_autostart"

    const/4 v3, 0x0

    const/4 v7, 0x4

    move v8, v0

    move-object/from16 v0, p0

    const/4 v9, 0x6

    const/16 v10, 0x16

    const/16 v11, 0x11

    move-object v12, v4

    const/16 v13, 0x8

    move-object v4, v5

    const/4 v9, 0x5

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_77

    iget-object v1, v0, LU/a;->r2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    invoke-direct {v4, v11, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "wifi_auto_enable_on_wake"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_76

    iget-object v1, v0, LU/a;->U1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "ap_sempre_aberto"

    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_75

    iget-object v1, v0, LU/a;->k2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/16 v0, 0x18

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "status_temp_ext_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_74

    iget-object v1, v0, LU/a;->h2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/16 v0, 0x19

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "status_battery_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_73

    iget-object v1, v0, LU/a;->l2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/16 v0, 0x1a

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "status_total_km_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_72

    iget-object v1, v0, LU/a;->m2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/16 v0, 0x1b

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "status_trip_km_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_71

    new-instance v1, LT/T1;

    invoke-direct {v1, v15, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->n0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_70

    new-instance v1, LT/h3;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->d1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_6f

    iget-object v1, v0, LU/a;->i2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/W1;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v6}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "status_brightness_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_6e

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "status_brightness_pct"

    const/16 v3, 0x32

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, v0, LU/a;->B1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_6d

    iget-object v1, v0, LU/a;->B1:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/ex/auto/MainActivity;->B(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, LU/a;->O2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_6c

    new-instance v1, LT/s3;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, LT/s3;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, LU/a;->B1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "status_brightness2_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/ex/auto/MainActivity;->h1(Z)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_6b

    new-instance v1, LT/T1;

    invoke-direct {v1, v13, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->w0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_6a

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "status_brightness_pct2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, v0, LU/a;->C1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_69

    iget-object v1, v0, LU/a;->C1:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/ex/auto/MainActivity;->B(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, LU/a;->P2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_68

    new-instance v1, LT/s3;

    invoke-direct {v1, v6, v14}, LT/s3;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, LU/a;->C1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_67

    new-instance v1, LT/T1;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->c1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_66

    iget-object v1, v0, LU/a;->n2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/W1;

    const/4 v0, 0x3

    invoke-direct {v4, v0, v6}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "status_wifi_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_65

    new-instance v1, LT/T1;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->f1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_64

    iget-object v1, v0, LU/a;->j2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/W1;

    invoke-direct {v4, v9, v6}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "status_signal_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_63

    iget-object v0, v0, LU/a;->T1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "aeb_state_saved"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "aeb_desired"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, LT/W1;

    invoke-direct {v2, v15, v6}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/ex/auto/MainActivity;->v2(Lcom/google/android/material/switchmaterial/SwitchMaterial;ZLH0/p;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_62

    new-instance v1, LT/T1;

    invoke-direct {v1, v11, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_61

    iget-object v0, v0, LU/a;->f2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "speed_auto_lock_enabled"

    invoke-interface {v1, v2, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, LT/W1;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v6}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/ex/auto/MainActivity;->v2(Lcom/google/android/material/switchmaterial/SwitchMaterial;ZLH0/p;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_60

    new-instance v1, LT/T1;

    const/16 v2, 0x12

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->g2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5f

    new-instance v1, LT/T1;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->V1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5e

    new-instance v1, LT/T1;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->V0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5d

    new-instance v1, LT/T1;

    invoke-direct {v1, v10, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->b1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5c

    iget-object v0, v0, LU/a;->A0:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, ""

    :cond_5
    const-string v2, "ru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5b

    iget-object v0, v0, LU/a;->q2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "<get-prefs>(...)"

    invoke-static {v2, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ttl_65_ativo"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Lcom/ex/auto/MainActivity;->O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    new-instance v0, LT/U1;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, v6}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, v6, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5a

    new-instance v1, LT/d2;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, LT/d2;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, LU/a;->q2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_2
    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_59

    iget-object v0, v0, LU/a;->e2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "rvc_black_bg"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, LT/W1;

    const/16 v3, 0x1d

    invoke-direct {v2, v3, v6}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/ex/auto/MainActivity;->v2(Lcom/google/android/material/switchmaterial/SwitchMaterial;ZLH0/p;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_58

    new-instance v1, LT/T1;

    const/16 v2, 0x17

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->y:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_57

    new-instance v1, LT/T1;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_56

    new-instance v1, LT/T1;

    const/16 v2, 0x19

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->x:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_55

    iget-object v1, v0, LU/a;->d2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "remember_brightness"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_54

    iget-object v1, v0, LU/a;->s2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/4 v0, 0x3

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "window_driver_on_door"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_53

    iget-object v1, v0, LU/a;->t2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    invoke-direct {v4, v15, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "window_opposite_on_door"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_52

    new-instance v1, LT/T1;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->N:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_51

    new-instance v1, LT/T1;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->K:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_50

    new-instance v1, LT/T1;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->J:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4f

    new-instance v1, LT/T2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->L:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4e

    new-instance v1, LT/T2;

    invoke-direct {v1, v14, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->M:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4d

    new-instance v1, LT/T2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->I:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->n1()V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4c

    new-instance v1, LT/T2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->v0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4b

    new-instance v1, LT/T2;

    invoke-direct {v1, v8, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->r0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4a

    new-instance v1, LT/T2;

    invoke-direct {v1, v9, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->u0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_49

    new-instance v1, LT/T2;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->s0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_48

    new-instance v1, LT/T2;

    invoke-direct {v1, v15, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->t0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->t1()V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->v1()V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_47

    new-instance v1, LT/T2;

    invoke-direct {v1, v13, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->e1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_46

    new-instance v1, LT/T2;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->a1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_45

    new-instance v1, LT/T2;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->X0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_44

    new-instance v1, LT/T2;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->W0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_43

    new-instance v1, LT/T2;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->Z0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_42

    new-instance v1, LT/T2;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->h1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_41

    new-instance v1, LT/T2;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->R:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_40

    new-instance v1, LT/T2;

    const/16 v2, 0xf

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->y0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3f

    iget-object v1, v0, LU/a;->X1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/16 v0, 0x12

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "auto_route_on_aa_connect"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3e

    iget-object v1, v0, LU/a;->W1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/16 v0, 0x13

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "auto_proxy_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3d

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v1, v0, LU/b;->q:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/a3;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, LT/a3;-><init>(I)V

    const-string v2, "swc_media_control_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3c

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v1, v0, LU/b;->p:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/16 v0, 0x14

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "media_bar_floater_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3b

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v1, v0, LU/b;->o:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/16 v0, 0x15

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "lyrics_floater_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3a

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->e:Landroid/widget/TextView;

    new-instance v1, LT/T2;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_39

    iget-object v1, v0, LU/a;->Z1:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "pause_audio_on_door"

    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_38

    iget-object v1, v0, LU/a;->c2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/a3;

    invoke-direct {v4, v8}, LT/a3;-><init>(I)V

    const-string v2, "recirc_guard_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_37

    iget-object v0, v0, LU/a;->b2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "rear_cam_turn_signal_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, LT/E2;

    invoke-direct {v2, v10, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/ex/auto/MainActivity;->v2(Lcom/google/android/material/switchmaterial/SwitchMaterial;ZLH0/p;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_36

    new-instance v1, LT/T2;

    invoke-direct {v1, v11, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->L2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_35

    iget-object v1, v0, LU/a;->a2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v4, LT/E2;

    const/16 v0, 0x17

    invoke-direct {v4, v0, v6}, LT/E2;-><init>(ILcom/ex/auto/MainActivity;)V

    const-string v2, "phone_sync_enabled"

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ex/auto/MainActivity;->u2(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Ljava/lang/String;ZLH0/l;I)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_34

    new-instance v1, LT/T2;

    const/16 v2, 0x12

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_33

    new-instance v1, LT/T2;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->o0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_32

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->c:Landroid/widget/Button;

    new-instance v1, LT/T2;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_31

    new-instance v1, LT/T2;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->P0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_30

    new-instance v1, LT/T2;

    invoke-direct {v1, v10, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2f

    new-instance v1, LT/T2;

    const/16 v2, 0x17

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->p0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2e

    new-instance v1, LT/T2;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->S0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2d

    new-instance v1, LT/T2;

    const/16 v2, 0x19

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->T0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2c

    new-instance v1, LT/T2;

    const/16 v2, 0x1a

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2b

    new-instance v1, LT/g3;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, LT/g3;-><init>(Landroid/content/ContextWrapper;I)V

    iget-object v0, v0, LU/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2a

    new-instance v1, LT/T2;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->Z:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_29

    new-instance v1, LT/T2;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_28

    new-instance v1, LT/T2;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, v6}, LT/T2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->Y0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->p1()V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_27

    new-instance v1, LT/h3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->X1()V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_26

    new-instance v1, LT/h3;

    invoke-direct {v1, v14, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ex/auto/MainActivity;->R1(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_25

    new-instance v1, LT/f2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v6}, LT/f2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->w1:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->z()V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/ex/auto/MainActivity;->Q1(Lcom/ex/auto/MainActivity;Ljava/lang/String;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_24

    new-instance v1, LT/f2;

    invoke-direct {v1, v14, v6}, LT/f2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->v1:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->y()V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_23

    new-instance v1, LT/T1;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_22

    new-instance v1, LT/h3;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_21

    new-instance v1, LT/h3;

    invoke-direct {v1, v8, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->x0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_20

    new-instance v1, LT/h3;

    invoke-direct {v1, v9, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->o:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1f

    new-instance v1, LT/h3;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->q0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1e

    new-instance v1, LT/h3;

    invoke-direct {v1, v15, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1d

    new-instance v1, LT/h3;

    invoke-direct {v1, v13, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1c

    new-instance v1, LT/h3;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->e0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1b

    new-instance v1, LT/h3;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->r:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1a

    new-instance v1, LT/h3;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->Y:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_19

    new-instance v1, LT/h3;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->a0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_18

    new-instance v1, LT/h3;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->H:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_17

    new-instance v1, LT/h3;

    const/16 v2, 0xf

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->p:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_16

    new-instance v1, LT/h3;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->O:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_15

    new-instance v1, LT/h3;

    invoke-direct {v1, v11, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->P:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_14

    iget-object v0, v0, LU/a;->R0:LU/b;

    iget-object v0, v0, LU/b;->f:Landroid/widget/Button;

    new-instance v1, LT/h3;

    const/16 v2, 0x12

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_13

    new-instance v1, LT/f2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v6}, LT/f2;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->u1:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_12

    new-instance v1, LT/h3;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_11

    new-instance v1, LT/h3;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->s:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_10

    new-instance v1, LT/T1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_f

    new-instance v1, LT/T1;

    invoke-direct {v1, v14, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_e

    new-instance v1, LT/T1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->X:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_d

    new-instance v1, LT/T1;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->b0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_c

    new-instance v1, LT/T1;

    invoke-direct {v1, v8, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->d0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_b

    new-instance v1, LT/T1;

    invoke-direct {v1, v9, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->c0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_a

    new-instance v1, LT/T1;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->u:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_9

    new-instance v1, LT/h3;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->t:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_8

    new-instance v1, LT/h3;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v6}, LT/h3;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->v:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->V1()V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->T1()V

    iget-object v0, v6, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_7

    new-instance v1, LT/T1;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v6}, LT/T1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v0, v0, LU/a;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->a1()V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->F0()V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->P1()V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->c1()V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->f1()V

    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->e1()V

    new-instance v0, LT/U1;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v6}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-interface {v12, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V


    invoke-virtual/range {p0 .. p0}, Lcom/ex/auto/MainActivity;->z1()V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/ex/auto/MainActivity;->k2(I)V

    return-void

    :cond_7
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_8
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_9
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_a
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_b
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_c
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_d
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_e
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_f
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_10
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_11
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_12
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_13
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_14
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_15
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_16
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_17
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_18
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_19
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_1a
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_1b
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_1c
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_1d
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_1e
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_1f
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_20
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_21
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_22
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_23
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_24
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_25
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_26
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_27
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_28
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_29
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_2a
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_2b
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_2c
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_2d
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_2e
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_2f
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_30
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_31
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_32
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_33
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_34
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_35
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_36
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_37
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_38
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_39
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_3a
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_3b
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_3c
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_3d
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_3e
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_3f
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_40
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_41
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_42
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_43
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_44
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_45
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_46
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_47
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_48
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_49
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_4a
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_4b
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_4c
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_4d
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_4e
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_4f
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_50
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_51
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_52
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_53
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_54
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_55
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_56
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_57
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_58
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_59
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_5a
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_5b
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_5c
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_5d
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_5e
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_5f
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_60
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_61
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_62
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_63
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_64
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_65
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_66
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_67
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_68
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_69
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_6a
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_6b
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_6c
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_6d
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_6e
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_6f
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_70
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_71
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_72
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_73
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_74
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_75
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_76
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_77
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_78
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_79
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_7a
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_7b
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_7c
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_7d
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_7e
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_7f
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_80
    const-string v0, "navSections"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_81
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_82
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_83
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_84
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_85
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_86
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_87
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16

    :cond_88
    invoke-static/range {v17 .. v17}, LI0/f;->h(Ljava/lang/String;)V

    throw v16
.end method

.method public final onDestroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->F:Landroid/car/Car;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->f0:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->f0:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Le/j;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Le/j;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->I:Z

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->T:LB/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->U:LT/q3;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->l0:LT/q3;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->R:LT/q3;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Le/j;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.ex.auto.wifimanager.STATUS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->U:LT/q3;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.ex.auto.AUTO_PROXY_APPLIED"

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ex.auto.AUTO_ROUTE_APPLIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ex.auto.USB_WATCHDOG_APPLIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->l0:LT/q3;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.ex.auto.PHONE_SYNC_APPLIED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->R:LT/q3;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->I:Z

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->T:LB/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->v1()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->a1()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->w1()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->e1()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/ex/auto/MainActivity;->j1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->f1()V

    invoke-static {p0}, Lcom/ex/auto/MainActivity;->i1(Lcom/ex/auto/MainActivity;)V

    return-void
.end method

.method public final p0(Ljava/lang/String;Ljava/lang/String;)LT/k3;
    .locals 5

    sget-object v0, LT/q;->a:[I

    const-string v0, "modo"

    invoke-static {p2, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versao"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aa"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "1114"

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-aa-1114.json"

    invoke-static {p2}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-aa.json"

    invoke-static {p2}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, "carplay"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-carplay.json"

    invoke-static {p2}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-1114.json"

    invoke-static {p2}, Le/a;->G(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string p2, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-1111.json"

    const-string v0, "https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor.json"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lcom/ex/auto/MainActivity;->E0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "md5"

    invoke-static {v2, v3}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, LO0/j;->X0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "apkUrl"

    invoke-static {v2, v4}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v4, LT/k3;

    invoke-direct {v4, v3, v2}, LT/k3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sem apkUrl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sem md5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v3, "manifesto "

    const-string v4, " falhou: "

    invoke-static {v3, v0, v4}, LM/d0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CaFix"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HTTP 4\\d\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v3, "compile(...)"

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, ""

    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v4, "matcher(...)"

    invoke-static {v0, v4}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, v2

    move v1, v4

    goto/16 :goto_1

    :cond_7
    move-object v0, v2

    goto/16 :goto_1

    :cond_8
    const p2, 0x7f0f012d

    if-nez v1, :cond_a

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0, p1}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_3
    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0, p1}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p1()V
    .locals 5

    invoke-static {p0}, LT/J3;->a(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    const v4, 0x7f0f0226

    goto :goto_0

    :cond_0
    const v4, 0x7f0f0222

    :goto_0
    iget-object v1, v1, LU/a;->Q:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const v0, 0x7f0f0223

    goto :goto_1

    :cond_1
    const v0, 0x7f0f046e

    :goto_1
    iget-object v1, v1, LU/a;->J2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_2
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final p2()V
    .locals 5

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5

    iget-object v0, v0, LU/a;->I0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, LA/b;->i0(II)LL0/c;

    move-result-object v1

    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, LL0/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    move-object v3, v1

    check-cast v3, LL0/b;

    iget-boolean v3, v3, LL0/b;->c:Z

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, LL0/b;

    invoke-virtual {v3}, LL0/b;->a()I

    move-result v3

    iget-object v4, p0, Lcom/ex/auto/MainActivity;->Y:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    const-string v1, "fav_empty"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0f018c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f050042

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x14

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v4, 0x18

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final q1()V
    .locals 6

    const-string v0, "temp_batt_pill_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pill_text_white"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v1, :cond_1

    const-string v5, "btnPillTextWhite"

    iget-object v1, v1, LU/a;->W:Landroid/widget/Button;

    invoke-static {v1, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_0

    const-string v3, "btnPillTextBlack"

    iget-object v1, v1, LU/a;->V:Landroid/widget/Button;

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    return-void

    :cond_0
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3
.end method

.method public final q2()V
    .locals 4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/ex/auto/MainActivity;->Q:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0f02a1

    :goto_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const v3, 0x7f0f013a

    goto :goto_0

    :goto_1
    iget-object v0, v0, LU/a;->P0:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/ex/auto/MainActivity;->Q:Z

    if-eqz v3, :cond_1

    const v3, 0x7f05002e

    goto :goto_2

    :cond_1
    const v3, 0x7f05003e

    :goto_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iget-object v0, v0, LU/a;->P0:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/ex/auto/MainActivity;->Q:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_3

    :cond_2
    const v1, 0x7f05003f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_3
    iget-object v0, v0, LU/a;->P0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_3
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final r1()V
    .locals 6

    const-string v0, "temp_batt_pill_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pill_mode"

    const-string v2, "both"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v1, :cond_2

    const-string v5, "btnPillModeTemp"

    iget-object v1, v1, LU/a;->U:Landroid/widget/Button;

    invoke-static {v1, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "temp"

    invoke-static {v0, v5}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_1

    const-string v5, "btnPillModeBatt"

    iget-object v1, v1, LU/a;->S:Landroid/widget/Button;

    invoke-static {v1, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "batt"

    invoke-static {v0, v5}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_0

    const-string v3, "btnPillModeBoth"

    iget-object v1, v1, LU/a;->T:Landroid/widget/Button;

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    return-void

    :cond_0
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3
.end method

.method public final r2()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/fixes/ca_fix.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const v2, 0x7f0f0121

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->S0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->a0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, LT/q;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "connadaptor_expected_md5"

    const/4 v6, 0x0

    const-string v7, "CaFix"

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "connadaptor_arquivo_versao"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "validateCaFix: build reconhecida ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") \u2014 refer\u00eancia atualizada"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    const-string v4, "ambos"

    const-string v8, "aa"

    const-string v9, "carplay"

    filled-new-array {v8, v9, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lw0/j;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v3}, LI0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v9, v2}, LT/q;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_0

    :cond_4
    move-object v8, v6

    :goto_0
    check-cast v8, Ljava/lang/String;

    const-string v4, " \u2014 recusado"

    const-string v9, ", sele\u00e7\u00e3o \u00e9 "

    if-eqz v8, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "validateCaFix: arquivo \u00e9 do modo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/ex/auto/MainActivity;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/ex/auto/MainActivity;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0102

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v3, "1114"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "1111"

    goto :goto_1

    :cond_6
    move-object v8, v3

    :goto_1
    sget-object v10, LT/q;->a:[I

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "4b0e1de041032ee63ef0c223926d7889"

    goto :goto_2

    :cond_7
    const-string v3, "260459e68360a4ff5c3720d84a2acddd"

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "validateCaFix: arquivo \u00e9 da "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0101

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v2}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "validateCaFix: md5 confere ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "validateCaFix: md5 DIVERGE \u2014 esperado="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " achado="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-static {v0, v2}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, LO0/j;->V0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0120

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    return-object v6

    :cond_b
    :goto_4
    const-string v2, "grep -F \' /system/app/ConnAdaptor/ConnAdaptor.apk \' /proc/mounts >/dev/null 2>&1 && echo Y || echo N"

    const/16 v3, 0x1f40

    invoke-virtual {p0, v3, v2}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "Y"

    invoke-static {v2, v4, v3}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/app/ConnAdaptor/ConnAdaptor.apk"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-nez v0, :cond_c

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v3, v0}, Lcom/ex/auto/MainActivity;->t0(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-object v0, v6

    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "validateCaFix: ca_fix \u00e9 IGUAL ao /system sem bind ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") \u2014 \u00e9 o stock, n\u00e3o o patch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f011f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "validateCaFix: sem md5 de refer\u00eancia (bind="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", md5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") \u2014 seguindo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_d
    :goto_6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s0()LT/p3;
    .locals 8

    const-string v0, "https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/exsapocentral.json"

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->E0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ex/auto/MainActivity;->L0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v1, "versionName"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v5, v1

    const-string v1, "apkUrl"

    invoke-static {v0, v1}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v1, LT/p3;

    const-string v2, "sha256"

    invoke-static {v0, v2}, Lcom/ex/auto/MainActivity;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, LT/p3;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "update.json sem apkUrl"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "update.json sem versionCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

.end method

.method public final s1()V
    .locals 5

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rear_cam_hold_open_5s"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    const v4, 0x7f05002e

    goto :goto_0

    :cond_0
    const v4, 0x7f05003e

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v1, v1, LU/a;->L2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_1
    iget-object v1, v1, LU/a;->L2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_2
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final t()V
    .locals 14

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->Y()Z

    move-result v0

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, LT/L3;->a:LT/L3;

    const-string v3, "Desativar"

    const-string v4, "usu\u00e1rio pediu para reverter o ConnAdaptor pro de f\u00e1brica"

    invoke-virtual {v0, v3, v4}, LT/L3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LT/Y;->k0()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ex/auto/MainActivity;->K:Z

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1

    iget-object v3, v0, LU/a;->g:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v2, v0, LU/a;->M2:Landroid/widget/TextView;

    const v0, 0x7f0f013d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "getString(...)"

    invoke-static {v4, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, LT/W1;

    const/16 v0, 0xc

    invoke-direct {v9, v0, p0}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    new-instance v10, LT/W1;

    const/16 v0, 0xd

    invoke-direct {v10, v0, p0}, LT/W1;-><init>(ILcom/ex/auto/MainActivity;)V

    const v6, 0xea60

    const/16 v11, 0x240

    const-wide/16 v12, 0x1388

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v12

    invoke-static/range {v0 .. v11}, Lcom/ex/auto/MainActivity;->F1(Lcom/ex/auto/MainActivity;Landroid/widget/Button;Landroid/widget/TextView;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;LH0/l;LH0/l;I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "connadaptor_ja_ativado"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3

    iget-object v0, v0, LU/a;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    new-instance v0, LT/U1;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v0, LT/j1;

    invoke-direct {v0, p0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00aa

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v1, v3, Le/e;->d:Ljava/lang/CharSequence;

    const v1, 0x7f0f00a9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Le/e;->f:Ljava/lang/CharSequence;

    const v1, 0x7f0f03ef

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, LT/X1;

    const/16 v4, 0xe

    invoke-direct {v3, v4, p0}, LT/X1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v1, v3}, LT/j1;->h(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, LT/j1;->e(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, LT/j1;->j()Le/i;

    :goto_0
    return-void
.end method

.method public final t1()V
    .locals 7

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "screen_rest_timeout_sec"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v1, :cond_9

    const-string v5, "btnScreenRestOff"

    iget-object v1, v1, LU/a;->v0:Landroid/widget/Button;

    invoke-static {v1, v5}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-nez v0, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    invoke-virtual {p0, v1, v6}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_8

    const-string v6, "btnScreenRest10s"

    iget-object v1, v1, LU/a;->r0:Landroid/widget/Button;

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xa

    if-ne v0, v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-virtual {p0, v1, v6}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_7

    const-string v6, "btnScreenRest30s"

    iget-object v1, v1, LU/a;->u0:Landroid/widget/Button;

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1e

    if-ne v0, v6, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_6

    const-string v6, "btnScreenRest1m"

    iget-object v1, v1, LU/a;->s0:Landroid/widget/Button;

    invoke-static {v1, v6}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x3c

    if-ne v0, v6, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    invoke-virtual {p0, v1, v6}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_5

    const-string v3, "btnScreenRest2m"

    iget-object v1, v1, LU/a;->t0:Landroid/widget/Button;

    invoke-static {v1, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x78

    if-ne v0, v3, :cond_4

    move v2, v5

    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/ex/auto/MainActivity;->i2(Landroid/widget/Button;Z)V

    return-void

    :cond_5
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_8
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3

    :cond_9
    invoke-static {v4}, LI0/f;->h(Ljava/lang/String;)V

    throw v3
.end method

.method public final t2()Ljava/lang/String;
    .locals 5

    const-string v0, "Sem IP"

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/MainActivity;->E:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v3, v1, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "wifiManager"

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-object v0
.end method

.method public final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toLowerCase(...)"

    invoke-static {p1, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "1111"

    const v3, 0x7f0f0109

    const-string v4, "1114"

    const v5, 0x7f0f0106

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "4b0e1de041032ee63ef0c223926d7889"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const-string v1, "19593246e356874905f072cd82af107b"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const p1, 0x7f0f0105

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const-string v1, "0c280b07f92a3538bcda1aae2e8b0746"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    const-string v1, "d49ab03b18a5c5e21928c59c465394d7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    const-string v1, "4b37f46239a938fa164d4a0bdc65a399"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const p1, 0x7f0f010a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_5
    const-string v1, "260459e68360a4ff5c3720d84a2acddd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x205468fa -> :sswitch_5
        0x1ff65dde -> :sswitch_4
        0x4a346867 -> :sswitch_3
        0x57696393 -> :sswitch_2
        0x67733494 -> :sswitch_1
        0x6a9deb7a -> :sswitch_0
    .end sparse-switch
.end method

.method public final u0(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 6

    long-to-double v0, p2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    invoke-static {p1}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const p1, 0x7f0f015e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v4, 0x7f0f015d

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, LI0/f;->b(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_1

    const/16 v4, 0x64

    int-to-long v4, v4

    mul-long/2addr p2, v4

    div-long/2addr p2, p4

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    long-to-double p4, p4

    div-double/2addr p4, v2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: %d%% (%.1f/%.1f MB)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: %.1f MB"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final u1()V
    .locals 4

    iget-boolean v0, p0, Lcom/ex/auto/MainActivity;->P:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ex/auto/MainActivity;->O:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, LU/a;->N2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ex/auto/MainActivity;->N:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1

    iget-object v0, v0, LU/a;->y1:Landroid/widget/ScrollView;

    new-instance v1, LT/U1;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "binding"

    invoke-static {v1}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, LO0/j;->Y0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->O:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/ex/auto/MainActivity;->N:Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->N:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const p2, 0x30d40

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->N:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const p2, 0x186a0

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/ex/auto/MainActivity;->N:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->N:Ljava/lang/StringBuilder;

    const-string p2, "[... log truncado ...]\n"

    invoke-virtual {p1, v0, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    iget-object p1, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance p2, LT/U1;

    const/4 v0, 0x5

    invoke-direct {p2, v0, p0}, LT/U1;-><init>(ILcom/ex/auto/MainActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_1
    monitor-exit v1

    throw p1
.end method

.method public final v0()V
    .locals 14

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x14

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/16 v4, 0x8

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p0}, LT/m;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LT/C;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-boolean v8, v5, LT/C;->c:Z

    new-instance v9, LT/S2;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v5, v10}, LT/S2;-><init>(Lcom/ex/auto/MainActivity;LT/C;I)V

    invoke-virtual {p0, v8, v9}, Lcom/ex/auto/MainActivity;->j2(ZLH0/l;)Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v9, v5, LT/C;->b:Ljava/lang/String;

    invoke-static {v9}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v9, ""

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v9, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    invoke-static {v9}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    const v9, 0x7f0f0173

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "getString(...)"

    invoke-static {v9, v11}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v9, 0x7f05003f

    invoke-virtual {p0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x7f05003e

    invoke-virtual {p0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    new-instance v9, LT/u;

    const/4 v11, 0x3

    invoke-direct {v9, p0, v11, v5}, LT/u;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x2e

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v7, v5, LT/C;->a:I

    add-int/lit8 v8, v7, -0x1

    const-string v9, "\u25b2"

    invoke-static {p0, v5, v9, v8}, Lcom/ex/auto/MainActivity;->w0(Lcom/ex/auto/MainActivity;LT/C;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0x30

    int-to-float v12, v12

    mul-float/2addr v12, v0

    float-to-int v12, v12

    invoke-direct {v9, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v13, 0x6

    int-to-float v13, v13

    mul-float/2addr v13, v0

    float-to-int v13, v13

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    const-string v8, "\u25bc"

    invoke-static {p0, v5, v8, v7}, Lcom/ex/auto/MainActivity;->w0(Lcom/ex/auto/MainActivity;LT/C;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v5

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v5, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, LT/j1;

    invoke-direct {v0, p0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0267

    invoke-virtual {v0, v2}, LT/j1;->i(I)V

    const v2, 0x7f0f0266

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v2, v3, Le/e;->f:Ljava/lang/CharSequence;

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iput-object v2, v3, Le/e;->q:Landroid/view/View;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, LT/j1;->j()Le/i;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->k0:Le/i;

    return-void
.end method

.method public final v1()V
    .locals 6

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_6

    const-string v3, "swRvcBlackBg"

    iget-object v0, v0, LU/a;->e2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "rvc_black_bg"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/ex/auto/MainActivity;->O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_5

    const-string v3, "btnHvacDigitalTemp"

    iget-object v0, v0, LU/a;->y:Landroid/widget/Button;

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "hvac_digital_temp"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/ex/auto/MainActivity;->h2(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_4

    const-string v3, "btnHvacDigitalBatt"

    iget-object v0, v0, LU/a;->w:Landroid/widget/Button;

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "hvac_digital_batt"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/ex/auto/MainActivity;->h2(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_3

    const-string v3, "btnHvacDigitalExtTemp"

    iget-object v0, v0, LU/a;->x:Landroid/widget/Button;

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "hvac_digital_ext_temp"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/ex/auto/MainActivity;->h2(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_2

    const-string v3, "btnLightMode"

    iget-object v0, v0, LU/a;->N:Landroid/widget/Button;

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "light_mode"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/ex/auto/MainActivity;->h2(Landroid/widget/Button;Z)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "status_brightness2_enabled"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->h1(Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_1

    const-string v3, "swRearCamPip"

    iget-object v0, v0, LU/a;->b2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-static {v0, v3}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "rear_cam_turn_signal_enabled"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/ex/auto/MainActivity;->O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v0, :cond_0

    const-string v1, "swSpeedAutoLock"

    iget-object v0, v0, LU/a;->f2:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-static {v0, v1}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "speed_auto_lock_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ex/auto/MainActivity;->O1(Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->d1()V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->s1()V

    return-void

    :cond_0
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final v2(Lcom/google/android/material/switchmaterial/SwitchMaterial;ZLH0/p;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ex/auto/MainActivity;->l2(Lcom/google/android/material/switchmaterial/SwitchMaterial;)V

    invoke-virtual {p1, p2}, Lj/d1;->setChecked(Z)V

    new-instance p2, LT/g2;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p3, p1, v0}, LT/g2;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->v:Landroid/os/Handler;

    new-instance v1, LT/o2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1, p2}, LT/o2;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final w1()V
    .locals 3

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const v0, 0x7f0f0251

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const v0, 0x7f0f0252

    goto :goto_0

    :goto_1
    iget-object v1, v1, LU/a;->K2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->v1()V

    invoke-virtual {p0, v2, v2}, Lcom/ex/auto/MainActivity;->j1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->x1()V

    return-void

    :cond_1
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final x(Z)V
    .locals 8

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->G:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v1, :cond_0

    const p1, 0x7f0f00cf

    const/4 v0, 0x0

    invoke-static {p0, p1, p0, v0}, LM/d0;->l(Lcom/ex/auto/MainActivity;ILcom/ex/auto/MainActivity;I)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, LT/h0;

    const/4 v5, 0x2

    move-object v0, v7

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, LT/h0;-><init>(Ljava/lang/Object;ILjava/lang/Object;ZI)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final x0()V
    .locals 13

    invoke-virtual {p0}, Le/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x14

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/16 v4, 0x8

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {p0}, LT/m;->s(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LT/D;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-boolean v8, v5, LT/D;->d:Z

    new-instance v9, LT/J2;

    const/4 v10, 0x1

    invoke-direct {v9, p0, v10, v5}, LT/J2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v8, v9}, Lcom/ex/auto/MainActivity;->j2(ZLH0/l;)Lcom/google/android/material/switchmaterial/SwitchMaterial;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v5, LT/D;->b:Ljava/lang/String;

    invoke-static {v5, p0, v8, v2}, Lcom/ex/auto/MainActivity;->y0(LT/D;Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x2e

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "|"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f050042

    invoke-virtual {p0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, 0x6

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    invoke-virtual {v8, v9, v7, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v8, v5, LT/D;->c:Ljava/lang/String;

    invoke-static {v5, p0, v8, v7}, Lcom/ex/auto/MainActivity;->y0(LT/D;Lcom/ex/auto/MainActivity;Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v5

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v5, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, LT/j1;

    invoke-direct {v0, p0}, LT/j1;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f02e4

    invoke-virtual {v0, v2}, LT/j1;->i(I)V

    const v2, 0x7f0f02e3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, LT/j1;->b:Ljava/lang/Object;

    check-cast v3, Le/e;

    iput-object v2, v3, Le/e;->f:Ljava/lang/CharSequence;

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iput-object v2, v3, Le/e;->q:Landroid/view/View;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LT/j1;->g(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, LT/j1;->j()Le/i;

    move-result-object v0

    iput-object v0, p0, Lcom/ex/auto/MainActivity;->k0:Le/i;

    return-void
.end method

.method public final x1()V
    .locals 7

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->E:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    const-string v3, "binding"

    if-eqz v2, :cond_a

    if-eqz v0, :cond_0

    const v4, 0x7f05002e

    goto :goto_0

    :cond_0
    const v4, 0x7f05003e

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v2, v2, LU/a;->y0:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_9

    if-eqz v0, :cond_1

    const v0, 0x7f050038

    goto :goto_1

    :cond_1
    const v0, 0x7f05003f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v2, v2, LU/a;->y0:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {v0, v2}, LI0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, LO0/j;->x0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "127.0.0.1"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    check-cast v2, Landroid/net/LinkAddress;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/ex/auto/MainActivity;->J0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->t2()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    invoke-static {}, Lcom/ex/auto/MainActivity;->J0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->t2()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_5
    iget-object v2, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v2, :cond_8

    iget-object v1, v2, LU/a;->H2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v3}, LI0/f;->h(Ljava/lang/String;)V

    throw v1

    :cond_b
    const-string v0, "wifiManager"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v1
.end method

.method public final y()V
    .locals 5

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_connect_preferred_bt"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LO0/j;->E0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    const v0, 0x7f0f00e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, LO0/s;->s0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    :cond_5
    :goto_2
    move-object v1, v2

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v0, v1

    :goto_4
    invoke-static {v0}, LI0/f;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->t:LU/a;

    if-eqz v1, :cond_7

    iget-object v1, v1, LU/a;->k:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    const-string v0, "binding"

    invoke-static {v0}, LI0/f;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final y1()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n            _STA_ANTES=0\n            grep -qE \"[[:space:]]ap0$\" /proc/net/arp 2>/dev/null && _STA_ANTES=1\n            echo \"STA_ANTES=$_STA_ANTES\"\n            if ip link show ap0 >/dev/null 2>&1; then\n  ip link set ap0 down 2>/dev/null || true\n  ip rule show | grep -w \'ap0\' | awk \'{print $1}\' | sed \'s/://\' | while read p; do ip rule del prio $p 2>/dev/null; done\nfi\nsleep 1\n            am force-stop com.njda.adapter\n            am force-stop com.njda.aauto\n            sleep 5\n            setprop ctl.restart AAutoMonitor\n    "

    invoke-static {v1}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            echo \"restart_enviado\"\n        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LO0/l;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LT/V1;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v0, v2}, LT/V1;-><init>(Lcom/ex/auto/MainActivity;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final z()V
    .locals 4

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ex/auto/MainActivity;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LT/o2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v1, v0}, LT/o2;-><init>(ILcom/ex/auto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final z0()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/ex/auto/MainActivity;->D:Lv0/c;

    invoke-virtual {v0}, Lv0/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final refreshImportedModes()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/ex/auto/MainActivity;->j1(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->Y0()V

    return-void
.end method

.method public final importOriginalConfiguration(Landroid/view/View;)V
    .locals 3

    new-instance v0, LT/ImportOriginalConfigTask;

    invoke-direct {v0, p0}, LT/ImportOriginalConfigTask;-><init>(Lcom/ex/auto/MainActivity;)V

    iget-object v1, p0, Lcom/ex/auto/MainActivity;->w:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v0, "Importando ajustes de EX Sapo Central..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final z1()V
    .locals 3

    sget-boolean v0, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    sget-boolean v0, Lcom/ex/auto/BlackoutFloaterService;->p:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ex/auto/BlackoutFloaterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/ex/auto/MainActivity;->B0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blackout_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "drive_regen_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    return-void
.end method

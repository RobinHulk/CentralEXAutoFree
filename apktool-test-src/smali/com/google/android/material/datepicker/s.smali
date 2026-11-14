.class public final Lcom/google/android/material/datepicker/s;
.super LM/F;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/material/datepicker/b;

.field public final d:LA/e;

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/b;LA/e;)V
    .locals 3

    invoke-direct {p0}, LM/F;-><init>()V

    iget-object v0, p2, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/o;

    iget-object v1, p2, Lcom/google/android/material/datepicker/b;->c:Lcom/google/android/material/datepicker/o;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/o;->a(Lcom/google/android/material/datepicker/o;)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/o;

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/o;->a(Lcom/google/android/material/datepicker/o;)I

    move-result v0

    if-gtz v0, :cond_2

    sget v0, Lcom/google/android/material/datepicker/p;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-static {p1}, Lcom/google/android/material/datepicker/m;->C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/datepicker/s;->e:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/b;

    iput-object p3, p0, Lcom/google/android/material/datepicker/s;->d:LA/e;

    iget-object p1, p0, LM/F;->a:LM/G;

    invoke-virtual {p1}, LM/G;->a()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LM/F;->b:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/b;

    iget v0, v0, Lcom/google/android/material/datepicker/b;->f:I

    return v0
.end method

.method public final b(I)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/b;

    iget-object v0, v0, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/o;

    iget-object v0, v0, Lcom/google/android/material/datepicker/o;->a:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/w;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    const/4 p1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {v0}, Lcom/google/android/material/datepicker/w;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "LLLL, yyyy"

    invoke-direct {v1, v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p1, "UTC"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(LM/e0;I)V
    .locals 3

    check-cast p1, Lcom/google/android/material/datepicker/r;

    iget-object v0, p0, Lcom/google/android/material/datepicker/s;->c:Lcom/google/android/material/datepicker/b;

    iget-object v1, v0, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/o;

    iget-object v1, v1, Lcom/google/android/material/datepicker/o;->a:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/w;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->add(II)V

    new-instance p2, Lcom/google/android/material/datepicker/o;

    invoke-direct {p2, v1}, Lcom/google/android/material/datepicker/o;-><init>(Ljava/util/Calendar;)V

    iget-object v1, p2, Lcom/google/android/material/datepicker/o;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/material/datepicker/r;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/google/android/material/datepicker/r;->u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    const v1, 0x7f090183

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/p;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/p;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/o;

    invoke-virtual {p2, v1}, Lcom/google/android/material/datepicker/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/p;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/material/datepicker/p;

    invoke-direct {v1, p2, v0}, Lcom/google/android/material/datepicker/p;-><init>(Lcom/google/android/material/datepicker/o;Lcom/google/android/material/datepicker/b;)V

    iget p2, p2, Lcom/google/android/material/datepicker/o;->e:I

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    new-instance p2, Lcom/google/android/material/datepicker/q;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/q;-><init>(Lcom/google/android/material/datepicker/s;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final d(Landroid/view/ViewGroup;)LM/e0;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/datepicker/m;->C(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LM/P;

    const/4 v1, -0x1

    iget v2, p0, Lcom/google/android/material/datepicker/s;->e:I

    invoke-direct {p1, v1, v2}, LM/P;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/google/android/material/datepicker/r;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/datepicker/r;-><init>(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/r;

    invoke-direct {p1, v0, v2}, Lcom/google/android/material/datepicker/r;-><init>(Landroid/widget/LinearLayout;Z)V

    :goto_0
    return-object p1
.end method

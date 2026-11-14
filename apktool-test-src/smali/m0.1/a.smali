.class public final Lm0/a;
.super Le/a;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:LA/e;

.field public c:Z


# direct methods
.method public constructor <init>(LA/e;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm0/a;->a:Landroid/graphics/Typeface;

    iput-object p1, p0, Lm0/a;->b:LA/e;

    return-void
.end method


# virtual methods
.method public final J(I)V
    .locals 2

    iget-boolean p1, p0, Lm0/a;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lm0/a;->b:LA/e;

    iget-object p1, p1, LA/e;->b:Ljava/lang/Object;

    check-cast p1, Lk0/b;

    iget-object v0, p1, Lk0/b;->v:Lm0/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm0/a;->c:Z

    :cond_0
    iget-object v0, p1, Lk0/b;->s:Landroid/graphics/Typeface;

    iget-object v1, p0, Lm0/a;->a:Landroid/graphics/Typeface;

    if-eq v0, v1, :cond_1

    iput-object v1, p1, Lk0/b;->s:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Lk0/b;->g()V

    :cond_1
    return-void
.end method

.method public final K(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-boolean p2, p0, Lm0/a;->c:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lm0/a;->b:LA/e;

    iget-object p2, p2, LA/e;->b:Ljava/lang/Object;

    check-cast p2, Lk0/b;

    iget-object v0, p2, Lk0/b;->v:Lm0/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm0/a;->c:Z

    :cond_0
    iget-object v0, p2, Lk0/b;->s:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    iput-object p1, p2, Lk0/b;->s:Landroid/graphics/Typeface;

    invoke-virtual {p2}, Lk0/b;->g()V

    :cond_1
    return-void
.end method

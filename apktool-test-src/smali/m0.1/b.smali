.class public final Lm0/b;
.super Lq/b;
.source "SourceFile"


# instance fields
.field public final synthetic h:Le/a;

.field public final synthetic i:Lm0/d;


# direct methods
.method public constructor <init>(Lm0/d;Le/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/b;->i:Lm0/d;

    iput-object p2, p0, Lm0/b;->h:Le/a;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 2

    iget-object v0, p0, Lm0/b;->i:Lm0/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm0/d;->k:Z

    iget-object v0, p0, Lm0/b;->h:Le/a;

    invoke-virtual {v0, p1}, Le/a;->J(I)V

    return-void
.end method

.method public final e(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lm0/b;->i:Lm0/d;

    iget v1, v0, Lm0/d;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Lm0/d;->l:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lm0/d;->k:Z

    iget-object p1, v0, Lm0/d;->l:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object v1, p0, Lm0/b;->h:Le/a;

    invoke-virtual {v1, p1, v0}, Le/a;->K(Landroid/graphics/Typeface;Z)V

    return-void
.end method

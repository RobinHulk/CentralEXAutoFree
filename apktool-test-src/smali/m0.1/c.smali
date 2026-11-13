.class public final Lm0/c;
.super Le/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Le/a;

.field public final synthetic c:Lm0/d;


# direct methods
.method public constructor <init>(Lm0/d;Landroid/text/TextPaint;Le/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/c;->c:Lm0/d;

    iput-object p2, p0, Lm0/c;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lm0/c;->b:Le/a;

    return-void
.end method


# virtual methods
.method public final J(I)V
    .locals 1

    iget-object v0, p0, Lm0/c;->b:Le/a;

    invoke-virtual {v0, p1}, Le/a;->J(I)V

    return-void
.end method

.method public final K(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-object v0, p0, Lm0/c;->c:Lm0/d;

    iget-object v1, p0, Lm0/c;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lm0/d;->d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lm0/c;->b:Le/a;

    invoke-virtual {v0, p1, p2}, Le/a;->K(Landroid/graphics/Typeface;Z)V

    return-void
.end method

.class public final synthetic LT/R1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/LyricsFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/LyricsFloaterService;I)V
    .locals 0

    iput p2, p0, LT/R1;->a:I

    iput-object p1, p0, LT/R1;->b:Lcom/ex/auto/LyricsFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "lyrics_style_config"

    const-string v2, "<this>"

    iget-object v3, p0, LT/R1;->b:Lcom/ex/auto/LyricsFloaterService;

    iget v4, p0, LT/R1;->a:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-static {v3, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bg"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->j()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->k()V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_0
    sget-object v4, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    invoke-static {v3, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "font"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->j()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->k()V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_1
    sget-object v4, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    const/16 v4, 0xff

    rsub-int p1, p1, 0xff

    invoke-static {v3, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1, v0, v4}, LA/b;->o(III)I

    move-result p1

    const-string v0, "alpha"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->j()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->k()V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_2
    sget-object v4, Lcom/ex/auto/LyricsFloaterService;->v:Ljava/util/Set;

    int-to-float p1, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr p1, v4

    const v4, 0x3f19999a    # 0.6f

    add-float/2addr p1, v4

    invoke-static {v3, v2}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v4, v1}, LA/b;->n(FFF)F

    move-result p1

    const-string v1, "scale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->j()V

    invoke-virtual {v3}, Lcom/ex/auto/LyricsFloaterService;->k()V

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

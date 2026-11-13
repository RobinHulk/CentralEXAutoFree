.class public final synthetic LT/D3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/WindowManager;

.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Landroid/content/SharedPreferences;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/view/WindowManager;Landroid/widget/LinearLayout;Landroid/content/SharedPreferences;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/D3;->a:Landroid/view/WindowManager;

    iput-object p2, p0, LT/D3;->b:Landroid/widget/LinearLayout;

    iput-object p3, p0, LT/D3;->c:Landroid/content/SharedPreferences;

    iput-object p4, p0, LT/D3;->d:Ljava/lang/String;

    iput p5, p0, LT/D3;->e:I

    iput-object p6, p0, LT/D3;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, LT/D3;->a:Landroid/view/WindowManager;

    iget-object v0, p0, LT/D3;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, LT/D3;->c:Landroid/content/SharedPreferences;

    iget-object v2, p0, LT/D3;->d:Ljava/lang/String;

    iget v3, p0, LT/D3;->e:I

    iget-object v4, p0, LT/D3;->f:Landroid/content/Context;

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, LT/E3;->b:Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "msg_seen_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, LT/Y0;->a:LT/Y0;

    const-string p1, "context"

    invoke-static {v4, p1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, LT/W0;

    invoke-direct {v0, v1, v2, v3}, LT/W0;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

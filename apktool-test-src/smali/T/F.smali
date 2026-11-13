.class public final synthetic LT/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/CheckBox;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;Ljava/util/Set;Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    iput p5, p0, LT/F;->a:I

    iput-object p1, p0, LT/F;->b:Landroid/widget/CheckBox;

    iput-object p2, p0, LT/F;->c:Ljava/util/Set;

    iput-object p3, p0, LT/F;->d:Ljava/lang/String;

    iput-object p4, p0, LT/F;->e:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const-string p1, "packages"

    const/4 v0, 0x0

    const-string v1, "ctx"

    iget v2, p0, LT/F;->a:I

    packed-switch v2, :pswitch_data_0

    sget v2, Lcom/ex/auto/FavoriteAppsActivity;->a:I

    iget-object v2, p0, LT/F;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, LT/F;->c:Ljava/util/Set;

    iget-object v4, p0, LT/F;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v3, p0, LT/F;->e:Landroid/app/Activity;

    check-cast v3, Lcom/ex/auto/FavoriteAppsActivity;

    invoke-static {v3, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "favorite_apps_prefs"

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v2}, Lw0/i;->Y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v8, 0x3e

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_0
    sget v2, Lcom/ex/auto/CloseAppsWhitelistActivity;->a:I

    iget-object v2, p0, LT/F;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, LT/F;->c:Ljava/util/Set;

    iget-object v4, p0, LT/F;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, LT/F;->e:Landroid/app/Activity;

    check-cast v3, Lcom/ex/auto/CloseAppsWhitelistActivity;

    invoke-static {v3, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "close_apps_whitelist_prefs"

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v2}, Lw0/i;->Y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v8, 0x3e

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_1
    iget-object v2, p0, LT/F;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, LT/F;->c:Ljava/util/Set;

    iget-object v4, p0, LT/F;->d:Ljava/lang/String;

    iget-object v5, p0, LT/F;->e:Landroid/app/Activity;

    check-cast v5, Lcom/ex/auto/BackgroundKeepAliveActivity;

    sget v6, Lcom/ex/auto/BackgroundKeepAliveActivity;->a:I

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    xor-int/lit8 v7, v6, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-nez v6, :cond_2

    invoke-static {v4}, LI0/f;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {v5, v1}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "background_keep_alive_prefs"

    invoke-virtual {v5, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v3}, Lw0/i;->Y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v9, 0x3e

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lw0/i;->d0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH0/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->d2:[I

    sget-object p1, Lcom/ex/auto/CentralWatchdogService;->g2:Lcom/ex/auto/CentralWatchdogService;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/ex/auto/CentralWatchdogService;->a:Landroid/os/Handler;

    new-instance v1, LT/t0;

    const/16 v2, 0x18

    invoke-direct {v1, p1, v2}, LT/t0;-><init>(Lcom/ex/auto/CentralWatchdogService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

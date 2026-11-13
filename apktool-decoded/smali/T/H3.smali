.class public final synthetic LT/H3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, LT/H3;->a:I

    iput-object p1, p0, LT/H3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LT/H3;->b:Landroid/content/Context;

    iget v1, p0, LT/H3;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {v0}, Le/n;->s(Landroid/content/Context;)V

    return-void

    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-static {}, Le/n;->c()Lu/e;

    move-result-object v2

    invoke-virtual {v2}, Lu/e;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Le/a;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "locale"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Le/l;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v4, v2}, Le/m;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1
    sput-boolean v3, Le/n;->f:Z

    return-void

    :pswitch_1
    sget-object v1, LT/J3;->a:Ljava/util/List;

    const-string v1, "prazo"

    invoke-static {v0, v1}, LT/J3;->h(Landroid/content/Context;Ljava/lang/String;)LT/I3;

    return-void

    :pswitch_2
    sget-object v1, LT/J3;->a:Ljava/util/List;

    const-string v1, "retomada-boot"

    invoke-static {v0, v1}, LT/J3;->h(Landroid/content/Context;Ljava/lang/String;)LT/I3;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

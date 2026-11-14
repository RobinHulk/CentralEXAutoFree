.class public final LT/ImportOriginalConfigResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Lcom/ex/auto/MainActivity;

.field private final drive:I

.field private final regen:I

.field private final success:Z


# direct methods
.method public constructor <init>(Lcom/ex/auto/MainActivity;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/ImportOriginalConfigResult;->activity:Lcom/ex/auto/MainActivity;

    iput p2, p0, LT/ImportOriginalConfigResult;->drive:I

    iput p3, p0, LT/ImportOriginalConfigResult;->regen:I

    iput-boolean p4, p0, LT/ImportOriginalConfigResult;->success:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, LT/ImportOriginalConfigResult;->activity:Lcom/ex/auto/MainActivity;

    iget-boolean v1, p0, LT/ImportOriginalConfigResult;->success:Z

    if-eqz v1, :cond_2

    iget v1, p0, LT/ImportOriginalConfigResult;->drive:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->z0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "saved_drive"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget v1, p0, LT/ImportOriginalConfigResult;->regen:I

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->z0()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "saved_regen"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget v1, p0, LT/ImportOriginalConfigResult;->drive:I

    if-ne v1, v2, :cond_1a

    iget v1, p0, LT/ImportOriginalConfigResult;->regen:I

    if-eq v1, v2, :cond_1b

    :cond_1a
    invoke-virtual {v0}, Lcom/ex/auto/MainActivity;->refreshImportedModes()V

    :cond_1b
    const-string v1, "Ajustes importados. Reiniciando Tero..."

    goto :goto_0

    :cond_2
    const-string v1, "No se pudo importar. Comprueba que EX Sapo Central siga instalada y que el acceso root/ADB esté activo."

    :goto_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-boolean v0, p0, LT/ImportOriginalConfigResult;->success:Z

    if-eqz v0, :cond_restart_done

    iget-object v0, p0, LT/ImportOriginalConfigResult;->activity:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_restart_fallback

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    if-eqz v2, :cond_restart_fallback

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :cond_restart_done

    :cond_restart_fallback

    iget-object v0, p0, LT/ImportOriginalConfigResult;->activity:Lcom/ex/auto/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_restart_done

    return-void
.end method

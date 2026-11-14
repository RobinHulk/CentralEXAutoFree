.class public final LT/ImportOriginalConfigTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final activity:Lcom/ex/auto/MainActivity;


# direct methods
.method public constructor <init>(Lcom/ex/auto/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/ImportOriginalConfigTask;->activity:Lcom/ex/auto/MainActivity;

    return-void
.end method

.method private static findDrive(Ljava/lang/String;)I
    .locals 1

    const-string v0, "DRIVE=570491137"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x22010101

    return v0

    :cond_0
    const-string v0, "DRIVE=570491138"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x22010102

    return v0

    :cond_1
    const-string v0, "DRIVE=570491139"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x22010103

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private static findRegen(Ljava/lang/String;)I
    .locals 1

    const-string v0, "REGEN=537003265"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x20020501

    return v0

    :cond_0
    const-string v0, "REGEN=537003266"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x20020502

    return v0

    :cond_1
    const-string v0, "REGEN=537003267"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x20020503

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, LT/ImportOriginalConfigTask;->activity:Lcom/ex/auto/MainActivity;

    const/16 v1, 0x3a98

    const-string v2, "user=$(am get-current-user 2>/dev/null); case \"$user\" in ''|*[!0-9]*) user=0;; esac; src=/data/user/$user/com.ex.auto/shared_prefs; dst=/data/user/$user/com.robihulk.terucentralfree/shared_prefs; srcde=/data/user_de/$user/com.ex.auto/shared_prefs; dstde=/data/user_de/$user/com.robihulk.terucentralfree/shared_prefs; [ -d \"$src\" ] || [ -d \"$srcde\" ] || exit 21; mkdir -p \"$dst\" \"$dstde\" || exit 22; copied=0; if [ -d \"$src\" ]; then for f in \"$src\"/*.xml; do [ -f \"$f\" ] || continue; cp -f \"$f\" \"$dst\"/ || exit 22; copied=$((copied+1)); done; fi; if [ -d \"$srcde\" ]; then for f in \"$srcde\"/*.xml; do [ -f \"$f\" ] || continue; cp -f \"$f\" \"$dstde\"/ || exit 22; copied=$((copied+1)); done; fi; [ \"$copied\" -gt 0 ] || exit 25; owner=$(stat -c %u:%g /data/user/$user/com.robihulk.terucentralfree 2>/dev/null) || exit 23; [ -n \"$owner\" ] || exit 23; chown -R \"$owner\" \"$dst\" \"$dstde\" || exit 24; restorecon -RF \"$dst\" \"$dstde\" 2>/dev/null || true; echo IMPORT_CONFIG_OK; for prefs in \"$srcde/drive_regen_prefs.xml\" \"$src/drive_regen_prefs.xml\"; do [ -f \"$prefs\" ] || continue; grep -o 'name=\"saved_drive\" value=\"[0-9]*\"' \"$prefs\" | cut -d'\"' -f4 | sed 's/^/DRIVE=/'; grep -o 'name=\"saved_regen\" value=\"[0-9]*\"' \"$prefs\" | cut -d'\"' -f4 | sed 's/^/REGEN=/'; done"

    invoke-virtual {v0, v1, v2}, Lcom/ex/auto/MainActivity;->C1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "IMPORT_CONFIG_OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v1}, LT/ImportOriginalConfigTask;->findDrive(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1}, LT/ImportOriginalConfigTask;->findRegen(Ljava/lang/String;)I

    move-result v4

    new-instance v5, LT/ImportOriginalConfigResult;

    invoke-direct {v5, v0, v3, v4, v2}, LT/ImportOriginalConfigResult;-><init>(Lcom/ex/auto/MainActivity;IIZ)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.class public final synthetic LT/D1;
.super LI0/d;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic h:Ly/f;

.field public final synthetic i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ly/f;Landroid/widget/ImageView;)V
    .locals 2

    iput-object p1, p0, LT/D1;->h:Ly/f;

    iput-object p2, p0, LT/D1;->i:Landroid/widget/ImageView;

    const-class p1, LI0/e;

    const-string p2, "refreshMuteIcon"

    const/4 v0, 0x0

    const-string v1, "addVolumeView$refreshMuteIcon(Lcom/ex/auto/CarMediaVolume;Landroid/widget/ImageView;)V"

    invoke-direct {p0, v0, p1, p2, v1}, LI0/d;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LT/D1;->h:Ly/f;

    iget-object v1, p0, LT/D1;->i:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/ex/auto/HomeFloatingWidgetsService;->l(Ly/f;Landroid/widget/ImageView;)V

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0
.end method

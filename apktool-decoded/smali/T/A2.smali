.class public final synthetic LT/A2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:Lcom/ex/auto/MainActivity;

.field public final synthetic b:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/MainActivity;Lcom/google/android/material/switchmaterial/SwitchMaterial;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/A2;->a:Lcom/ex/auto/MainActivity;

    iput-object p2, p0, LT/A2;->b:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iput-boolean p3, p0, LT/A2;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LT/A2;->a:Lcom/ex/auto/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ex/auto/MainActivity;->S:Z

    iget-boolean v2, p0, LT/A2;->c:Z

    xor-int/2addr v1, v2

    iget-object v2, p0, LT/A2;->b:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v2, v1}, Lj/d1;->setChecked(Z)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ex/auto/MainActivity;->S:Z

    sget-object v0, Lv0/e;->c:Lv0/e;

    return-object v0
.end method

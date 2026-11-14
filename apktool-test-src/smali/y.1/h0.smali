.class public final Ly/h0;
.super Ly/f0;
.source "SourceFile"


# static fields
.field public static final m:Ly/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ly/g0;->a()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ly/j0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Ly/j0;

    move-result-object v0

    sput-object v0, Ly/h0;->m:Ly/j0;

    return-void
.end method

.method public constructor <init>(Ly/j0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly/f0;-><init>(Ly/j0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

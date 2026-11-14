.class public final Landroidx/fragment/app/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/o;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroidx/lifecycle/l;

.field public h:Landroidx/lifecycle/l;


# direct methods
.method public constructor <init>(ILandroidx/fragment/app/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/fragment/app/L;->a:I

    iput-object p2, p0, Landroidx/fragment/app/L;->b:Landroidx/fragment/app/o;

    sget-object p1, Landroidx/lifecycle/l;->e:Landroidx/lifecycle/l;

    iput-object p1, p0, Landroidx/fragment/app/L;->g:Landroidx/lifecycle/l;

    iput-object p1, p0, Landroidx/fragment/app/L;->h:Landroidx/lifecycle/l;

    return-void
.end method

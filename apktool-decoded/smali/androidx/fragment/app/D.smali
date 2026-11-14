.class public final Landroidx/fragment/app/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/C;


# instance fields
.field public final a:I

.field public final synthetic b:Landroidx/fragment/app/E;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/E;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/D;->b:Landroidx/fragment/app/E;

    iput p2, p0, Landroidx/fragment/app/D;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/D;->b:Landroidx/fragment/app/E;

    iget-object v1, v0, Landroidx/fragment/app/E;->q:Landroidx/fragment/app/o;

    iget v2, p0, Landroidx/fragment/app/D;->a:I

    if-eqz v1, :cond_0

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/o;->g()Landroidx/fragment/app/E;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/E;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Landroidx/fragment/app/E;->J(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    return p1
.end method

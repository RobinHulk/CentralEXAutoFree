.class public final Lw0/v;
.super Lw0/a;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:I

.field public final synthetic e:Lw0/w;


# direct methods
.method public constructor <init>(Lw0/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/v;->e:Lw0/w;

    invoke-virtual {p1}, Lw0/w;->a()I

    move-result v0

    iput v0, p0, Lw0/v;->c:I

    iget p1, p1, Lw0/w;->c:I

    iput p1, p0, Lw0/v;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget v0, p0, Lw0/v;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lw0/a;->a:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lw0/v;->e:Lw0/w;

    iget-object v2, v1, Lw0/w;->a:[Ljava/lang/Object;

    iget v3, p0, Lw0/v;->d:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lw0/a;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p0, Lw0/a;->a:I

    add-int/2addr v3, v2

    iget v1, v1, Lw0/w;->b:I

    rem-int/2addr v3, v1

    iput v3, p0, Lw0/v;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lw0/v;->c:I

    :goto_0
    return-void
.end method

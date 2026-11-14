.class public final LT/N3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LT/P3;

.field public final c:LT/O3;

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;LT/P3;LT/O3;II)V
    .locals 1

    and-int/lit8 p5, p5, 0x10

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p4, v0

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/N3;->a:Ljava/lang/String;

    iput-object p2, p0, LT/N3;->b:LT/P3;

    iput-object p3, p0, LT/N3;->c:LT/O3;

    iput-boolean v0, p0, LT/N3;->d:Z

    iput p4, p0, LT/N3;->e:I

    return-void
.end method

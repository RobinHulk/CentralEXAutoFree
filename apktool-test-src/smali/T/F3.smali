.class public final LT/F3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public final f:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/F3;->a:Ljava/lang/String;

    sget-object p1, LT/G3;->a:LT/G3;

    const/16 p1, 0x9

    new-array p1, p1, [J

    iput-object p1, p0, LT/F3;->f:[J

    return-void
.end method

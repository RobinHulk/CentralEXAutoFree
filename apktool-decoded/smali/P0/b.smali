.class public final LP0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/h;


# instance fields
.field public final a:LI0/g;

.field public final b:Lz0/h;


# direct methods
.method public constructor <init>(Lz0/h;LH0/l;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, LI0/g;

    iput-object p2, p0, LP0/b;->a:LI0/g;

    instance-of p2, p1, LP0/b;

    if-eqz p2, :cond_0

    check-cast p1, LP0/b;

    iget-object p1, p1, LP0/b;->b:Lz0/h;

    :cond_0
    iput-object p1, p0, LP0/b;->b:Lz0/h;

    return-void
.end method

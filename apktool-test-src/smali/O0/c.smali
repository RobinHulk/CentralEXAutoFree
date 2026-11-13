.class public final LO0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN0/f;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:LI0/g;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILH0/p;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO0/c;->a:Ljava/lang/CharSequence;

    iput p2, p0, LO0/c;->b:I

    iput p3, p0, LO0/c;->c:I

    check-cast p4, LI0/g;

    iput-object p4, p0, LO0/c;->d:LI0/g;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LO0/b;

    invoke-direct {v0, p0}, LO0/b;-><init>(LO0/c;)V

    return-object v0
.end method

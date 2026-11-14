.class public final LO0/f;
.super LI0/g;
.source "SourceFile"

# interfaces
.implements LH0/a;


# instance fields
.field public final synthetic a:LI0/l;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(LI0/l;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, LO0/f;->a:LI0/l;

    iput-object p2, p0, LO0/f;->b:Ljava/lang/String;

    iput p3, p0, LO0/f;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LI0/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LO0/f;->b:Ljava/lang/String;

    iget-object v1, p0, LO0/f;->a:LI0/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, LI0/l;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "matcher(...)"

    invoke-static {v1, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, LO0/f;->c:I

    invoke-static {v1, v2, v0}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object v0

    return-object v0
.end method

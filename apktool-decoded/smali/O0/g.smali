.class public final synthetic LO0/g;
.super LI0/d;
.source "SourceFile"

# interfaces
.implements LH0/l;


# static fields
.field public static final h:LO0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LO0/g;

    const/4 v1, 0x1

    const-string v2, "next()Lkotlin/text/MatchResult;"

    const-class v3, LO0/e;

    const-string v4, "next"

    invoke-direct {v0, v1, v3, v4, v2}, LI0/d;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LO0/g;->h:LO0/g;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, LO0/e;

    const-string v0, "p0"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LO0/e;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iget-object p1, p1, LO0/e;->b:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v2, "matcher(...)"

    invoke-static {v0, v2}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, LA/b;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LO0/e;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

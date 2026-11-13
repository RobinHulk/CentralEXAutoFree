.class public final LJ/c;
.super LJ/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(LJ/b;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LJ/b;-><init>()V

    iget-object v0, p0, LJ/b;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, LJ/b;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.class public abstract LP0/o;
.super LP0/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "baseKey"

    sget-object v1, LP0/c;->a:LP0/b;

    invoke-static {v1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.class public final synthetic LT/C4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getName(...)"

    invoke-static {p1, v0}, LI0/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thermal_zone"

    invoke-static {p1, v0}, LO0/s;->w0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

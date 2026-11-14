.class public abstract Lw/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lw/g;

.field public static final b:Lw/g;

.field public static final c:Lw/g;

.field public static final d:Lw/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw/g;-><init>(Lw/f;Z)V

    sput-object v0, Lw/h;->a:Lw/g;

    new-instance v0, Lw/g;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lw/g;-><init>(Lw/f;Z)V

    sput-object v0, Lw/h;->b:Lw/g;

    new-instance v0, Lw/g;

    sget-object v1, Lw/f;->a:Lw/f;

    invoke-direct {v0, v1, v2}, Lw/g;-><init>(Lw/f;Z)V

    sput-object v0, Lw/h;->c:Lw/g;

    new-instance v0, Lw/g;

    invoke-direct {v0, v1, v3}, Lw/g;-><init>(Lw/f;Z)V

    sput-object v0, Lw/h;->d:Lw/g;

    return-void
.end method

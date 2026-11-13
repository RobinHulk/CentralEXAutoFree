.class public final LJ/a;
.super LJ/b;
.source "SourceFile"


# static fields
.field public static final b:LJ/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ/a;

    invoke-direct {v0}, LJ/b;-><init>()V

    sput-object v0, LJ/a;->b:LJ/a;

    return-void
.end method

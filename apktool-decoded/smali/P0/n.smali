.class public abstract LP0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LA/e;

    const-string v1, "CLOSED_EMPTY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LA/e;-><init>(Ljava/lang/Object;I)V

    sput-object v0, LP0/n;->a:LA/e;

    return-void
.end method

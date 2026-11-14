.class public abstract LZ/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:LI/a;

.field public static final c:LI/a;

.field public static final d:LI/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, LZ/a;->a:Landroid/view/animation/LinearInterpolator;

    new-instance v0, LI/a;

    sget-object v1, LI/a;->d:[F

    invoke-direct {v0, v1}, LI/b;-><init>([F)V

    sput-object v0, LZ/a;->b:LI/a;

    new-instance v0, LI/a;

    sget-object v1, LI/a;->c:[F

    invoke-direct {v0, v1}, LI/b;-><init>([F)V

    sput-object v0, LZ/a;->c:LI/a;

    new-instance v0, LI/a;

    sget-object v1, LI/a;->e:[F

    invoke-direct {v0, v1}, LI/b;-><init>([F)V

    sput-object v0, LZ/a;->d:LI/a;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

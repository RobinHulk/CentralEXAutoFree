.class public final Landroidx/lifecycle/B;
.super LI0/g;
.source "SourceFile"

# interfaces
.implements LH0/l;


# static fields
.field public static final a:Landroidx/lifecycle/B;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/B;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LI0/g;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/B;->a:Landroidx/lifecycle/B;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LJ/b;

    const-string v0, "$this$initializer"

    invoke-static {p1, v0}, LI0/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/lifecycle/F;

    invoke-direct {p1}, Landroidx/lifecycle/F;-><init>()V

    return-object p1
.end method

.class public final synthetic LT/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH0/l;


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>([ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/h4;->a:[Z

    iput p2, p0, LT/h4;->b:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v0, Lcom/ex/auto/QuickAccessFloaterService;->j0:Ljava/util/List;

    iget-object v0, p0, LT/h4;->a:[Z

    iget v1, p0, LT/h4;->b:I

    aput-boolean p1, v0, v1

    sget-object p1, Lv0/e;->c:Lv0/e;

    return-object p1
.end method

.class public final Li/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Li/w;


# direct methods
.method public constructor <init>(Li/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/u;->a:Li/w;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Li/u;->a:Li/w;

    invoke-virtual {v0}, Li/w;->c()V

    return-void
.end method

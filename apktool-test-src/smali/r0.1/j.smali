.class public final Lr0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:Lr0/k;


# direct methods
.method public constructor <init>(Lr0/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/j;->a:Lr0/k;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    iget-object v0, p0, Lr0/j;->a:Lr0/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr0/k;->i:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lr0/k;->k:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/k;->g(Z)V

    return-void
.end method

.class Landroid/support/v4/os/ResultReceiver$MyResultReceiver;
.super Landroid/support/v4/os/IResultReceiver$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroid/support/v4/os/a;


# direct methods
.method public constructor <init>(Landroid/support/v4/os/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/support/v4/os/a;

    invoke-direct {p0}, Landroid/support/v4/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/support/v4/os/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/support/v4/os/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

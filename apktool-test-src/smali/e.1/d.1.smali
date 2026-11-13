.class public final Le/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public final synthetic b:Le/h;

.field public final synthetic c:Le/e;


# direct methods
.method public constructor <init>(Le/e;Landroidx/appcompat/app/AlertController$RecycleListView;Le/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d;->c:Le/e;

    iput-object p2, p0, Le/d;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p3, p0, Le/d;->b:Le/h;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Le/d;->c:Le/e;

    iget-object p2, p1, Le/e;->r:[Z

    iget-object p4, p0, Le/d;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz p2, :cond_0

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p5

    aput-boolean p5, p2, p3

    :cond_0
    iget-object p1, p1, Le/e;->v:LT/I2;

    iget-object p2, p0, Le/d;->b:Le/h;

    iget-object p2, p2, Le/h;->b:Le/i;

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, LT/I2;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method

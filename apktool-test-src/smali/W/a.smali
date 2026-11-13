.class public final synthetic LW/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/driveregenfloater/DriveRegenFloaterService;I)V
    .locals 0

    iput p2, p0, LW/a;->a:I

    iput-object p1, p0, LW/a;->b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, LW/a;->b:Lcom/geely/driveregenfloater/DriveRegenFloaterService;

    iget v0, p0, LW/a;->a:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    const v0, 0x22010103

    invoke-virtual {p1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->m(I)V

    return-void

    :pswitch_0
    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    const v0, 0x22010102

    invoke-virtual {p1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->m(I)V

    return-void

    :pswitch_1
    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    const v0, 0x22010101

    invoke-virtual {p1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->m(I)V

    return-void

    :pswitch_2
    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    const v0, 0x20020503

    invoke-virtual {p1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->n(I)V

    return-void

    :pswitch_3
    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    const v0, 0x20020502

    invoke-virtual {p1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->n(I)V

    return-void

    :pswitch_4
    sget-boolean v0, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->J:Z

    const v0, 0x20020501

    invoke-virtual {p1, v0}, Lcom/geely/driveregenfloater/DriveRegenFloaterService;->n(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

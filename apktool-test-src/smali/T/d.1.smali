.class public final synthetic LT/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AcProgramEditActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AcProgramEditActivity;I)V
    .locals 0

    iput p2, p0, LT/d;->a:I

    iput-object p1, p0, LT/d;->b:Lcom/ex/auto/AcProgramEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    const/16 p1, 0x10

    const/16 v0, 0x11

    const/4 v1, 0x1

    const v2, 0x7f0f0059

    const/16 v3, 0x8

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, LT/d;->b:Lcom/ex/auto/AcProgramEditActivity;

    iget v8, p0, LT/d;->a:I

    packed-switch v8, :pswitch_data_0

    iget-object p1, v7, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f0061

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    iget v0, v7, Lcom/ex/auto/AcProgramEditActivity;->t:I

    invoke-static {p1}, Lw0/i;->j0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, v7, Lcom/ex/auto/AcProgramEditActivity;->x:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LT/l;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v8, v4, LT/l;->a:Ljava/lang/String;

    const-string v9, "type"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "value"

    iget-wide v9, v4, LT/l;->b:D

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "steps"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "repeat"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "ac_programs_prefs"

    invoke-virtual {v7, p1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "program_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_2
    const-string p1, "switchRepeat"

    invoke-static {p1}, LI0/f;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    sget p1, Lcom/ex/auto/AcProgramEditActivity;->y:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0057

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, LT/g;

    invoke-direct {v0, v7, v6}, LT/g;-><init>(Ljava/lang/Object;I)V

    const v1, 0x7f0f0058

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_1
    sget p1, Lcom/ex/auto/AcProgramEditActivity;->y:I

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_2
    sget p1, Lcom/ex/auto/AcProgramEditActivity;->y:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/widget/RadioGroup;

    invoke-direct {p1, v7}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0f0064

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f050041

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x7f05002e

    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v11, Landroid/widget/RadioButton;

    invoke-direct {v11, v7}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0f0062

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x18

    invoke-virtual {v7, v1}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v9

    const/16 v10, 0xc

    invoke-virtual {v7, v10}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v10

    invoke-virtual {v7, v1}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v1

    invoke-virtual {v7, v3}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v3

    invoke-virtual {v8, v9, v10, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v8, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f005b

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, LT/f;

    invoke-direct {v1, v7, v6, v0}, LT/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_3
    sget v8, Lcom/ex/auto/AcProgramEditActivity;->y:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroid/widget/NumberPicker;

    invoke-direct {v8, v7}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {v8, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    new-instance v9, Landroid/widget/NumberPicker;

    invoke-direct {v9, v7}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v10, 0x3b

    invoke-virtual {v9, v10}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {v9, v6}, Landroid/widget/NumberPicker;->setValue(I)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v7, p1}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v11

    invoke-virtual {v7, v3}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v12

    invoke-virtual {v7, p1}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v13

    invoke-virtual {v7, v3}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v3

    invoke-virtual {v10, v11, v12, v13, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0f005d

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v7, p1}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result p1

    invoke-virtual {v3, p1, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f005e

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f005f

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, LT/h;

    invoke-direct {v0, v8, v9, v7, v6}, LT/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_4
    sget v8, Lcom/ex/auto/AcProgramEditActivity;->y:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroid/widget/NumberPicker;

    invoke-direct {v8, v7}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/4 v6, 0x7

    invoke-virtual {v8, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/4 v6, 0x3

    invoke-virtual {v8, v6}, Landroid/widget/NumberPicker;->setValue(I)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v7, p1}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v0

    invoke-virtual {v7, v3}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v9

    invoke-virtual {v7, p1}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result p1

    invoke-virtual {v7, v3}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v3

    invoke-virtual {v6, v0, v9, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f005a

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, LT/e;

    invoke-direct {v0, v7, v8, v1}, LT/e;-><init>(Lcom/ex/auto/AcProgramEditActivity;Landroid/widget/NumberPicker;I)V

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_5
    sget v1, Lcom/ex/auto/AcProgramEditActivity;->y:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/widget/NumberPicker;

    invoke-direct {v1, v7}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v8, 0x20

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/16 v8, 0x16

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v7, p1}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v0

    invoke-virtual {v7, v3}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v9

    invoke-virtual {v7, p1}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result p1

    invoke-virtual {v7, v3}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v3

    invoke-virtual {v8, v0, v9, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f005c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, LT/e;

    invoke-direct {v0, v7, v1, v6}, LT/e;-><init>(Lcom/ex/auto/AcProgramEditActivity;Landroid/widget/NumberPicker;I)V

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

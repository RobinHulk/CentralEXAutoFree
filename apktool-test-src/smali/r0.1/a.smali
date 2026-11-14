.class public final Lr0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr0/l;


# direct methods
.method public synthetic constructor <init>(Lr0/l;I)V
    .locals 0

    iput p2, p0, Lr0/a;->a:I

    iput-object p1, p0, Lr0/a;->b:Lr0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget-object v2, p0, Lr0/a;->b:Lr0/l;

    const/4 v3, 0x1

    iget v4, p0, Lr0/a;->a:I

    packed-switch v4, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    check-cast v2, Lr0/p;

    iget-object p1, v2, Lr0/l;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v2}, Lr0/p;->d(Lr0/p;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, v2, Lr0/p;->d:Lj/Q0;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    check-cast v2, Lr0/k;

    invoke-static {v2, v4}, Lr0/k;->d(Lr0/k;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    iget-object v5, v2, Lr0/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    if-ne v5, v0, :cond_0

    iget-object v5, v2, Lr0/k;->m:Lp0/g;

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-ne v5, v3, :cond_1

    iget-object v5, v2, Lr0/k;->l:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v5, v2, Lr0/l;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lp0/g;

    move-result-object v7

    const v8, 0x7f0300b3

    invoke-static {v4, v8}, Le/a;->v(Landroid/view/View;I)I

    move-result v8

    const v9, 0x10100a7

    filled-new-array {v9}, [I

    move-result-object v9

    new-array v10, v1, [I

    filled-new-array {v9, v10}, [[I

    move-result-object v9

    const v10, 0x3dcccccd    # 0.1f

    if-ne v6, v0, :cond_3

    const v5, 0x7f0300c2

    invoke-static {v4, v5}, Le/a;->v(Landroid/view/View;I)I

    move-result v5

    new-instance v6, Lp0/g;

    iget-object v11, v7, Lp0/g;->a:Lp0/f;

    iget-object v11, v11, Lp0/f;->a:Lp0/k;

    invoke-direct {v6, v11}, Lp0/g;-><init>(Lp0/k;)V

    invoke-static {v8, v5, v10}, Le/a;->F(IIF)I

    move-result v8

    filled-new-array {v8, v1}, [I

    move-result-object v10

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v11}, Lp0/g;->h(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v6, v5}, Lp0/g;->setTint(I)V

    filled-new-array {v8, v5}, [I

    move-result-object v5

    new-instance v8, Landroid/content/res/ColorStateList;

    invoke-direct {v8, v9, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v5, Lp0/g;

    iget-object v9, v7, Lp0/g;->a:Lp0/f;

    iget-object v9, v9, Lp0/f;->a:Lp0/k;

    invoke-direct {v5, v9}, Lp0/g;-><init>(Lp0/k;)V

    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lp0/g;->setTint(I)V

    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v9, v8, v6, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v0, v1

    aput-object v7, v0, v3

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v4, v5}, Ly/y;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-ne v6, v3, :cond_4

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v0

    invoke-static {v8, v0, v10}, Le/a;->F(IIF)I

    move-result v5

    filled-new-array {v5, v0}, [I

    move-result-object v0

    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v9, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, v5, v7, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget-object v5, Ly/N;->a:Ljava/util/WeakHashMap;

    invoke-static {v4, v0}, Ly/y;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    new-instance v0, Lr0/i;

    invoke-direct {v0, v2, v4}, Lr0/i;-><init>(Lr0/k;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v2, Lr0/k;->e:Lj/S0;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lr0/j;

    invoke-direct {v0, v2}, Lr0/j;-><init>(Lr0/k;)V

    invoke-virtual {v4, v0}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    invoke-virtual {v4, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v0, v2, Lr0/k;->d:Lj/Q0;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v2, Lr0/k;->f:Lr0/h;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lr0/r;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    check-cast v2, Lr0/e;

    iget-object p1, v2, Lr0/e;->e:Lj/S0;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, v2, Lr0/e;->d:Lj/Q0;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

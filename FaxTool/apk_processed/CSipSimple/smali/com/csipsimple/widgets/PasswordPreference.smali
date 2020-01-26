.class public Lcom/csipsimple/widgets/PasswordPreference;
.super Landroid/preference/EditTextPreference;
.source "PasswordPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "PasswordPreference"


# instance fields
.field private canShowPassword:Z

.field private showPwdCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/widgets/PasswordPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/widgets/PasswordPreference;->canShowPassword:Z

    .line 55
    return-void
.end method

.method private setCanShowPassword(Z)V
    .locals 0
    .param p1, "canShow"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/csipsimple/widgets/PasswordPreference;->canShowPassword:Z

    .line 122
    invoke-direct {p0}, Lcom/csipsimple/widgets/PasswordPreference;->updateCanShowPassword()V

    .line 123
    return-void
.end method

.method private updateCanShowPassword()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/csipsimple/widgets/PasswordPreference;->showPwdCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/csipsimple/widgets/PasswordPreference;->showPwdCheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/csipsimple/widgets/PasswordPreference;->canShowPassword:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 118
    :cond_0
    return-void

    .line 116
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 127
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/csipsimple/widgets/PasswordPreference;->setCanShowPassword(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 136
    return-void
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/preference/EditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 60
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 67
    :try_start_0
    iget-object v4, p0, Lcom/csipsimple/widgets/PasswordPreference;->showPwdCheckbox:Landroid/widget/CheckBox;

    if-nez v4, :cond_0

    .line 68
    new-instance v4, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/csipsimple/widgets/PasswordPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/csipsimple/widgets/PasswordPreference;->showPwdCheckbox:Landroid/widget/CheckBox;

    .line 69
    iget-object v4, p0, Lcom/csipsimple/widgets/PasswordPreference;->showPwdCheckbox:Landroid/widget/CheckBox;

    const v5, 0x7f0b01fa

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 70
    iget-object v4, p0, Lcom/csipsimple/widgets/PasswordPreference;->showPwdCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/widgets/PasswordPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/csipsimple/widgets/PasswordPreference;->canShowPassword:Z

    .line 74
    invoke-virtual {p0}, Lcom/csipsimple/widgets/PasswordPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    .line 75
    const/16 v5, 0x81

    .line 74
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 76
    invoke-direct {p0}, Lcom/csipsimple/widgets/PasswordPreference;->updateCanShowPassword()V

    .line 77
    iget-object v4, p0, Lcom/csipsimple/widgets/PasswordPreference;->showPwdCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 78
    .local v3, "oldParent":Landroid/view/ViewParent;
    if-eq v3, p1, :cond_1

    .line 79
    if-eqz v3, :cond_1

    .line 80
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "oldParent":Landroid/view/ViewParent;
    iget-object v4, p0, Lcom/csipsimple/widgets/PasswordPreference;->showPwdCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 85
    .local v1, "container":Landroid/view/ViewGroup;
    const/16 v4, 0x8

    invoke-static {v4}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 88
    .restart local v1    # "container":Landroid/view/ViewGroup;
    :cond_2
    if-eqz v1, :cond_3

    .line 89
    iget-object v4, p0, Lcom/csipsimple/widgets/PasswordPreference;->showPwdCheckbox:Landroid/widget/CheckBox;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "container":Landroid/view/ViewGroup;
    :cond_3
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PasswordPreference"

    const-string v5, "Unsupported device for enhanced password"

    invoke-static {v4, v5, v2}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/csipsimple/widgets/PasswordPreference;->canShowPassword:Z

    if-nez v0, :cond_0

    .line 107
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 103
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/widgets/PasswordPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 104
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/16 v0, 0x90

    .line 104
    :goto_1
    or-int/lit8 v0, v0, 0x1

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 106
    :cond_1
    const/16 v0, 0x80

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 141
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/csipsimple/widgets/PasswordPreference;->setCanShowPassword(Z)V

    .line 112
    return-void
.end method

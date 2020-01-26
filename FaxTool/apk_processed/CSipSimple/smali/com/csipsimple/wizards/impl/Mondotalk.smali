.class public Lcom/csipsimple/wizards/impl/Mondotalk;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Mondotalk.java"


# instance fields
.field private CREATE_ACCOUNT:I

.field private customWizard:Landroid/widget/LinearLayout;

.field private customWizardText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/wizards/impl/Mondotalk;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->CREATE_ACCOUNT:I

    return v0
.end method

.method private updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
    .locals 4
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->customWizard:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->customWizardText:Landroid/widget/TextView;

    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->customWizard:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->customWizard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/csipsimple/wizards/impl/Mondotalk$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/wizards/impl/Mondotalk$1;-><init>(Lcom/csipsimple/wizards/impl/Mondotalk;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 1
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 73
    const/16 v0, 0xb4

    iput v0, p1, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 74
    return-object p1
.end method

.method protected canTcp()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v1, 0x7f0b0253

    .line 55
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 57
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 58
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 59
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 62
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->customWizardText:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060107

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->customWizard:Landroid/widget/LinearLayout;

    .line 65
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getFreeSubActivityCode()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->CREATE_ACCOUNT:I

    .line 67
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/Mondotalk;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V

    .line 68
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "Mondotalk"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "sip99.mondotalk.com"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    iget v2, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->CREATE_ACCOUNT:I

    if-ne p1, v2, :cond_0

    .line 106
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 107
    const-string v2, "username"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "uname":Ljava/lang/String;
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "pwd":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/Mondotalk;->setUsername(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Mondotalk;->setPassword(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/Mondotalk;->canSave()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Mondotalk;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->saveAndFinish()V

    .line 118
    .end local v0    # "pwd":Ljava/lang/String;
    .end local v1    # "uname":Ljava/lang/String;
    :cond_0
    return-void
.end method

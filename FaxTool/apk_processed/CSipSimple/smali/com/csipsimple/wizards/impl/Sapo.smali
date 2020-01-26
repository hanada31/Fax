.class public Lcom/csipsimple/wizards/impl/Sapo;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Sapo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 61
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Sapo;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Sapo;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " <sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Sapo;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@voip.sapo.pt:5060>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 64
    const-string v1, "sip:proxy.voip.sapo.pt:5070"

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 65
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "sip:proxy.voip.sapo.pt:5070"

    aput-object v2, v1, v3

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 68
    const-string v1, "*"

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Sapo;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/Sapo;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Sapo;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/Sapo;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 71
    const-string v1, "Digest"

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    .line 72
    iput v3, p1, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 74
    const/16 v1, 0x708

    iput v1, p1, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 76
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/Sapo;->canTcp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Sapo;->accountUseTcp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 82
    :goto_0
    return-object p1

    .line 79
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v1, 0x7f0b0253

    .line 45
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 47
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sapo;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 48
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sapo;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sapo;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 51
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Lcom/csipsimple/wizards/impl/Sapo;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sapo;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b02a7

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "Sapo"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "voip.sapo.pt:5060"

    return-object v0
.end method

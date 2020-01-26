.class public Lcom/csipsimple/wizards/impl/Fritzbox;
.super Lcom/csipsimple/wizards/impl/AlternateServerImplementation;
.source "Fritzbox.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 67
    const-string v0, "sip:fritz.box"

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<sip:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Fritzbox;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@fritz.box>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 71
    return-object p1
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v2, 0x7f0b0295

    const v1, 0x7f0b0293

    .line 42
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 44
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Fritzbox;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 45
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Fritzbox;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 46
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Fritzbox;->accountUsername:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b0297

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    .line 47
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Fritzbox;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Fritzbox;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 50
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Fritzbox;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 52
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Lcom/csipsimple/wizards/impl/Fritzbox;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Fritzbox;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b0294

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    sget-object v0, Lcom/csipsimple/wizards/impl/Fritzbox;->SERVER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Fritzbox;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b0296

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_1
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "Fritz!Box"

    return-object v0
.end method

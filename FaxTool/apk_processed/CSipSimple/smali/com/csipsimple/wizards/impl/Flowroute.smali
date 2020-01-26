.class public Lcom/csipsimple/wizards/impl/Flowroute;
.super Lcom/csipsimple/wizards/impl/AuthorizationImplementation;
.source "Flowroute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 1
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 70
    return-object p1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x1

    .line 76
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Flowroute;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Flowroute;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Flowroute;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Flowroute;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountAuthorization:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Flowroute;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Flowroute;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Flowroute;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Flowroute;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 81
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v3, 0x7f0b0251

    const v2, 0x7f0b0236

    const/4 v1, 0x3

    .line 40
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 42
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 43
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 44
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 47
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 48
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Flowroute;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 52
    const/4 v0, 0x0

    sget-object v1, Lcom/csipsimple/wizards/impl/Flowroute;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Flowroute;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/csipsimple/wizards/impl/Flowroute;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Flowroute;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b0237

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lcom/csipsimple/wizards/impl/Flowroute;->AUTH_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Flowroute;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b0242

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "Flowroute"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "sip.flowroute.com"

    return-object v0
.end method

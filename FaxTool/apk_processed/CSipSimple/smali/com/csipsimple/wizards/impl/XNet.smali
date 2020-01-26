.class public Lcom/csipsimple/wizards/impl/XNet;
.super Lcom/csipsimple/wizards/impl/AuthorizationImplementation;
.source "XNet.java"


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
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 67
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sip:58.28.20.150"

    aput-object v2, v0, v1

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 69
    return-object p1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    .line 75
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/XNet;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/XNet;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/XNet;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/XNet;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/XNet;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/XNet;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/XNet;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/XNet;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/XNet;->accountAuthorization:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/XNet;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/XNet;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/XNet;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/XNet;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/XNet;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/XNet;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/XNet;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 81
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v1, 0x7f0b0253

    const v2, 0x7f0b0251

    .line 40
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 42
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/XNet;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 43
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/XNet;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 44
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/XNet;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 47
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/XNet;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 48
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/XNet;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 51
    const/4 v0, 0x0

    sget-object v1, Lcom/csipsimple/wizards/impl/XNet;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/XNet;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/csipsimple/wizards/impl/XNet;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/XNet;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b0254

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "XNet"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "pan.wxnz.net"

    return-object v0
.end method

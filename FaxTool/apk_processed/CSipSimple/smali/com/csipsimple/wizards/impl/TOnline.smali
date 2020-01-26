.class public Lcom/csipsimple/wizards/impl/TOnline;
.super Lcom/csipsimple/wizards/impl/AuthorizationImplementation;
.source "TOnline.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 100
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    const-string v1, "t-online.de"

    .line 101
    .local v1, "domain":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<sip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/csipsimple/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v3}, Lcom/csipsimple/wizards/impl/TOnline;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 106
    return-object v0
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x1

    .line 89
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/TOnline;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/TOnline;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 90
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/TOnline;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/TOnline;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 91
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountAuthorization:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/TOnline;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/TOnline;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 92
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/TOnline;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/TOnline;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 94
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v3, 0x3

    .line 49
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 51
    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "parts":[Ljava/lang/String;
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountAuthorization:Landroid/preference/EditTextPreference;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 56
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountAuthorization:Landroid/preference/EditTextPreference;

    const-string v2, "Zugangsnummer"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountAuthorization:Landroid/preference/EditTextPreference;

    const-string v2, "Zugangsnummer"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountAuthorization:Landroid/preference/EditTextPreference;

    const-string v2, "The id which is used for online access"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 61
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountUsername:Landroid/preference/EditTextPreference;

    const-string v2, "Phone Number"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountUsername:Landroid/preference/EditTextPreference;

    const-string v2, "Phone Number"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountUsername:Landroid/preference/EditTextPreference;

    const-string v2, "Your phone number provieded by Telekom"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 66
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountPassword:Landroid/preference/EditTextPreference;

    const-string v2, "Zugangspassword"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountPassword:Landroid/preference/EditTextPreference;

    const-string v2, "Zugangspassword"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/TOnline;->accountPassword:Landroid/preference/EditTextPreference;

    const-string v2, "The password which is used for online access"

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v1, 0x0

    sget-object v2, Lcom/csipsimple/wizards/impl/TOnline;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/TOnline;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/csipsimple/wizards/impl/TOnline;->AUTH_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "The id which is used for online access"

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lcom/csipsimple/wizards/impl/TOnline;->USER_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "Your phone number provieded by Telekom"

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/csipsimple/wizards/impl/TOnline;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const-string v0, "The password which is used for online access"

    goto :goto_0

    .line 82
    :cond_2
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "t-online"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "tel.t-online.de"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 112
    const-string v0, "enable_stun"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 113
    const-string v0, "stun.t-online.de"

    invoke-virtual {p1, v0}, Lcom/csipsimple/utils/PreferencesWrapper;->addStunServer(Ljava/lang/String;)V

    .line 114
    return-void
.end method

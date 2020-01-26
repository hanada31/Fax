.class public Lcom/csipsimple/wizards/impl/CongstarTelekom;
.super Lcom/csipsimple/wizards/impl/AuthorizationImplementation;
.source "CongstarTelekom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 83
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 84
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 85
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "uname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " <sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/CongstarTelekom;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 87
    return-object p1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x1

    .line 71
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/CongstarTelekom;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/CongstarTelekom;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 72
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/CongstarTelekom;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/CongstarTelekom;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 73
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountAuthorization:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/CongstarTelekom;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/CongstarTelekom;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 74
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/CongstarTelekom;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/CongstarTelekom;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 77
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 43
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountUsername:Landroid/preference/EditTextPreference;

    const-string v1, "Telefonnummer (inkl. Vorwahl)"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountUsername:Landroid/preference/EditTextPreference;

    const-string v1, "Telefonnummer (inkl. Vorwahl)"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountUsername:Landroid/preference/EditTextPreference;

    const-string v1, "Beispiel: 030123456"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountAuthorization:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b0251

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 50
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->accountAuthorization:Landroid/preference/EditTextPreference;

    const-string v1, "cVertragsnummer"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 52
    const/4 v0, 0x0

    sget-object v1, Lcom/csipsimple/wizards/impl/CongstarTelekom;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/CongstarTelekom;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "Beispiel: 030123456"

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->AUTH_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "cVertragsnummer"

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/csipsimple/wizards/impl/CongstarTelekom;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "DSL-Vertragskennwort"

    goto :goto_0

    .line 65
    :cond_2
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "Congstar"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "tel.congstar.de"

    return-object v0
.end method

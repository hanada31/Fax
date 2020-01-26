.class public Lcom/csipsimple/wizards/impl/IiNet;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "IiNet.java"


# instance fields
.field accountState:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sip:sip."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".iinet.net.au"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "regUri":Ljava/lang/String;
    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 75
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 77
    return-object p1
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 10
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v9, 0x7f0b029c

    const v8, 0x7f0b029a

    const v7, 0x7f0b0298

    const/4 v4, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 39
    const/16 v5, 0x8

    new-array v3, v5, [Ljava/lang/CharSequence;

    const-string v5, "act"

    aput-object v5, v3, v4

    const/4 v5, 0x1

    const-string v6, "nsw"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "nt"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "qld"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "sa"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "tas"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "vic"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "wa"

    aput-object v6, v3, v5

    .line 41
    .local v3, "states":[Ljava/lang/CharSequence;
    new-instance v5, Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/csipsimple/wizards/impl/IiNet;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v5, v6}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    .line 42
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 43
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 44
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    const-string v6, "state"

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 45
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 46
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 47
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    const v6, 0x7f0b0299

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 48
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    const-string v6, "act"

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 49
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {p0, v5}, Lcom/csipsimple/wizards/impl/IiNet;->addPreference(Landroid/preference/Preference;)V

    .line 51
    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 52
    .local v1, "domain":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 53
    array-length v5, v3

    :goto_0
    if-lt v4, v5, :cond_1

    .line 62
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v8}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 63
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v8}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 64
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v9}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 65
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v9}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 66
    return-void

    .line 53
    :cond_1
    aget-object v2, v3, v4

    .line 54
    .local v2, "state":Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sip:sip."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".iinet.net.au"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "currentComp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/IiNet;->accountState:Landroid/preference/ListPreference;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v0, Lcom/csipsimple/wizards/impl/IiNet;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/IiNet;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b029b

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lcom/csipsimple/wizards/impl/IiNet;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/IiNet;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b029d

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "iinet"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "iinetphone.iinet.net.au"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 105
    const-string v0, "enable_stun"

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 106
    const-string v0, "enable_dns_srv"

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 107
    return-void
.end method

.class public Lcom/csipsimple/wizards/impl/LiberTalk;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "LiberTalk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 5
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 48
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/LiberTalk;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "phoneNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " <sip:+3399"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/LiberTalk;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 50
    const-string v2, "sip:ims.mnc010.mcc208.3gppnetwork.org:5064"

    iput-object v2, v0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NDI"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".LIBERTALK@sfr.fr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 53
    const/16 v2, 0xe10

    iput v2, v0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 54
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sip:internet.p-cscf.sfr.net:5064"

    aput-object v4, v2, v3

    iput-object v2, v0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 55
    const-string v2, "147"

    iput-object v2, v0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 56
    return-object v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 5
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v4, 0x7f0b0253

    .line 62
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 64
    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    const-string v2, "^NDI"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "phoneNumber":Ljava/lang/String;
    const-string v1, "\\.LIBERTALK@sfr\\.fr$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/LiberTalk;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 70
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/LiberTalk;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 71
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/LiberTalk;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 72
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/LiberTalk;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 74
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v0, Lcom/csipsimple/wizards/impl/LiberTalk;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/LiberTalk;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b0254

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
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
    .line 42
    const-string v0, "SFR LiberTalk"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "ims.mnc010.mcc208.3gppnetwork.org"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 87
    const-string v0, "use_compact_form"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 88
    return-void
.end method

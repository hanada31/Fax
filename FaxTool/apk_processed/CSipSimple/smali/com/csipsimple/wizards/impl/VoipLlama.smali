.class public Lcom/csipsimple/wizards/impl/VoipLlama;
.super Lcom/csipsimple/wizards/impl/Advanced;
.source "VoipLlama.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/Advanced;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v3, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/Advanced;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountCallerId:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v2, " <sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountUserName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/VoipLlama;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sip:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/VoipLlama;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "regUri":Ljava/lang/String;
    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 65
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 67
    return-object p1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x1

    .line 74
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/VoipLlama;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/VoipLlama;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountCallerId:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountCallerId:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/VoipLlama;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/VoipLlama;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountUserName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountUserName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/VoipLlama;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/VoipLlama;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/VoipLlama;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/VoipLlama;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/Advanced;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 44
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountUserName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 45
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountCallerId:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 46
    const-string v0, "use_tcp"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/VoipLlama;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "proxy"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/VoipLlama;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "server"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/VoipLlama;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "auth_id"

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/impl/VoipLlama;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipLlama;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/VoipLlama;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "VOIPLLAMA"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "sip.voipllama.com"

    return-object v0
.end method

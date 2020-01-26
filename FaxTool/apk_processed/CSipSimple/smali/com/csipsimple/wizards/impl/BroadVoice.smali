.class public Lcom/csipsimple/wizards/impl/BroadVoice;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "BroadVoice.java"


# static fields
.field private static final SUFFIX_KEY:Ljava/lang/String; = "suffix"


# instance fields
.field private accountSuffix:Landroid/preference/EditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 88
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 89
    const/16 v2, 0xe10

    iput v2, p1, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 90
    const/4 v2, 0x1

    iput v2, p1, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    .line 92
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "finalUsername":Ljava/lang/String;
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "suffix":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .end local v1    # "suffix":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<sip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/csipsimple/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/BroadVoice;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 102
    return-object p1
.end method

.method protected canTcp()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 7
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v4, 0x7f0b0253

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 50
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 52
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 53
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 55
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 58
    const/4 v0, 0x1

    .line 59
    .local v0, "recycle":Z
    const-string v3, "suffix"

    invoke-virtual {p0, v3}, Lcom/csipsimple/wizards/impl/BroadVoice;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    .line 60
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    if-nez v3, :cond_0

    .line 61
    new-instance v3, Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v3, v4}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    .line 62
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    const-string v4, "suffix"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 64
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    const-string v4, "Suffix for account id"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    const-string v4, "For multipresence usage (leave blank if not want)"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v0, 0x0

    .line 70
    :cond_0
    if-nez v0, :cond_1

    .line 71
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v3}, Lcom/csipsimple/wizards/impl/BroadVoice;->addPreference(Landroid/preference/Preference;)V

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getSipUserName()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "uName":Ljava/lang/String;
    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "uNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountUsername:Landroid/preference/EditTextPreference;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 78
    array-length v3, v2

    if-le v3, v5, :cond_2

    .line 79
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/BroadVoice;->accountSuffix:Landroid/preference/EditTextPreference;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 82
    :cond_2
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "BroadVoice"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "sip.broadvoice.com"

    return-object v0
.end method

.class public Lcom/csipsimple/wizards/impl/OXO810;
.super Lcom/csipsimple/wizards/impl/AlternateServerImplementation;
.source "OXO810.java"


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
    const/4 v1, 0x1

    .line 48
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 51
    iput v1, p1, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    .line 52
    return-object p1
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v1, 0x7f0b0253

    .line 34
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 37
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OXO810;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 38
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OXO810;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 39
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OXO810;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 42
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OXO810;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":5059"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "OXO810"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":5059"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 0
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 58
    return-void
.end method

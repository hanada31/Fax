.class public Lcom/csipsimple/wizards/impl/Phonzo;
.super Lcom/csipsimple/wizards/impl/AuthorizationImplementation;
.source "Phonzo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public canSave()Z
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    .line 47
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Phonzo;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Phonzo;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Phonzo;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Phonzo;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 48
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Phonzo;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Phonzo;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Phonzo;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Phonzo;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 49
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Phonzo;->accountAuthorization:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Phonzo;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Phonzo;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Phonzo;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 50
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Phonzo;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Phonzo;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Phonzo;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Phonzo;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 32
    const/4 v0, 0x0

    sget-object v1, Lcom/csipsimple/wizards/impl/Phonzo;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Phonzo;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "Phonzo"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "sip.phonzo.com"

    return-object v0
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/csipsimple/wizards/impl/Phonzo;->DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Phonzo;->setStringFieldSummary(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/csipsimple/wizards/impl/Phonzo;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Phonzo;->setStringFieldSummary(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/csipsimple/wizards/impl/Phonzo;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Phonzo;->setPasswordFieldSummary(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/csipsimple/wizards/impl/Phonzo;->AUTH_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Phonzo;->setPasswordFieldSummary(Ljava/lang/String;)V

    .line 41
    return-void
.end method

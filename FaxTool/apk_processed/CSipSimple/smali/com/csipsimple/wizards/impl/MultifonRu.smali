.class public Lcom/csipsimple/wizards/impl/MultifonRu;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "MultifonRu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v1, 0x7f0b0253

    .line 56
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 58
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MultifonRu;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 59
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MultifonRu;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 60
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MultifonRu;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 62
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v0, Lcom/csipsimple/wizards/impl/MultifonRu;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MultifonRu;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b0254

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
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
    .line 40
    const-string v0, "Multifon"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "multifon.ru"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 46
    const-string v0, "enable_dns_srv"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

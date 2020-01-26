.class public Lcom/csipsimple/wizards/impl/MiTelefono;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "MiTelefono.java"


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
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 65
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    const-string v1, "412"

    iput-object v1, v0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 66
    return-object v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v1, 0x7f0b0253

    .line 47
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MiTelefono;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 50
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MiTelefono;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 51
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MiTelefono;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 53
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/csipsimple/wizards/impl/MiTelefono;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MiTelefono;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b0254

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
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
    .line 41
    const-string v0, " MiTelefono"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "sip.mitelefono.com"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 3
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 80
    const-string v0, "G722/16000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "G729/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "iLBC/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "speex/8000/1"

    const-string v1, "wb"

    const-string v2, "230"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "speex/16000/1"

    const-string v1, "wb"

    const-string v2, "240"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "speex/32000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "GSM/8000/1"

    const-string v1, "wb"

    const-string v2, "249"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "SILK/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "SILK/12000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "SILK/16000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "SILK/24000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "G726-16/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "G726-24/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "G726-32/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "G726-40/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "G722/16000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "G729/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "iLBC/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "speex/8000/1"

    const-string v1, "nb"

    const-string v2, "230"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "speex/16000/1"

    const-string v1, "nb"

    const-string v2, "240"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "speex/32000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "GSM/8000/1"

    const-string v1, "nb"

    const-string v2, "249"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "SILK/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "SILK/12000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "SILK/16000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "SILK/24000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "G726-16/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "G726-24/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "G726-32/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "G726-40/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

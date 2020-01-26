.class public Lcom/csipsimple/wizards/impl/SipCel;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "SipCel.java"


# instance fields
.field accountState:Landroid/preference/ListPreference;

.field useSafePort:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 8
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 107
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    const-string v3, "sip:sip.sipcel."

    .line 108
    .local v3, "remoteServerUri":Ljava/lang/String;
    const-string v1, "com"

    .line 109
    .local v1, "ext":Ljava/lang/String;
    const-string v2, ""

    .line 111
    .local v2, "port":Ljava/lang/String;
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_0
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/SipCel;->useSafePort:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    const-string v2, ":443"

    .line 119
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    iput-object v3, v0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 121
    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v6

    iput-object v4, v0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 122
    iput v7, v0, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    .line 123
    const/16 v4, 0x78

    iput v4, v0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 124
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 126
    return-object v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 9
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v8, 0x7f0b0257

    const/4 v5, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 59
    const/4 v6, 0x4

    new-array v3, v6, [Ljava/lang/CharSequence;

    const-string v6, "com"

    aput-object v6, v3, v5

    const/4 v6, 0x1

    const-string v7, "eu"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "mobi"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "tel"

    aput-object v7, v3, v6

    .line 61
    .local v3, "states":[Ljava/lang/CharSequence;
    new-instance v6, Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/csipsimple/wizards/impl/SipCel;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v6, v7}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    .line 62
    new-instance v6, Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/csipsimple/wizards/impl/SipCel;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v6, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/csipsimple/wizards/impl/SipCel;->useSafePort:Landroid/preference/CheckBoxPreference;

    .line 64
    iget-object v6, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 65
    iget-object v6, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 66
    iget-object v6, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    const-string v7, "server"

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 67
    iget-object v6, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 68
    iget-object v6, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 69
    iget-object v6, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    const-string v7, "com"

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 71
    iget-object v6, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {p0, v6}, Lcom/csipsimple/wizards/impl/SipCel;->addPreference(Landroid/preference/Preference;)V

    .line 73
    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 74
    .local v1, "domain":Ljava/lang/String;
    const/4 v4, 0x0

    .line 75
    .local v4, "useSafe":Z
    if-eqz v1, :cond_0

    .line 76
    array-length v6, v3

    :goto_0
    if-lt v5, v6, :cond_1

    .line 83
    :goto_1
    const-string v5, ":443"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    const/4 v4, 0x1

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/SipCel;->useSafePort:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5}, Lcom/csipsimple/wizards/impl/SipCel;->addPreference(Landroid/preference/Preference;)V

    .line 90
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/SipCel;->useSafePort:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 91
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/SipCel;->useSafePort:Landroid/preference/CheckBoxPreference;

    const-string v6, "Use alternate port"

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/SipCel;->useSafePort:Landroid/preference/CheckBoxPreference;

    const-string v6, "Connect to port 443 instead of 5060"

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    return-void

    .line 76
    :cond_1
    aget-object v2, v3, v5

    .line 77
    .local v2, "state":Ljava/lang/CharSequence;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sip:sip.sipcel."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "currentComp":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 79
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/SipCel;->accountState:Landroid/preference/ListPreference;

    check-cast v2, Ljava/lang/String;

    .end local v2    # "state":Ljava/lang/CharSequence;
    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .restart local v2    # "state":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public getDefaultFilters(Lcom/csipsimple/api/SipProfile;)Ljava/util/List;
    .locals 6
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/csipsimple/api/SipProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/csipsimple/models/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/models/Filter;>;"
    new-instance v0, Lcom/csipsimple/models/Filter;

    invoke-direct {v0}, Lcom/csipsimple/models/Filter;-><init>()V

    .line 167
    .local v0, "f":Lcom/csipsimple/models/Filter;
    iget-wide v2, p1, Lcom/csipsimple/api/SipProfile;->id:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    .line 168
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "^"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(.*)$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    .line 170
    const-string v2, "00$1"

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    .line 171
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    .line 172
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v0, Lcom/csipsimple/models/Filter;

    .end local v0    # "f":Lcom/csipsimple/models/Filter;
    invoke-direct {v0}, Lcom/csipsimple/models/Filter;-><init>()V

    .line 175
    .restart local v0    # "f":Lcom/csipsimple/models/Filter;
    iget-wide v2, p1, Lcom/csipsimple/api/SipProfile;->id:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    .line 176
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "^"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "011"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(.*)$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    .line 178
    const-string v2, "00$1"

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    .line 179
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    .line 180
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    return-object v1
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "SipCel"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "sip.sipcel.com"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 3
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 134
    const-string v0, "echo_cancellation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 135
    const-string v0, "dtmf_mode"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "G729/8000/1"

    const-string v1, "wb"

    const-string v2, "244"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "PCMU/8000/1"

    const-string v1, "wb"

    const-string v2, "241"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "PCMA/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "G722/16000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "iLBC/8000/1"

    const-string v1, "wb"

    const-string v2, "242"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "speex/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "speex/16000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "speex/32000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "GSM/8000/1"

    const-string v1, "wb"

    const-string v2, "243"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "G729/8000/1"

    const-string v1, "nb"

    const-string v2, "242"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "PCMU/8000/1"

    const-string v1, "nb"

    const-string v2, "244"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "PCMA/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "G722/16000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "iLBC/8000/1"

    const-string v1, "nb"

    const-string v2, "243"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "speex/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "speex/16000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "speex/32000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "GSM/8000/1"

    const-string v1, "nb"

    const-string v2, "241"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

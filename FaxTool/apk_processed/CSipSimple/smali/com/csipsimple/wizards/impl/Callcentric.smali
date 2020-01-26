.class public Lcom/csipsimple/wizards/impl/Callcentric;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Callcentric.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 1
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 73
    const/4 v0, 0x1

    iput v0, p1, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    .line 75
    return-object p1
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v2, 0x7f0b024d

    const v1, 0x7f0b024b

    .line 45
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 47
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Callcentric;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 48
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Callcentric;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Callcentric;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 51
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Callcentric;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 52
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Callcentric;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 53
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/csipsimple/wizards/impl/Callcentric;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Callcentric;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b024c

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :cond_0
    sget-object v0, Lcom/csipsimple/wizards/impl/Callcentric;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Callcentric;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b024e

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultFilters(Lcom/csipsimple/api/SipProfile;)Ljava/util/List;
    .locals 4
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
    .line 94
    sget-object v2, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/models/Filter;>;"
    new-instance v0, Lcom/csipsimple/models/Filter;

    invoke-direct {v0}, Lcom/csipsimple/models/Filter;-><init>()V

    .line 98
    .local v0, "f":Lcom/csipsimple/models/Filter;
    iget-wide v2, p1, Lcom/csipsimple/api/SipProfile;->id:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    .line 99
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    .line 100
    const-string v2, "^(\\d{10})$"

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    .line 101
    const-string v2, "1$0"

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    .line 102
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    .line 103
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v0    # "f":Lcom/csipsimple/models/Filter;
    .end local v1    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/models/Filter;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "Callcentric"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "callcentric.com"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 3
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 81
    const-string v0, "enable_dns_srv"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 82
    const-string v0, "enable_vad"

    invoke-virtual {p1, v0, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 84
    const-string v0, "add_bandwidth_tias_in_sdp"

    invoke-virtual {p1, v0, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

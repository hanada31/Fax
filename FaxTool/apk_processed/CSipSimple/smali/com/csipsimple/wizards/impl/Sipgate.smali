.class public Lcom/csipsimple/wizards/impl/Sipgate;
.super Lcom/csipsimple/wizards/impl/AlternateServerImplementation;
.source "Sipgate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/wizards/impl/Sipgate$AccountBalance;
    }
.end annotation


# static fields
.field private static final PROXY_KEY:Ljava/lang/String; = "proxy_server"

.field protected static final THIS_FILE:Ljava/lang/String; = "SipgateW"


# instance fields
.field private accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

.field private accountProxy:Landroid/preference/EditTextPreference;

.field private customWizard:Landroid/widget/LinearLayout;

.field private customWizardText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;-><init>()V

    .line 167
    new-instance v0, Lcom/csipsimple/wizards/impl/Sipgate$AccountBalance;

    invoke-direct {v0, p0}, Lcom/csipsimple/wizards/impl/Sipgate$AccountBalance;-><init>(Lcom/csipsimple/wizards/impl/Sipgate;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/wizards/impl/Sipgate;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sipgate;->customWizard:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/wizards/impl/Sipgate;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sipgate;->customWizardText:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
    .locals 5
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/16 v4, 0x8

    .line 157
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sipgate;->customWizard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    invoke-virtual {v0, p1}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->launchRequest(Lcom/csipsimple/api/SipProfile;)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sipgate;->customWizard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 6
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 110
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/Sipgate;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "nproxy":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 114
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 115
    iput-boolean v4, p1, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    .line 116
    iput-boolean v4, p1, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    .line 117
    return-object p1
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 9
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v8, 0x7f0b02ad

    const v7, 0x7f0b02ab

    const v6, 0x7f0b02a9

    const v4, 0x7f0b0257

    const v5, 0x7f0b023e

    .line 61
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 63
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v6}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 64
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v6}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 65
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 66
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 67
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v7}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 68
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v7}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 69
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v8}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 70
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v8}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 73
    const/4 v2, 0x1

    .line 74
    .local v2, "recycle":Z
    const-string v3, "proxy_server"

    invoke-virtual {p0, v3}, Lcom/csipsimple/wizards/impl/Sipgate;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountProxy:Landroid/preference/EditTextPreference;

    .line 75
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountProxy:Landroid/preference/EditTextPreference;

    if-nez v3, :cond_0

    .line 76
    new-instance v3, Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/csipsimple/wizards/impl/Sipgate;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v3, v4}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountProxy:Landroid/preference/EditTextPreference;

    .line 77
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountProxy:Landroid/preference/EditTextPreference;

    const-string v4, "proxy_server"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountProxy:Landroid/preference/EditTextPreference;

    const v4, 0x7f0b023d

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 79
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 80
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    .line 81
    const/4 v2, 0x0

    .line 84
    :cond_0
    if-nez v2, :cond_1

    .line 85
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v3}, Lcom/csipsimple/wizards/impl/Sipgate;->addPreference(Landroid/preference/Preference;)V

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "currentProxy":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "currentServer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 91
    invoke-virtual {v0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 92
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->accountServer:Landroid/preference/EditTextPreference;

    const-string v4, "sipgate.de"

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 101
    :cond_3
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v4, 0x7f060108

    invoke-virtual {v3, v4}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->customWizardText:Landroid/widget/TextView;

    .line 102
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v4, 0x7f060107

    invoke-virtual {v3, v4}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/csipsimple/wizards/impl/Sipgate;->customWizard:Landroid/widget/LinearLayout;

    .line 103
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/Sipgate;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V

    .line 104
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "proxy_server"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sipgate;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b023e

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "Sipgate"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 124
    const-string v0, "enable_stun"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 125
    const-string v0, "stun.sipgate.net:10000"

    invoke-virtual {p1, v0}, Lcom/csipsimple/utils/PreferencesWrapper;->addStunServer(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->updateDescriptions()V

    .line 151
    const-string v0, "proxy_server"

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Sipgate;->setStringFieldSummary(Ljava/lang/String;)V

    .line 152
    return-void
.end method

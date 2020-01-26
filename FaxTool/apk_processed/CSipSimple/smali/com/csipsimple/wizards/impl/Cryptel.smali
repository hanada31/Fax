.class public Lcom/csipsimple/wizards/impl/Cryptel;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Cryptel.java"

# interfaces
.implements Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;


# static fields
.field private static final webCreationPage:Ljava/lang/String; = "http://50.28.50.63/index.php"


# instance fields
.field private customWizard:Landroid/widget/LinearLayout;

.field private customWizardText:Landroid/widget/TextView;

.field private extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/wizards/impl/Cryptel;)Lcom/csipsimple/wizards/impl/AccountCreationWebview;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    return-object v0
.end method

.method private updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
    .locals 4
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->customWizard:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->customWizardText:Landroid/widget/TextView;

    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->customWizard:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->customWizard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/csipsimple/wizards/impl/Cryptel$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/wizards/impl/Cryptel$1;-><init>(Lcom/csipsimple/wizards/impl/Cryptel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 79
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    const/4 v1, 0x1

    iput v1, v0, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    .line 80
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 81
    return-object v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v2, 0x7f0b025f

    const v1, 0x7f0b0253

    .line 58
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 60
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 61
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 62
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 64
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 65
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 69
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->customWizardText:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060107

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->customWizard:Landroid/widget/LinearLayout;

    .line 71
    new-instance v0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Cryptel;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const-string v2, "http://50.28.50.63/index.php"

    invoke-direct {v0, v1, v2, p0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;-><init>(Lcom/csipsimple/wizards/BasePrefsWizard;Ljava/lang/String;Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    .line 73
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/Cryptel;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V

    .line 74
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "Via Cryptel"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "sip.cryptelcore.net:5061"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public onAccountCreationDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/csipsimple/wizards/impl/Cryptel;->setUsername(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, p2}, Lcom/csipsimple/wizards/impl/Cryptel;->setPassword(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public saveAndQuit()Z
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/Cryptel;->canSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Cryptel;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->saveAndFinish()V

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 3
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 89
    const-string v0, "PCMU/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "PCMA/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "G722/16000/1"

    const-string v1, "wb"

    const-string v2, "235"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "G729/8000/1"

    const-string v1, "wb"

    const-string v2, "245"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "iLBC/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "speex/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "speex/16000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "speex/32000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "GSM/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "SILK/8000/1"

    const-string v1, "wb"

    const-string v2, "242"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "SILK/12000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "SILK/16000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "SILK/24000/1"

    const-string v1, "wb"

    const-string v2, "244"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "G726-16/8000/1"

    const-string v1, "wb"

    const-string v2, "236"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "G726-24/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "G726-32/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "G726-40/8000/1"

    const-string v1, "wb"

    const-string v2, "200"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "PCMU/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "PCMA/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "G722/16000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "G729/8000/1"

    const-string v1, "nb"

    const-string v2, "245"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "iLBC/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "speex/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "speex/16000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "speex/32000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "GSM/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "SILK/8000/1"

    const-string v1, "nb"

    const-string v2, "244"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "SILK/12000/1"

    const-string v1, "nb"

    const-string v2, "239"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "SILK/16000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "SILK/24000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "G726-16/8000/1"

    const-string v1, "nb"

    const-string v2, "236"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "G726-24/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "G726-32/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "G726-40/8000/1"

    const-string v1, "nb"

    const-string v2, "200"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "enable_tls"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 127
    return-void
.end method

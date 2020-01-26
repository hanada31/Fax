.class public Lcom/csipsimple/wizards/impl/Mobex;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Mobex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/wizards/impl/Mobex$AccountBalance;
    }
.end annotation


# static fields
.field private static THIS_FILE:Ljava/lang/String; = null

.field private static final USUAL_PREFIX:Ljava/lang/String; = "12"


# instance fields
.field private accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

.field private customWizard:Landroid/widget/LinearLayout;

.field private customWizardText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "MobexW"

    sput-object v0, Lcom/csipsimple/wizards/impl/Mobex;->THIS_FILE:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    .line 183
    new-instance v0, Lcom/csipsimple/wizards/impl/Mobex$AccountBalance;

    invoke-direct {v0, p0}, Lcom/csipsimple/wizards/impl/Mobex$AccountBalance;-><init>(Lcom/csipsimple/wizards/impl/Mobex;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    .line 47
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/csipsimple/wizards/impl/Mobex;->THIS_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/wizards/impl/Mobex;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->customWizard:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/wizards/impl/Mobex;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->customWizardText:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
    .locals 5
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/16 v4, 0x8

    .line 171
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->customWizard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    invoke-virtual {v0, p1}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->launchRequest(Lcom/csipsimple/api/SipProfile;)V

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->customWizardText:Landroid/widget/TextView;

    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->customWizard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 108
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Mobex;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "encodedUser":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <sip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/Mobex;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 112
    return-object v0
.end method

.method public canSave()Z
    .locals 4

    .prologue
    .line 97
    invoke-super {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->canSave()Z

    move-result v0

    .line 98
    .local v0, "ok":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Mobex;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Mobex;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "12"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Mobex;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 99
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 78
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    iget-object v0, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->accountUsername:Landroid/preference/EditTextPreference;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->customWizardText:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060107

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex;->customWizard:Landroid/widget/LinearLayout;

    .line 89
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/Mobex;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V

    .line 90
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "Mobex"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "200.152.124.172"

    return-object v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 3
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 121
    const-string v0, "echo_cancellation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 124
    const-string v0, "PCMU/8000/1"

    const-string v1, "wb"

    const-string v2, "220"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "PCMA/8000/1"

    const-string v1, "wb"

    const-string v2, "230"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "G722/16000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "G729/8000/1"

    const-string v1, "wb"

    const-string v2, "240"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "iLBC/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "speex/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "speex/16000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "speex/32000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "GSM/8000/1"

    const-string v1, "wb"

    const-string v2, "210"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "SILK/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "SILK/12000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "SILK/16000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "SILK/24000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "G726-16/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "G726-24/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "G726-32/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "G726-40/8000/1"

    const-string v1, "wb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "PCMU/8000/1"

    const-string v1, "nb"

    const-string v2, "220"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "PCMA/8000/1"

    const-string v1, "nb"

    const-string v2, "230"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "G722/16000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "G729/8000/1"

    const-string v1, "nb"

    const-string v2, "240"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "iLBC/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "speex/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "speex/16000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "speex/32000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "GSM/8000/1"

    const-string v1, "nb"

    const-string v2, "210"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "SILK/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "SILK/12000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "SILK/16000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "SILK/24000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "G726-16/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "G726-24/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "G726-32/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "G726-40/8000/1"

    const-string v1, "nb"

    const-string v2, "0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

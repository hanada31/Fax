.class public Lcom/csipsimple/wizards/impl/VoipTel;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "VoipTel.java"

# interfaces
.implements Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;


# static fields
.field private static final webCreationPage:Ljava/lang/String; = "http://212.4.110.135:8080/subscriber/newSubscriberFree/alta?execution=e2s1"


# instance fields
.field private customWizard:Landroid/widget/LinearLayout;

.field private customWizardText:Landroid/widget/TextView;

.field private extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/wizards/impl/VoipTel;)Lcom/csipsimple/wizards/impl/AccountCreationWebview;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    return-object v0
.end method

.method private updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
    .locals 4
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->customWizard:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->customWizardText:Landroid/widget/TextView;

    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->customWizard:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->customWizard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/csipsimple/wizards/impl/VoipTel$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/wizards/impl/VoipTel$1;-><init>(Lcom/csipsimple/wizards/impl/VoipTel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected canTcp()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 64
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 67
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->customWizardText:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060107

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->customWizard:Landroid/widget/LinearLayout;

    .line 69
    new-instance v0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    iget-object v1, p0, Lcom/csipsimple/wizards/impl/VoipTel;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const-string v2, "http://212.4.110.135:8080/subscriber/newSubscriberFree/alta?execution=e2s1"

    invoke-direct {v0, v1, v2, p0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;-><init>(Lcom/csipsimple/wizards/BasePrefsWizard;Ljava/lang/String;Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    .line 71
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/VoipTel;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V

    .line 72
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "Voiptel Mobile"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "voip.voiptel.ie"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onAccountCreationDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/csipsimple/wizards/impl/VoipTel;->setUsername(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/csipsimple/wizards/impl/VoipTel;->setPassword(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public saveAndQuit()Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/VoipTel;->canSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/VoipTel;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->saveAndFinish()V

    .line 116
    const/4 v0, 0x1

    .line 118
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
    .line 76
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 78
    const-string v0, "g729/8000/1"

    const-string v1, "nb"

    const-string v2, "240"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "g729/8000/1"

    const-string v1, "wb"

    const-string v2, "240"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

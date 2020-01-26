.class public Lcom/csipsimple/wizards/impl/Ippi;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Ippi.java"

# interfaces
.implements Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/wizards/impl/Ippi$AccountBalance;
    }
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "IppiW"


# instance fields
.field private accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

.field private customWizard:Landroid/widget/LinearLayout;

.field private customWizardText:Landroid/widget/TextView;

.field private extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    .line 112
    new-instance v0, Lcom/csipsimple/wizards/impl/Ippi$AccountBalance;

    invoke-direct {v0, p0}, Lcom/csipsimple/wizards/impl/Ippi$AccountBalance;-><init>(Lcom/csipsimple/wizards/impl/Ippi;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/wizards/impl/Ippi;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->customWizard:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/wizards/impl/Ippi;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->customWizardText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/wizards/impl/Ippi;)Lcom/csipsimple/wizards/impl/AccountCreationWebview;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    return-object v0
.end method

.method private updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
    .locals 4
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->customWizard:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    invoke-virtual {v0, p1}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->launchRequest(Lcom/csipsimple/api/SipProfile;)V

    .line 109
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->customWizardText:Landroid/widget/TextView;

    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->customWizard:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->customWizard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/csipsimple/wizards/impl/Ippi$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/wizards/impl/Ippi$1;-><init>(Lcom/csipsimple/wizards/impl/Ippi;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 1
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 184
    const-string v0, "*1234"

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 185
    const/4 v0, 0x1

    iput v0, p1, Lcom/csipsimple/api/SipProfile;->try_clean_registers:I

    .line 186
    return-object p1
.end method

.method protected canTcp()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 71
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 74
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->customWizardText:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060107

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->customWizard:Landroid/widget/LinearLayout;

    .line 78
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/Ippi;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V

    .line 80
    new-instance v0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Ippi;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const-string v2, "https://m.ippi.fr/subscribe/android.php"

    invoke-direct {v0, v1, v2, p0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;-><init>(Lcom/csipsimple/wizards/BasePrefsWizard;Ljava/lang/String;Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    .line 81
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "ippi"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "ippi.fr"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public onAccountCreationDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/csipsimple/wizards/impl/Ippi;->setUsername(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p2}, Lcom/csipsimple/wizards/impl/Ippi;->setPassword(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public saveAndQuit()Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/Ippi;->canSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->saveAndFinish()V

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 88
    const-string v0, "enable_stun"

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 89
    const-string v0, "enable_ice"

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 90
    const-string v0, "use_compact_form"

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 91
    const-string v0, "stun.ippi.fr"

    invoke-virtual {p1, v0}, Lcom/csipsimple/utils/PreferencesWrapper;->addStunServer(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.class public Lcom/csipsimple/wizards/impl/Zadarma;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Zadarma.java"

# interfaces
.implements Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/wizards/impl/Zadarma$AccountBalance;
    }
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "ZadarmaW"

.field private static final webCreationPage:Ljava/lang/String; = "https://ss.zadarma.com/android/registration/"


# instance fields
.field private accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

.field private customWizard:Landroid/widget/LinearLayout;

.field private customWizardText:Landroid/widget/TextView;

.field private extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    .line 142
    new-instance v0, Lcom/csipsimple/wizards/impl/Zadarma$AccountBalance;

    invoke-direct {v0, p0}, Lcom/csipsimple/wizards/impl/Zadarma$AccountBalance;-><init>(Lcom/csipsimple/wizards/impl/Zadarma;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/wizards/impl/Zadarma;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->customWizard:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/wizards/impl/Zadarma;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->customWizardText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/wizards/impl/Zadarma;)Lcom/csipsimple/wizards/impl/AccountCreationWebview;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    return-object v0
.end method

.method private updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
    .locals 4
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->customWizard:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    invoke-virtual {v0, p1}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->launchRequest(Lcom/csipsimple/api/SipProfile;)V

    .line 140
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->customWizardText:Landroid/widget/TextView;

    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->customWizard:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->customWizard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/csipsimple/wizards/impl/Zadarma$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/wizards/impl/Zadarma$1;-><init>(Lcom/csipsimple/wizards/impl/Zadarma;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 0
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 99
    return-object p1
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 74
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 77
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->customWizardText:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060107

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->customWizard:Landroid/widget/LinearLayout;

    .line 80
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/Zadarma;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V

    .line 82
    new-instance v0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Zadarma;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const-string v2, "https://ss.zadarma.com/android/registration/"

    invoke-direct {v0, v1, v2, p0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;-><init>(Lcom/csipsimple/wizards/BasePrefsWizard;Ljava/lang/String;Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->extAccCreator:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    .line 83
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "Zadarma"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "Zadarma.com"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public onAccountCreationDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/csipsimple/wizards/impl/Zadarma;->setUsername(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/csipsimple/wizards/impl/Zadarma;->setPassword(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public saveAndQuit()Z
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/Zadarma;->canSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->saveAndFinish()V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

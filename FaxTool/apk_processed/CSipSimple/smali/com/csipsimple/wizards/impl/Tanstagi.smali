.class public Lcom/csipsimple/wizards/impl/Tanstagi;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Tanstagi.java"


# static fields
.field private static final webCreationPage:Ljava/lang/String; = "https://create.tanstagi.net/gork/new"


# instance fields
.field private customWizard:Landroid/widget/LinearLayout;

.field private customWizardText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
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
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Tanstagi;->customWizard:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Tanstagi;->customWizardText:Landroid/widget/TextView;

    const v1, 0x7f0b0259

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Tanstagi;->customWizard:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Tanstagi;->customWizard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/csipsimple/wizards/impl/Tanstagi$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/wizards/impl/Tanstagi$1;-><init>(Lcom/csipsimple/wizards/impl/Tanstagi;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 1
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 121
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 122
    const/4 v0, 0x1

    iput v0, p1, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    .line 123
    return-object p1
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 64
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Tanstagi;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 67
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Tanstagi;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Tanstagi;->customWizardText:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Tanstagi;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f060107

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Tanstagi;->customWizard:Landroid/widget/LinearLayout;

    .line 72
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/Tanstagi;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V

    .line 76
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "tanstagi"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "tanstagi.net"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 85
    const-string v0, "enable_tls"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

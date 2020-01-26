.class public Lcom/csipsimple/wizards/impl/SipMe;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "SipMe.java"


# static fields
.field private static final USUAL_PREFIX:Ljava/lang/String; = "078555"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 77
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    const-string v1, "*999"

    iput-object v1, v0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 78
    return-object v0
.end method

.method public canSave()Z
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->canSave()Z

    move-result v0

    .line 62
    .local v0, "ok":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/SipMe;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SipMe;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "078555"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/SipMe;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 63
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v1, 0x7f0b0253

    .line 47
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 48
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/SipMe;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/SipMe;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 50
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/SipMe;->accountUsername:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b02b0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogMessage(I)V

    .line 51
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/SipMe;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 53
    iget-object v0, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/SipMe;->accountUsername:Landroid/preference/EditTextPreference;

    const-string v1, "078555"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lcom/csipsimple/wizards/impl/SipMe;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/SipMe;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b02b0

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
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
    .line 40
    const-string v0, "sipme"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "sipme.me"

    return-object v0
.end method

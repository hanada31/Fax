.class public Lcom/csipsimple/wizards/impl/Gradwell;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Gradwell.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 64
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "sip:nat.gradwell.com:5082"

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 65
    iput-boolean v3, v0, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    .line 66
    iput-boolean v3, v0, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    .line 67
    return-object v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Gradwell;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 51
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "Gradwell"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "sip.gradwell.com"

    return-object v0
.end method

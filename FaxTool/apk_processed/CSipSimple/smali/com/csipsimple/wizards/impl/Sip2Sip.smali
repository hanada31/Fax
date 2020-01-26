.class public Lcom/csipsimple/wizards/impl/Sip2Sip;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Sip2Sip.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sip:proxy.sipthor.net"

    aput-object v2, v0, v1

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 57
    const-string v0, "1233"

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 58
    return-object p1
.end method

.method protected canTcp()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v1, 0x7f0b0251

    .line 47
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 48
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sip2Sip;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Sip2Sip;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 52
    return-void
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "Sip2Sip"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "sip2sip.info"

    return-object v0
.end method

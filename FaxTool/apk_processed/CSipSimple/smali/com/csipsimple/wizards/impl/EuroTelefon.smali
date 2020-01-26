.class public Lcom/csipsimple/wizards/impl/EuroTelefon;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "EuroTelefon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 1
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 44
    const/16 v0, 0x5a

    iput v0, p1, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 45
    const-string v0, "*197"

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput v0, p1, Lcom/csipsimple/api/SipProfile;->try_clean_registers:I

    .line 47
    return-object p1
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "EuroTELEFON"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "sip.eurotelefon.eu"

    return-object v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 54
    const-string v0, "dtmf_mode"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

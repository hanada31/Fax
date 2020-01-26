.class public Lcom/csipsimple/wizards/impl/SipSorcery;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "SipSorcery.java"


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
    .locals 1
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 44
    const/16 v0, 0x258

    iput v0, p1, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    .line 46
    return-object p1
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "SIPSorcery"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "sipsorcery.com"

    return-object v0
.end method

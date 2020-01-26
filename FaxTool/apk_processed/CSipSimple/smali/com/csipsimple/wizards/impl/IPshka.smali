.class public Lcom/csipsimple/wizards/impl/IPshka;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "IPshka.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 49
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    iput-boolean v1, v0, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    .line 50
    iput-boolean v1, v0, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    .line 52
    return-object v0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "IPshka"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "ipshka.com"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

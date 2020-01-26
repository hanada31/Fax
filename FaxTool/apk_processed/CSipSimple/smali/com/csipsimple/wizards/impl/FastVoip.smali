.class public Lcom/csipsimple/wizards/impl/FastVoip;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "FastVoip.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 5
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 42
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sip:sip.fastvoip.com"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 44
    return-object v0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "FastVoip"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "fastvoip.com"

    return-object v0
.end method

.class public Lcom/csipsimple/wizards/impl/A1;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "A1.java"


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
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 42
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sip:sip.a1.net"

    aput-object v2, v0, v1

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 43
    return-object p1
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "A1"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "a1.net"

    return-object v0
.end method

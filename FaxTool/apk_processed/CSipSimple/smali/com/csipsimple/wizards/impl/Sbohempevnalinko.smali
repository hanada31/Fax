.class public Lcom/csipsimple/wizards/impl/Sbohempevnalinko;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Sbohempevnalinko.java"


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
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 42
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 43
    const/16 v1, 0x78

    iput v1, v0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 44
    return-object v0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "sbohempevnalinko.cz"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "81.91.216.18"

    return-object v0
.end method

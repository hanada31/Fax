.class public Lcom/csipsimple/wizards/impl/Vono;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Vono.java"


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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 42
    iput-boolean v1, p1, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    .line 43
    iput-boolean v1, p1, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    .line 44
    iput v2, p1, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 46
    return-object p1
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "Vono"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "vono.net.br"

    return-object v0
.end method

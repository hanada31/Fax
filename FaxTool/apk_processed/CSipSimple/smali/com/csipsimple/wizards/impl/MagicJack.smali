.class public Lcom/csipsimple/wizards/impl/MagicJack;
.super Lcom/csipsimple/wizards/impl/AlternateServerImplementation;
.source "MagicJack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 5
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 36
    const-string v0, "5070"

    .line 38
    .local v0, "port":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sip:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/MagicJack;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 41
    const-string v1, "*"

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/MagicJack;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MagicJack;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/MagicJack;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MagicJack;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 44
    const-string v1, "Digest"

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    .line 45
    const/16 v1, 0x8

    iput v1, p1, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 48
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sip:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/MagicJack;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 50
    return-object p1
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "MagicJack"

    return-object v0
.end method

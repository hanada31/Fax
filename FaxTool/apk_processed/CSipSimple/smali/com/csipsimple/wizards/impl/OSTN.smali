.class public Lcom/csipsimple/wizards/impl/OSTN;
.super Lcom/csipsimple/wizards/impl/AlternateServerImplementation;
.source "OSTN.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 8
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 40
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/OSTN;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "domain":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "domainPart":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 44
    .local v2, "shouldAddPort":Z
    array-length v5, v1

    if-le v5, v4, :cond_0

    .line 46
    const-string v5, "^[0-9]+$"

    aget-object v6, v1, v4

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 48
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":5061"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_1
    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sips:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iput-object v5, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 52
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 53
    iput v4, p1, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    .line 54
    return-object p1

    :cond_2
    move v2, v4

    .line 46
    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "OSTN"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 60
    const-string v0, "enable_tls"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

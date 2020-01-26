.class public abstract Lcom/csipsimple/wizards/impl/Broadsoft;
.super Lcom/csipsimple/wizards/impl/BaseImplementation;
.source "Broadsoft.java"


# static fields
.field protected static AUTH_NAME:Ljava/lang/String;

.field protected static DISPLAY_NAME:Ljava/lang/String;

.field protected static PASSWORD:Ljava/lang/String;

.field protected static PROXY:Ljava/lang/String;

.field protected static SERVER:Ljava/lang/String;

.field private static SUMMARIES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static USER_NAME:Ljava/lang/String;


# instance fields
.field protected accountAuthorization:Landroid/preference/EditTextPreference;

.field protected accountDisplayName:Landroid/preference/EditTextPreference;

.field protected accountPassword:Landroid/preference/EditTextPreference;

.field protected accountProxy:Landroid/preference/EditTextPreference;

.field protected accountServer:Landroid/preference/EditTextPreference;

.field protected accountUsername:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "display_name"

    sput-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->DISPLAY_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "username"

    sput-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->USER_NAME:Ljava/lang/String;

    .line 43
    const-string v0, "auth_name"

    sput-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->AUTH_NAME:Ljava/lang/String;

    .line 44
    const-string v0, "password"

    sput-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->PASSWORD:Ljava/lang/String;

    .line 45
    const-string v0, "server"

    sput-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->SERVER:Ljava/lang/String;

    .line 46
    const-string v0, "proxy"

    sput-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->PROXY:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/csipsimple/wizards/impl/Broadsoft$1;

    invoke-direct {v0}, Lcom/csipsimple/wizards/impl/Broadsoft$1;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->SUMMARIES:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/BaseImplementation;-><init>()V

    return-void
.end method

.method private bindFields()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountDisplayName:Landroid/preference/EditTextPreference;

    .line 50
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountUsername:Landroid/preference/EditTextPreference;

    .line 51
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->AUTH_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountAuthorization:Landroid/preference/EditTextPreference;

    .line 52
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountPassword:Landroid/preference/EditTextPreference;

    .line 53
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountServer:Landroid/preference/EditTextPreference;

    .line 54
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->PROXY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountProxy:Landroid/preference/EditTextPreference;

    .line 55
    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 6
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<sip:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/Broadsoft;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sip:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/Broadsoft;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "regUri":Ljava/lang/String;
    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 129
    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 131
    const-string v1, "*"

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/Broadsoft;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/Broadsoft;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 134
    const-string v1, "Digest"

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    .line 135
    iput v4, p1, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 136
    const/16 v1, 0x708

    iput v1, p1, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 137
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 138
    return-object p1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x1

    .line 113
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 114
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 115
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountAuthorization:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 116
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 117
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountServer:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 118
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountProxy:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Broadsoft;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 120
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 4
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/Broadsoft;->bindFields()V

    .line 61
    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getSipUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountAuthorization:Landroid/preference/EditTextPreference;

    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sip:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 73
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/Broadsoft;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBasePreferenceResource()I
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f05000e

    return v0
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v1, Lcom/csipsimple/wizards/impl/Broadsoft;->SUMMARIES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 104
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected abstract getDefaultName()Ljava/lang/String;
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Broadsoft;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->setStringFieldSummary(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->setStringFieldSummary(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->setPasswordFieldSummary(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->AUTH_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->setStringFieldSummary(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->setStringFieldSummary(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/csipsimple/wizards/impl/Broadsoft;->PROXY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Broadsoft;->setStringFieldSummary(Ljava/lang/String;)V

    .line 83
    return-void
.end method

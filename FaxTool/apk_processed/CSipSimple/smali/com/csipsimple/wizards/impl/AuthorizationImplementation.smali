.class public abstract Lcom/csipsimple/wizards/impl/AuthorizationImplementation;
.super Lcom/csipsimple/wizards/impl/BaseImplementation;
.source "AuthorizationImplementation.java"


# static fields
.field protected static AUTH_NAME:Ljava/lang/String;

.field protected static DISPLAY_NAME:Ljava/lang/String;

.field protected static PASSWORD:Ljava/lang/String;

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

.field protected accountServer:Landroid/preference/EditTextPreference;

.field protected accountUsername:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "display_name"

    sput-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->DISPLAY_NAME:Ljava/lang/String;

    .line 41
    const-string v0, "phone_number"

    sput-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->USER_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "auth_name"

    sput-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->AUTH_NAME:Ljava/lang/String;

    .line 43
    const-string v0, "password"

    sput-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->PASSWORD:Ljava/lang/String;

    .line 44
    const-string v0, "server"

    sput-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->SERVER:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation$1;

    invoke-direct {v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation$1;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->SUMMARIES:Ljava/util/HashMap;

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
    .line 47
    sget-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    .line 48
    sget-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    .line 49
    sget-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->AUTH_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountAuthorization:Landroid/preference/EditTextPreference;

    .line 50
    sget-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    .line 51
    sget-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountServer:Landroid/preference/EditTextPreference;

    .line 52
    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 5
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<sip:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountUsername:Landroid/preference/EditTextPreference;

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

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sip:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "regUri":Ljava/lang/String;
    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 126
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v3

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 128
    const-string v1, "*"

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 131
    const-string v1, "Digest"

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    .line 132
    iput v3, p1, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 133
    const/16 v1, 0x708

    iput v1, p1, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 135
    return-object p1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x1

    .line 111
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 112
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 113
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountAuthorization:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 114
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 115
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountServer:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 117
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->bindFields()V

    .line 58
    iget-object v0, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getSipUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountServer:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountAuthorization:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountAuthorization:Landroid/preference/EditTextPreference;

    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 75
    :cond_2
    return-void

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBasePreferenceResource()I
    .locals 1

    .prologue
    .line 147
    const v0, 0x7f05000f

    return v0
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v1, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->SUMMARIES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
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
    .line 139
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->setStringFieldSummary(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->setStringFieldSummary(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->setPasswordFieldSummary(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->AUTH_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->setStringFieldSummary(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->setStringFieldSummary(Ljava/lang/String;)V

    .line 84
    return-void
.end method

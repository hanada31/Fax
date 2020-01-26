.class public abstract Lcom/csipsimple/wizards/impl/SimpleImplementation;
.super Lcom/csipsimple/wizards/impl/BaseImplementation;
.source "SimpleImplementation.java"


# static fields
.field protected static DISPLAY_NAME:Ljava/lang/String;

.field protected static PASSWORD:Ljava/lang/String;

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

.field protected static USE_TCP:Ljava/lang/String;


# instance fields
.field protected accountDisplayName:Landroid/preference/EditTextPreference;

.field protected accountPassword:Landroid/preference/EditTextPreference;

.field protected accountUseTcp:Landroid/preference/CheckBoxPreference;

.field protected accountUsername:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "display_name"

    sput-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->DISPLAY_NAME:Ljava/lang/String;

    .line 43
    const-string v0, "username"

    sput-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->USER_NAME:Ljava/lang/String;

    .line 44
    const-string v0, "password"

    sput-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->PASSWORD:Ljava/lang/String;

    .line 45
    const-string v0, "use_tcp"

    sput-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->USE_TCP:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/csipsimple/wizards/impl/SimpleImplementation$1;

    invoke-direct {v0}, Lcom/csipsimple/wizards/impl/SimpleImplementation$1;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->SUMMARIES:Ljava/util/HashMap;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/BaseImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindFields()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    .line 49
    sget-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    .line 50
    sget-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    .line 51
    sget-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->USE_TCP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountUseTcp:Landroid/preference/CheckBoxPreference;

    .line 52
    return-void
.end method

.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 5
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 128
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<sip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/csipsimple/api/SipUri;->encodeUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "regUri":Ljava/lang/String;
    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 134
    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v4

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 137
    const-string v2, "*"

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 140
    const-string v2, "Digest"

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    .line 141
    iput v4, p1, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 143
    const/16 v2, 0x708

    iput v2, p1, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 145
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->canTcp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountUseTcp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 151
    :goto_0
    return-object p1

    .line 148
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x1

    .line 114
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 115
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 116
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 118
    return v0
.end method

.method protected canTcp()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 5
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->bindFields()V

    .line 60
    iget-object v0, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 61
    .local v0, "display_name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 65
    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v2}, Lcom/csipsimple/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    move-result-object v1

    .line 67
    .local v1, "parsedInfo":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v3, v1, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v3, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->canTcp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountUseTcp:Landroid/preference/CheckBoxPreference;

    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    :goto_1
    return-void

    .line 71
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 73
    :cond_2
    const/4 v2, 0x0

    sget-object v3, Lcom/csipsimple/wizards/impl/SimpleImplementation;->USE_TCP:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getBasePreferenceResource()I
    .locals 1

    .prologue
    .line 182
    const v0, 0x7f050013

    return v0
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v1, Lcom/csipsimple/wizards/impl/SimpleImplementation;->SUMMARIES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 105
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected abstract getDefaultName()Ljava/lang/String;
.end method

.method protected abstract getDomain()Ljava/lang/String;
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setStringFieldSummary(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setStringFieldSummary(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/csipsimple/wizards/impl/SimpleImplementation;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setPasswordFieldSummary(Ljava/lang/String;)V

    .line 86
    return-void
.end method

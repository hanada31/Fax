.class public Lcom/csipsimple/wizards/impl/Ecs;
.super Lcom/csipsimple/wizards/impl/BaseImplementation;
.source "Ecs.java"


# static fields
.field protected static DISPLAY_NAME:Ljava/lang/String;

.field protected static DOMAIN:Ljava/lang/String;

.field protected static PASSWORD:Ljava/lang/String;

.field protected static PHONE_NUMBER:Ljava/lang/String;

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
.field private accountDisplayName:Landroid/preference/EditTextPreference;

.field private accountPassword:Landroid/preference/EditTextPreference;

.field private accountPhoneNumber:Landroid/preference/EditTextPreference;

.field private accountServerDomain:Landroid/preference/EditTextPreference;

.field private accountServerIp:Landroid/preference/EditTextPreference;

.field private accountUsername:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "display_name"

    sput-object v0, Lcom/csipsimple/wizards/impl/Ecs;->DISPLAY_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "phone_number"

    sput-object v0, Lcom/csipsimple/wizards/impl/Ecs;->PHONE_NUMBER:Ljava/lang/String;

    .line 38
    const-string v0, "user_name"

    sput-object v0, Lcom/csipsimple/wizards/impl/Ecs;->USER_NAME:Ljava/lang/String;

    .line 39
    const-string v0, "server_ip"

    sput-object v0, Lcom/csipsimple/wizards/impl/Ecs;->SERVER:Ljava/lang/String;

    .line 40
    const-string v0, "server_domain"

    sput-object v0, Lcom/csipsimple/wizards/impl/Ecs;->DOMAIN:Ljava/lang/String;

    .line 41
    const-string v0, "password"

    sput-object v0, Lcom/csipsimple/wizards/impl/Ecs;->PASSWORD:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/csipsimple/wizards/impl/Ecs$1;

    invoke-direct {v0}, Lcom/csipsimple/wizards/impl/Ecs$1;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/impl/Ecs;->SUMMARIES:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/BaseImplementation;-><init>()V

    return-void
.end method

.method private bindFields()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountDisplayName:Landroid/preference/EditTextPreference;

    .line 52
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountPhoneNumber:Landroid/preference/EditTextPreference;

    .line 53
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountUsername:Landroid/preference/EditTextPreference;

    .line 54
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountPassword:Landroid/preference/EditTextPreference;

    .line 55
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->DOMAIN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountServerDomain:Landroid/preference/EditTextPreference;

    .line 56
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountServerIp:Landroid/preference/EditTextPreference;

    .line 58
    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 5
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<sip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountPhoneNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountServerDomain:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountServerIp:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "server_ip":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountServerDomain:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "regUri":Ljava/lang/String;
    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 159
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 162
    const-string v2, "*"

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Ecs;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Ecs;->getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 165
    const-string v2, "Digest"

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    .line 166
    iput v4, p1, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 168
    return-object p1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x1

    .line 137
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Ecs;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Ecs;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 138
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Ecs;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Ecs;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 139
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountPhoneNumber:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountPhoneNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Ecs;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Ecs;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 140
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountServerDomain:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountServerDomain:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Ecs;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Ecs;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 141
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Ecs;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Ecs;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 143
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 8
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v7, 0x1

    .line 62
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/Ecs;->bindFields()V

    .line 64
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v6, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 66
    const-string v1, ""

    .line 67
    .local v1, "domain_name":Ljava/lang/String;
    iget-object v0, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 69
    .local v0, "account_cfgid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 70
    const-string v0, ""

    .line 72
    :cond_0
    const-string v5, "[^<]*<sip:([^@]*)@([^@]*)>"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 73
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 74
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    :cond_1
    iget-object v4, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 80
    .local v4, "server_ip":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 81
    const-string v4, ""

    .line 83
    :cond_2
    const-string v5, "sip:([^@]*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 84
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 86
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 90
    const-string v4, ""

    .line 93
    :cond_4
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountPhoneNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountServerDomain:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v6, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 97
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/Ecs;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v6, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public getBasePreferenceResource()I
    .locals 1

    .prologue
    .line 175
    const v0, 0x7f050011

    return v0
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v1, Lcom/csipsimple/wizards/impl/Ecs;->SUMMARIES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 117
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Ecs;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->DISPLAY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->setStringFieldSummary(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->setStringFieldSummary(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->setStringFieldSummary(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->setStringFieldSummary(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->DOMAIN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->setStringFieldSummary(Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/csipsimple/wizards/impl/Ecs;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ecs;->setPasswordFieldSummary(Ljava/lang/String;)V

    .line 132
    return-void
.end method

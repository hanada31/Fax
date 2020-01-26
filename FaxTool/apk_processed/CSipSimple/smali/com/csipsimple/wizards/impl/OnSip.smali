.class public Lcom/csipsimple/wizards/impl/OnSip;
.super Lcom/csipsimple/wizards/impl/AuthorizationImplementation;
.source "OnSip.java"


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/csipsimple/wizards/impl/OnSip$1;

    invoke-direct {v0}, Lcom/csipsimple/wizards/impl/OnSip$1;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/impl/OnSip;->SUMMARIES:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 3
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sip:sip.onsip.com"

    aput-object v2, v0, v1

    iput-object v0, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 72
    return-object p1
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 56
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OnSip;->accountUsername:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b02a0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 57
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OnSip;->accountUsername:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b02a1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 59
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OnSip;->accountAuthorization:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b029e

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 60
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OnSip;->accountAuthorization:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b029f

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 62
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OnSip;->accountPassword:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b02a4

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 63
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OnSip;->accountPassword:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b02a5

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 65
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OnSip;->accountServer:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b02a2

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 66
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/OnSip;->accountServer:Landroid/preference/EditTextPreference;

    const v1, 0x7f0b02a3

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 67
    return-void
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v1, Lcom/csipsimple/wizards/impl/OnSip;->SUMMARIES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/OnSip;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "OnSIP"

    return-object v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 3
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 43
    const-string v0, "G722/16000/1"

    const-string v1, "wb"

    const-string v2, "245"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "PCMU/8000/1"

    const-string v1, "wb"

    const-string v2, "244"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "GSM/8000/1"

    const-string v1, "wb"

    const-string v2, "243"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "G722/16000/1"

    const-string v1, "nb"

    const-string v2, "234"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "PCMU/8000/1"

    const-string v1, "nb"

    const-string v2, "244"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "GSM/8000/1"

    const-string v1, "nb"

    const-string v2, "245"

    invoke-virtual {p1, v0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

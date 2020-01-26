.class public abstract Lcom/csipsimple/wizards/impl/AlternateServerImplementation;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "AlternateServerImplementation.java"


# static fields
.field protected static SERVER:Ljava/lang/String;


# instance fields
.field protected accountServer:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "server"

    sput-object v0, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->SERVER:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindFields()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->bindFields()V

    .line 38
    sget-object v0, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->accountServer:Landroid/preference/EditTextPreference;

    .line 39
    return-void
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    .line 60
    .local v0, "isValid":Z
    invoke-super {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->canSave()Z

    move-result v1

    and-int/2addr v0, v1

    .line 61
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->accountServer:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 63
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 44
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public getBasePreferenceResource()I
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f05000d

    return v0
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->SERVER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b0258

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->accountServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->updateDescriptions()V

    .line 69
    sget-object v0, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/AlternateServerImplementation;->setStringFieldSummary(Ljava/lang/String;)V

    .line 70
    return-void
.end method

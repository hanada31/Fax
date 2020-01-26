.class public Lcom/csipsimple/wizards/impl/BelCentrale;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "BelCentrale.java"


# static fields
.field private static STATE_KEY:Ljava/lang/String;


# instance fields
.field accountState:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "state"

    sput-object v0, Lcom/csipsimple/wizards/impl/BelCentrale;->STATE_KEY:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 104
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    const/16 v1, 0x3c

    iput v1, v0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 105
    const-string v1, "*95"

    iput-object v1, v0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 106
    return-object v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 10
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v8, 0x7f0b0257

    const/4 v9, 0x3

    const/4 v6, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 56
    const/16 v5, 0xd

    new-array v4, v5, [Ljava/lang/CharSequence;

    const-string v5, "login"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v7, "pbx2"

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string v7, "pbx3"

    aput-object v7, v4, v5

    const-string v5, "pbx4"

    aput-object v5, v4, v9

    const/4 v5, 0x4

    .line 57
    const-string v7, "pbx6"

    aput-object v7, v4, v5

    const/4 v5, 0x5

    const-string v7, "pbx7"

    aput-object v7, v4, v5

    const/4 v5, 0x6

    const-string v7, "pbx8"

    aput-object v7, v4, v5

    const/4 v5, 0x7

    const-string v7, "pbx9"

    aput-object v7, v4, v5

    const/16 v5, 0x8

    const-string v7, "pbx10"

    aput-object v7, v4, v5

    const/16 v5, 0x9

    const-string v7, "pbx11"

    aput-object v7, v4, v5

    const/16 v5, 0xa

    const-string v7, "pbx12"

    aput-object v7, v4, v5

    const/16 v5, 0xb

    const-string v7, "pbx13"

    aput-object v7, v4, v5

    const/16 v5, 0xc

    const-string v7, "pbx15"

    aput-object v7, v4, v5

    .line 59
    .local v4, "states":[Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 60
    .local v2, "recycle":Z
    sget-object v5, Lcom/csipsimple/wizards/impl/BelCentrale;->STATE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/csipsimple/wizards/impl/BelCentrale;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    .line 61
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    if-nez v5, :cond_0

    .line 62
    new-instance v5, Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v5, v7}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    .line 63
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    sget-object v7, Lcom/csipsimple/wizards/impl/BelCentrale;->STATE_KEY:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    .line 67
    :cond_0
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 68
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 69
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 70
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 71
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    const v7, 0x7f0b0258

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 72
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    const-string v7, "login"

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 74
    if-nez v2, :cond_1

    .line 75
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {p0, v5}, Lcom/csipsimple/wizards/impl/BelCentrale;->addPreference(Landroid/preference/Preference;)V

    .line 79
    :cond_1
    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 80
    .local v1, "domain":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 81
    array-length v7, v4

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_3

    .line 91
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 92
    return-void

    .line 81
    :cond_3
    aget-object v3, v4, v5

    .line 82
    .local v3, "state":Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "sip:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".belcentrale.nl"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "currentComp":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 84
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "Belcentrale"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    const-string v0, "login"

    .line 40
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/BelCentrale;->accountState:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".belcentrale.nl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->updateDescriptions()V

    .line 97
    sget-object v0, Lcom/csipsimple/wizards/impl/BelCentrale;->STATE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/BelCentrale;->setStringFieldSummary(Ljava/lang/String;)V

    .line 99
    return-void
.end method

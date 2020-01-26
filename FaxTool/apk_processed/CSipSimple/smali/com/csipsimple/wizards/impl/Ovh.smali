.class public Lcom/csipsimple/wizards/impl/Ovh;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Ovh.java"


# static fields
.field private static final PROVIDER_LIST_KEY:Ljava/lang/String; = "provider_list"

.field static providers:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field sipServer:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/csipsimple/wizards/impl/Ovh$1;

    invoke-direct {v0}, Lcom/csipsimple/wizards/impl/Ovh$1;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/impl/Ovh;->providers:Ljava/util/SortedMap;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 12
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v10, 0x7f0b0257

    const v9, 0x7f0b0253

    .line 71
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 73
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 74
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 75
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    const/4 v5, 0x1

    .line 81
    .local v5, "recycle":Z
    const-string v8, "provider_list"

    invoke-virtual {p0, v8}, Lcom/csipsimple/wizards/impl/Ovh;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    .line 82
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    if-nez v8, :cond_0

    .line 83
    new-instance v8, Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/csipsimple/wizards/impl/Ovh;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v8, v9}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    .line 84
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    const-string v9, "provider_list"

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 85
    const/4 v5, 0x0

    .line 88
    :cond_0
    sget-object v8, Lcom/csipsimple/wizards/impl/Ovh;->providers:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->size()I

    move-result v8

    new-array v2, v8, [Ljava/lang/CharSequence;

    .line 89
    .local v2, "e":[Ljava/lang/CharSequence;
    sget-object v8, Lcom/csipsimple/wizards/impl/Ovh;->providers:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/CharSequence;

    .line 90
    .local v7, "v":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 91
    .local v3, "i":I
    sget-object v8, Lcom/csipsimple/wizards/impl/Ovh;->providers:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 97
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 98
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 99
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 100
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 101
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    const-string v9, "sip.ovh.fr"

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 103
    if-nez v5, :cond_1

    .line 104
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {p0, v8}, Lcom/csipsimple/wizards/impl/Ovh;->addPreference(Landroid/preference/Preference;)V

    .line 107
    :cond_1
    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 108
    .local v1, "domain":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 109
    array-length v9, v7

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_4

    .line 118
    :cond_2
    :goto_2
    return-void

    .line 91
    .end local v1    # "domain":Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 92
    .local v4, "pv":Ljava/lang/String;
    aput-object v4, v2, v3

    .line 93
    sget-object v8, Lcom/csipsimple/wizards/impl/Ovh;->providers:Ljava/util/SortedMap;

    invoke-interface {v8, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    aput-object v8, v7, v3

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v4    # "pv":Ljava/lang/String;
    .restart local v1    # "domain":Ljava/lang/String;
    :cond_4
    aget-object v6, v7, v8

    .line 110
    .local v6, "state":Ljava/lang/CharSequence;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sip:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "currentComp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 112
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 109
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lcom/csipsimple/wizards/impl/Ovh;->USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ovh;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v1, 0x7f0b02a6

    invoke-virtual {v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const-string v0, "provider_list"

    if-ne p1, v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "Ovh"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Ovh;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "provider":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 64
    .end local v0    # "provider":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "provider":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->updateDescriptions()V

    .line 123
    const-string v0, "provider_list"

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Ovh;->setStringFieldSummary(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.class public Lcom/csipsimple/wizards/impl/Vitelity;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Vitelity.java"


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
    .line 46
    new-instance v0, Lcom/csipsimple/wizards/impl/Vitelity$1;

    invoke-direct {v0}, Lcom/csipsimple/wizards/impl/Vitelity$1;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/impl/Vitelity;->providers:Ljava/util/SortedMap;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 12
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const v10, 0x7f0b0257

    .line 65
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 68
    const/4 v5, 0x1

    .line 69
    .local v5, "recycle":Z
    const-string v8, "provider_list"

    invoke-virtual {p0, v8}, Lcom/csipsimple/wizards/impl/Vitelity;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    .line 70
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    if-nez v8, :cond_0

    .line 71
    new-instance v8, Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/csipsimple/wizards/impl/Vitelity;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v8, v9}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    .line 72
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    const-string v9, "provider_list"

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 73
    const/4 v5, 0x0

    .line 76
    :cond_0
    sget-object v8, Lcom/csipsimple/wizards/impl/Vitelity;->providers:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->size()I

    move-result v8

    new-array v2, v8, [Ljava/lang/CharSequence;

    .line 77
    .local v2, "e":[Ljava/lang/CharSequence;
    sget-object v8, Lcom/csipsimple/wizards/impl/Vitelity;->providers:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/CharSequence;

    .line 78
    .local v7, "v":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 79
    .local v3, "i":I
    sget-object v8, Lcom/csipsimple/wizards/impl/Vitelity;->providers:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 85
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 86
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 87
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 88
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 89
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    const-string v9, "sip1.vitelity.net"

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 91
    if-nez v5, :cond_1

    .line 92
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {p0, v8}, Lcom/csipsimple/wizards/impl/Vitelity;->addPreference(Landroid/preference/Preference;)V

    .line 95
    :cond_1
    iget-object v1, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 96
    .local v1, "domain":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 97
    array-length v9, v7

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_4

    .line 106
    :cond_2
    :goto_2
    return-void

    .line 79
    .end local v1    # "domain":Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    .local v4, "pv":Ljava/lang/String;
    aput-object v4, v2, v3

    .line 81
    sget-object v8, Lcom/csipsimple/wizards/impl/Vitelity;->providers:Ljava/util/SortedMap;

    invoke-interface {v8, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    aput-object v8, v7, v3

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v4    # "pv":Ljava/lang/String;
    .restart local v1    # "domain":Ljava/lang/String;
    :cond_4
    aget-object v6, v7, v8

    .line 98
    .local v6, "state":Ljava/lang/CharSequence;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sip:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "currentComp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 100
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 97
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "provider_list"

    if-ne p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultFilters(Lcom/csipsimple/api/SipProfile;)Ljava/util/List;
    .locals 5
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/csipsimple/api/SipProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/csipsimple/models/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "country":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/models/Filter;>;"
    new-instance v1, Lcom/csipsimple/models/Filter;

    invoke-direct {v1}, Lcom/csipsimple/models/Filter;-><init>()V

    .line 143
    .local v1, "f":Lcom/csipsimple/models/Filter;
    iget-wide v3, p1, Lcom/csipsimple/api/SipProfile;->id:J

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    .line 144
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    .line 145
    const-string v3, "^(\\d{10})$"

    iput-object v3, v1, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    .line 146
    const-string v3, "1$0"

    iput-object v3, v1, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    .line 147
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    .line 148
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v1    # "f":Lcom/csipsimple/models/Filter;
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/models/Filter;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "Vitelity"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Vitelity;->sipServer:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "provider":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 114
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
    .line 119
    invoke-super {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->updateDescriptions()V

    .line 120
    const-string v0, "provider_list"

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Vitelity;->setStringFieldSummary(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.class public Lcom/csipsimple/wizards/impl/Betamax;
.super Lcom/csipsimple/wizards/impl/AuthorizationImplementation;
.source "Betamax.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/wizards/impl/Betamax$AccountBalance;
    }
.end annotation


# static fields
.field static PROVIDER:Ljava/lang/String; = null

.field private static final PROVIDER_LIST_KEY:Ljava/lang/String; = "provider_list"

.field private static SUMMARIES:Ljava/util/HashMap; = null
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

.field protected static final THIS_FILE:Ljava/lang/String; = "BetamaxW"

.field static providers:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

.field private customWizard:Landroid/widget/LinearLayout;

.field private customWizardText:Landroid/widget/TextView;

.field providerListPref:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "provider"

    sput-object v0, Lcom/csipsimple/wizards/impl/Betamax;->PROVIDER:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/csipsimple/wizards/impl/Betamax$1;

    invoke-direct {v0}, Lcom/csipsimple/wizards/impl/Betamax$1;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/impl/Betamax;->providers:Ljava/util/SortedMap;

    .line 317
    new-instance v0, Lcom/csipsimple/wizards/impl/Betamax$2;

    invoke-direct {v0}, Lcom/csipsimple/wizards/impl/Betamax$2;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/impl/Betamax;->SUMMARIES:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;-><init>()V

    .line 424
    new-instance v0, Lcom/csipsimple/wizards/impl/Betamax$AccountBalance;

    invoke-direct {v0, p0}, Lcom/csipsimple/wizards/impl/Betamax$AccountBalance;-><init>(Lcom/csipsimple/wizards/impl/Betamax;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/wizards/impl/Betamax;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Betamax;->customWizard:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/wizards/impl/Betamax;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Betamax;->customWizardText:Landroid/widget/TextView;

    return-object v0
.end method

.method private updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V
    .locals 5
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/16 v4, 0x8

    .line 414
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Betamax;->customWizard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountBalanceHelper:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    invoke-virtual {v0, p1}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->launchRequest(Lcom/csipsimple/api/SipProfile;)V

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/Betamax;->customWizard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
    .locals 1
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object p1

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    .line 314
    return-object p1
.end method

.method public canSave()Z
    .locals 3

    .prologue
    .line 364
    const/4 v0, 0x1

    .line 366
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountDisplayName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountDisplayName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Betamax;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Betamax;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 367
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Betamax;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Betamax;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 368
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountAuthorization:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountAuthorization:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Betamax;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Betamax;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 369
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/Betamax;->isEmpty(Landroid/preference/EditTextPreference;)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/wizards/impl/Betamax;->checkField(Landroid/preference/Preference;Z)Z

    move-result v1

    and-int/2addr v0, v1

    .line 370
    return v0
.end method

.method public fillLayout(Lcom/csipsimple/api/SipProfile;)V
    .locals 10
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 253
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountUsername:Landroid/preference/EditTextPreference;

    const v8, 0x7f0b0236

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 254
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->accountUsername:Landroid/preference/EditTextPreference;

    const v8, 0x7f0b0237

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 256
    const/4 v4, 0x1

    .line 257
    .local v4, "recycle":Z
    const-string v7, "provider_list"

    invoke-virtual {p0, v7}, Lcom/csipsimple/wizards/impl/Betamax;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    .line 258
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    if-nez v7, :cond_3

    .line 259
    const-string v7, "BetamaxW"

    const-string v8, "Create new list pref"

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v7, Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Betamax;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-direct {v7, v8}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    .line 261
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    const-string v8, "provider_list"

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 262
    const/4 v4, 0x0

    .line 267
    :goto_0
    sget-object v7, Lcom/csipsimple/wizards/impl/Betamax;->providers:Ljava/util/SortedMap;

    invoke-interface {v7}, Ljava/util/SortedMap;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/CharSequence;

    .line 268
    .local v5, "v":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 269
    .local v2, "i":I
    sget-object v7, Lcom/csipsimple/wizards/impl/Betamax;->providers:Ljava/util/SortedMap;

    invoke-interface {v7}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 274
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 275
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 276
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    sget-object v8, Lcom/csipsimple/wizards/impl/Betamax;->PROVIDER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 277
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    const-string v8, "Provider"

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    const-string v8, "Provider"

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    const-string v8, "Betamax clone provider"

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    const-string v8, "12VoIP"

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 282
    if-nez v4, :cond_0

    .line 283
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v7}, Lcom/csipsimple/wizards/impl/Betamax;->addPreference(Landroid/preference/Preference;)V

    .line 285
    :cond_0
    const/4 v7, 0x0

    sget-object v8, Lcom/csipsimple/wizards/impl/Betamax;->SERVER:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/csipsimple/wizards/impl/Betamax;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "domain":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 289
    sget-object v7, Lcom/csipsimple/wizards/impl/Betamax;->providers:Ljava/util/SortedMap;

    invoke-interface {v7}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 298
    :cond_2
    :goto_2
    const-string v7, "BetamaxW"

    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v8, 0x7f060108

    invoke-virtual {v7, v8}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->customWizardText:Landroid/widget/TextView;

    .line 302
    iget-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v8, 0x7f060107

    invoke-virtual {v7, v8}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/csipsimple/wizards/impl/Betamax;->customWizard:Landroid/widget/LinearLayout;

    .line 304
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/Betamax;->updateAccountInfos(Lcom/csipsimple/api/SipProfile;)V

    .line 305
    return-void

    .line 264
    .end local v0    # "domain":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "v":[Ljava/lang/CharSequence;
    :cond_3
    const-string v7, "BetamaxW"

    const-string v8, "Recycle existing list pref"

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    .restart local v2    # "i":I
    .restart local v5    # "v":[Ljava/lang/CharSequence;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    .local v3, "pv":Ljava/lang/String;
    aput-object v3, v5, v2

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 289
    .end local v3    # "pv":Ljava/lang/String;
    .restart local v0    # "domain":Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 290
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 291
    .local v6, "val":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 292
    const-string v8, "BetamaxW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, "Set provider list pref value to "

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 347
    sget-object v1, Lcom/csipsimple/wizards/impl/Betamax;->SUMMARIES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 348
    .local v0, "res":Ljava/lang/Integer;
    sget-object v1, Lcom/csipsimple/wizards/impl/Betamax;->PROVIDER:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 356
    :goto_0
    return-object v1

    .line 353
    :cond_0
    if-eqz v0, :cond_1

    .line 354
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Betamax;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 356
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string v0, "Betamax"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 378
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "provider":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 380
    sget-object v2, Lcom/csipsimple/wizards/impl/Betamax;->providers:Ljava/util/SortedMap;

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 381
    .local v1, "set":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 383
    .end local v1    # "set":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 4
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    const/4 v3, 0x1

    .line 399
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 401
    const-string v2, "enable_stun"

    invoke-virtual {p1, v2, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 402
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "provider":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 404
    sget-object v2, Lcom/csipsimple/wizards/impl/Betamax;->providers:Ljava/util/SortedMap;

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 405
    .local v1, "set":[Ljava/lang/String;
    aget-object v2, v1, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    aget-object v2, v1, v3

    invoke-virtual {p1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->addStunServer(Ljava/lang/String;)V

    .line 410
    .end local v1    # "set":[Ljava/lang/String;
    :cond_0
    const-string v2, "enable_ice"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 411
    return-void
.end method

.method public updateDescriptions()V
    .locals 1

    .prologue
    .line 337
    invoke-super {p0}, Lcom/csipsimple/wizards/impl/AuthorizationImplementation;->updateDescriptions()V

    .line 338
    sget-object v0, Lcom/csipsimple/wizards/impl/Betamax;->PROVIDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/impl/Betamax;->setStringFieldSummary(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.class public Lcom/csipsimple/wizards/BasePrefsWizard;
.super Lcom/csipsimple/ui/prefs/GenericPrefs;
.source "BasePrefsWizard.java"


# static fields
.field private static final CHOOSE_WIZARD:I = 0x0

.field public static final DELETE_MENU:I = 0x5

.field public static final FILTERS_MENU:I = 0x4

.field private static final FINAL_ACTIVITY_CODE:I = 0x1

.field private static final MODIFY_FILTERS:I = 0x1

.field public static final SAVE_MENU:I = 0x2

.field private static final THIS_FILE:Ljava/lang/String; = "Base Prefs wizard"

.field public static final TRANSFORM_MENU:I = 0x3

.field private static final WIZARD_PREF_NAME:Ljava/lang/String; = "Wizard"


# instance fields
.field protected account:Lcom/csipsimple/api/SipProfile;

.field private currentActivityCode:I

.field private isResumed:Z

.field private saveButton:Landroid/widget/Button;

.field private wizard:Lcom/csipsimple/wizards/WizardIface;

.field private wizardId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->isResumed:Z

    .line 193
    const/4 v0, 0x1

    iput v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->currentActivityCode:I

    .line 48
    return-void
.end method

.method private saveAccount()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->saveAccount(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private saveAccount(Ljava/lang/String;)V
    .locals 11
    .param p1, "wizardId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 276
    const/4 v3, 0x0

    .line 278
    .local v3, "needRestart":Z
    new-instance v4, Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/csipsimple/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 279
    .local v4, "prefs":Lcom/csipsimple/utils/PreferencesWrapper;
    iget-object v6, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    iget-object v7, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    invoke-interface {v6, v7}, Lcom/csipsimple/wizards/WizardIface;->buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;

    move-result-object v6

    iput-object v6, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    .line 280
    iget-object v6, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    iput-object p1, v6, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    .line 281
    iget-object v6, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v6, v6, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 283
    invoke-virtual {v4}, Lcom/csipsimple/utils/PreferencesWrapper;->startEditing()V

    .line 284
    iget-object v6, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    invoke-interface {v6, v4}, Lcom/csipsimple/wizards/WizardIface;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 285
    invoke-virtual {v4}, Lcom/csipsimple/utils/PreferencesWrapper;->endEditing()V

    .line 286
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    invoke-virtual {v8}, Lcom/csipsimple/api/SipProfile;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 289
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/csipsimple/api/SipProfile;->id:J

    .line 290
    iget-object v6, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    iget-object v7, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    invoke-interface {v6, v7}, Lcom/csipsimple/wizards/WizardIface;->getDefaultFilters(Lcom/csipsimple/api/SipProfile;)Ljava/util/List;

    move-result-object v1

    .line 291
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/models/Filter;>;"
    if-eqz v1, :cond_0

    .line 292
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 299
    :cond_0
    iget-object v6, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    invoke-interface {v6}, Lcom/csipsimple/wizards/WizardIface;->needRestart()Z

    move-result v3

    .line 311
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/models/Filter;>;"
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_1
    if-eqz v3, :cond_1

    .line 312
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.csipsimple.service.ACTION_SIP_REQUEST_RESTART"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->sendBroadcast(Landroid/content/Intent;)V

    .line 315
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 292
    .restart local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/models/Filter;>;"
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/models/Filter;

    .line 294
    .local v0, "filter":Lcom/csipsimple/models/Filter;
    iget-object v7, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v7, v7, Lcom/csipsimple/api/SipProfile;->id:J

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    .line 295
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/csipsimple/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/csipsimple/models/Filter;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 304
    .end local v0    # "filter":Lcom/csipsimple/models/Filter;
    .end local v1    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/models/Filter;>;"
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v4}, Lcom/csipsimple/utils/PreferencesWrapper;->startEditing()V

    .line 305
    iget-object v6, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    invoke-interface {v6, v4}, Lcom/csipsimple/wizards/WizardIface;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 306
    invoke-virtual {v4}, Lcom/csipsimple/utils/PreferencesWrapper;->endEditing()V

    .line 307
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/csipsimple/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    iget-object v8, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v8, v8, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    invoke-virtual {v8}, Lcom/csipsimple/api/SipProfile;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setWizardId(Ljava/lang/String;)Z
    .locals 5
    .param p1, "wId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v2, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 114
    const-string v2, "EXPERT"

    invoke-direct {p0, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->setWizardId(Ljava/lang/String;)Z

    move-result v2

    .line 143
    :goto_0
    return v2

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/csipsimple/wizards/WizardUtils;->getWizardClass(Ljava/lang/String;)Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    move-result-object v1

    .line 118
    .local v1, "wizardInfo":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    if-nez v1, :cond_2

    .line 119
    iget-object v2, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    const-string v4, "EXPERT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    const-string v2, "EXPERT"

    invoke-direct {p0, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->setWizardId(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 122
    goto :goto_0

    .line 126
    :cond_2
    :try_start_0
    iget-object v2, v1, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->classObject:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/wizards/WizardIface;

    iput-object v2, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    iput-object p1, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    invoke-interface {v2, p0}, Lcom/csipsimple/wizards/WizardIface;->setParent(Lcom/csipsimple/wizards/BasePrefsWizard;)V

    .line 143
    const/4 v2, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Base Prefs wizard"

    const-string v4, "Can\'t access wizard class"

    invoke-static {v2, v4, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    iget-object v2, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    const-string v4, "EXPERT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 130
    const-string v2, "EXPERT"

    invoke-direct {p0, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->setWizardId(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 132
    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v2, "Base Prefs wizard"

    const-string v4, "Can\'t access wizard class"

    invoke-static {v2, v4, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    iget-object v2, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizardId:Ljava/lang/String;

    const-string v4, "EXPERT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 136
    const-string v2, "EXPERT"

    invoke-direct {p0, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->setWizardId(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v3

    .line 138
    goto :goto_0
.end method


# virtual methods
.method protected beforeBuildPrefs()V
    .locals 1

    .prologue
    .line 149
    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->setContentView(I)V

    .line 150
    return-void
.end method

.method protected getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    invoke-interface {v0, p1}, Lcom/csipsimple/wizards/WizardIface;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSubActivityCode()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->currentActivityCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->currentActivityCode:I

    .line 196
    iget v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->currentActivityCode:I

    return v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 336
    const-string v0, "Wizard"

    invoke-super {p0, v0, p2}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected getXmlPreferences()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    invoke-interface {v0}, Lcom/csipsimple/wizards/WizardIface;->getBasePreferenceResource()I

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 232
    invoke-super {p0, p1, p2, p3}, Lcom/csipsimple/ui/prefs/GenericPrefs;->onActivityResult(IILandroid/content/Intent;)V

    .line 233
    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "ID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "wizardId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->saveAccount(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->setResult(ILandroid/content/Intent;)V

    .line 238
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->finish()V

    .line 242
    .end local v0    # "wizardId":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    invoke-interface {v1, p1, p2, p3}, Lcom/csipsimple/wizards/WizardIface;->onActivityResult(IILandroid/content/Intent;)V

    .line 245
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 67
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "id"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 70
    .local v0, "accountId":J
    const-string v4, "wizard"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/csipsimple/wizards/BasePrefsWizard;->setWizardId(Ljava/lang/String;)Z

    .line 72
    sget-object v4, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {p0, v0, v1, v4}, Lcom/csipsimple/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/csipsimple/api/SipProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    .line 74
    invoke-super {p0, p1}, Lcom/csipsimple/ui/prefs/GenericPrefs;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v4, 0x7f060033

    invoke-virtual {p0, v4}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 78
    .local v2, "bt":Landroid/widget/Button;
    new-instance v4, Lcom/csipsimple/wizards/BasePrefsWizard$1;

    invoke-direct {v4, p0}, Lcom/csipsimple/wizards/BasePrefsWizard$1;-><init>(Lcom/csipsimple/wizards/BasePrefsWizard;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v4, 0x7f06008e

    invoke-virtual {p0, v4}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->saveButton:Landroid/widget/Button;

    .line 87
    iget-object v4, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->saveButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget-object v4, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->saveButton:Landroid/widget/Button;

    new-instance v5, Lcom/csipsimple/wizards/BasePrefsWizard$2;

    invoke-direct {v5, p0}, Lcom/csipsimple/wizards/BasePrefsWizard$2;-><init>(Lcom/csipsimple/wizards/BasePrefsWizard;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 171
    const/4 v0, 0x2

    const v1, 0x7f0b01c7

    invoke-interface {p1, v4, v0, v4, v1}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 172
    iget-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v0, v0, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x3

    const v1, 0x7f0b01ce

    invoke-interface {p1, v4, v0, v4, v1}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x108003e

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 174
    const/4 v0, 0x4

    const v1, 0x7f0b01d4

    invoke-interface {p1, v4, v0, v4, v1}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 175
    const/4 v0, 0x5

    const v1, 0x7f0b01cb

    invoke-interface {p1, v4, v0, v4, v1}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 177
    :cond_0
    invoke-super {p0, p1}, Lcom/csipsimple/ui/prefs/GenericPrefs;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->onDestroy()V

    .line 268
    const-string v0, "Wizard"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 201
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 226
    :cond_0
    invoke-super {p0, p1}, Lcom/csipsimple/ui/prefs/GenericPrefs;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 203
    :pswitch_0
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->saveAndFinish()V

    goto :goto_0

    .line 206
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/csipsimple/wizards/WizardChooser;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/wizards/BasePrefsWizard;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v2, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v2, v2, Lcom/csipsimple/api/SipProfile;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/csipsimple/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v4, v4, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/wizards/BasePrefsWizard;->setResult(ILandroid/content/Intent;)V

    .line 212
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->finish()V

    goto :goto_0

    .line 216
    :pswitch_3
    iget-object v2, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v2, v2, Lcom/csipsimple/api/SipProfile;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/csipsimple/ui/filters/AccountFilters;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, "it":Landroid/content/Intent;
    const-string v2, "id"

    iget-object v3, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v3, v3, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/BasePrefsWizard;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->onPause()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->isResumed:Z

    .line 110
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 182
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    invoke-interface {v1}, Lcom/csipsimple/wizards/WizardIface;->canSave()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 184
    invoke-super {p0, p1}, Lcom/csipsimple/ui/prefs/GenericPrefs;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    iget-object v1, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->account:Lcom/csipsimple/api/SipProfile;

    invoke-interface {v0, v1}, Lcom/csipsimple/wizards/WizardIface;->fillLayout(Lcom/csipsimple/api/SipProfile;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->isResumed:Z

    .line 102
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->updateDescriptions()V

    .line 103
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->updateValidation()V

    .line 104
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->isResumed:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->updateDescriptions()V

    .line 156
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->updateValidation()V

    .line 158
    :cond_0
    return-void
.end method

.method public saveAndFinish()V
    .locals 2

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->saveAccount()V

    .line 252
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->setResult(ILandroid/content/Intent;)V

    .line 254
    invoke-virtual {p0}, Lcom/csipsimple/wizards/BasePrefsWizard;->finish()V

    .line 255
    return-void
.end method

.method protected updateDescriptions()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    invoke-interface {v0}, Lcom/csipsimple/wizards/WizardIface;->updateDescriptions()V

    .line 325
    return-void
.end method

.method public updateValidation()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->saveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/csipsimple/wizards/BasePrefsWizard;->wizard:Lcom/csipsimple/wizards/WizardIface;

    invoke-interface {v1}, Lcom/csipsimple/wizards/WizardIface;->canSave()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    return-void
.end method

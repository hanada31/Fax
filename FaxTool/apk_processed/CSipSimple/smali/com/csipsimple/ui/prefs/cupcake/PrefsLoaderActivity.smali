.class public Lcom/csipsimple/ui/prefs/cupcake/PrefsLoaderActivity;
.super Lcom/csipsimple/ui/prefs/GenericPrefs;
.source "PrefsLoaderActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;-><init>()V

    return-void
.end method

.method private getPreferenceType()I
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/cupcake/PrefsLoaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "preference_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected afterBuildPrefs()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->afterBuildPrefs()V

    .line 67
    invoke-direct {p0}, Lcom/csipsimple/ui/prefs/cupcake/PrefsLoaderActivity;->getPreferenceType()I

    move-result v0

    invoke-static {p0, p0, v0}, Lcom/csipsimple/ui/prefs/PrefsLogic;->afterBuildPrefsForType(Landroid/content/Context;Lcom/csipsimple/ui/prefs/IPreferenceHelper;I)V

    .line 69
    return-void
.end method

.method protected getXmlPreferences()I
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/csipsimple/ui/prefs/cupcake/PrefsLoaderActivity;->getPreferenceType()I

    move-result v0

    invoke-static {v0}, Lcom/csipsimple/ui/prefs/PrefsLogic;->getXmlResourceForType(I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/csipsimple/ui/prefs/GenericPrefs;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lcom/csipsimple/ui/prefs/cupcake/PrefsLoaderActivity;->getPreferenceType()I

    move-result v1

    invoke-static {v1}, Lcom/csipsimple/ui/prefs/PrefsLogic;->getTitleResourceForType(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/prefs/cupcake/PrefsLoaderActivity;->setTitle(I)V

    .line 47
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/cupcake/PrefsLoaderActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, "ab":Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v0, :cond_0

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 55
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getHomeMenuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/cupcake/PrefsLoaderActivity;->finish()V

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateDescriptions()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/csipsimple/ui/prefs/cupcake/PrefsLoaderActivity;->getPreferenceType()I

    move-result v0

    invoke-static {p0, p0, v0}, Lcom/csipsimple/ui/prefs/PrefsLogic;->updateDescriptionForType(Landroid/content/Context;Lcom/csipsimple/ui/prefs/IPreferenceHelper;I)V

    .line 74
    return-void
.end method

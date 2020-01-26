.class public Lcom/csipsimple/ui/prefs/hc/MainPrefs;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "MainPrefs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v1, 0x7f050003

    invoke-virtual {p0, v1, p1}, Lcom/csipsimple/ui/prefs/hc/MainPrefs;->loadHeadersFromResource(ILjava/util/List;)V

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    iput-object p1, p0, Lcom/csipsimple/ui/prefs/hc/MainPrefs;->mFragments:Ljava/util/List;

    .line 58
    return-void

    .line 49
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 51
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    iget v2, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    const v3, 0x7f0200c4

    if-ne v2, v3, :cond_2

    .line 52
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.csipsimple.ui.action.PREFS_FAST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 53
    :cond_2
    iget v2, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    const v3, 0x7f0200c5

    if-ne v2, v3, :cond_0

    .line 54
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/csipsimple/ui/prefs/PrefsFilters;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    new-instance v0, Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/ui/prefs/hc/MainPrefs;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/hc/MainPrefs;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 81
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0e0004

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 82
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/hc/MainPrefs;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 63
    .local v0, "h":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/hc/MainPrefs;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-static {p1, p0, v0}, Lcom/csipsimple/ui/prefs/PrefsLogic;->onMainActivityOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;Landroid/content/Context;Lcom/csipsimple/utils/PreferencesWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/hc/MainPrefs;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-static {p1, p0, v0}, Lcom/csipsimple/ui/prefs/PrefsLogic;->onMainActivityPrepareOptionMenu(Lcom/actionbarsherlock/view/Menu;Landroid/content/Context;Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 88
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

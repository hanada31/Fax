.class public Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;
.super Landroid/preference/PreferenceFragment;
.source "PrefsLoaderFragment.java"

# interfaces
.implements Lcom/csipsimple/ui/prefs/IPreferenceHelper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 43
    return-void
.end method

.method private getPreferenceType()I
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "preference_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setPreferenceScreenType(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 3
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 143
    .local v1, "pf":Landroid/preference/Preference;
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 145
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "preference_type"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    return-void
.end method


# virtual methods
.method protected getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "field_name"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    const-class v1, Lcom/csipsimple/R$string;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_summary"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "keyid":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    .end local v0    # "keyid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v1

    .line 99
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 93
    :catch_1
    move-exception v1

    goto :goto_1

    .line 91
    :catch_2
    move-exception v1

    goto :goto_1

    .line 89
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public hidePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 62
    .local v1, "pfs":Landroid/preference/PreferenceScreen;
    move-object v0, v1

    .line 63
    .local v0, "parentPref":Landroid/preference/PreferenceGroup;
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "parentPref":Landroid/preference/PreferenceGroup;
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 67
    .restart local v0    # "parentPref":Landroid/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {v1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 69
    .local v3, "toRemovePref":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    .line 71
    .local v2, "rem":Z
    const-string v4, "Generic prefs"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Has removed it : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v2    # "rem":Z
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v4, "Generic prefs"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Not able to find"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->getPreferenceType()I

    move-result v0

    .line 54
    .local v0, "type":I
    invoke-static {v0}, Lcom/csipsimple/ui/prefs/PrefsLogic;->getXmlResourceForType(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->getPreferenceType()I

    move-result v2

    invoke-static {v1, p0, v2}, Lcom/csipsimple/ui/prefs/PrefsLogic;->afterBuildPrefsForType(Landroid/content/Context;Lcom/csipsimple/ui/prefs/IPreferenceHelper;I)V

    .line 57
    return-void
.end method

.method public setPreferenceScreenSub(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p3, p1, p4}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->setPreferenceScreenType(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method public setPreferenceScreenType(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->setPreferenceScreenType(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 133
    return-void
.end method

.method protected setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    return-void
.end method

.method public setStringFieldSummary(Ljava/lang/String;)V
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 105
    .local v0, "pfs":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 106
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 108
    .local v1, "pref":Landroid/preference/Preference;
    const/4 v4, 0x0

    invoke-interface {v2, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/ui/prefs/hc/PrefsLoaderFragment;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

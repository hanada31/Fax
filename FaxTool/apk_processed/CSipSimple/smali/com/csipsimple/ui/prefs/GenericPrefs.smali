.class public abstract Lcom/csipsimple/ui/prefs/GenericPrefs;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "GenericPrefs.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/csipsimple/ui/prefs/IPreferenceHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    return-void
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
    .line 223
    .local p1, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lcom/csipsimple/ui/prefs/GenericPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 224
    .local v1, "pf":Landroid/preference/Preference;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, "it":Landroid/content/Intent;
    const-string v2, "preference_type"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 227
    return-void
.end method


# virtual methods
.method protected afterBuildPrefs()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method protected beforeBuildPrefs()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "field_name"    # Ljava/lang/String;

    .prologue
    .line 104
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

    .line 105
    .local v0, "keyid":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 116
    .end local v0    # "keyid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v1

    .line 116
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    goto :goto_1

    .line 108
    :catch_2
    move-exception v1

    goto :goto_1

    .line 106
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method protected abstract getXmlPreferences()I
.end method

.method public hidePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 197
    .local v1, "pfs":Landroid/preference/PreferenceScreen;
    move-object v0, v1

    .line 198
    .local v0, "parentPref":Landroid/preference/PreferenceGroup;
    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "parentPref":Landroid/preference/PreferenceGroup;
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 202
    .restart local v0    # "parentPref":Landroid/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {v1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 204
    .local v2, "toRemovePref":Landroid/preference/Preference;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_1
    const-string v3, "Generic prefs"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Not able to find"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->beforeBuildPrefs()V

    .line 53
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getXmlPreferences()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->afterBuildPrefs()V

    .line 55
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onPause()V

    .line 67
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onResume()V

    .line 60
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->updateDescriptions()V

    .line 62
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->updateDescriptions()V

    .line 73
    return-void
.end method

.method public setListFieldSummary(Ljava/lang/String;)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 166
    .local v0, "pfs":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 168
    .local v1, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    .line 169
    .local v2, "val":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/ui/prefs/GenericPrefs;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public setPasswordFieldSummary(Ljava/lang/String;)V
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 145
    .local v0, "pfs":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 146
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 148
    .local v1, "pref":Landroid/preference/Preference;
    const/4 v4, 0x0

    invoke-interface {v2, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/ui/prefs/GenericPrefs;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .line 153
    :cond_0
    const-string v4, "."

    const-string v5, "*"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
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
    .line 219
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p1, p4}, Lcom/csipsimple/ui/prefs/GenericPrefs;->setPreferenceScreenType(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public setPreferenceScreenType(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/csipsimple/ui/prefs/GenericPrefs;->setPreferenceScreenType(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 215
    return-void
.end method

.method protected setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    :cond_0
    return-void
.end method

.method public setStringFieldSummary(Ljava/lang/String;)V
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 127
    .local v0, "pfs":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 128
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 130
    .local v1, "pref":Landroid/preference/Preference;
    const/4 v4, 0x0

    invoke-interface {v2, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/prefs/GenericPrefs;->getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/ui/prefs/GenericPrefs;->setPreferenceSummary(Landroid/preference/Preference;Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method protected abstract updateDescriptions()V
.end method

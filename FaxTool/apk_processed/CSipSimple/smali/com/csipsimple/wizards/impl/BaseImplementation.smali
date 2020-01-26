.class public abstract Lcom/csipsimple/wizards/impl/BaseImplementation;
.super Ljava/lang/Object;
.source "BaseImplementation.java"

# interfaces
.implements Lcom/csipsimple/wizards/WizardIface;


# instance fields
.field protected parent:Lcom/csipsimple/wizards/BasePrefsWizard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private markFieldInvalid(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "field"    # Landroid/preference/Preference;

    .prologue
    .line 143
    const v0, 0x7f030041

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 144
    return-void
.end method

.method private markFieldValid(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "field"    # Landroid/preference/Preference;

    .prologue
    .line 147
    const v0, 0x7f030052

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 148
    return-void
.end method


# virtual methods
.method protected addPreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/BaseImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 115
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/BaseImplementation;->markFieldValid(Landroid/preference/Preference;)V

    .line 116
    return-void
.end method

.method protected checkField(Landroid/preference/Preference;Z)Z
    .locals 1
    .param p1, "field"    # Landroid/preference/Preference;
    .param p2, "isNotValid"    # Z

    .prologue
    .line 161
    if-eqz p2, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/BaseImplementation;->markFieldInvalid(Landroid/preference/Preference;)V

    .line 166
    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 164
    :cond_0
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/BaseImplementation;->markFieldValid(Landroid/preference/Preference;)V

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/BaseImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0, p1}, Lcom/csipsimple/wizards/BasePrefsWizard;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFilters(Lcom/csipsimple/api/SipProfile;)Ljava/util/List;
    .locals 1
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
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getText(Landroid/preference/EditTextPreference;)Ljava/lang/String;
    .locals 1
    .param p1, "edt"    # Landroid/preference/EditTextPreference;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hidePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "parentGroup"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/BaseImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v4}, Lcom/csipsimple/wizards/BasePrefsWizard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 126
    .local v1, "pfs":Landroid/preference/PreferenceScreen;
    move-object v0, v1

    .line 127
    .local v0, "parentPref":Landroid/preference/PreferenceGroup;
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0    # "parentPref":Landroid/preference/PreferenceGroup;
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 131
    .restart local v0    # "parentPref":Landroid/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {v1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 133
    .local v3, "toRemovePref":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    .line 135
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

    .line 139
    .end local v2    # "rem":Z
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string v4, "Generic prefs"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Not able to find"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/csipsimple/wizards/impl/BaseImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

.method protected isEmpty(Landroid/preference/EditTextPreference;)Z
    .locals 3
    .param p1, "edt"    # Landroid/preference/EditTextPreference;

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMatching(Landroid/preference/EditTextPreference;Ljava/lang/String;)Z
    .locals 1
    .param p1, "edt"    # Landroid/preference/EditTextPreference;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 189
    return-void
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 0
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 176
    return-void
.end method

.method protected setListFieldSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/BaseImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0, p1}, Lcom/csipsimple/wizards/BasePrefsWizard;->setListFieldSummary(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setParent(Lcom/csipsimple/wizards/BasePrefsWizard;)V
    .locals 0
    .param p1, "aParent"    # Lcom/csipsimple/wizards/BasePrefsWizard;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/BaseImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    .line 47
    return-void
.end method

.method protected setPasswordFieldSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/BaseImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0, p1}, Lcom/csipsimple/wizards/BasePrefsWizard;->setPasswordFieldSummary(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected setStringFieldSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/BaseImplementation;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0, p1}, Lcom/csipsimple/wizards/BasePrefsWizard;->setStringFieldSummary(Ljava/lang/String;)V

    .line 84
    return-void
.end method

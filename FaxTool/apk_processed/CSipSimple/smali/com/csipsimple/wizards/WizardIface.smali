.class public interface abstract Lcom/csipsimple/wizards/WizardIface;
.super Ljava/lang/Object;
.source "WizardIface.java"


# virtual methods
.method public abstract buildAccount(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfile;
.end method

.method public abstract canSave()Z
.end method

.method public abstract fillLayout(Lcom/csipsimple/api/SipProfile;)V
.end method

.method public abstract getBasePreferenceResource()I
.end method

.method public abstract getDefaultFieldSummary(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDefaultFilters(Lcom/csipsimple/api/SipProfile;)Ljava/util/List;
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
.end method

.method public abstract needRestart()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
.end method

.method public abstract setParent(Lcom/csipsimple/wizards/BasePrefsWizard;)V
.end method

.method public abstract updateDescriptions()V
.end method

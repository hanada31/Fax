.class public interface abstract Lcom/csipsimple/ui/prefs/IPreferenceHelper;
.super Ljava/lang/Object;
.source "IPreferenceHelper.java"


# virtual methods
.method public abstract findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
.end method

.method public abstract getPreferenceScreen()Landroid/preference/PreferenceScreen;
.end method

.method public abstract hidePreference(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPreferenceScreenSub(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;I)V
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
.end method

.method public abstract setPreferenceScreenType(Ljava/lang/String;I)V
.end method

.method public abstract setStringFieldSummary(Ljava/lang/String;)V
.end method

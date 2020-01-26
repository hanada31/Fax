.class public Lcom/csipsimple/wizards/impl/WiMobile;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "WiMobile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "WiMobile"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "sip.wimobile.it"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 44
    const-string v0, "enable_stun"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 45
    const-string v0, "stun_server"

    const-string v1, "stun.wimobile.it"

    invoke-virtual {p1, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

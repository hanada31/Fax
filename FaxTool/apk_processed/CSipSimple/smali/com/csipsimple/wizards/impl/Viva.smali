.class public Lcom/csipsimple/wizards/impl/Viva;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Viva.java"


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "Viva"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method protected canTcp()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "Viva VoIP"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "voip.viva.gr"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 1
    .param p1, "prefs"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/csipsimple/wizards/impl/SimpleImplementation;->setDefaultParams(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 48
    const-string v0, "stun.viva.gr"

    invoke-virtual {p1, v0}, Lcom/csipsimple/utils/PreferencesWrapper;->addStunServer(Ljava/lang/String;)V

    .line 49
    return-void
.end method

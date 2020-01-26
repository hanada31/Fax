.class public Lcom/csipsimple/wizards/impl/Rapidvox;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Rapidvox.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method protected canTcp()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "Rapidvox"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "sip.rapidvox.com"

    return-object v0
.end method

.method public needRestart()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

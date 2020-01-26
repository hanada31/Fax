.class public Lcom/csipsimple/wizards/impl/Blueface;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Blueface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "Blueface"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "sip.blueface.ie"

    return-object v0
.end method

.class public Lcom/csipsimple/wizards/impl/Globtelecom;
.super Lcom/csipsimple/wizards/impl/SimpleImplementation;
.source "Globtelecom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/SimpleImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "Globtelecom"

    return-object v0
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "globtelecom.ru"

    return-object v0
.end method

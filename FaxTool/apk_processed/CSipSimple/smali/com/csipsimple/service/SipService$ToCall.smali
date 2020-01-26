.class public final Lcom/csipsimple/service/SipService$ToCall;
.super Ljava/lang/Object;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToCall"
.end annotation


# instance fields
.field private callee:Ljava/lang/String;

.field private dtmf:Ljava/lang/String;

.field private pjsipAccountId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "acc"    # Ljava/lang/Integer;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    iput-object p1, p0, Lcom/csipsimple/service/SipService$ToCall;->pjsipAccountId:Ljava/lang/Integer;

    .line 1609
    iput-object p2, p0, Lcom/csipsimple/service/SipService$ToCall;->callee:Ljava/lang/String;

    .line 1610
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "acc"    # Ljava/lang/Integer;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "dtmfChars"    # Ljava/lang/String;

    .prologue
    .line 1611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1612
    iput-object p1, p0, Lcom/csipsimple/service/SipService$ToCall;->pjsipAccountId:Ljava/lang/Integer;

    .line 1613
    iput-object p2, p0, Lcom/csipsimple/service/SipService$ToCall;->callee:Ljava/lang/String;

    .line 1614
    iput-object p3, p0, Lcom/csipsimple/service/SipService$ToCall;->dtmf:Ljava/lang/String;

    .line 1615
    return-void
.end method


# virtual methods
.method public getCallee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/csipsimple/service/SipService$ToCall;->callee:Ljava/lang/String;

    return-object v0
.end method

.method public getDtmf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/csipsimple/service/SipService$ToCall;->dtmf:Ljava/lang/String;

    return-object v0
.end method

.method public getPjsipAccountId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/csipsimple/service/SipService$ToCall;->pjsipAccountId:Ljava/lang/Integer;

    return-object v0
.end method

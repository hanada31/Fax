.class public Lcom/csipsimple/widgets/EditSipUri$ToCall;
.super Ljava/lang/Object;
.source "EditSipUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/widgets/EditSipUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToCall"
.end annotation


# instance fields
.field private accountId:Ljava/lang/Long;

.field private callee:Ljava/lang/String;

.field final synthetic this$0:Lcom/csipsimple/widgets/EditSipUri;


# direct methods
.method public constructor <init>(Lcom/csipsimple/widgets/EditSipUri;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p2, "acc"    # Ljava/lang/Long;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/csipsimple/widgets/EditSipUri$ToCall;->this$0:Lcom/csipsimple/widgets/EditSipUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/csipsimple/widgets/EditSipUri$ToCall;->accountId:Ljava/lang/Long;

    .line 146
    iput-object p3, p0, Lcom/csipsimple/widgets/EditSipUri$ToCall;->callee:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri$ToCall;->accountId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri$ToCall;->callee:Ljava/lang/String;

    return-object v0
.end method

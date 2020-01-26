.class Lcom/csipsimple/ui/incall/InCallCard$2;
.super Ljava/lang/Thread;
.source "InCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/incall/InCallCard;->updateRemoteName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallCard;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/InCallCard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallCard$2;->this$0:Lcom/csipsimple/ui/incall/InCallCard;

    .line 380
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 384
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard$2;->this$0:Lcom/csipsimple/ui/incall/InCallCard;

    invoke-virtual {v2}, Lcom/csipsimple/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 385
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard$2;->this$0:Lcom/csipsimple/ui/incall/InCallCard;

    invoke-static {v3}, Lcom/csipsimple/ui/incall/InCallCard;->access$7(Lcom/csipsimple/ui/incall/InCallCard;)Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-static {v2, v3}, Lcom/csipsimple/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;

    move-result-object v0

    .line 386
    .local v0, "callerInfo":Lcom/csipsimple/models/CallerInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/csipsimple/models/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_0

    .line 387
    new-instance v1, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;

    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallCard$2;->this$0:Lcom/csipsimple/ui/incall/InCallCard;

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallCard$2;->this$0:Lcom/csipsimple/ui/incall/InCallCard;

    invoke-direct {v1, v2, v3, v0}, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;-><init>(Lcom/csipsimple/ui/incall/InCallCard;Lcom/csipsimple/ui/incall/InCallCard;Lcom/csipsimple/models/CallerInfo;)V

    .line 388
    .local v1, "lci":Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;
    invoke-static {}, Lcom/csipsimple/ui/incall/InCallCard;->access$8()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/csipsimple/ui/incall/InCallCard;->access$8()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    .end local v1    # "lci":Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;
    :cond_0
    return-void
.end method

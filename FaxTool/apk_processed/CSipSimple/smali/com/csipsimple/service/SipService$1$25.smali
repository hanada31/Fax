.class Lcom/csipsimple/service/SipService$1$25;
.super Lcom/csipsimple/service/SipService$ReturnRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->showCallInfosDialog(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/service/SipService$1;

.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$25;->this$1:Lcom/csipsimple/service/SipService$1;

    iput p3, p0, Lcom/csipsimple/service/SipService$1$25;->val$callId:I

    .line 727
    invoke-direct {p0, p2}, Lcom/csipsimple/service/SipService$ReturnRunnable;-><init>(Lcom/csipsimple/service/SipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 730
    iget v1, p0, Lcom/csipsimple/service/SipService$1$25;->val$callId:I

    invoke-static {v1}, Lcom/csipsimple/pjsip/PjSipCalls;->dumpCallInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "infos":Ljava/lang/String;
    const-string v1, "SIP SRV"

    invoke-static {v1, v0}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-object v0
.end method

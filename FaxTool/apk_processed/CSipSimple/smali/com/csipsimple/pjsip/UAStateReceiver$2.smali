.class Lcom/csipsimple/pjsip/UAStateReceiver$2;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/pjsip/UAStateReceiver;->updateZrtpInfos(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/csipsimple/pjsip/UAStateReceiver;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$2;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    iput p2, p0, Lcom/csipsimple/pjsip/UAStateReceiver$2;->val$callId:I

    .line 539
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$2;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    iget v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver$2;->val$callId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$12(Lcom/csipsimple/pjsip/UAStateReceiver;Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 543
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$2;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$13(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver$2;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v2}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$13(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 544
    return-void
.end method

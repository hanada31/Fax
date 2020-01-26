.class Lcom/csipsimple/pjsip/UAStateReceiver$3;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/pjsip/UAStateReceiver;->handleHeadsetButton()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

.field private final synthetic val$callInfo:Lcom/csipsimple/api/SipCallSession;


# direct methods
.method constructor <init>(Lcom/csipsimple/pjsip/UAStateReceiver;Lcom/csipsimple/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$3;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    iput-object p2, p0, Lcom/csipsimple/pjsip/UAStateReceiver$3;->val$callInfo:Lcom/csipsimple/api/SipCallSession;

    .line 995
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 999
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver$3;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v0}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$3;->val$callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v1

    sget-object v2, Lorg/pjsip/pjsua/pjsip_status_code;->PJSIP_SC_OK:Lorg/pjsip/pjsua/pjsip_status_code;

    invoke-virtual {v2}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/pjsip/PjSipService;->callAnswer(II)I

    .line 1000
    return-void
.end method

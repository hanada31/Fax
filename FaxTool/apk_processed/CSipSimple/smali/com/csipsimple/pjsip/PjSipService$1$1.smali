.class Lcom/csipsimple/pjsip/PjSipService$1$1;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "PjSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/pjsip/PjSipService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/pjsip/PjSipService$1;

.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/csipsimple/pjsip/PjSipService$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/pjsip/PjSipService$1$1;->this$1:Lcom/csipsimple/pjsip/PjSipService$1;

    iput p2, p0, Lcom/csipsimple/pjsip/PjSipService$1$1;->val$callId:I

    .line 1225
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1228
    const-string v0, "PjService"

    const-string v1, "Running pending DTMF send"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService$1$1;->this$1:Lcom/csipsimple/pjsip/PjSipService$1;

    invoke-static {v0}, Lcom/csipsimple/pjsip/PjSipService$1;->access$0(Lcom/csipsimple/pjsip/PjSipService$1;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/pjsip/PjSipService$1$1;->val$callId:I

    invoke-virtual {v0, v1}, Lcom/csipsimple/pjsip/PjSipService;->sendPendingDtmf(I)V

    .line 1230
    return-void
.end method

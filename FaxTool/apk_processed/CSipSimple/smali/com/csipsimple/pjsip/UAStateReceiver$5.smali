.class Lcom/csipsimple/pjsip/UAStateReceiver$5;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/pjsip/UAStateReceiver;->sendPendingDtmf(I)V
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
    iput-object p1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$5;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    iput p2, p0, Lcom/csipsimple/pjsip/UAStateReceiver$5;->val$callId:I

    .line 1054
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
    .line 1057
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver$5;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v0}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$5;->val$callId:I

    invoke-virtual {v0, v1}, Lcom/csipsimple/pjsip/PjSipService;->sendPendingDtmf(I)V

    .line 1058
    return-void
.end method

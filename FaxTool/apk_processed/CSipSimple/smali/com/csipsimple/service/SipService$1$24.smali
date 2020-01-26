.class Lcom/csipsimple/service/SipService$1$24;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->zrtpSASVerified(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/service/SipService$1;

.field private final synthetic val$dataPtr:I


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$24;->this$1:Lcom/csipsimple/service/SipService$1;

    iput p2, p0, Lcom/csipsimple/service/SipService$1$24;->val$dataPtr:I

    .line 691
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
    .line 694
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/service/SipService$1$24;->val$dataPtr:I

    invoke-virtual {v0, v1}, Lcom/csipsimple/pjsip/PjSipService;->zrtpSASVerified(I)V

    .line 695
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    iget v1, p0, Lcom/csipsimple/service/SipService$1$24;->val$dataPtr:I

    invoke-virtual {v0, v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->updateZrtpInfos(I)V

    .line 696
    return-void
.end method

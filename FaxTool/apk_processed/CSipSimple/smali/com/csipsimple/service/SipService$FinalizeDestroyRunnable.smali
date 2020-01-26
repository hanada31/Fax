.class Lcom/csipsimple/service/SipService$FinalizeDestroyRunnable;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinalizeDestroyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/SipService;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/csipsimple/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/csipsimple/service/SipService;

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
    .line 1820
    iget-object v0, p0, Lcom/csipsimple/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/csipsimple/service/SipService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/csipsimple/service/SipService;->access$10(Lcom/csipsimple/service/SipService;Lcom/csipsimple/service/SipService$SipServiceExecutor;)V

    .line 1822
    const-string v0, "SIP SRV"

    const-string v1, "Destroy sip stack"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    iget-object v0, p0, Lcom/csipsimple/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/csipsimple/service/SipService;

    invoke-static {v0}, Lcom/csipsimple/service/SipService;->access$8(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/service/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/service/SipWakeLock;->reset()V

    .line 1826
    iget-object v0, p0, Lcom/csipsimple/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->stopSipStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Lcom/csipsimple/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/csipsimple/service/SipService;

    iget-object v0, v0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipNotifications;->cancelAll()V

    .line 1828
    iget-object v0, p0, Lcom/csipsimple/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/csipsimple/service/SipService;

    iget-object v0, v0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipNotifications;->cancelCalls()V

    .line 1843
    :goto_0
    const-string v0, "SIP SRV"

    const-string v1, "--- SIP SERVICE DESTROYED ---"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    return-void

    .line 1830
    :cond_0
    const-string v0, "SIP SRV"

    const-string v1, "Somebody has stopped the service while there is an ongoing call !!!"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

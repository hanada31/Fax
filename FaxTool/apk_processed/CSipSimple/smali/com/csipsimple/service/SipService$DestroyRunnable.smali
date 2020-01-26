.class Lcom/csipsimple/service/SipService$DestroyRunnable;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DestroyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/SipService;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 0

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/csipsimple/service/SipService$DestroyRunnable;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/csipsimple/service/SipService$DestroyRunnable;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->stopSipStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/csipsimple/service/SipService$DestroyRunnable;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->stopSelf()V

    .line 1813
    :cond_0
    return-void
.end method

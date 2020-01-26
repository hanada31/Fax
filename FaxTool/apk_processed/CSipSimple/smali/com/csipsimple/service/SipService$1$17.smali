.class Lcom/csipsimple/service/SipService$1$17;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->confAdjustTxLevel(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/service/SipService$1;

.field private final synthetic val$port:I

.field private final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService$1;IF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$17;->this$1:Lcom/csipsimple/service/SipService$1;

    iput p2, p0, Lcom/csipsimple/service/SipService$1$17;->val$port:I

    iput p3, p0, Lcom/csipsimple/service/SipService$1$17;->val$value:F

    .line 491
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
    .line 494
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/service/SipService$1$17;->val$port:I

    iget v2, p0, Lcom/csipsimple/service/SipService$1$17;->val$value:F

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/pjsip/PjSipService;->confAdjustTxLevel(IF)V

    goto :goto_0
.end method

.class Lcom/csipsimple/service/SipService$1$15;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->setMicrophoneMute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/service/SipService$1;

.field private final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService$1;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$15;->this$1:Lcom/csipsimple/service/SipService$1;

    iput-boolean p2, p0, Lcom/csipsimple/service/SipService$1$15;->val$on:Z

    .line 450
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
    .line 453
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget-boolean v1, p0, Lcom/csipsimple/service/SipService$1$15;->val$on:Z

    invoke-virtual {v0, v1}, Lcom/csipsimple/pjsip/PjSipService;->setMicrophoneMute(Z)V

    .line 454
    return-void
.end method

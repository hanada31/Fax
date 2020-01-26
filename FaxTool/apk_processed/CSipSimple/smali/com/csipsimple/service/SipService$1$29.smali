.class Lcom/csipsimple/service/SipService$1$29;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->updateCallOptions(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/service/SipService$1;

.field private final synthetic val$callId:I

.field private final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService$1;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$29;->this$1:Lcom/csipsimple/service/SipService$1;

    iput p2, p0, Lcom/csipsimple/service/SipService$1$29;->val$callId:I

    iput-object p3, p0, Lcom/csipsimple/service/SipService$1$29;->val$options:Landroid/os/Bundle;

    .line 807
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
    .line 810
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/service/SipService$1$29;->val$callId:I

    iget-object v2, p0, Lcom/csipsimple/service/SipService$1$29;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/pjsip/PjSipService;->updateCallOptions(ILandroid/os/Bundle;)I

    .line 811
    return-void
.end method

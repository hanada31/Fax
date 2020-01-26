.class Lcom/csipsimple/service/SipService$1$5;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->makeCallWithOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/service/SipService$1;

.field private final synthetic val$accountId:I

.field private final synthetic val$callee:Ljava/lang/String;

.field private final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService$1;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$5;->this$1:Lcom/csipsimple/service/SipService$1;

    iput-object p2, p0, Lcom/csipsimple/service/SipService$1$5;->val$callee:Ljava/lang/String;

    iput p3, p0, Lcom/csipsimple/service/SipService$1$5;->val$accountId:I

    iput-object p4, p0, Lcom/csipsimple/service/SipService$1$5;->val$options:Landroid/os/Bundle;

    .line 257
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/service/SipService$1$5;->val$callee:Ljava/lang/String;

    iget v2, p0, Lcom/csipsimple/service/SipService$1$5;->val$accountId:I

    iget-object v3, p0, Lcom/csipsimple/service/SipService$1$5;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/csipsimple/pjsip/PjSipService;->makeCall(Ljava/lang/String;ILandroid/os/Bundle;)I

    .line 261
    return-void
.end method

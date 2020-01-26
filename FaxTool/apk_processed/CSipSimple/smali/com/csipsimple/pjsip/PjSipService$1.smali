.class Lcom/csipsimple/pjsip/PjSipService$1;
.super Ljava/util/TimerTask;
.source "PjSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/pjsip/PjSipService;->sendDtmf(ILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/pjsip/PjSipService;

.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/csipsimple/pjsip/PjSipService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/pjsip/PjSipService$1;->this$0:Lcom/csipsimple/pjsip/PjSipService;

    iput p2, p0, Lcom/csipsimple/pjsip/PjSipService$1;->val$callId:I

    .line 1222
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/pjsip/PjSipService$1;)Lcom/csipsimple/pjsip/PjSipService;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService$1;->this$0:Lcom/csipsimple/pjsip/PjSipService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService$1;->this$0:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/pjsip/PjSipService$1$1;

    iget v2, p0, Lcom/csipsimple/pjsip/PjSipService$1;->val$callId:I

    invoke-direct {v1, p0, v2}, Lcom/csipsimple/pjsip/PjSipService$1$1;-><init>(Lcom/csipsimple/pjsip/PjSipService$1;I)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1232
    return-void
.end method

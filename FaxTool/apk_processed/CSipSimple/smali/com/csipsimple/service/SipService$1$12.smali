.class Lcom/csipsimple/service/SipService$1$12;
.super Lcom/csipsimple/service/SipService$ReturnRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->hold(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/service/SipService$1;

.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$12;->this$1:Lcom/csipsimple/service/SipService$1;

    iput p3, p0, Lcom/csipsimple/service/SipService$1$12;->val$callId:I

    .line 394
    invoke-direct {p0, p2}, Lcom/csipsimple/service/SipService$ReturnRunnable;-><init>(Lcom/csipsimple/service/SipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/service/SipService$1$12;->val$callId:I

    invoke-virtual {v0, v1}, Lcom/csipsimple/pjsip/PjSipService;->callHold(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

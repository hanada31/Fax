.class Lcom/csipsimple/service/SipService$1$10;
.super Lcom/csipsimple/service/SipService$ReturnRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService$1;->xferReplace(III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/service/SipService$1;

.field private final synthetic val$callId:I

.field private final synthetic val$options:I

.field private final synthetic val$otherCallId:I


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;III)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1$10;->this$1:Lcom/csipsimple/service/SipService$1;

    iput p3, p0, Lcom/csipsimple/service/SipService$1$10;->val$callId:I

    iput p4, p0, Lcom/csipsimple/service/SipService$1$10;->val$otherCallId:I

    iput p5, p0, Lcom/csipsimple/service/SipService$1$10;->val$options:I

    .line 360
    invoke-direct {p0, p2}, Lcom/csipsimple/service/SipService$ReturnRunnable;-><init>(Lcom/csipsimple/service/SipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/service/SipService$1$10;->val$callId:I

    iget v2, p0, Lcom/csipsimple/service/SipService$1$10;->val$otherCallId:I

    iget v3, p0, Lcom/csipsimple/service/SipService$1$10;->val$options:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/csipsimple/pjsip/PjSipService;->callXferReplace(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

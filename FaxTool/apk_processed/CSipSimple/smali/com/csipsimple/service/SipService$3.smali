.class Lcom/csipsimple/service/SipService$3;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/SipService;->setPrivateVideoWindow(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/SipService;

.field private final synthetic val$callId:I

.field private final synthetic val$window:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$3;->this$0:Lcom/csipsimple/service/SipService;

    iput p2, p0, Lcom/csipsimple/service/SipService$3;->val$callId:I

    iput-object p3, p0, Lcom/csipsimple/service/SipService$3;->val$window:Ljava/lang/Object;

    .line 1909
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
    .line 1912
    iget v0, p0, Lcom/csipsimple/service/SipService$3;->val$callId:I

    iget-object v1, p0, Lcom/csipsimple/service/SipService$3;->val$window:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsua;->vid_set_android_window(ILjava/lang/Object;)I

    .line 1913
    return-void
.end method

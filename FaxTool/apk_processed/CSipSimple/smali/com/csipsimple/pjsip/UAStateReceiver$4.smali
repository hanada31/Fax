.class Lcom/csipsimple/pjsip/UAStateReceiver$4;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/pjsip/UAStateReceiver;->handleHeadsetButton()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

.field private final synthetic val$callInfo:Lcom/csipsimple/api/SipCallSession;


# direct methods
.method constructor <init>(Lcom/csipsimple/pjsip/UAStateReceiver;Lcom/csipsimple/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$4;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    iput-object p2, p0, Lcom/csipsimple/pjsip/UAStateReceiver$4;->val$callInfo:Lcom/csipsimple/api/SipCallSession;

    .line 1016
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
    .line 1019
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$4;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getHeadsetAction()I

    move-result v0

    .line 1020
    .local v0, "preferedAction":I
    if-nez v0, :cond_1

    .line 1021
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$4;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver$4;->val$callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/pjsip/PjSipService;->callHangup(II)I

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1023
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$4;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver$4;->val$callInfo:Lcom/csipsimple/api/SipCallSession;

    invoke-virtual {v2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/pjsip/PjSipService;->callHold(I)I

    goto :goto_0

    .line 1024
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$4;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v1}, Lcom/csipsimple/service/MediaManager;->toggleMute()V

    goto :goto_0
.end method

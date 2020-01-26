.class Lcom/csipsimple/service/SipService$1;
.super Lcom/csipsimple/api/ISipService$Stub;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/SipService;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    .line 102
    invoke-direct {p0}, Lcom/csipsimple/api/ISipService$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/service/SipService$1;)Lcom/csipsimple/service/SipService;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    return-object v0
.end method


# virtual methods
.method public addAllAccounts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/service/SipService$1$1;-><init>(Lcom/csipsimple/service/SipService$1;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public adjustVolume(Lcom/csipsimple/api/SipCallSession;II)V
    .locals 5
    .param p1, "callInfo"    # Lcom/csipsimple/api/SipCallSession;
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 549
    :goto_0
    return-void

    .line 532
    :cond_0
    invoke-virtual {p1}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/csipsimple/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 534
    .local v1, "ringing":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 537
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/csipsimple/pjsip/PjSipService;->silenceRinger()V

    goto :goto_0

    .line 532
    .end local v1    # "ringing":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 540
    .restart local v1    # "ringing":Z
    :cond_2
    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-static {v2}, Lcom/csipsimple/service/SipService;->access$4(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v2

    const-string v3, "use_soft_volume"

    invoke-virtual {v2, v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 541
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-class v3, Lcom/csipsimple/ui/incall/InCallMediaControl;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 542
    .local v0, "adjustVolumeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 544
    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v2, v0}, Lcom/csipsimple/service/SipService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 546
    .end local v0    # "adjustVolumeIntent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v2

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getInCallStream()I

    move-result v3

    invoke-virtual {v2, v3, p2, p3}, Lcom/csipsimple/pjsip/PjSipService;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method public answer(II)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v0, Lcom/csipsimple/service/SipService$1$7;

    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/csipsimple/service/SipService$1$7;-><init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;II)V

    .line 312
    .local v0, "action":Lcom/csipsimple/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 314
    const/4 v1, 0x0

    return v1
.end method

.method public askThreadedRestart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "SIP SRV"

    const-string v1, "Restart required from third part app/serv"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$RestartRunnable;

    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v1, v2}, Lcom/csipsimple/service/SipService$RestartRunnable;-><init>(Lcom/csipsimple/service/SipService;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public canRecord(I)Z
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 626
    const/4 v0, 0x0

    .line 628
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/csipsimple/pjsip/PjSipService;->canRecord(I)Z

    move-result v0

    goto :goto_0
.end method

.method public confAdjustRxLevel(IF)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/csipsimple/service/SipService$1$18;-><init>(Lcom/csipsimple/service/SipService$1;IF)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method public confAdjustTxLevel(IF)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/csipsimple/service/SipService$1$17;-><init>(Lcom/csipsimple/service/SipService$1;IF)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method public confGetRxTxLevel(I)J
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 785
    new-instance v0, Lcom/csipsimple/service/SipService$1$28;

    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v0, p0, v1, p1}, Lcom/csipsimple/service/SipService$1$28;-><init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;I)V

    .line 791
    .local v0, "action":Lcom/csipsimple/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 792
    invoke-virtual {v0}, Lcom/csipsimple/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public forceStopService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "SIP SRV"

    const-string v1, "Try to force service stop"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->cleanStop()V

    .line 131
    return-void
.end method

.method public getCallInfo(I)Lcom/csipsimple/api/SipCallSession;
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/csipsimple/pjsip/PjSipService;->getCallInfo(I)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getCalls()[Lcom/csipsimple/api/SipCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/pjsip/PjSipService;->getCalls()[Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/csipsimple/api/SipCallSession;

    goto :goto_0
.end method

.method public getCurrentMediaState()Lcom/csipsimple/api/MediaState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    new-instance v0, Lcom/csipsimple/api/MediaState;

    invoke-direct {v0}, Lcom/csipsimple/api/MediaState;-><init>()V

    .line 707
    .local v0, "ms":Lcom/csipsimple/api/MediaState;
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v1, :cond_0

    .line 708
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v1}, Lcom/csipsimple/service/MediaManager;->getMediaState()Lcom/csipsimple/api/MediaState;

    move-result-object v0

    .line 710
    :cond_0
    return-object v0
.end method

.method public getPresence(J)I
    .locals 1
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public getPresenceStatus(J)Ljava/lang/String;
    .locals 1
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 682
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSipProfileState(I)Lcom/csipsimple/api/SipProfileState;
    .locals 3
    .param p1, "accountId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0, p1}, Lcom/csipsimple/service/SipService;->getSipProfileState(I)Lcom/csipsimple/api/SipProfileState;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 719
    const/16 v0, 0x7d2

    return v0
.end method

.method public hangup(II)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/csipsimple/service/SipService$1$8;

    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/csipsimple/service/SipService$1$8;-><init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;II)V

    .line 330
    .local v0, "action":Lcom/csipsimple/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 333
    const/4 v1, 0x0

    return v1
.end method

.method public hold(I)I
    .locals 4
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "SIP SRV"

    const-string v2, "HOLDING"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v0, Lcom/csipsimple/service/SipService$1$12;

    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v0, p0, v1, p1}, Lcom/csipsimple/service/SipService$1$12;-><init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;I)V

    .line 400
    .local v0, "action":Lcom/csipsimple/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 401
    invoke-virtual {v0}, Lcom/csipsimple/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public ignoreNextOutgoingCallFor(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 800
    sput-object p1, Lcom/csipsimple/service/OutgoingCall;->ignoreNext:Ljava/lang/String;

    .line 801
    return-void
.end method

.method public isRecording(I)Z
    .locals 5
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 607
    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 616
    :cond_0
    :goto_0
    return v1

    .line 612
    :cond_1
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/csipsimple/pjsip/PjSipService;->getCallInfo(I)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 613
    .local v0, "info":Lcom/csipsimple/api/SipCallSession;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->isRecording()Z

    move-result v1

    goto :goto_0
.end method

.method public makeCall(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/csipsimple/service/SipService$1;->makeCallWithOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method public makeCallWithOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-class v4, Lcom/csipsimple/service/SipService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/csipsimple/service/SipService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 241
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 242
    const-string v1, "SIP SRV"

    const-string v2, "Can\'t place call if service not started"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    iget-boolean v1, v1, Lcom/csipsimple/service/SipService;->supportMultipleCalls:Z

    if-nez v1, :cond_2

    .line 249
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/csipsimple/pjsip/PjSipService;->getActiveCallInProgress()Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 250
    .local v0, "activeCall":Lcom/csipsimple/api/SipCallSession;
    if-eqz v0, :cond_2

    .line 251
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->forceNoMultipleCalls()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const v2, 0x7f0b01ff

    invoke-virtual {v1, v2}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(I)V

    goto :goto_0

    .line 257
    .end local v0    # "activeCall":Lcom/csipsimple/api/SipCallSession;
    :cond_2
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    new-instance v2, Lcom/csipsimple/service/SipService$1$5;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/csipsimple/service/SipService$1$5;-><init>(Lcom/csipsimple/service/SipService$1;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public playWaveFile(Ljava/lang/String;II)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callId"    # I
    .param p3, "way"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$22;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/csipsimple/service/SipService$1$22;-><init>(Lcom/csipsimple/service/SipService$1;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public reAddAllAccounts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$3;

    invoke-direct {v1, p0}, Lcom/csipsimple/service/SipService$1$3;-><init>(Lcom/csipsimple/service/SipService$1;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public reinvite(IZ)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "unhold"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v1, "SIP SRV"

    const-string v2, "REINVITING"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lcom/csipsimple/service/SipService$1$13;

    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/csipsimple/service/SipService$1$13;-><init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;IZ)V

    .line 417
    .local v0, "action":Lcom/csipsimple/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 418
    invoke-virtual {v0}, Lcom/csipsimple/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public removeAllAccounts()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$2;

    invoke-direct {v1, p0}, Lcom/csipsimple/service/SipService$1$2;-><init>(Lcom/csipsimple/service/SipService$1;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public sendDtmf(II)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v0, Lcom/csipsimple/service/SipService$1$11;

    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/csipsimple/service/SipService$1$11;-><init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;II)V

    .line 383
    .local v0, "action":Lcom/csipsimple/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 384
    invoke-virtual {v0}, Lcom/csipsimple/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-class v3, Lcom/csipsimple/service/SipService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 275
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v6

    new-instance v0, Lcom/csipsimple/service/SipService$1$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/csipsimple/service/SipService$1$6;-><init>(Lcom/csipsimple/service/SipService$1;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method public setAccountRegistration(II)V
    .locals 5
    .param p1, "accountId"    # I
    .param p2, "renew"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v3, "android.permission.USE_SIP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lcom/csipsimple/service/SipService;->getAccount(J)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 195
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    if-eqz v0, :cond_0

    .line 196
    move v1, p2

    .line 197
    .local v1, "ren":I
    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v2}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v2

    new-instance v3, Lcom/csipsimple/service/SipService$1$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/csipsimple/service/SipService$1$4;-><init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/api/SipProfile;I)V

    invoke-virtual {v2, v3}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 204
    .end local v1    # "ren":I
    :cond_0
    return-void
.end method

.method public setBluetoothOn(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$14;

    invoke-direct {v1, p0, p1}, Lcom/csipsimple/service/SipService$1$14;-><init>(Lcom/csipsimple/service/SipService$1;Z)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method public setEchoCancellation(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$19;

    invoke-direct {v1, p0, p1}, Lcom/csipsimple/service/SipService$1$19;-><init>(Lcom/csipsimple/service/SipService$1;Z)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$15;

    invoke-direct {v1, p0, p1}, Lcom/csipsimple/service/SipService$1$15;-><init>(Lcom/csipsimple/service/SipService$1;Z)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method

.method public setPresence(ILjava/lang/String;J)V
    .locals 7
    .param p1, "presenceInt"    # I
    .param p2, "statusText"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 664
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v6

    new-instance v0, Lcom/csipsimple/service/SipService$1$23;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/csipsimple/service/SipService$1$23;-><init>(Lcom/csipsimple/service/SipService$1;ILjava/lang/String;J)V

    invoke-virtual {v6, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$16;

    invoke-direct {v1, p0, p1}, Lcom/csipsimple/service/SipService$1$16;-><init>(Lcom/csipsimple/service/SipService$1;Z)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method public showCallInfosDialog(I)Ljava/lang/String;
    .locals 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lcom/csipsimple/service/SipService$1$25;

    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v0, p0, v1, p1}, Lcom/csipsimple/service/SipService$1$25;-><init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;I)V

    .line 736
    .local v0, "action":Lcom/csipsimple/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 737
    invoke-virtual {v0}, Lcom/csipsimple/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public sipStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "SIP SRV"

    const-string v1, "Start required from third party app/serv"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$StartRunnable;

    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v1, v2}, Lcom/csipsimple/service/SipService$StartRunnable;-><init>(Lcom/csipsimple/service/SipService;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public sipStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$StopRunnable;

    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v1, v2}, Lcom/csipsimple/service/SipService$StopRunnable;-><init>(Lcom/csipsimple/service/SipService;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public startLoopbackTest()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 745
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 746
    const/16 v1, 0xa

    .line 757
    :goto_0
    return v1

    .line 748
    :cond_0
    new-instance v0, Lcom/csipsimple/service/SipService$1$26;

    invoke-direct {v0, p0}, Lcom/csipsimple/service/SipService$1$26;-><init>(Lcom/csipsimple/service/SipService$1;)V

    .line 756
    .local v0, "action":Lcom/csipsimple/service/SipService$SipRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 757
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRecording(I)V
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 583
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$20;

    invoke-direct {v1, p0, p1}, Lcom/csipsimple/service/SipService$1$20;-><init>(Lcom/csipsimple/service/SipService$1;I)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopLoopbackTest()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 765
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 766
    const/16 v1, 0xa

    .line 777
    :goto_0
    return v1

    .line 768
    :cond_0
    new-instance v0, Lcom/csipsimple/service/SipService$1$27;

    invoke-direct {v0, p0}, Lcom/csipsimple/service/SipService$1$27;-><init>(Lcom/csipsimple/service/SipService$1;)V

    .line 776
    .local v0, "action":Lcom/csipsimple/service/SipService$SipRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 777
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopRecording(I)V
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-static {}, Lcom/csipsimple/service/SipService;->access$3()Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$21;

    invoke-direct {v1, p0, p1}, Lcom/csipsimple/service/SipService$1$21;-><init>(Lcom/csipsimple/service/SipService$1;I)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public switchToAutoAnswer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "SIP SRV"

    const-string v1, "Switch to auto answer"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService;->setAutoAnswerNext(Z)V

    .line 223
    return-void
.end method

.method public updateCallOptions(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$29;

    invoke-direct {v1, p0, p1, p2}, Lcom/csipsimple/service/SipService$1$29;-><init>(Lcom/csipsimple/service/SipService$1;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 813
    return-void
.end method

.method public xfer(ILjava/lang/String;)I
    .locals 4
    .param p1, "callId"    # I
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v1, "SIP SRV"

    const-string v2, "XFER"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Lcom/csipsimple/service/SipService$1$9;

    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/csipsimple/service/SipService$1$9;-><init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;ILjava/lang/String;)V

    .line 349
    .local v0, "action":Lcom/csipsimple/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 350
    invoke-virtual {v0}, Lcom/csipsimple/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public xferReplace(III)I
    .locals 6
    .param p1, "callId"    # I
    .param p2, "otherCallId"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "SIP SRV"

    const-string v2, "XFER-replace"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v0, Lcom/csipsimple/service/SipService$1$10;

    iget-object v2, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/csipsimple/service/SipService$1$10;-><init>(Lcom/csipsimple/service/SipService$1;Lcom/csipsimple/service/SipService;III)V

    .line 366
    .local v0, "action":Lcom/csipsimple/service/SipService$ReturnRunnable;
    iget-object v1, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 367
    invoke-virtual {v0}, Lcom/csipsimple/service/SipService$ReturnRunnable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public zrtpSASVerified(I)V
    .locals 3
    .param p1, "dataPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 690
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    const-string v1, "android.permission.USE_SIP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/csipsimple/service/SipService$1;->this$0:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$1$24;

    invoke-direct {v1, p0, p1}, Lcom/csipsimple/service/SipService$1$24;-><init>(Lcom/csipsimple/service/SipService$1;I)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

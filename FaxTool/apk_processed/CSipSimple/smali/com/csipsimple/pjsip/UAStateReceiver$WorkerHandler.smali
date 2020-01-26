.class Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;
.super Landroid/os/Handler;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/pjsip/UAStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerHandler"
.end annotation


# instance fields
.field sr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/csipsimple/pjsip/UAStateReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/csipsimple/pjsip/UAStateReceiver;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "stateReceiver"    # Lcom/csipsimple/pjsip/UAStateReceiver;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 695
    const-string v0, "SIP UA Receiver"

    const-string v1, "Create async worker !!!"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;->sr:Ljava/lang/ref/WeakReference;

    .line 697
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 700
    iget-object v10, p0, Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;->sr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csipsimple/pjsip/UAStateReceiver;

    .line 701
    .local v9, "stateReceiver":Lcom/csipsimple/pjsip/UAStateReceiver;
    if-nez v9, :cond_0

    .line 828
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$0(Lcom/csipsimple/pjsip/UAStateReceiver;)V

    .line 705
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 827
    :goto_1
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$8(Lcom/csipsimple/pjsip/UAStateReceiver;)V

    goto :goto_0

    .line 707
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/csipsimple/api/SipCallSession;

    .line 708
    .local v1, "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v2

    .line 710
    .local v2, "callState":I
    packed-switch v2, :pswitch_data_1

    .line 815
    :cond_1
    :goto_2
    invoke-static {v9, v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$6(Lcom/csipsimple/pjsip/UAStateReceiver;Lcom/csipsimple/api/SipCallSession;)V

    goto :goto_1

    .line 713
    :pswitch_1
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$1(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/service/SipNotifications;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/csipsimple/service/SipNotifications;->showNotificationForCall(Lcom/csipsimple/api/SipCallSession;)V

    .line 714
    invoke-static {v9, v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$2(Lcom/csipsimple/pjsip/UAStateReceiver;Lcom/csipsimple/api/SipCallSession;)V

    .line 715
    const-string v10, "RINGING"

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$3(Lcom/csipsimple/pjsip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 723
    :pswitch_2
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$1(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/service/SipNotifications;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/csipsimple/service/SipNotifications;->showNotificationForCall(Lcom/csipsimple/api/SipCallSession;)V

    .line 724
    invoke-static {v9, v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$2(Lcom/csipsimple/pjsip/UAStateReceiver;Lcom/csipsimple/api/SipCallSession;)V

    .line 725
    const-string v10, "OFFHOOK"

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$3(Lcom/csipsimple/pjsip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v10, :cond_2

    .line 729
    const/4 v10, 0x5

    if-ne v2, v10, :cond_2

    .line 731
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v10}, Lcom/csipsimple/service/MediaManager;->stopRing()V

    .line 735
    :cond_2
    const/4 v10, 0x5

    if-ne v2, v10, :cond_3

    .line 736
    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$5(Lcom/csipsimple/pjsip/UAStateReceiver;I)V

    .line 739
    :cond_3
    const/4 v10, 0x5

    if-ne v2, v10, :cond_1

    iget-wide v10, v1, Lcom/csipsimple/api/SipCallSession;->callStart:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/csipsimple/api/SipCallSession;->callStart:J

    goto :goto_2

    .line 744
    :pswitch_3
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v10, :cond_4

    .line 745
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v10}, Lcom/csipsimple/service/MediaManager;->stopRing()V

    .line 748
    :cond_4
    const-string v10, "SIP UA Receiver"

    const-string v11, "Finish call2"

    invoke-static {v10, v11}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v10, "IDLE"

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$3(Lcom/csipsimple/pjsip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->getActiveCallInProgress()Lcom/csipsimple/api/SipCallSession;

    move-result-object v10

    if-nez v10, :cond_5

    .line 753
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$1(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/service/SipNotifications;

    move-result-object v10

    invoke-virtual {v10}, Lcom/csipsimple/service/SipNotifications;->cancelCalls()V

    .line 755
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    if-eqz v10, :cond_5

    .line 756
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v10}, Lcom/csipsimple/service/SipService;->treatDeferUnregistersForOutgoing()V

    .line 761
    :cond_5
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    iget-wide v11, v1, Lcom/csipsimple/api/SipCallSession;->callStart:J

    invoke-static {v10, v1, v11, v12}, Lcom/csipsimple/utils/CallLogHelper;->logValuesForCall(Landroid/content/Context;Lcom/csipsimple/api/SipCallSession;J)Landroid/content/ContentValues;

    move-result-object v4

    .line 764
    .local v4, "cv":Landroid/content/ContentValues;
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v10}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/csipsimple/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 765
    const-string v10, "new"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 766
    .local v6, "isNew":Ljava/lang/Integer;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 767
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$1(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/service/SipNotifications;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/csipsimple/service/SipNotifications;->showNotificationForMissedCall(Landroid/content/ContentValues;)V

    .line 771
    :cond_6
    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getLastStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_7

    .line 773
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getLastStatusCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getLastStatusComment()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    .line 777
    :cond_7
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v11, "integrate_with_native_calllogs"

    invoke-virtual {v10, v11}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 779
    const-string v10, "new"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 781
    const-string v10, "account_id"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 782
    const-string v10, "status_code"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 783
    const-string v10, "status_text"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 786
    const-string v10, "number"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/csipsimple/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    move-result-object v3

    .line 787
    .local v3, "callerInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    if-eqz v3, :cond_9

    .line 788
    invoke-static {v3}, Lcom/csipsimple/api/SipUri;->getPhoneNumber(Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;)Ljava/lang/String;

    move-result-object v8

    .line 792
    .local v8, "phoneNumber":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 793
    const-string v10, "number"

    invoke-virtual {v4, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v10, "new"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 796
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 798
    .local v5, "extraCv":Landroid/content/ContentValues;
    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getAccId()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    .line 799
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getAccId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/csipsimple/service/SipService;->getAccount(J)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 800
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    if-eqz v0, :cond_8

    iget-object v10, v0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 801
    const-string v10, "provider"

    iget-object v11, v0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .end local v0    # "acc":Lcom/csipsimple/api/SipProfile;
    :cond_8
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v10

    iget-object v10, v10, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-static {v10, v4, v5}, Lcom/csipsimple/utils/CallLogHelper;->addCallLog(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 808
    .end local v3    # "callerInfos":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    .end local v5    # "extraCv":Landroid/content/ContentValues;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/csipsimple/api/SipCallSession;->setIncoming(Z)V

    .line 809
    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/csipsimple/api/SipCallSession;->callStart:J

    goto/16 :goto_2

    .line 819
    .end local v1    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .end local v2    # "callState":I
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "isNew":Ljava/lang/Integer;
    :pswitch_4
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/csipsimple/api/SipCallSession;

    .line 820
    .local v7, "mediaCallInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$7(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v7}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/api/SipCallSession;

    .line 821
    .restart local v1    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v7}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/csipsimple/api/SipCallSession;->setMediaStatus(I)V

    .line 822
    invoke-static {v9}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$7(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v7}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    invoke-static {v9, v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$6(Lcom/csipsimple/pjsip/UAStateReceiver;Lcom/csipsimple/api/SipCallSession;)V

    goto/16 :goto_1

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 710
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class public Lcom/csipsimple/pjsip/UAStateReceiver;
.super Lorg/pjsip/pjsua/Callback;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$pjsip$pjsua$pjrpid_activity:[I = null

.field private static synthetic $SWITCH_TABLE$org$pjsip$pjsua$pjsua_buddy_status:[I = null

.field private static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field static final LAUNCH_TRIGGER_DELAY:J = 0x7d0L

.field private static final ON_CALL_STATE:I = 0x2

.field private static final ON_MEDIA_STATE:I = 0x3

.field private static final THIS_FILE:Ljava/lang/String; = "SIP UA Receiver"


# instance fields
.field private callsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/csipsimple/api/SipCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private eventLock:Landroid/os/PowerManager$WakeLock;

.field eventLockCount:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private lastLaunchCallHandler:J

.field private msgHandler:Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

.field private notificationManager:Lcom/csipsimple/service/SipNotifications;

.field private ongoingCallLock:Landroid/os/PowerManager$WakeLock;

.field private pendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pjService:Lcom/csipsimple/pjsip/PjSipService;


# direct methods
.method static synthetic $SWITCH_TABLE$org$pjsip$pjsua$pjrpid_activity()[I
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lcom/csipsimple/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjrpid_activity:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/pjsip/pjsua/pjrpid_activity;->values()[Lorg/pjsip/pjsua/pjrpid_activity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/pjsip/pjsua/pjrpid_activity;->PJRPID_ACTIVITY_AWAY:Lorg/pjsip/pjsua/pjrpid_activity;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjrpid_activity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/pjsip/pjsua/pjrpid_activity;->PJRPID_ACTIVITY_BUSY:Lorg/pjsip/pjsua/pjrpid_activity;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjrpid_activity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/pjsip/pjsua/pjrpid_activity;->PJRPID_ACTIVITY_UNKNOWN:Lorg/pjsip/pjsua/pjrpid_activity;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjrpid_activity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/csipsimple/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjrpid_activity:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$org$pjsip$pjsua$pjsua_buddy_status()[I
    .locals 3

    .prologue
    .line 79
    sget-object v0, Lcom/csipsimple/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjsua_buddy_status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsua_buddy_status;->values()[Lorg/pjsip/pjsua/pjsua_buddy_status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/pjsip/pjsua/pjsua_buddy_status;->PJSUA_BUDDY_STATUS_OFFLINE:Lorg/pjsip/pjsua/pjsua_buddy_status;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjsua_buddy_status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/pjsip/pjsua/pjsua_buddy_status;->PJSUA_BUDDY_STATUS_ONLINE:Lorg/pjsip/pjsua/pjsua_buddy_status;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjsua_buddy_status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/pjsip/pjsua/pjsua_buddy_status;->PJSUA_BUDDY_STATUS_UNKNOWN:Lorg/pjsip/pjsua/pjsua_buddy_status;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjsua_buddy_status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/csipsimple/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjsua_buddy_status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/pjsip/pjsua/Callback;-><init>()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->lastLaunchCallHandler:J

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLockCount:I

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pendingCleanup:Ljava/util/List;

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/pjsip/UAStateReceiver;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->lockCpu()V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/service/SipNotifications;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    return-object v0
.end method

.method static synthetic access$11(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/List;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pendingCleanup:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12(Lcom/csipsimple/pjsip/UAStateReceiver;Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/csipsimple/api/SipCallSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-direct {p0, p1, p2}, Lcom/csipsimple/pjsip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->msgHandler:Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/pjsip/UAStateReceiver;Lcom/csipsimple/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/csipsimple/pjsip/UAStateReceiver;->launchCallHandler(Lcom/csipsimple/api/SipCallSession;)V

    return-void
.end method

.method static synthetic access$3(Lcom/csipsimple/pjsip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0, p1, p2}, Lcom/csipsimple/pjsip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    return-object v0
.end method

.method static synthetic access$5(Lcom/csipsimple/pjsip/UAStateReceiver;I)V
    .locals 0

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/csipsimple/pjsip/UAStateReceiver;->sendPendingDtmf(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/csipsimple/pjsip/UAStateReceiver;Lcom/csipsimple/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/csipsimple/pjsip/UAStateReceiver;->onBroadcastCallState(Lcom/csipsimple/api/SipCallSession;)V

    return-void
.end method

.method static synthetic access$7(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$8(Lcom/csipsimple/pjsip/UAStateReceiver;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    return-void
.end method

.method private broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 904
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 905
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    if-eqz p2, :cond_0

    .line 907
    const-string v1, "incoming_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Lcom/csipsimple/service/SipService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 910
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method private declared-synchronized launchCallHandler(Lcom/csipsimple/api/SipCallSession;)V
    .locals 7
    .param p1, "currentCallInfo2"    # Lcom/csipsimple/api/SipCallSession;

    .prologue
    .line 925
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 930
    .local v1, "currentElapsedTime":J
    iget-wide v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->lastLaunchCallHandler:J

    const-wide/16 v5, 0x7d0

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    .line 933
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.csipsimple.phone.action.INCALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, "callHandlerIntent":Landroid/content/Intent;
    const-string v3, "call_info"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 935
    const/high16 v3, 0x30000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 937
    const-string v3, "SIP UA Receiver"

    const-string v4, "Anounce call activity"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v3, v3, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v3, v0}, Lcom/csipsimple/service/SipService;->startActivity(Landroid/content/Intent;)V

    .line 939
    iput-wide v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->lastLaunchCallHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    .end local v0    # "callHandlerIntent":Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    return-void

    .line 941
    :cond_0
    :try_start_1
    const-string v3, "SIP UA Receiver"

    const-string v4, "Ignore extra launch handler"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 925
    .end local v1    # "currentElapsedTime":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private lockCpu()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "SIP UA Receiver"

    const-string v1, "< LOCK CPU"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 98
    iget v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLockCount:I

    .line 100
    :cond_0
    return-void
.end method

.method private onBroadcastCallState(Lcom/csipsimple/api/SipCallSession;)V
    .locals 3
    .param p1, "callInfo"    # Lcom/csipsimple/api/SipCallSession;

    .prologue
    .line 889
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.csipsimple.service.CALL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 890
    .local v0, "callStateChangedIntent":Landroid/content/Intent;
    const-string v1, "call_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 891
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method private sendPendingDtmf(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/pjsip/UAStateReceiver$5;

    invoke-direct {v1, p0, p1}, Lcom/csipsimple/pjsip/UAStateReceiver$5;-><init>(Lcom/csipsimple/pjsip/UAStateReceiver;I)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1060
    return-void
.end method

.method private unlockCpu()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 104
    iget v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLockCount:I

    .line 105
    const-string v0, "SIP UA Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "> UNLOCK CPU "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method private updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/csipsimple/api/SipCallSession;
    .locals 3
    .param p1, "callId"    # Ljava/lang/Integer;
    .param p2, "e"    # Lorg/pjsip/pjsua/pjsip_event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 614
    const-string v1, "SIP UA Receiver"

    const-string v2, "Updating call infos from the stack"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    monitor-enter v2

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/api/SipCallSession;

    .line 617
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lcom/csipsimple/api/SipCallSession;

    .end local v0    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-direct {v0}, Lcom/csipsimple/api/SipCallSession;-><init>()V

    .line 619
    .restart local v0    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/csipsimple/api/SipCallSession;->setCallId(I)V

    .line 615
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-static {v0, p2, v1}, Lcom/csipsimple/pjsip/PjSipCalls;->updateSessionFromPj(Lcom/csipsimple/api/SipCallSession;Lorg/pjsip/pjsua/pjsip_event;Lcom/csipsimple/pjsip/PjSipService;)V

    .line 625
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/pjsip/PjSipService;->isRecording(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/csipsimple/api/SipCallSession;->setIsRecording(Z)V

    .line 626
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/pjsip/PjSipService;->canRecord(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/csipsimple/api/SipCallSession;->setCanRecord(Z)V

    .line 627
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    monitor-enter v2

    .line 629
    :try_start_1
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 631
    return-object v0

    .line 615
    .end local v0    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 627
    .restart local v0    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public getActiveCallInProgress()Lcom/csipsimple/api/SipCallSession;
    .locals 4

    .prologue
    .line 953
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 959
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 953
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 954
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {p0, v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 955
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public getActiveCallOngoing()Lcom/csipsimple/api/SipCallSession;
    .locals 4

    .prologue
    .line 969
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 975
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 969
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 970
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {p0, v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 971
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->isOngoing()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method public getCallInfo(Ljava/lang/Integer;)Lcom/csipsimple/api/SipCallSession;
    .locals 3
    .param p1, "callId"    # Ljava/lang/Integer;

    .prologue
    .line 641
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    monitor-enter v2

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/api/SipCallSession;

    .line 641
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    monitor-exit v2

    .line 644
    return-object v0

    .line 641
    .end local v0    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCalls()[Lcom/csipsimple/api/SipCallSession;
    .locals 5

    .prologue
    .line 652
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 654
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v0, v3, [Lcom/csipsimple/api/SipCallSession;

    .line 655
    .local v0, "callsInfos":[Lcom/csipsimple/api/SipCallSession;
    const/4 v2, 0x0

    .line 656
    .local v2, "i":I
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 669
    .end local v0    # "callsInfos":[Lcom/csipsimple/api/SipCallSession;
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 656
    .restart local v0    # "callsInfos":[Lcom/csipsimple/api/SipCallSession;
    .restart local v2    # "i":I
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 657
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/csipsimple/api/SipCallSession;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/csipsimple/api/SipCallSession;

    aput-object v3, v0, v2

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    .end local v0    # "callsInfos":[Lcom/csipsimple/api/SipCallSession;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/csipsimple/api/SipCallSession;>;"
    .end local v2    # "i":I
    :cond_1
    const/4 v3, 0x0

    new-array v0, v3, [Lcom/csipsimple/api/SipCallSession;

    goto :goto_1
.end method

.method public handleHeadsetButton()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 984
    invoke-virtual {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->getActiveCallInProgress()Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 985
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    if-eqz v0, :cond_4

    .line 990
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v1

    .line 991
    .local v1, "state":I
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 992
    if-eq v1, v4, :cond_0

    .line 993
    if-ne v1, v5, :cond_2

    .line 994
    :cond_0
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v3, v3, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    if-eqz v3, :cond_1

    .line 995
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v3, v3, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v3}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v3

    new-instance v4, Lcom/csipsimple/pjsip/UAStateReceiver$3;

    invoke-direct {v4, p0, v0}, Lcom/csipsimple/pjsip/UAStateReceiver$3;-><init>(Lcom/csipsimple/pjsip/UAStateReceiver;Lcom/csipsimple/api/SipCallSession;)V

    invoke-virtual {v3, v4}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1033
    .end local v1    # "state":I
    :cond_1
    :goto_0
    return v2

    .line 1004
    .restart local v1    # "state":I
    :cond_2
    if-eq v1, v4, :cond_3

    .line 1005
    if-eq v1, v5, :cond_3

    .line 1006
    if-eq v1, v2, :cond_3

    .line 1007
    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    .line 1008
    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 1015
    :cond_3
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v3, v3, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    if-eqz v3, :cond_1

    .line 1016
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v3, v3, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v3}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v3

    new-instance v4, Lcom/csipsimple/pjsip/UAStateReceiver$4;

    invoke-direct {v4, p0, v0}, Lcom/csipsimple/pjsip/UAStateReceiver$4;-><init>(Lcom/csipsimple/pjsip/UAStateReceiver;Lcom/csipsimple/api/SipCallSession;)V

    invoke-virtual {v3, v4}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1033
    .end local v1    # "state":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initService(Lcom/csipsimple/pjsip/PjSipService;)V
    .locals 4
    .param p1, "srv"    # Lcom/csipsimple/pjsip/PjSipService;

    .prologue
    const/4 v3, 0x1

    .line 839
    iput-object p1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    .line 840
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    iget-object v1, v1, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    iput-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    .line 842
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 843
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UAStateAsyncWorker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    .line 844
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 846
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->msgHandler:Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    if-nez v1, :cond_1

    .line 847
    new-instance v1, Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;-><init>(Landroid/os/Looper;Lcom/csipsimple/pjsip/UAStateReceiver;)V

    iput-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->msgHandler:Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    .line 850
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_2

    .line 851
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 852
    .local v0, "pman":Landroid/os/PowerManager;
    const-string v1, "com.csipsimple.inEventLock"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    .line 853
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 856
    .end local v0    # "pman":Landroid/os/PowerManager;
    :cond_2
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_3

    .line 857
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 858
    .restart local v0    # "pman":Landroid/os/PowerManager;
    const-string v1, "com.csipsimple.ongoingCallLock"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    .line 859
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 861
    .end local v0    # "pman":Landroid/os/PowerManager;
    :cond_3
    return-void
.end method

.method public on_buddy_state(I)V
    .locals 7
    .param p1, "buddyId"    # I

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->lockCpu()V

    .line 233
    new-instance v0, Lorg/pjsip/pjsua/pjsua_buddy_info;

    invoke-direct {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;-><init>()V

    .line 234
    .local v0, "binfo":Lorg/pjsip/pjsua/pjsua_buddy_info;
    invoke-static {p1, v0}, Lorg/pjsip/pjsua/pjsua;->buddy_get_info(ILorg/pjsip/pjsua/pjsua_buddy_info;)I

    .line 236
    const-string v4, "SIP UA Receiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "On buddy "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getMonitor_pres()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getStatus_text()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v6

    invoke-static {v6}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v2, Lcom/csipsimple/api/SipManager$PresenceStatus;->UNKNOWN:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 239
    .local v2, "presStatus":Lcom/csipsimple/api/SipManager$PresenceStatus;
    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getStatus_text()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "presStatusTxt":Ljava/lang/String;
    const-string v4, "Online"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Offline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 241
    .local v1, "isDefaultTxt":Z
    :goto_0
    invoke-static {}, Lcom/csipsimple/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjsua_buddy_status()[I

    move-result-object v4

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getStatus()Lorg/pjsip/pjsua/pjsua_buddy_status;

    move-result-object v5

    invoke-virtual {v5}, Lorg/pjsip/pjsua/pjsua_buddy_status;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 250
    sget-object v2, Lcom/csipsimple/api/SipManager$PresenceStatus;->UNKNOWN:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 251
    :goto_1
    invoke-static {}, Lcom/csipsimple/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjrpid_activity()[I

    move-result-object v4

    .line 254
    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getRpid()Lorg/pjsip/pjsua/pjrpid_element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/pjsip/pjsua/pjrpid_element;->getActivity()Lorg/pjsip/pjsua/pjrpid_activity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/pjsip/pjsua/pjrpid_activity;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 271
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v4, v4, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    iget-object v4, v4, Lcom/csipsimple/service/SipService;->presenceMgr:Lcom/csipsimple/service/PresenceManager;

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getUri()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v5

    invoke-static {v5}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getMonitor_pres()I

    move-result v6

    .line 271
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/csipsimple/service/PresenceManager;->changeBuddyState(Ljava/lang/String;ILcom/csipsimple/api/SipManager$PresenceStatus;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    .line 274
    return-void

    .line 240
    .end local v1    # "isDefaultTxt":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 243
    .restart local v1    # "isDefaultTxt":Z
    :pswitch_0
    sget-object v2, Lcom/csipsimple/api/SipManager$PresenceStatus;->ONLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 244
    goto :goto_1

    .line 246
    :pswitch_1
    sget-object v2, Lcom/csipsimple/api/SipManager$PresenceStatus;->OFFLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 247
    goto :goto_1

    .line 256
    :pswitch_2
    sget-object v2, Lcom/csipsimple/api/SipManager$PresenceStatus;->AWAY:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 257
    if-eqz v1, :cond_0

    .line 258
    const-string v3, ""

    .line 260
    goto :goto_2

    .line 262
    :pswitch_3
    sget-object v2, Lcom/csipsimple/api/SipManager$PresenceStatus;->BUSY:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 263
    if-eqz v1, :cond_0

    .line 264
    const-string v3, ""

    .line 266
    goto :goto_2

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 254
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public on_call_media_state(I)V
    .locals 5
    .param p1, "callId"    # I

    .prologue
    const/4 v4, 0x3

    .line 406
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->css_on_call_media_state(I)V

    .line 408
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->lockCpu()V

    .line 409
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v2, v2, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v2, v2, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v2}, Lcom/csipsimple/service/MediaManager;->stopRing()V

    .line 416
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/csipsimple/pjsip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v1

    .line 421
    .local v1, "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 422
    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 423
    :cond_1
    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getConfPort()I

    move-result v0

    .line 424
    .local v0, "callConfSlot":I
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 425
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 428
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v2, v2, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v2, :cond_2

    .line 429
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v2, v2, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v2}, Lcom/csipsimple/service/MediaManager;->setSoftwareVolume()V

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v2, p1}, Lcom/csipsimple/pjsip/PjSipService;->canRecord(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 435
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v2, v2, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 436
    const-string v3, "auto_record_calls"

    invoke-virtual {v2, v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v2, p1}, Lcom/csipsimple/pjsip/PjSipService;->startRecording(I)V

    .line 442
    .end local v0    # "callConfSlot":I
    :cond_3
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->msgHandler:Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->msgHandler:Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/csipsimple/service/SipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    :goto_0
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    .line 448
    return-void

    .line 443
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public on_call_redirected(ILorg/pjsip/pjsua/pj_str_t;)Lorg/pjsip/pjsua/pjsip_redirect_op;
    .locals 3
    .param p1, "call_id"    # I
    .param p2, "target"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 572
    const-string v0, "SIP UA Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ask for redirection, not yet implemented, for now allow all "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    sget-object v0, Lorg/pjsip/pjsua/pjsip_redirect_op;->PJSIP_REDIRECT_ACCEPT:Lorg/pjsip/pjsua/pjsip_redirect_op;

    return-object v0
.end method

.method public on_call_state(ILorg/pjsip/pjsua/pjsip_event;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "e"    # Lorg/pjsip/pjsua/pjsip_event;

    .prologue
    .line 190
    invoke-static {p1, p2}, Lorg/pjsip/pjsua/pjsua;->css_on_call_state(ILorg/pjsip/pjsua/pjsip_event;)V

    .line 191
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->lockCpu()V

    .line 193
    const-string v2, "SIP UA Receiver"

    const-string v3, "Call state <<"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/csipsimple/pjsip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 197
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v1

    .line 200
    .local v1, "callState":I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 201
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v2, v2, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v2, v2, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v2}, Lcom/csipsimple/service/MediaManager;->stopRingAndUnfocus()V

    .line 203
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v2, v2, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v2}, Lcom/csipsimple/service/MediaManager;->resetSettings()V

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v2, p1}, Lcom/csipsimple/pjsip/PjSipService;->stopDialtoneGenerator(I)V

    .line 210
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v2, p1}, Lcom/csipsimple/pjsip/PjSipService;->stopRecording(I)V

    .line 211
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v2, p1}, Lcom/csipsimple/pjsip/PjSipService;->stopPlaying(I)V

    .line 218
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->msgHandler:Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->msgHandler:Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    const-string v2, "SIP UA Receiver"

    const-string v3, "Call state >>"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/csipsimple/service/SipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    .line 227
    .end local v0    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .end local v1    # "callState":I
    :goto_1
    return-void

    .line 213
    .restart local v0    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .restart local v1    # "callState":I
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Lcom/csipsimple/service/SipService$SameThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .end local v1    # "callState":I
    :catch_0
    move-exception v2

    .line 224
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    goto :goto_1

    .line 222
    :catchall_0
    move-exception v2

    .line 224
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    .line 225
    throw v2
.end method

.method public on_incoming_call(IILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)V
    .locals 11
    .param p1, "accId"    # I
    .param p2, "callId"    # I
    .param p3, "rdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    .prologue
    const/4 v10, 0x0

    .line 116
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->lockCpu()V

    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, "hasOngoingSipCall":Z
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v7, v7, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    if-eqz v7, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->getCalls()[Lcom/csipsimple/api/SipCallSession;

    move-result-object v2

    .line 122
    .local v2, "calls":[Lcom/csipsimple/api/SipCallSession;
    if-eqz v2, :cond_0

    .line 123
    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_3

    .line 141
    .end local v2    # "calls":[Lcom/csipsimple/api/SipCallSession;
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/csipsimple/pjsip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v1

    .line 142
    .local v1, "callInfo":Lcom/csipsimple/api/SipCallSession;
    const-string v7, "SIP UA Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Incoming call << for account "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_1

    .line 146
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 149
    :cond_1
    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "remContact":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/csipsimple/api/SipCallSession;->setIncoming(Z)V

    .line 151
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v7, v1}, Lcom/csipsimple/service/SipNotifications;->showNotificationForCall(Lcom/csipsimple/api/SipCallSession;)V

    .line 154
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v7, p1}, Lcom/csipsimple/pjsip/PjSipService;->getAccountForPjsipId(I)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 155
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v7, v7, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v7, v5, v0}, Lcom/csipsimple/service/SipService;->shouldAutoAnswer(Ljava/lang/String;Lcom/csipsimple/api/SipProfile;)I

    move-result v6

    .line 156
    .local v6, "shouldAutoAnswer":I
    const-string v7, "SIP UA Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Should I anto answer ? "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/16 v7, 0xc8

    if-lt v6, v7, :cond_6

    .line 159
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v7, p2, v6}, Lcom/csipsimple/pjsip/PjSipService;->callAnswer(II)I

    .line 174
    :goto_1
    const/16 v7, 0x12c

    if-ge v6, v7, :cond_2

    .line 176
    invoke-direct {p0, v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->launchCallHandler(Lcom/csipsimple/api/SipCallSession;)V

    .line 177
    const-string v7, "SIP UA Receiver"

    const-string v8, "Incoming call >>"

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/csipsimple/service/SipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    .line 185
    .end local v0    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v1    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .end local v5    # "remContact":Ljava/lang/String;
    .end local v6    # "shouldAutoAnswer":I
    :goto_2
    return-void

    .line 123
    .restart local v2    # "calls":[Lcom/csipsimple/api/SipCallSession;
    :cond_3
    aget-object v3, v2, v7

    .line 124
    .local v3, "existingCall":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v3}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v9

    if-eq v9, p2, :cond_5

    .line 125
    iget-object v9, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v9, v9, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    iget-boolean v9, v9, Lcom/csipsimple/service/SipService;->supportMultipleCalls:Z

    if-nez v9, :cond_4

    .line 126
    const-string v7, "SIP UA Receiver"

    const-string v8, "Settings to not support two call at the same time !!!"

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-wide/16 v7, 0x1e6

    invoke-static {p2, v7, v8, v10, v10}, Lorg/pjsip/pjsua/pjsua;->call_hangup(IJLorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I

    .line 130
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    goto :goto_2

    .line 133
    :cond_4
    const/4 v4, 0x1

    .line 123
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 162
    .end local v2    # "calls":[Lcom/csipsimple/api/SipCallSession;
    .end local v3    # "existingCall":Lcom/csipsimple/api/SipCallSession;
    .restart local v0    # "acc":Lcom/csipsimple/api/SipProfile;
    .restart local v1    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .restart local v5    # "remContact":Ljava/lang/String;
    .restart local v6    # "shouldAutoAnswer":I
    :cond_6
    :try_start_1
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    const/16 v8, 0xb4

    invoke-virtual {v7, p2, v8}, Lcom/csipsimple/pjsip/PjSipService;->callAnswer(II)I

    .line 164
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v7, v7, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v7, :cond_7

    .line 165
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v7, v7, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v7}, Lcom/csipsimple/service/SipService;->getGSMCallState()I

    move-result v7

    if-nez v7, :cond_8

    .line 166
    if-nez v4, :cond_8

    .line 167
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v7, v7, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v7, v5}, Lcom/csipsimple/service/MediaManager;->startRing(Ljava/lang/String;)V

    .line 172
    :cond_7
    :goto_3
    const-string v7, "RINGING"

    invoke-direct {p0, v7, v5}, Lcom/csipsimple/pjsip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/csipsimple/service/SipService$SameThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 179
    .end local v0    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v1    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .end local v5    # "remContact":Ljava/lang/String;
    .end local v6    # "shouldAutoAnswer":I
    :catch_0
    move-exception v7

    .line 182
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    goto :goto_2

    .line 169
    .restart local v0    # "acc":Lcom/csipsimple/api/SipProfile;
    .restart local v1    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .restart local v5    # "remContact":Ljava/lang/String;
    .restart local v6    # "shouldAutoAnswer":I
    :cond_8
    :try_start_2
    iget-object v7, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v7, v7, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/csipsimple/service/MediaManager;->playInCallTone(I)V
    :try_end_2
    .catch Lcom/csipsimple/service/SipService$SameThreadException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 181
    .end local v0    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v1    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .end local v5    # "remContact":Ljava/lang/String;
    .end local v6    # "shouldAutoAnswer":I
    :catchall_0
    move-exception v7

    .line 182
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    .line 183
    throw v7
.end method

.method public on_mwi_info(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 16
    .param p1, "acc_id"    # I
    .param p2, "mime_type"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "body"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->lockCpu()V

    .line 455
    invoke-static/range {p3 .. p3}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    .line 458
    .local v9, "msg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 459
    .local v3, "hasMessage":Z
    const/4 v10, 0x0

    .line 462
    .local v10, "numberOfMessages":I
    const-string v11, "\\r?\\n"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, "lines":[Ljava/lang/String;
    const-string v11, ".*Messages-Waiting[ \t]?:[ \t]?(yes|no).*"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 468
    .local v8, "messWaitingPattern":Ljava/util/regex/Pattern;
    const-string v11, ".*Voice-Message[ \t]?:[ \t]?([0-9]*)/[0-9]*.*"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 471
    .local v7, "messVoiceNbrPattern":Ljava/util/regex/Pattern;
    array-length v12, v5

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v12, :cond_2

    .line 503
    if-eqz v3, :cond_1

    if-lez v10, :cond_1

    .line 504
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/csipsimple/pjsip/PjSipService;->getAccountForPjsipId(I)Lcom/csipsimple/api/SipProfile;

    move-result-object v1

    .line 505
    .local v1, "acc":Lcom/csipsimple/api/SipProfile;
    if-eqz v1, :cond_0

    .line 506
    const-string v11, "SIP UA Receiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " -> Has found account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " >> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    const-string v11, "SIP UA Receiver"

    const-string v12, "We can show the voice messages notification"

    invoke-static {v11, v12}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/csipsimple/pjsip/UAStateReceiver;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v11, v1, v10}, Lcom/csipsimple/service/SipNotifications;->showNotificationForVoiceMail(Lcom/csipsimple/api/SipProfile;I)V

    .line 511
    .end local v1    # "acc":Lcom/csipsimple/api/SipProfile;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    .line 512
    return-void

    .line 471
    :cond_2
    aget-object v4, v5, v11

    .line 473
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 474
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 475
    const-string v13, "SIP UA Receiver"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Matches : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v13, "yes"

    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 477
    const-string v13, "SIP UA Receiver"

    const-string v14, "Hey there is messages !!! "

    invoke-static {v13, v14}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v3, 0x1

    .line 471
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 491
    :cond_4
    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 492
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 494
    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 498
    :goto_2
    const-string v13, "SIP UA Receiver"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Nbr : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 495
    :catch_0
    move-exception v2

    .line 496
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v13, "SIP UA Receiver"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Not well formated number "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public on_nat_detect(Lorg/pjsip/pjsua/pj_stun_nat_detect_result;)V
    .locals 3
    .param p1, "res"    # Lorg/pjsip/pjsua/pj_stun_nat_detect_result;

    .prologue
    .line 579
    const-string v0, "SIP UA Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NAT TYPE DETECTED !!!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pj_stun_nat_detect_result;->getNat_type_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " et "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pj_stun_nat_detect_result;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public on_pager(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 13
    .param p1, "callId"    # I
    .param p2, "from"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "contact"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p5, "mime_type"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p6, "body"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->lockCpu()V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 281
    .local v6, "date":J
    invoke-static {p2}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, "fromStr":Ljava/lang/String;
    invoke-static {v9}, Lcom/csipsimple/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "canonicFromStr":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "contactStr":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "toStr":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "bodyStr":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "mimeStr":Ljava/lang/String;
    new-instance v0, Lcom/csipsimple/api/SipMessage;

    .line 289
    const/4 v8, 0x1

    .line 288
    invoke-direct/range {v0 .. v9}, Lcom/csipsimple/api/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 292
    .local v0, "msg":Lcom/csipsimple/api/SipMessage;
    iget-object v8, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v8, v8, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v8}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 293
    .local v10, "cr":Landroid/content/ContentResolver;
    sget-object v8, Lcom/csipsimple/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/csipsimple/api/SipMessage;->getContentValues()Landroid/content/ContentValues;

    move-result-object v12

    invoke-virtual {v10, v8, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 296
    new-instance v11, Landroid/content/Intent;

    const-string v8, "com.csipsimple.service.MESSAGE_RECEIVED"

    invoke-direct {v11, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v11, "intent":Landroid/content/Intent;
    const-string v8, "sender"

    invoke-virtual {v0}, Lcom/csipsimple/api/SipMessage;->getFrom()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v8, "body"

    invoke-virtual {v0}, Lcom/csipsimple/api/SipMessage;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v8, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v8, v8, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v12, "android.permission.USE_SIP"

    invoke-virtual {v8, v11, v12}, Lcom/csipsimple/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 303
    iget-object v8, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v8, v0}, Lcom/csipsimple/service/SipNotifications;->showNotificationForMessage(Lcom/csipsimple/api/SipMessage;)V

    .line 304
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    .line 305
    return-void
.end method

.method public on_pager_status(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsip_status_code;Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 13
    .param p1, "callId"    # I
    .param p2, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "body"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "status"    # Lorg/pjsip/pjsua/pjsip_status_code;
    .param p5, "reason"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->lockCpu()V

    .line 311
    sget-object v9, Lorg/pjsip/pjsua/pjsip_status_code;->PJSIP_SC_OK:Lorg/pjsip/pjsua/pjsip_status_code;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lorg/pjsip/pjsua/pjsip_status_code;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 312
    sget-object v9, Lorg/pjsip/pjsua/pjsip_status_code;->PJSIP_SC_ACCEPTED:Lorg/pjsip/pjsua/pjsip_status_code;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lorg/pjsip/pjsua/pjsip_status_code;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    const/4 v5, 0x2

    .line 313
    .local v5, "messageType":I
    :goto_0
    invoke-static {p2}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/csipsimple/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, "toStr":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, "reasonStr":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "bodyStr":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v7

    .line 317
    .local v7, "statusInt":I
    const-string v9, "SIP UA Receiver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SipMessage in on pager status "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lorg/pjsip/pjsua/pjsip_status_code;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v9, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v9, v9, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v9}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 321
    .local v3, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v1, "args":Landroid/content/ContentValues;
    const-string v9, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v9, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_1

    .line 325
    const/16 v9, 0xca

    if-eq v7, v9, :cond_1

    .line 326
    const-string v9, "body"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " // "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_1
    sget-object v9, Lcom/csipsimple/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 329
    const-string v10, "receiver=? AND body=? AND type=6"

    .line 332
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    .line 333
    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    .line 328
    invoke-virtual {v3, v9, v1, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 337
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.csipsimple.service.MESSAGE_RECEIVED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "sender"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v9, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v9, v9, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v10, "android.permission.USE_SIP"

    invoke-virtual {v9, v4, v10}, Lcom/csipsimple/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    .line 341
    return-void

    .line 312
    .end local v1    # "args":Landroid/content/ContentValues;
    .end local v2    # "bodyStr":Ljava/lang/String;
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "messageType":I
    .end local v6    # "reasonStr":Ljava/lang/String;
    .end local v7    # "statusInt":I
    .end local v8    # "toStr":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x5

    goto/16 :goto_0
.end method

.method public on_reg_state(I)V
    .locals 2
    .param p1, "accountId"    # I

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->lockCpu()V

    .line 349
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/pjsip/UAStateReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/csipsimple/pjsip/UAStateReceiver$1;-><init>(Lcom/csipsimple/pjsip/UAStateReceiver;I)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 400
    invoke-direct {p0}, Lcom/csipsimple/pjsip/UAStateReceiver;->unlockCpu()V

    .line 401
    return-void
.end method

.method public on_set_micro_source()I
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v1, "micro_source"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public on_setup_audio()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/csipsimple/pjsip/PjSipService;->setAudioInCall()V

    .line 560
    :cond_0
    return-void
.end method

.method public on_teardown_audio()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/csipsimple/pjsip/PjSipService;->unsetAudioInCall()V

    .line 568
    :cond_0
    return-void
.end method

.method public on_validate_audio_clock_rate(I)I
    .locals 1
    .param p1, "clockRate"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v0, p1}, Lcom/csipsimple/pjsip/PjSipService;->validateAudioClockRate(I)I

    move-result v0

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public on_zrtp_show_sas(ILorg/pjsip/pjsua/pj_str_t;I)V
    .locals 5
    .param p1, "dataPtr"    # I
    .param p2, "sas"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "verified"    # I

    .prologue
    .line 519
    invoke-static {p2}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "sasString":Ljava/lang/String;
    const-string v2, "SIP UA Receiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ZRTP show SAS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " verified : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    .line 522
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.csipsimple.service.SHOW_SAS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, "zrtpIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v2, v2, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v3, "android.permission.USE_SIP"

    invoke-virtual {v2, v1, v3}, Lcom/csipsimple/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 529
    .end local v1    # "zrtpIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/UAStateReceiver;->updateZrtpInfos(I)V

    goto :goto_0
.end method

.method public on_zrtp_update_transport(I)V
    .locals 0
    .param p1, "dataPtr"    # I

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/UAStateReceiver;->updateZrtpInfos(I)V

    .line 535
    return-void
.end method

.method public stopService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 866
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Threading;->stopHandlerThread(Landroid/os/HandlerThread;Z)V

    .line 867
    iput-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    .line 868
    iput-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->msgHandler:Lcom/csipsimple/pjsip/UAStateReceiver$WorkerHandler;

    .line 871
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 876
    :cond_0
    return-void

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public timer_cancel(II)I
    .locals 1
    .param p1, "entry"    # I
    .param p2, "entryId"    # I

    .prologue
    .line 594
    invoke-static {p1, p2}, Lcom/csipsimple/utils/TimerWrapper;->cancel(II)I

    move-result v0

    return v0
.end method

.method public timer_schedule(III)I
    .locals 1
    .param p1, "entry"    # I
    .param p2, "entryId"    # I
    .param p3, "time"    # I

    .prologue
    .line 589
    invoke-static {p1, p2, p3}, Lcom/csipsimple/utils/TimerWrapper;->schedule(III)I

    move-result v0

    return v0
.end method

.method public updateRecordingStatus(IZZ)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "canRecord"    # Z
    .param p3, "isRecording"    # Z

    .prologue
    .line 1043
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 1044
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v0, p2}, Lcom/csipsimple/api/SipCallSession;->setCanRecord(Z)V

    .line 1045
    invoke-virtual {v0, p3}, Lcom/csipsimple/api/SipCallSession;->setIsRecording(Z)V

    .line 1046
    iget-object v2, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    monitor-enter v2

    .line 1048
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    invoke-direct {p0, v0}, Lcom/csipsimple/pjsip/UAStateReceiver;->onBroadcastCallState(Lcom/csipsimple/api/SipCallSession;)V

    .line 1051
    return-void

    .line 1046
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateZrtpInfos(I)V
    .locals 3
    .param p1, "dataPtr"    # I

    .prologue
    .line 538
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->jzrtp_getCallId(I)I

    move-result v0

    .line 539
    .local v0, "callId":I
    iget-object v1, p0, Lcom/csipsimple/pjsip/UAStateReceiver;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v1, v1, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    new-instance v2, Lcom/csipsimple/pjsip/UAStateReceiver$2;

    invoke-direct {v2, p0, v0}, Lcom/csipsimple/pjsip/UAStateReceiver$2;-><init>(Lcom/csipsimple/pjsip/UAStateReceiver;I)V

    invoke-virtual {v1, v2}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 546
    return-void
.end method

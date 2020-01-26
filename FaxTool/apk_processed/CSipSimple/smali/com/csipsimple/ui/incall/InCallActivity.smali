.class public Lcom/csipsimple/ui/incall/InCallActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "InCallActivity.java"

# interfaces
.implements Lcom/csipsimple/ui/incall/IOnCallActionTrigger;
.implements Lcom/csipsimple/widgets/IOnLeftRightChoice;
.implements Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;
.implements Lcom/csipsimple/ui/incall/DtmfDialogFragment$OnDtmfListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;,
        Lcom/csipsimple/ui/incall/InCallActivity$QuitTimerTask;,
        Lcom/csipsimple/ui/incall/InCallActivity$ShowZRTPInfoRunnable;,
        Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;,
        Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;
    }
.end annotation


# static fields
.field private static final CALL_ID:Ljava/lang/String; = "call_id"

.field private static final PICKUP_SIP_URI_NEW_CALL:I = 0x1

.field private static final PICKUP_SIP_URI_XFER:I = 0x0

.field private static final QUIT_DELAY:I = 0xbb8

.field private static final THIS_FILE:Ljava/lang/String; = "InCallActivity"


# instance fields
.field private activeCallsAdapter:Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

.field private activeCallsGrid:Lcom/csipsimple/ui/incall/InCallInfoGrid;

.field private callMutex:Ljava/lang/Object;

.field private callStateReceiver:Landroid/content/BroadcastReceiver;

.field private callsInfo:[Lcom/csipsimple/api/SipCallSession;

.field private cameraPreview:Landroid/view/SurfaceView;

.field private connection:Landroid/content/ServiceConnection;

.field private dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

.field private heldCallsAdapter:Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

.field private heldCallsGrid:Lcom/csipsimple/ui/incall/InCallInfoGrid;

.field private inCallAnswerControls:Lcom/csipsimple/ui/incall/InCallAnswerControls;

.field private inCallControls:Lcom/csipsimple/ui/incall/InCallControls;

.field private infoDialog:Landroid/app/AlertDialog;

.field private keyguardManager:Lcom/csipsimple/utils/keyguard/KeyguardWrapper;

.field private lastMediaState:Lcom/csipsimple/api/MediaState;

.field private mainFrame:Landroid/view/ViewGroup;

.field private powerManager:Landroid/os/PowerManager;

.field private prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

.field private proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

.field private quitTimer:Ljava/util/Timer;

.field private service:Lcom/csipsimple/api/ISipService;

.field private serviceConnected:Z

.field private useAutoDetectSpeaker:Z

.field private videoWakeLock:Landroid/os/PowerManager$WakeLock;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    .line 124
    iput-boolean v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->useAutoDetectSpeaker:Z

    .line 749
    new-instance v0, Lcom/csipsimple/ui/incall/InCallActivity$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/incall/InCallActivity$1;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;)V

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callStateReceiver:Landroid/content/BroadcastReceiver;

    .line 791
    iput-boolean v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->serviceConnected:Z

    .line 793
    new-instance v0, Lcom/csipsimple/ui/incall/InCallActivity$2;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/incall/InCallActivity$2;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;)V

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->connection:Landroid/content/ServiceConnection;

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/ISipService;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/incall/InCallActivity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallAnswerControls;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/csipsimple/ui/incall/InCallAnswerControls;

    return-object v0
.end method

.method static synthetic access$11(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallInfoGrid;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->heldCallsGrid:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    return-object v0
.end method

.method static synthetic access$12(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->activeCallsAdapter:Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->heldCallsAdapter:Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    return-object v0
.end method

.method static synthetic access$14(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$15(Lcom/csipsimple/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallActivity;->delayedQuit()V

    return-void
.end method

.method static synthetic access$16(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/CallProximityManager;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    return-object v0
.end method

.method static synthetic access$17(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->videoWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/ui/incall/InCallActivity;[Lcom/csipsimple/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    return-void
.end method

.method static synthetic access$3(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/MediaState;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->lastMediaState:Lcom/csipsimple/api/MediaState;

    return-object v0
.end method

.method static synthetic access$4(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/api/MediaState;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->lastMediaState:Lcom/csipsimple/api/MediaState;

    return-void
.end method

.method static synthetic access$5(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/api/ISipService;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    return-void
.end method

.method static synthetic access$6(Lcom/csipsimple/ui/incall/InCallActivity;Z)V
    .locals 0

    .prologue
    .line 791
    iput-boolean p1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->serviceConnected:Z

    return-void
.end method

.method static synthetic access$7(Lcom/csipsimple/ui/incall/InCallActivity;)[Lcom/csipsimple/api/SipCallSession;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    return-object v0
.end method

.method static synthetic access$8(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/api/SipCallSession;Lcom/csipsimple/api/SipCallSession;)Lcom/csipsimple/api/SipCallSession;
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0, p1, p2}, Lcom/csipsimple/ui/incall/InCallActivity;->getPrioritaryCall(Lcom/csipsimple/api/SipCallSession;Lcom/csipsimple/api/SipCallSession;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallControls;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallControls:Lcom/csipsimple/ui/incall/InCallControls;

    return-object v0
.end method

.method private applyTheme()V
    .locals 1

    .prologue
    .line 386
    invoke-static {p0}, Lcom/csipsimple/utils/Theme;->getCurrentTheme(Landroid/content/Context;)Lcom/csipsimple/utils/Theme;

    move-result-object v0

    .line 390
    .local v0, "t":Lcom/csipsimple/utils/Theme;
    return-void
.end method

.method private attachVideoPreview()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 323
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v2, "use_video"

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    if-nez v1, :cond_2

    .line 325
    const-string v1, "InCallActivity"

    const-string v2, "Create Local Renderer"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {p0}, Lorg/webrtc/videoengine/ViERenderer;->CreateLocalRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    .line 327
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 330
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 331
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->mainFrame:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->videoWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->powerManager:Landroid/os/PowerManager;

    const v2, 0x1000000a

    const-string v3, "com.csipsimple.videoCall"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->videoWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 339
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->videoWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->videoWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->videoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->videoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 346
    :cond_1
    return-void

    .line 334
    :cond_2
    const-string v1, "InCallActivity"

    const-string v2, "NO NEED TO Create Local Renderer"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized delayedQuit()V
    .locals 4

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "InCallActivity"

    const-string v1, "Releasing wake up lock"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/incall/CallProximityManager;->release(I)V

    .line 645
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->activeCallsGrid:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/incall/InCallInfoGrid;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallControls:Lcom/csipsimple/ui/incall/InCallControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/incall/InCallControls;->setVisibility(I)V

    .line 648
    const-string v0, "InCallActivity"

    const-string v1, "Start quit timer"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    new-instance v1, Lcom/csipsimple/ui/incall/InCallActivity$QuitTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/csipsimple/ui/incall/InCallActivity$QuitTimerTask;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/ui/incall/InCallActivity$QuitTimerTask;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :goto_0
    monitor-exit p0

    return-void

    .line 652
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private detachVideoPreview()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->mainFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->mainFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->videoWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->videoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->videoWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    .line 360
    :cond_2
    return-void
.end method

.method private getActiveCallInfo()Lcom/csipsimple/api/SipCallSession;
    .locals 5

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, "currentCallInfo":Lcom/csipsimple/api/SipCallSession;
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    if-nez v2, :cond_0

    .line 438
    const/4 v2, 0x0

    .line 443
    :goto_0
    return-object v2

    .line 440
    :cond_0
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_1

    move-object v2, v1

    .line 443
    goto :goto_0

    .line 440
    :cond_1
    aget-object v0, v3, v2

    .line 441
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-direct {p0, v0, v1}, Lcom/csipsimple/ui/incall/InCallActivity;->getPrioritaryCall(Lcom/csipsimple/api/SipCallSession;Lcom/csipsimple/api/SipCallSession;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v1

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getPrioritaryCall(Lcom/csipsimple/api/SipCallSession;Lcom/csipsimple/api/SipCallSession;)Lcom/csipsimple/api/SipCallSession;
    .locals 4
    .param p1, "call1"    # Lcom/csipsimple/api/SipCallSession;
    .param p2, "call2"    # Lcom/csipsimple/api/SipCallSession;

    .prologue
    .line 454
    if-nez p1, :cond_1

    .line 472
    .end local p2    # "call2":Lcom/csipsimple/api/SipCallSession;
    :cond_0
    :goto_0
    return-object p2

    .line 456
    .restart local p2    # "call2":Lcom/csipsimple/api/SipCallSession;
    :cond_1
    if-nez p2, :cond_2

    move-object p2, p1

    .line 457
    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {p1}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p2}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p2, p1

    .line 463
    goto :goto_0

    .line 466
    :cond_3
    invoke-virtual {p1}, Lcom/csipsimple/api/SipCallSession;->isLocalHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p2}, Lcom/csipsimple/api/SipCallSession;->isLocalHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p2, p1

    .line 469
    goto :goto_0

    .line 472
    :cond_4
    iget-wide v0, p1, Lcom/csipsimple/api/SipCallSession;->callStart:J

    iget-wide v2, p2, Lcom/csipsimple/api/SipCallSession;->callStart:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move-object p2, p1

    goto :goto_0
.end method

.method private showDialpad(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 665
    invoke-static {p1}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->newInstance(I)Lcom/csipsimple/ui/incall/DtmfDialogFragment;

    move-result-object v0

    .line 666
    .local v0, "newFragment":Lcom/csipsimple/ui/incall/DtmfDialogFragment;
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 667
    return-void
.end method


# virtual methods
.method public OnDtmf(III)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "keyCode"    # I
    .param p3, "dialTone"    # I

    .prologue
    .line 673
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    invoke-virtual {v1}, Lcom/csipsimple/ui/incall/CallProximityManager;->restartTimer()V

    .line 675
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    if-eqz v1, :cond_0

    .line 676
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    invoke-interface {v1, p1, p2}, Lcom/csipsimple/api/ISipService;->sendDtmf(II)I

    .line 679
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

    invoke-virtual {v1, p3}, Lcom/csipsimple/utils/DialingFeedback;->giveFeedback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InCallActivity"

    const-string v2, "Was not able to send dtmf tone"

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    .line 395
    packed-switch p1, :pswitch_data_0

    .line 426
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 397
    :pswitch_0
    if-ne p2, v5, :cond_0

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    if-eqz v4, :cond_0

    .line 398
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "callee":Ljava/lang/String;
    const-string v4, "call_id"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 400
    .local v2, "callId":I
    if-eq v2, v5, :cond_0

    .line 402
    :try_start_0
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    invoke-interface {v4, v2, v3}, Lcom/csipsimple/api/ISipService;->xfer(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v4

    goto :goto_0

    .line 410
    .end local v2    # "callId":I
    .end local v3    # "callee":Ljava/lang/String;
    :pswitch_1
    if-ne p2, v5, :cond_0

    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    if-eqz v4, :cond_0

    .line 411
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    .restart local v3    # "callee":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {p3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 414
    .local v0, "accountId":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 416
    :try_start_1
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    long-to-int v5, v0

    invoke-interface {v4, v3, v5}, Lcom/csipsimple/api/ISipService;->makeCall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 417
    :catch_1
    move-exception v4

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 376
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 377
    const-string v0, "InCallActivity"

    const-string v1, "Configuration changed"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->cameraPreview:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 382
    :cond_0
    new-instance v0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;)V

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 138
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const-string v2, "InCallActivity"

    const-string v3, "Create in call"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const v2, 0x7f03003f

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->setContentView(I)V

    .line 143
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "call_info"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/api/SipCallSession;

    .line 144
    .local v0, "initialSession":Lcom/csipsimple/api/SipCallSession;
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 145
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Lcom/csipsimple/api/SipCallSession;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    .line 146
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 144
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/csipsimple/service/SipService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v5}, Lcom/csipsimple/ui/incall/InCallActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 150
    new-instance v2, Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-direct {v2, p0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 154
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->powerManager:Landroid/os/PowerManager;

    .line 155
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->powerManager:Landroid/os/PowerManager;

    const v3, 0x3000000a

    .line 157
    const-string v4, "com.csipsimple.onIncomingCall"

    .line 155
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 161
    invoke-virtual {p0, v5}, Lcom/csipsimple/ui/incall/InCallActivity;->takeKeyEvents(Z)V

    .line 164
    const v2, 0x7f0600c2

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->mainFrame:Landroid/view/ViewGroup;

    .line 165
    const v2, 0x7f0600c7

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/ui/incall/InCallControls;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallControls:Lcom/csipsimple/ui/incall/InCallControls;

    .line 166
    const v2, 0x7f0600c6

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/ui/incall/InCallAnswerControls;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/csipsimple/ui/incall/InCallAnswerControls;

    .line 167
    const v2, 0x7f0600c4

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/ui/incall/InCallInfoGrid;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->activeCallsGrid:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    .line 168
    const v2, 0x7f0600c5

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/ui/incall/InCallInfoGrid;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->heldCallsGrid:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    .line 171
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallActivity;->attachVideoPreview()V

    .line 173
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallControls:Lcom/csipsimple/ui/incall/InCallControls;

    invoke-virtual {v2, p0}, Lcom/csipsimple/ui/incall/InCallControls;->setOnTriggerListener(Lcom/csipsimple/ui/incall/IOnCallActionTrigger;)V

    .line 174
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/csipsimple/ui/incall/InCallAnswerControls;

    invoke-virtual {v2, p0}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setOnTriggerListener(Lcom/csipsimple/ui/incall/IOnCallActionTrigger;)V

    .line 176
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->activeCallsAdapter:Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    if-nez v2, :cond_0

    .line 177
    new-instance v2, Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    invoke-direct {v2, p0, v5}, Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;Z)V

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->activeCallsAdapter:Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->activeCallsGrid:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity;->activeCallsAdapter:Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    invoke-virtual {v2, v3}, Lcom/csipsimple/ui/incall/InCallInfoGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->heldCallsAdapter:Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    if-nez v2, :cond_1

    .line 183
    new-instance v2, Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    invoke-direct {v2, p0, v6}, Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;Z)V

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->heldCallsAdapter:Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->heldCallsGrid:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity;->heldCallsAdapter:Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    invoke-virtual {v2, v3}, Lcom/csipsimple/ui/incall/InCallInfoGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    const v2, 0x7f0600c8

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/widgets/ScreenLocker;

    .line 189
    .local v1, "lockOverlay":Lcom/csipsimple/widgets/ScreenLocker;
    invoke-virtual {v1, p0}, Lcom/csipsimple/widgets/ScreenLocker;->setActivity(Landroid/app/Activity;)V

    .line 190
    invoke-virtual {v1, p0}, Lcom/csipsimple/widgets/ScreenLocker;->setOnLeftRightListener(Lcom/csipsimple/widgets/IOnLeftRightChoice;)V

    .line 207
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.csipsimple.service.CALL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/ui/incall/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.csipsimple.service.MEDIA_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/ui/incall/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.csipsimple.service.SHOW_SAS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/ui/incall/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    new-instance v2, Lcom/csipsimple/ui/incall/CallProximityManager;

    invoke-direct {v2, p0, p0, v1}, Lcom/csipsimple/ui/incall/CallProximityManager;-><init>(Landroid/content/Context;Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;Lcom/csipsimple/widgets/ScreenLocker;)V

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    .line 212
    invoke-static {p0}, Lcom/csipsimple/utils/keyguard/KeyguardWrapper;->getKeyguardManager(Landroid/app/Activity;)Lcom/csipsimple/utils/keyguard/KeyguardWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->keyguardManager:Lcom/csipsimple/utils/keyguard/KeyguardWrapper;

    .line 214
    new-instance v2, Lcom/csipsimple/utils/DialingFeedback;

    invoke-direct {v2, p0, v5}, Lcom/csipsimple/utils/DialingFeedback;-><init>(Landroid/app/Activity;Z)V

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

    .line 216
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v3, "prevent_screen_rotation"

    invoke-virtual {v2, v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    invoke-virtual {p0, v5}, Lcom/csipsimple/ui/incall/InCallActivity;->setRequestedOrientation(I)V

    .line 220
    :cond_2
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    if-nez v2, :cond_3

    .line 221
    new-instance v2, Ljava/util/Timer;

    const-string v3, "Quit-timer"

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v3, "auto_detect_speaker"

    invoke-virtual {v2, v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->useAutoDetectSpeaker:Z

    .line 227
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallActivity;->applyTheme()V

    .line 228
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    invoke-virtual {v2}, Lcom/csipsimple/ui/incall/CallProximityManager;->startTracking()V

    .line 230
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallControls:Lcom/csipsimple/ui/incall/InCallControls;

    invoke-virtual {v2, v0}, Lcom/csipsimple/ui/incall/InCallControls;->setCallState(Lcom/csipsimple/api/SipCallSession;)V

    .line 231
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/csipsimple/ui/incall/InCallAnswerControls;

    invoke-virtual {v2, v0}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setCallState(Lcom/csipsimple/api/SipCallSession;)V

    .line 232
    return-void

    .line 144
    .end local v1    # "lockOverlay":Lcom/csipsimple/widgets/ScreenLocker;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->infoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->infoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 280
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 281
    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    .line 292
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    :goto_0
    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    .line 297
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    invoke-virtual {v0}, Lcom/csipsimple/ui/incall/CallProximityManager;->stopTracking()V

    .line 301
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/incall/CallProximityManager;->release(I)V

    .line 303
    :try_start_1
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    :goto_1
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->activeCallsGrid:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->activeCallsGrid:Lcom/csipsimple/ui/incall/InCallInfoGrid;

    invoke-virtual {v0}, Lcom/csipsimple/ui/incall/InCallInfoGrid;->terminate()V

    .line 312
    :cond_3
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallActivity;->detachVideoPreview()V

    .line 316
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 317
    return-void

    .line 304
    :catch_0
    move-exception v0

    goto :goto_1

    .line 293
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 691
    const-string v4, "InCallActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Key down : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    sparse-switch p1, :sswitch_data_0

    .line 729
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :cond_1
    :goto_0
    :sswitch_0
    return v3

    .line 698
    :sswitch_1
    const-string v4, "InCallActivity"

    const-string v5, "onKeyDown: Volume button pressed"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const/4 v0, 0x1

    .line 700
    .local v0, "action":I
    const/16 v4, 0x19

    if-ne p1, v4, :cond_2

    .line 701
    const/4 v0, -0x1

    .line 705
    :cond_2
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallActivity;->getActiveCallInfo()Lcom/csipsimple/api/SipCallSession;

    move-result-object v1

    .line 707
    .local v1, "currentCallInfo":Lcom/csipsimple/api/SipCallSession;
    if-nez v1, :cond_3

    iget-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->serviceConnected:Z

    if-nez v4, :cond_0

    .line 711
    :cond_3
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    if-eqz v4, :cond_1

    .line 713
    :try_start_0
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    const/4 v5, 0x1

    invoke-interface {v4, v1, v0, v5}, Lcom/csipsimple/api/ISipService;->adjustVolume(Lcom/csipsimple/api/SipCallSession;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v2

    .line 715
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "InCallActivity"

    const-string v5, "Can\'t adjust volume"

    invoke-static {v4, v5, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 722
    .end local v0    # "action":I
    .end local v1    # "currentCallInfo":Lcom/csipsimple/api/SipCallSession;
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_2
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/csipsimple/ui/incall/InCallAnswerControls;

    invoke-virtual {v3, p1, p2}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 692
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 734
    const-string v0, "InCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key up : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    sparse-switch p1, :sswitch_data_0

    .line 745
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 740
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 742
    :sswitch_1
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/csipsimple/ui/incall/InCallAnswerControls;

    invoke-virtual {v0, p1, p2}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 735
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLeftRightChoice(I)V
    .locals 3
    .param p1, "whichHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 1039
    packed-switch p1, :pswitch_data_0

    .line 1053
    :goto_0
    return-void

    .line 1041
    :pswitch_0
    const-string v0, "InCallActivity"

    const-string v1, "We unlock"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    invoke-virtual {v0, v2}, Lcom/csipsimple/ui/incall/CallProximityManager;->release(I)V

    .line 1043
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    invoke-virtual {v0}, Lcom/csipsimple/ui/incall/CallProximityManager;->restartTimer()V

    goto :goto_0

    .line 1046
    :pswitch_1
    const-string v0, "InCallActivity"

    const-string v1, "We clear the call"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallActivity;->getActiveCallInfo()Lcom/csipsimple/api/SipCallSession;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/ui/incall/InCallActivity;->onTrigger(ILcom/csipsimple/api/SipCallSession;)V

    .line 1048
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    invoke-virtual {v0, v2}, Lcom/csipsimple/ui/incall/CallProximityManager;->release(I)V

    goto :goto_0

    .line 1039
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/incall/InCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 366
    const-string v0, "InCallActivity"

    const-string v1, "New intent is launched"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 262
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

    invoke-virtual {v0}, Lcom/csipsimple/utils/DialingFeedback;->pause()V

    .line 263
    return-void
.end method

.method public onProximityTrackingChanged(Z)V
    .locals 3
    .param p1, "acquired"    # Z

    .prologue
    .line 1352
    iget-boolean v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->useAutoDetectSpeaker:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    if-eqz v1, :cond_1

    .line 1353
    if-eqz p1, :cond_2

    .line 1354
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->lastMediaState:Lcom/csipsimple/api/MediaState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v1, v1, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    if-eqz v1, :cond_1

    .line 1356
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/csipsimple/api/ISipService;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :cond_1
    :goto_0
    return-void

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InCallActivity"

    const-string v2, "Can\'t run speaker change"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->lastMediaState:Lcom/csipsimple/api/MediaState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v1, v1, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    if-nez v1, :cond_1

    .line 1364
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/csipsimple/api/ISipService;->setSpeakerphoneOn(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1365
    :catch_1
    move-exception v0

    .line 1366
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "InCallActivity"

    const-string v2, "Can\'t run speaker change"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 252
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

    invoke-virtual {v0}, Lcom/csipsimple/utils/DialingFeedback;->resume()V

    .line 255
    new-instance v0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;)V

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "InCallActivity"

    const-string v1, "Start in call"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 240
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->keyguardManager:Lcom/csipsimple/utils/keyguard/KeyguardWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/keyguard/KeyguardWrapper;->unlock()V

    .line 241
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 268
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity;->keyguardManager:Lcom/csipsimple/utils/keyguard/KeyguardWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/keyguard/KeyguardWrapper;->lock()V

    .line 269
    return-void
.end method

.method public onTrigger(ILcom/csipsimple/api/SipCallSession;)V
    .locals 22
    .param p1, "whichAction"    # I
    .param p2, "call"    # Lcom/csipsimple/api/SipCallSession;

    .prologue
    .line 826
    const/16 v16, 0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x3

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 827
    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0xa

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 828
    const/16 v16, 0xb

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x10

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 829
    const/16 v16, 0x11

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x12

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 830
    const/16 v16, 0xe

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0xf

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 831
    const/16 v16, 0x13

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x14

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 833
    :cond_0
    if-nez p2, :cond_2

    .line 834
    const-string v16, "InCallActivity"

    const-string v17, "Try to do an action on a null call !!!"

    invoke-static/range {v16 .. v17}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_1
    :goto_0
    return-void

    .line 837
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 838
    const-string v16, "InCallActivity"

    const-string v17, "Try to do an action on an invalid call !!!"

    invoke-static/range {v16 .. v17}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->proximityManager:Lcom/csipsimple/ui/incall/CallProximityManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/csipsimple/ui/incall/CallProximityManager;->restartTimer()V

    .line 847
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 881
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v17

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Lcom/csipsimple/api/ISipService;->hangup(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v6

    .line 1031
    .local v6, "e":Landroid/os/RemoteException;
    const-string v16, "InCallActivity"

    const-string v17, "Was not able to call service method"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 849
    .end local v6    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 850
    const-string v16, "InCallActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Answer call "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const/4 v13, 0x0

    .line 855
    .local v13, "shouldHoldOthers":Z
    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 856
    const/4 v13, 0x1

    .line 859
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v17

    const/16 v18, 0xc8

    invoke-interface/range {v16 .. v18}, Lcom/csipsimple/api/ISipService;->answer(II)I

    .line 863
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v5, v17, v16

    .line 866
    .local v5, "callInfo":Lcom/csipsimple/api/SipCallSession;
    const/16 v19, 0x5

    invoke-virtual {v5}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 867
    invoke-virtual {v5}, Lcom/csipsimple/api/SipCallSession;->isLocalHeld()Z

    move-result v19

    if-nez v19, :cond_5

    .line 868
    invoke-virtual {v5}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 870
    const-string v19, "InCallActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Hold call "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v20

    invoke-interface/range {v19 .. v20}, Lcom/csipsimple/api/ISipService;->hold(I)I

    .line 864
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 888
    .end local v5    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .end local v13    # "shouldHoldOthers":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v17, v0

    const/16 v16, 0x4

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/csipsimple/api/ISipService;->setMicrophoneMute(Z)V

    goto/16 :goto_0

    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    .line 895
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 896
    const-string v16, "InCallActivity"

    const-string v17, "Manually switch to speaker"

    invoke-static/range {v16 .. v17}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/csipsimple/ui/incall/InCallActivity;->useAutoDetectSpeaker:Z

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v17, v0

    const/16 v16, 0x8

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/csipsimple/api/ISipService;->setSpeakerphoneOn(Z)V

    goto/16 :goto_0

    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .line 904
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v17, v0

    const/16 v16, 0x6

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/csipsimple/api/ISipService;->setBluetoothOn(Z)V

    goto/16 :goto_0

    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    .line 910
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/csipsimple/ui/incall/InCallActivity;->showDialpad(I)V

    goto/16 :goto_0

    .line 914
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->infoDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->infoDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->dismiss()V

    .line 918
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/csipsimple/api/ISipService;->showCallInfosDialog(I)Ljava/lang/String;

    move-result-object v8

    .line 920
    .local v8, "infos":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 921
    .local v3, "buf":Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 923
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 924
    new-instance v15, Landroid/text/style/TextAppearanceSpan;

    .line 925
    const v16, 0x1030046

    .line 924
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 926
    .local v15, "textSmallSpan":Landroid/text/style/TextAppearanceSpan;
    const/16 v16, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v17

    .line 927
    const/16 v18, 0x21

    .line 926
    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v15, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 929
    const v16, 0x108009b

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 930
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 931
    const v17, 0x7f0b01ef

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 932
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 929
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/ui/incall/InCallActivity;->infoDialog:Landroid/app/AlertDialog;

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->infoDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 938
    .end local v3    # "buf":Landroid/text/SpannableStringBuilder;
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "infos":Ljava/lang/String;
    .end local v15    # "textSmallSpan":Landroid/text/style/TextAppearanceSpan;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 941
    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 942
    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v16

    if-nez v16, :cond_b

    .line 943
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v17

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/csipsimple/api/ISipService;->reinvite(IZ)I

    goto/16 :goto_0

    .line 945
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/csipsimple/api/ISipService;->hold(I)I

    goto/16 :goto_0

    .line 951
    :pswitch_8
    new-instance v16, Landroid/content/Intent;

    const-class v17, Lcom/csipsimple/ui/incall/InCallMediaControl;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/incall/InCallActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 955
    :pswitch_9
    new-instance v10, Landroid/content/Intent;

    const-class v16, Lcom/csipsimple/ui/PickupSipUri;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 956
    .local v10, "pickupIntent":Landroid/content/Intent;
    const-string v16, "call_id"

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 957
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Lcom/csipsimple/ui/incall/InCallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 961
    .end local v10    # "pickupIntent":Landroid/content/Intent;
    :pswitch_a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v12, "remoteCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipCallSession;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_d

    .line 971
    :cond_c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 972
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 973
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    .line 974
    .local v14, "simpleAdapter":[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-lt v7, v0, :cond_f

    .line 977
    const/16 v16, -0x1

    new-instance v17, Lcom/csipsimple/ui/incall/InCallActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/csipsimple/ui/incall/InCallActivity$3;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/api/SipCallSession;Ljava/util/ArrayList;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 991
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 992
    const v17, 0x7f0b01c8

    new-instance v18, Lcom/csipsimple/ui/incall/InCallActivity$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/csipsimple/ui/incall/InCallActivity$4;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 998
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 963
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "i":I
    .end local v14    # "simpleAdapter":[Ljava/lang/CharSequence;
    :cond_d
    aget-object v11, v17, v16

    .line 965
    .local v11, "remoteCall":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v11}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    invoke-virtual {v11}, Lcom/csipsimple/api/SipCallSession;->isOngoing()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 966
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 975
    .end local v11    # "remoteCall":Lcom/csipsimple/api/SipCallSession;
    .restart local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v7    # "i":I
    .restart local v14    # "simpleAdapter":[Ljava/lang/CharSequence;
    :cond_f
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/csipsimple/api/SipCallSession;

    invoke-virtual/range {v16 .. v16}, Lcom/csipsimple/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v7

    .line 974
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1004
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "i":I
    .end local v12    # "remoteCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipCallSession;>;"
    .end local v14    # "simpleAdapter":[Ljava/lang/CharSequence;
    :pswitch_b
    new-instance v10, Landroid/content/Intent;

    const-class v16, Lcom/csipsimple/ui/PickupSipUri;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1005
    .restart local v10    # "pickupIntent":Landroid/content/Intent;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Lcom/csipsimple/ui/incall/InCallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1009
    .end local v10    # "pickupIntent":Landroid/content/Intent;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/csipsimple/api/ISipService;->startRecording(I)V

    goto/16 :goto_0

    .line 1015
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v17

    invoke-interface/range {v16 .. v17}, Lcom/csipsimple/api/ISipService;->stopRecording(I)V

    goto/16 :goto_0

    .line 1022
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 1023
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1024
    .local v9, "opts":Landroid/os/Bundle;
    const-string v17, "opt_call_video"

    const/16 v16, 0x13

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_10

    const/16 v16, 0x1

    :goto_7
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/incall/InCallActivity;->service:Lcom/csipsimple/api/ISipService;

    move-object/from16 v16, v0

    invoke-virtual/range {p2 .. p2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lcom/csipsimple/api/ISipService;->updateCallOptions(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1024
    :cond_10
    const/16 v16, 0x0

    goto :goto_7

    .line 847
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_5
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public shouldActivateProximity()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1314
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->lastMediaState:Lcom/csipsimple/api/MediaState;

    if-eqz v4, :cond_2

    .line 1315
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v4, v4, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    if-eqz v4, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return v5

    .line 1318
    :cond_1
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->lastMediaState:Lcom/csipsimple/api/MediaState;

    iget-boolean v4, v4, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->useAutoDetectSpeaker:Z

    if-eqz v4, :cond_0

    .line 1324
    :cond_2
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    if-eqz v4, :cond_0

    .line 1328
    const/4 v2, 0x1

    .line 1329
    .local v2, "isValidCallState":Z
    const/4 v1, 0x0

    .line 1330
    .local v1, "count":I
    iget-object v8, p0, Lcom/csipsimple/ui/incall/InCallActivity;->callsInfo:[Lcom/csipsimple/api/SipCallSession;

    array-length v9, v8

    move v7, v5

    :goto_1
    if-lt v7, v9, :cond_3

    .line 1343
    if-eqz v1, :cond_0

    move v5, v2

    .line 1347
    goto :goto_0

    .line 1330
    :cond_3
    aget-object v0, v8, v7

    .line 1331
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1332
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v3

    .line 1335
    .local v3, "state":I
    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    .line 1336
    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 1337
    if-eq v3, v6, :cond_6

    .line 1338
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    move v4, v5

    :goto_2
    and-int/2addr v2, v4

    .line 1340
    add-int/lit8 v1, v1, 0x1

    .line 1330
    .end local v3    # "state":I
    :cond_5
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1

    .restart local v3    # "state":I
    :cond_6
    move v4, v6

    .line 1338
    goto :goto_2
.end method

.class public Lcom/csipsimple/utils/audio/AudioFocus3;
.super Lcom/csipsimple/utils/audio/AudioFocusWrapper;
.source "AudioFocus3.java"


# static fields
.field static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final THIS_FILE:Ljava/lang/String; = "AudioFocus3"

.field static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private headsetButtonReceiver:Lcom/csipsimple/service/HeadsetButtonReceiver;

.field private isFocused:Z

.field private isMusicActive:Z

.field private service:Lcom/csipsimple/service/SipService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/csipsimple/utils/audio/AudioFocusWrapper;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->isMusicActive:Z

    .line 44
    iput-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->isFocused:Z

    .line 33
    return-void
.end method

.method private pauseMusic()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->isMusicActive:Z

    .line 71
    iget-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->isMusicActive:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "integrate_with_native_music"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->service:Lcom/csipsimple/service/SipService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    :cond_0
    return-void
.end method

.method private registerHeadsetButton()V
    .locals 3

    .prologue
    .line 85
    const-string v1, "AudioFocus3"

    const-string v2, "Register media button"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 88
    iget-object v1, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->headsetButtonReceiver:Lcom/csipsimple/service/HeadsetButtonReceiver;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/csipsimple/service/HeadsetButtonReceiver;

    invoke-direct {v1}, Lcom/csipsimple/service/HeadsetButtonReceiver;-><init>()V

    iput-object v1, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->headsetButtonReceiver:Lcom/csipsimple/service/HeadsetButtonReceiver;

    .line 90
    iget-object v1, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getUAStateReceiver()Lcom/csipsimple/pjsip/UAStateReceiver;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/service/HeadsetButtonReceiver;->setService(Lcom/csipsimple/pjsip/UAStateReceiver;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->service:Lcom/csipsimple/service/SipService;

    iget-object v2, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->headsetButtonReceiver:Lcom/csipsimple/service/HeadsetButtonReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/csipsimple/service/SipService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method private restartMusic()V
    .locals 3

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->isMusicActive:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "integrate_with_native_music"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->service:Lcom/csipsimple/service/SipService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    :cond_0
    return-void
.end method

.method private unregisterHeadsetButton()V
    .locals 2

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->service:Lcom/csipsimple/service/SipService;

    iget-object v1, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->headsetButtonReceiver:Lcom/csipsimple/service/HeadsetButtonReceiver;

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/csipsimple/service/HeadsetButtonReceiver;->setService(Lcom/csipsimple/pjsip/UAStateReceiver;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->headsetButtonReceiver:Lcom/csipsimple/service/HeadsetButtonReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public focus()V
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->isFocused:Z

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/csipsimple/utils/audio/AudioFocus3;->pauseMusic()V

    .line 55
    invoke-direct {p0}, Lcom/csipsimple/utils/audio/AudioFocus3;->registerHeadsetButton()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->isFocused:Z

    .line 58
    :cond_0
    return-void
.end method

.method public init(Lcom/csipsimple/service/SipService;Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "aService"    # Lcom/csipsimple/service/SipService;
    .param p2, "manager"    # Landroid/media/AudioManager;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->service:Lcom/csipsimple/service/SipService;

    .line 49
    iput-object p2, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->audioManager:Landroid/media/AudioManager;

    .line 50
    return-void
.end method

.method public unFocus()V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->isFocused:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/csipsimple/utils/audio/AudioFocus3;->restartMusic()V

    .line 63
    invoke-direct {p0}, Lcom/csipsimple/utils/audio/AudioFocus3;->unregisterHeadsetButton()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus3;->isFocused:Z

    .line 66
    :cond_0
    return-void
.end method

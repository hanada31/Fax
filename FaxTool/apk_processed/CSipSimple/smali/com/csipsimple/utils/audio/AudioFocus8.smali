.class public Lcom/csipsimple/utils/audio/AudioFocus8;
.super Lcom/csipsimple/utils/audio/AudioFocusWrapper;
.source "AudioFocus8.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "AudioFocus 8"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private focusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private headsetButtonReceiverName:Landroid/content/ComponentName;

.field private isFocused:Z

.field private service:Lcom/csipsimple/service/SipService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/csipsimple/utils/audio/AudioFocusWrapper;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->isFocused:Z

    .line 46
    new-instance v0, Lcom/csipsimple/utils/audio/AudioFocus8$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/audio/AudioFocus8$1;-><init>(Lcom/csipsimple/utils/audio/AudioFocus8;)V

    iput-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->focusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 36
    return-void
.end method


# virtual methods
.method public focus()V
    .locals 4

    .prologue
    .line 63
    const-string v0, "AudioFocus 8"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Focus again "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->isFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->isFocused:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getUAStateReceiver()Lcom/csipsimple/pjsip/UAStateReceiver;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/service/HeadsetButtonReceiver;->setService(Lcom/csipsimple/pjsip/UAStateReceiver;)V

    .line 66
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->headsetButtonReceiverName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 67
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->focusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 68
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getInCallStream()I

    move-result v2

    const/4 v3, 0x2

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->isFocused:Z

    .line 71
    :cond_0
    return-void
.end method

.method public init(Lcom/csipsimple/service/SipService;Landroid/media/AudioManager;)V
    .locals 3
    .param p1, "aService"    # Lcom/csipsimple/service/SipService;
    .param p2, "manager"    # Landroid/media/AudioManager;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->service:Lcom/csipsimple/service/SipService;

    .line 56
    iput-object p2, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->audioManager:Landroid/media/AudioManager;

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 58
    const-class v2, Lcom/csipsimple/service/HeadsetButtonReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->headsetButtonReceiverName:Landroid/content/ComponentName;

    .line 59
    return-void
.end method

.method public unFocus()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->isFocused:Z

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/csipsimple/service/HeadsetButtonReceiver;->setService(Lcom/csipsimple/pjsip/UAStateReceiver;)V

    .line 76
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->headsetButtonReceiverName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 78
    iget-object v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->focusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/utils/audio/AudioFocus8;->isFocused:Z

    .line 81
    :cond_0
    return-void
.end method

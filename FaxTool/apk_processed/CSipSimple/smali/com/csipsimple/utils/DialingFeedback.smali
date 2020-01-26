.class public Lcom/csipsimple/utils/DialingFeedback;
.super Ljava/lang/Object;
.source "DialingFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/DialingFeedback$StopTimerTask;,
        Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;
    }
.end annotation


# static fields
.field private static final HAPTIC_LENGTH_MS:I = 0x32

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x50


# instance fields
.field private context:Landroid/app/Activity;

.field private dialPressTone:Z

.field private dialPressVibrate:Z

.field private inCall:Z

.field private prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

.field private ringerMode:I

.field private toneGenerator:Landroid/media/ToneGenerator;

.field private toneGeneratorLock:Ljava/lang/Object;

.field private toneStream:I

.field private toneTimer:Ljava/util/Timer;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "inCall"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGeneratorLock:Ljava/lang/Object;

    .line 56
    iput-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->vibrator:Landroid/os/Vibrator;

    .line 57
    iput-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->toneTimer:Ljava/util/Timer;

    .line 60
    iput-boolean v0, p0, Lcom/csipsimple/utils/DialingFeedback;->dialPressTone:Z

    .line 61
    iput-boolean v0, p0, Lcom/csipsimple/utils/DialingFeedback;->dialPressVibrate:Z

    .line 67
    iput-object p1, p0, Lcom/csipsimple/utils/DialingFeedback;->context:Landroid/app/Activity;

    .line 68
    iput-boolean p2, p0, Lcom/csipsimple/utils/DialingFeedback;->inCall:Z

    .line 69
    if-eqz p2, :cond_0

    :goto_0
    iput v0, p0, Lcom/csipsimple/utils/DialingFeedback;->toneStream:I

    .line 70
    new-instance v0, Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-direct {v0, p1}, Lcom/csipsimple/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    .line 71
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/csipsimple/utils/DialingFeedback;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/utils/DialingFeedback;)Landroid/media/ToneGenerator;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method


# virtual methods
.method public giveFeedback(I)V
    .locals 5
    .param p1, "tone"    # I

    .prologue
    const-wide/16 v2, 0x32

    .line 136
    iget v1, p0, Lcom/csipsimple/utils/DialingFeedback;->ringerMode:I

    packed-switch v1, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-boolean v1, p0, Lcom/csipsimple/utils/DialingFeedback;->dialPressVibrate:Z

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/csipsimple/utils/DialingFeedback;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/csipsimple/utils/DialingFeedback;->dialPressTone:Z

    if-eqz v1, :cond_0

    .line 142
    new-instance v0, Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;

    invoke-direct {v0, p0, p1}, Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;-><init>(Lcom/csipsimple/utils/DialingFeedback;I)V

    .line 143
    .local v0, "threadedTone":Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;
    invoke-virtual {v0}, Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;->start()V

    .line 144
    iget-object v1, p0, Lcom/csipsimple/utils/DialingFeedback;->toneTimer:Ljava/util/Timer;

    new-instance v2, Lcom/csipsimple/utils/DialingFeedback$StopTimerTask;

    invoke-direct {v2, p0}, Lcom/csipsimple/utils/DialingFeedback$StopTimerTask;-><init>(Lcom/csipsimple/utils/DialingFeedback;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 148
    .end local v0    # "threadedTone":Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;
    :pswitch_1
    iget-boolean v1, p0, Lcom/csipsimple/utils/DialingFeedback;->dialPressVibrate:Z

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/csipsimple/utils/DialingFeedback;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hapticFeedback()V
    .locals 3

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/csipsimple/utils/DialingFeedback;->dialPressVibrate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/csipsimple/utils/DialingFeedback;->ringerMode:I

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 161
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->toneTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->toneTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 127
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->toneTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/utils/DialingFeedback;->toneTimer:Ljava/util/Timer;

    .line 120
    :cond_1
    monitor-exit v1

    .line 132
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    iget-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {v2}, Lcom/csipsimple/utils/PreferencesWrapper;->dialPressTone()Z

    move-result v2

    iput-boolean v2, p0, Lcom/csipsimple/utils/DialingFeedback;->dialPressTone:Z

    .line 76
    iget-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {v2}, Lcom/csipsimple/utils/PreferencesWrapper;->dialPressVibrate()Z

    move-result v2

    iput-boolean v2, p0, Lcom/csipsimple/utils/DialingFeedback;->dialPressVibrate:Z

    .line 78
    iget-boolean v2, p0, Lcom/csipsimple/utils/DialingFeedback;->dialPressTone:Z

    if-eqz v2, :cond_3

    .line 80
    iget-object v3, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->toneTimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 82
    new-instance v2, Ljava/util/Timer;

    const-string v4, "Dialtone-timer"

    invoke-direct {v2, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->toneTimer:Ljava/util/Timer;

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 86
    :try_start_1
    new-instance v2, Landroid/media/ToneGenerator;

    iget v4, p0, Lcom/csipsimple/utils/DialingFeedback;->toneStream:I

    const/16 v5, 0x50

    invoke-direct {v2, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;

    .line 88
    iget-boolean v2, p0, Lcom/csipsimple/utils/DialingFeedback;->inCall:Z

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->context:Landroid/app/Activity;

    iget v4, p0, Lcom/csipsimple/utils/DialingFeedback;->toneStream:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setVolumeControlStream(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :goto_1
    iget-boolean v2, p0, Lcom/csipsimple/utils/DialingFeedback;->dialPressVibrate:Z

    if-eqz v2, :cond_4

    .line 104
    iget-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->vibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->context:Landroid/app/Activity;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->vibrator:Landroid/os/Vibrator;

    .line 112
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->context:Landroid/app/Activity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 113
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/utils/DialingFeedback;->ringerMode:I

    .line 115
    return-void

    .line 91
    .end local v0    # "am":Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 98
    :cond_3
    iput-object v6, p0, Lcom/csipsimple/utils/DialingFeedback;->toneTimer:Ljava/util/Timer;

    .line 99
    iput-object v6, p0, Lcom/csipsimple/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 108
    :cond_4
    iput-object v6, p0, Lcom/csipsimple/utils/DialingFeedback;->vibrator:Landroid/os/Vibrator;

    goto :goto_2
.end method

.class public Lcom/csipsimple/utils/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/Ringer$RingerThread;,
        Lcom/csipsimple/utils/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static final PAUSE_LENGTH:I = 0x3e8

.field private static final THIS_FILE:Ljava/lang/String; = "Ringer"

.field private static final VIBRATE_LENGTH:I = 0x3e8


# instance fields
.field context:Landroid/content/Context;

.field customRingtoneUri:Landroid/net/Uri;

.field ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

.field ringtone:Landroid/media/Ringtone;

.field vibrator:Landroid/os/Vibrator;

.field vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    .line 56
    iput-object p1, p0, Lcom/csipsimple/utils/Ringer;->context:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/csipsimple/utils/Ringer;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/csipsimple/utils/Ringer;->vibrator:Landroid/os/Vibrator;

    .line 58
    return-void
.end method

.method private getRingtone(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Ringtone;
    .locals 5
    .param p1, "remoteContact"    # Ljava/lang/String;
    .param p2, "defaultRingtone"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 242
    .local v1, "ringtoneUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/csipsimple/utils/Ringer;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/csipsimple/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;

    move-result-object v0

    .line 244
    .local v0, "callerInfo":Lcom/csipsimple/models/CallerInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/csipsimple/models/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/csipsimple/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 245
    const-string v2, "Ringer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found ringtone for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, v0, Lcom/csipsimple/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/utils/Ringer;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    return-object v2
.end method

.method private stopRinger()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    invoke-virtual {v0}, Lcom/csipsimple/utils/Ringer$RingerThread;->interrupt()V

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/utils/Ringer$RingerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    .line 151
    :cond_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private stopVibrator()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    invoke-virtual {v0}, Lcom/csipsimple/utils/Ringer$VibratorThread;->interrupt()V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/utils/Ringer$VibratorThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    .line 163
    :cond_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public isRinging()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ring(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "remoteContact"    # Ljava/lang/String;
    .param p2, "defaultRingtone"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 65
    const-string v3, "Ringer"

    const-string v4, "==> ring() called..."

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 73
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-direct {p0, p1, p2}, Lcom/csipsimple/utils/Ringer;->getRingtone(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Lcom/csipsimple/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    .line 76
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 77
    .local v1, "ringerMode":I
    if-nez v1, :cond_0

    .line 78
    const-string v3, "Ringer"

    const-string v4, "skipping ring and vibrate because profile is Silent"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    monitor-exit p0

    .line 115
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 84
    .local v2, "vibrateSetting":I
    const-string v3, "Ringer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    if-nez v3, :cond_2

    .line 86
    if-eq v2, v6, :cond_1

    .line 87
    if-ne v1, v6, :cond_2

    .line 88
    :cond_1
    new-instance v3, Lcom/csipsimple/utils/Ringer$VibratorThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/csipsimple/utils/Ringer$VibratorThread;-><init>(Lcom/csipsimple/utils/Ringer;Lcom/csipsimple/utils/Ringer$VibratorThread;)V

    iput-object v3, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    .line 89
    const-string v3, "Ringer"

    const-string v4, "Starting vibrator..."

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    invoke-virtual {v3}, Lcom/csipsimple/utils/Ringer$VibratorThread;->start()V

    .line 94
    :cond_2
    if-eq v1, v6, :cond_3

    .line 95
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 96
    :cond_3
    const-string v3, "Ringer"

    const-string v4, "skipping ring because profile is Vibrate OR because volume is zero"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    monitor-exit p0

    goto :goto_0

    .line 67
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "ringerMode":I
    .end local v2    # "vibrateSetting":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 101
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v1    # "ringerMode":I
    .restart local v2    # "vibrateSetting":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    if-nez v3, :cond_5

    .line 102
    const-string v3, "Ringer"

    const-string v4, "No ringtone available - do not ring"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    monitor-exit p0

    goto :goto_0

    .line 106
    :cond_5
    const-string v3, "Ringer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting ring with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/csipsimple/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    iget-object v6, p0, Lcom/csipsimple/utils/Ringer;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    if-nez v3, :cond_6

    .line 109
    new-instance v3, Lcom/csipsimple/utils/Ringer$RingerThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/csipsimple/utils/Ringer$RingerThread;-><init>(Lcom/csipsimple/utils/Ringer;Lcom/csipsimple/utils/Ringer$RingerThread;)V

    iput-object v3, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    .line 110
    const-string v3, "Ringer"

    const-string v4, "Starting ringer..."

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 112
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    invoke-virtual {v3}, Lcom/csipsimple/utils/Ringer$RingerThread;->start()V

    .line 67
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public stopRing()V
    .locals 2

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    const-string v0, "Ringer"

    const-string v1, "==> stopRing() called..."

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/csipsimple/utils/Ringer;->stopVibrator()V

    .line 137
    invoke-direct {p0}, Lcom/csipsimple/utils/Ringer;->stopRinger()V

    .line 133
    monitor-exit p0

    .line 139
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateRingerMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 167
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 168
    .local v0, "audioManager":Landroid/media/AudioManager;
    monitor-enter p0

    .line 169
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 171
    .local v1, "ringerMode":I
    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/csipsimple/utils/Ringer;->stopRing()V

    .line 173
    monitor-exit p0

    .line 199
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 179
    .local v2, "vibrateSetting":I
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    if-nez v3, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v1, v5, :cond_2

    .line 180
    :cond_1
    new-instance v3, Lcom/csipsimple/utils/Ringer$VibratorThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/csipsimple/utils/Ringer$VibratorThread;-><init>(Lcom/csipsimple/utils/Ringer;Lcom/csipsimple/utils/Ringer$VibratorThread;)V

    iput-object v3, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    .line 181
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->vibratorThread:Lcom/csipsimple/utils/Ringer$VibratorThread;

    invoke-virtual {v3}, Lcom/csipsimple/utils/Ringer$VibratorThread;->start()V

    .line 185
    :cond_2
    if-eq v1, v5, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 186
    :cond_3
    invoke-direct {p0}, Lcom/csipsimple/utils/Ringer;->stopRinger()V

    .line 187
    monitor-exit p0

    goto :goto_0

    .line 168
    .end local v1    # "ringerMode":I
    .end local v2    # "vibrateSetting":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 191
    .restart local v1    # "ringerMode":I
    .restart local v2    # "vibrateSetting":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    if-nez v3, :cond_5

    .line 192
    new-instance v3, Lcom/csipsimple/utils/Ringer$RingerThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/csipsimple/utils/Ringer$RingerThread;-><init>(Lcom/csipsimple/utils/Ringer;Lcom/csipsimple/utils/Ringer$RingerThread;)V

    iput-object v3, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    .line 193
    const-string v3, "Ringer"

    const-string v4, "Starting ringer..."

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 195
    iget-object v3, p0, Lcom/csipsimple/utils/Ringer;->ringerThread:Lcom/csipsimple/utils/Ringer$RingerThread;

    invoke-virtual {v3}, Lcom/csipsimple/utils/Ringer$RingerThread;->start()V

    .line 168
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

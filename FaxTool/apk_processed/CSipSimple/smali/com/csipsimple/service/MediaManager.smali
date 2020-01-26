.class public Lcom/csipsimple/service/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/csipsimple/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/service/MediaManager$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static final ACTION_AUDIO_VOLUME_UPDATE:Ljava/lang/String; = "org.openintents.audio.action_volume_update"

.field private static final EXTRA_RINGER_MODE:Ljava/lang/String; = "org.openintents.audio.extra_ringer_mode"

.field private static final EXTRA_STREAM_TYPE:Ljava/lang/String; = "org.openintents.audio.extra_stream_type"

.field private static final EXTRA_VALUE_UNKNOWN:I = -0x270f

.field private static final EXTRA_VOLUME_INDEX:Ljava/lang/String; = "org.openintents.audio.extra_volume_index"

.field private static final THIS_FILE:Ljava/lang/String; = "MediaManager"

.field public static final TONE_BATTERY_LOW:I = 0x4

.field public static final TONE_BUSY:I = 0x2

.field public static final TONE_CALL_ENDED:I = 0x5

.field public static final TONE_CALL_WAITING:I = 0x1

.field public static final TONE_CONGESTION:I = 0x3

.field public static final TONE_NONE:I

.field private static modeSipInCall:I


# instance fields
.field private accessibilityManager:Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;

.field private audioFocusWrapper:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

.field private audioManager:Landroid/media/AudioManager;

.field private bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

.field private doFocusAudio:Z

.field private isSetAudioMode:Z

.field private mediaStateChangedIntent:Landroid/content/Intent;

.field private prefs:Landroid/content/SharedPreferences;

.field private restartAudioWhenRoutingChange:Z

.field private ringer:Lcom/csipsimple/utils/Ringer;

.field private screenLock:Landroid/os/PowerManager$WakeLock;

.field private service:Lcom/csipsimple/service/SipService;

.field private useSgsWrkAround:Z

.field private useWebRTCImpl:Z

.field private userWantBluetooth:Z

.field private userWantMicrophoneMute:Z

.field private userWantSpeaker:Z

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/csipsimple/service/MediaManager;->modeSipInCall:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 3
    .param p1, "aService"    # Lcom/csipsimple/service/SipService;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v2, p0, Lcom/csipsimple/service/MediaManager;->isSetAudioMode:Z

    .line 73
    iput-boolean v2, p0, Lcom/csipsimple/service/MediaManager;->userWantBluetooth:Z

    .line 74
    iput-boolean v2, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    .line 75
    iput-boolean v2, p0, Lcom/csipsimple/service/MediaManager;->userWantMicrophoneMute:Z

    .line 77
    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->restartAudioWhenRoutingChange:Z

    .line 88
    iput-boolean v2, p0, Lcom/csipsimple/service/MediaManager;->useSgsWrkAround:Z

    .line 89
    iput-boolean v2, p0, Lcom/csipsimple/service/MediaManager;->useWebRTCImpl:Z

    .line 90
    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->doFocusAudio:Z

    .line 97
    iput-object p1, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    .line 98
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    .line 99
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    const-string v1, "audio"

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    .line 101
    invoke-static {}, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;->getInstance()Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/service/MediaManager;->accessibilityManager:Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;

    .line 102
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->accessibilityManager:Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;

    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;->init(Landroid/content/Context;)V

    .line 104
    new-instance v0, Lcom/csipsimple/utils/Ringer;

    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-direct {v0, v1}, Lcom/csipsimple/utils/Ringer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/service/MediaManager;->ringer:Lcom/csipsimple/utils/Ringer;

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.csipsimple.service.MEDIA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/csipsimple/service/MediaManager;->mediaStateChangedIntent:Landroid/content/Intent;

    .line 108
    invoke-direct {p0}, Lcom/csipsimple/service/MediaManager;->restoreAudioState()V

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/service/MediaManager;)Lcom/csipsimple/service/SipService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/service/MediaManager;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private declared-synchronized actualSetAudioInCall()V
    .locals 14

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-boolean v11, p0, Lcom/csipsimple/service/MediaManager;->isSetAudioMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_0

    .line 354
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/csipsimple/service/MediaManager;->stopRing()V

    .line 187
    invoke-direct {p0}, Lcom/csipsimple/service/MediaManager;->saveAudioState()V

    .line 203
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v11}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 204
    .local v1, "ctntResolver":Landroid/content/ContentResolver;
    const-string v11, "wifi_sleep_policy"

    const/4 v12, 0x2

    invoke-static {v1, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 209
    .local v10, "wman":Landroid/net/wifi/WifiManager;
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v11, :cond_1

    .line 211
    const/16 v11, 0x9

    invoke-static {v11}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x3

    .line 212
    :goto_1
    const-string v12, "com.csipsimple.InCallLock"

    .line 210
    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v11

    iput-object v11, p0, Lcom/csipsimple/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 213
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 215
    :cond_1
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 216
    .local v9, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_5

    .line 217
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v11

    invoke-static {v11}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 219
    .local v2, "dstate":Landroid/net/NetworkInfo$DetailedState;
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v11, :cond_2

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v11, :cond_3

    .line 220
    :cond_2
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_3

    .line 221
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 226
    :cond_3
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v11}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v11

    const-string v12, "keep_awake_incall"

    invoke-virtual {v11, v12}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 227
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    if-nez v11, :cond_4

    .line 228
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    const-string v12, "power"

    invoke-virtual {v11, v12}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 229
    .local v6, "pm":Landroid/os/PowerManager;
    const v11, 0x20000006

    const-string v12, "com.csipsimple.onIncomingCall.SCREEN"

    invoke-virtual {v6, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, p0, Lcom/csipsimple/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    .line 230
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 233
    .end local v6    # "pm":Landroid/os/PowerManager;
    :cond_4
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_5

    .line 234
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 242
    .end local v2    # "dstate":Landroid/net/NetworkInfo$DetailedState;
    :cond_5
    iget-boolean v11, p0, Lcom/csipsimple/service/MediaManager;->useWebRTCImpl:Z

    if-nez v11, :cond_11

    .line 244
    invoke-direct {p0}, Lcom/csipsimple/service/MediaManager;->getAudioTargetMode()I

    move-result v7

    .line 245
    .local v7, "targetMode":I
    const-string v11, "MediaManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Set mode audio in call to "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v11}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->generateForSetCall()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 248
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-nez v11, :cond_d

    const/4 v5, 0x1

    .line 249
    .local v5, "needOutOfSilent":Z
    :goto_2
    if-eqz v5, :cond_6

    .line 250
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 252
    :cond_6
    new-instance v8, Landroid/media/ToneGenerator;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 253
    .local v8, "toneGenerator":Landroid/media/ToneGenerator;
    const/16 v11, 0x29

    invoke-virtual {v8, v11}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 254
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->stopTone()V

    .line 255
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->release()V

    .line 257
    if-eqz v5, :cond_7

    .line 258
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 263
    .end local v5    # "needOutOfSilent":Z
    .end local v8    # "toneGenerator":Landroid/media/ToneGenerator;
    :cond_7
    const/4 v11, 0x2

    if-eq v7, v11, :cond_8

    iget-boolean v11, p0, Lcom/csipsimple/service/MediaManager;->useSgsWrkAround:Z

    if-eqz v11, :cond_8

    .line 265
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    .line 269
    :cond_8
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 272
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v11}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->useRoutingApi()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 273
    iget-object v12, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v11, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_e

    const/4 v11, 0x2

    :goto_3
    const/4 v13, -0x1

    invoke-virtual {v12, v7, v11, v13}, Landroid/media/AudioManager;->setRouting(III)V

    .line 278
    :goto_4
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 279
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    if-eqz v11, :cond_9

    iget-boolean v11, p0, Lcom/csipsimple/service/MediaManager;->userWantBluetooth:Z

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v11}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->canBluetooth()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 280
    const-string v11, "MediaManager"

    const-string v12, "Try to enable bluetooth"

    invoke-static {v11, v12}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->setBluetoothOn(Z)V

    .line 339
    .end local v7    # "targetMode":I
    :cond_9
    :goto_5
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getInCallStream()I

    move-result v3

    .line 340
    .local v3, "inCallStream":I
    iget-boolean v11, p0, Lcom/csipsimple/service/MediaManager;->doFocusAudio:Z

    if-eqz v11, :cond_b

    .line 341
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->accessibilityManager:Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;

    invoke-virtual {v11}, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_a

    .line 342
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v3, v12}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 344
    :cond_a
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioFocusWrapper:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    invoke-virtual {v11}, Lcom/csipsimple/utils/audio/AudioFocusWrapper;->focus()V

    .line 346
    :cond_b
    const-string v11, "MediaManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Initial volume level : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v13}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getInitialVolumeLevel()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v12}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getInitialVolumeLevel()F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 349
    const/4 v12, 0x0

    .line 347
    invoke-virtual {p0, v3, v11, v12}, Lcom/csipsimple/service/MediaManager;->setStreamVolume(III)V

    .line 352
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/csipsimple/service/MediaManager;->isSetAudioMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 183
    .end local v1    # "ctntResolver":Landroid/content/ContentResolver;
    .end local v3    # "inCallStream":I
    .end local v9    # "winfo":Landroid/net/wifi/WifiInfo;
    .end local v10    # "wman":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 211
    .restart local v1    # "ctntResolver":Landroid/content/ContentResolver;
    .restart local v10    # "wman":Landroid/net/wifi/WifiManager;
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 248
    .restart local v7    # "targetMode":I
    .restart local v9    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 273
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 275
    :cond_f
    :try_start_2
    iget-object v12, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v11, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_10

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v11}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto/16 :goto_4

    :cond_10
    const/4 v11, 0x0

    goto :goto_6

    .line 286
    .end local v7    # "targetMode":I
    :cond_11
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getApiLevel()I

    move-result v0

    .line 292
    .local v0, "apiLevel":I
    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v12, "Samsung"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/16 v11, 0x8

    if-ne v11, v0, :cond_12

    .line 294
    const/4 v4, 0x4

    .line 295
    .local v4, "mode":I
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 296
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getMode()I

    move-result v11

    if-eq v11, v4, :cond_12

    .line 297
    const-string v11, "MediaManager"

    const-string v12, "Could not set audio mode for Samsung device"

    invoke-static {v11, v12}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v4    # "mode":I
    :cond_12
    const/4 v11, 0x3

    if-eq v11, v0, :cond_13

    const/4 v11, 0x4

    if-ne v11, v0, :cond_15

    .line 306
    :cond_13
    iget-boolean v11, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_14

    .line 308
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_5

    .line 311
    :cond_14
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_5

    .line 315
    :cond_15
    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v12, "samsung"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 316
    const/4 v11, 0x5

    if-eq v11, v0, :cond_16

    const/4 v11, 0x6

    if-eq v11, v0, :cond_16

    .line 317
    const/4 v11, 0x7

    if-ne v11, v0, :cond_18

    .line 319
    :cond_16
    iget-boolean v11, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_17

    .line 321
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    .line 322
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v12, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto/16 :goto_5

    .line 325
    :cond_17
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v12, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 326
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_5

    .line 330
    :cond_18
    iget-object v11, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v12, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5
.end method

.method private declared-synchronized actualUnsetAudioInCall()V
    .locals 4

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "isSavedAudioState"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/csipsimple/service/MediaManager;->isSetAudioMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 431
    :cond_1
    :try_start_1
    const-string v1, "MediaManager"

    const-string v2, "Unset Audio In call"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getInCallStream()I

    move-result v0

    .line 434
    .local v0, "inCallStream":I
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    if-eqz v1, :cond_2

    .line 437
    const-string v1, "MediaManager"

    const-string v2, "Unset bt"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->setBluetoothOn(Z)V

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 441
    iget-boolean v1, p0, Lcom/csipsimple/service/MediaManager;->doFocusAudio:Z

    if-eqz v1, :cond_3

    .line 442
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 443
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->audioFocusWrapper:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    invoke-virtual {v1}, Lcom/csipsimple/utils/audio/AudioFocusWrapper;->unFocus()V

    .line 445
    :cond_3
    invoke-direct {p0}, Lcom/csipsimple/service/MediaManager;->restoreAudioState()V

    .line 447
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 448
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 450
    :cond_4
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 451
    const-string v1, "MediaManager"

    const-string v2, "Release screen lock"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 456
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/csipsimple/service/MediaManager;->isSetAudioMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 427
    .end local v0    # "inCallStream":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private broadcastVolumeWillBeUpdated(II)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I

    .prologue
    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.openintents.audio.action_volume_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, "notificationIntent":Landroid/content/Intent;
    const-string v1, "org.openintents.audio.extra_stream_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 610
    const-string v1, "org.openintents.audio.extra_volume_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 611
    const-string v1, "org.openintents.audio.extra_ringer_mode"

    const/16 v2, -0x270f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private getAudioTargetMode()I
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 141
    sget v0, Lcom/csipsimple/service/MediaManager;->modeSipInCall:I

    .line 143
    .local v0, "targetMode":I
    iget-object v3, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v3}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->useModeApi()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    const-string v3, "MediaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "User want speaker now..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v3}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->generateForSetCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    iget-boolean v3, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    if-eqz v3, :cond_0

    .line 156
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 146
    goto :goto_0

    .line 148
    :cond_1
    iget-boolean v3, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    if-eqz v3, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 151
    :cond_3
    iget-boolean v1, p0, Lcom/csipsimple/service/MediaManager;->userWantBluetooth:Z

    if-eqz v1, :cond_4

    .line 152
    const/4 v0, 0x0

    .line 155
    :cond_4
    const-string v1, "MediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Target mode... : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 156
    goto :goto_0
.end method

.method private final declared-synchronized restoreAudioState()V
    .locals 10

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "isSavedAudioState"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 420
    :goto_0
    monitor-exit p0

    return-void

    .line 398
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v4}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    .local v0, "ctntResolver":Landroid/content/ContentResolver;
    const-string v4, "wifi_sleep_policy"

    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "savedWifiPolicy"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getInCallStream()I

    move-result v2

    .line 406
    .local v2, "inCallStream":I
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "savedVolume"

    iget-object v6, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/csipsimple/service/MediaManager;->setStreamVolume(III)V

    .line 408
    invoke-direct {p0}, Lcom/csipsimple/service/MediaManager;->getAudioTargetMode()I

    move-result v3

    .line 409
    .local v3, "targetMode":I
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v4}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->useRoutingApi()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "savedRoute"

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v4, v3, v5, v6}, Landroid/media/AudioManager;->setRouting(III)V

    .line 414
    :goto_1
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "savedMode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setMode(I)V

    .line 417
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 418
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "isSavedAudioState"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 393
    .end local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "inCallStream":I
    .end local v3    # "targetMode":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 412
    .restart local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .restart local v2    # "inCallStream":I
    .restart local v3    # "targetMode":I
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "savedSpeakerPhone"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized saveAudioState()V
    .locals 7

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "isSavedAudioState"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    :goto_0
    monitor-exit p0

    return-void

    .line 366
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v4}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 368
    .local v0, "ctntResolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 372
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "savedWifiPolicy"

    const-string v5, "wifi_sleep_policy"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getInCallStream()I

    move-result v2

    .line 375
    .local v2, "inCallStream":I
    const-string v4, "savedVolume"

    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 377
    invoke-direct {p0}, Lcom/csipsimple/service/MediaManager;->getAudioTargetMode()I

    move-result v3

    .line 378
    .local v3, "targetMode":I
    iget-object v4, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v4}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->useRoutingApi()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    const-string v4, "savedRoute"

    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    :goto_1
    const-string v4, "savedMode"

    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string v4, "isSavedAudioState"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    .end local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "inCallStream":I
    .end local v3    # "targetMode":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 381
    .restart local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .restart local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "inCallStream":I
    .restart local v3    # "targetMode":I
    :cond_1
    :try_start_2
    const-string v4, "savedSpeakerPhone"

    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public adjustStreamVolume(III)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 622
    const/16 v3, -0x270f

    invoke-direct {p0, p1, v3}, Lcom/csipsimple/service/MediaManager;->broadcastVolumeWillBeUpdated(II)V

    .line 623
    iget-object v3, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 624
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 626
    iget-object v3, p0, Lcom/csipsimple/service/MediaManager;->ringer:Lcom/csipsimple/utils/Ringer;

    invoke-virtual {v3}, Lcom/csipsimple/utils/Ringer;->updateRingerMode()V

    .line 629
    :cond_0
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getInCallStream()I

    move-result v0

    .line 630
    .local v0, "inCallStream":I
    if-ne p1, v0, :cond_1

    .line 631
    iget-object v3, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 632
    .local v1, "maxLevel":I
    iget-object v3, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v2, v3, v4

    .line 634
    .local v2, "modifiedLevel":F
    iget-object v3, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v3}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v3

    const-string v4, "snd_stream_level"

    invoke-virtual {v3, v4, v2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 637
    .end local v1    # "maxLevel":I
    .end local v2    # "modifiedLevel":F
    :cond_1
    return-void
.end method

.method public broadcastMediaChanged()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->mediaStateChangedIntent:Landroid/content/Intent;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public getMediaState()Lcom/csipsimple/api/MediaState;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 542
    new-instance v0, Lcom/csipsimple/api/MediaState;

    invoke-direct {v0}, Lcom/csipsimple/api/MediaState;-><init>()V

    .line 545
    .local v0, "mediaState":Lcom/csipsimple/api/MediaState;
    iget-boolean v3, p0, Lcom/csipsimple/service/MediaManager;->userWantMicrophoneMute:Z

    iput-boolean v3, v0, Lcom/csipsimple/api/MediaState;->isMicrophoneMute:Z

    .line 546
    iput-boolean v1, v0, Lcom/csipsimple/api/MediaState;->canMicrophoneMute:Z

    .line 549
    iget-boolean v3, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    iput-boolean v3, v0, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    .line 550
    iget-boolean v3, v0, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/csipsimple/api/MediaState;->canSpeakerphoneOn:Z

    .line 554
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v1}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->isBluetoothOn()Z

    move-result v1

    iput-boolean v1, v0, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    .line 556
    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v1}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->canBluetooth()Z

    move-result v1

    iput-boolean v1, v0, Lcom/csipsimple/api/MediaState;->canBluetoothSco:Z

    .line 562
    :goto_1
    return-object v0

    :cond_0
    move v1, v2

    .line 550
    goto :goto_0

    .line 558
    :cond_1
    iput-boolean v2, v0, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    .line 559
    iput-boolean v2, v0, Lcom/csipsimple/api/MediaState;->canBluetoothSco:Z

    goto :goto_1
.end method

.method public isUserWantMicrophoneMute()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->userWantMicrophoneMute:Z

    return v0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/csipsimple/service/MediaManager;->setSoftwareVolume()V

    .line 772
    invoke-virtual {p0}, Lcom/csipsimple/service/MediaManager;->broadcastMediaChanged()V

    .line 773
    return-void
.end method

.method public playInCallTone(I)V
    .locals 1
    .param p1, "toneId"    # I

    .prologue
    .line 658
    new-instance v0, Lcom/csipsimple/service/MediaManager$InCallTonePlayer;

    invoke-direct {v0, p0, p1}, Lcom/csipsimple/service/MediaManager$InCallTonePlayer;-><init>(Lcom/csipsimple/service/MediaManager;I)V

    invoke-virtual {v0}, Lcom/csipsimple/service/MediaManager$InCallTonePlayer;->start()V

    .line 659
    return-void
.end method

.method public resetSettings()V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_bluetooth"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->userWantBluetooth:Z

    .line 496
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_speaker"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->userWantMicrophoneMute:Z

    .line 498
    return-void
.end method

.method public setAudioInCall()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/csipsimple/service/MediaManager;->actualSetAudioInCall()V

    .line 170
    return-void
.end method

.method public setBluetoothOn(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 526
    const-string v0, "MediaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set BT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->restartAudioWhenRoutingChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->ringer:Lcom/csipsimple/utils/Ringer;

    invoke-virtual {v0}, Lcom/csipsimple/utils/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->setNoSnd()V

    .line 529
    iput-boolean p1, p0, Lcom/csipsimple/service/MediaManager;->userWantBluetooth:Z

    .line 530
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->setSnd()V

    .line 535
    :goto_0
    invoke-virtual {p0}, Lcom/csipsimple/service/MediaManager;->broadcastMediaChanged()V

    .line 536
    return-void

    .line 532
    :cond_0
    iput-boolean p1, p0, Lcom/csipsimple/service/MediaManager;->userWantBluetooth:Z

    .line 533
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0, p1}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->setBluetoothOn(Z)V

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->userWantMicrophoneMute:Z

    if-eq p1, v0, :cond_0

    .line 507
    iput-boolean p1, p0, Lcom/csipsimple/service/MediaManager;->userWantMicrophoneMute:Z

    .line 508
    invoke-virtual {p0}, Lcom/csipsimple/service/MediaManager;->setSoftwareVolume()V

    .line 509
    invoke-virtual {p0}, Lcom/csipsimple/service/MediaManager;->broadcastMediaChanged()V

    .line 511
    :cond_0
    return-void
.end method

.method public setSoftwareVolume()V
    .locals 7

    .prologue
    .line 570
    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    if-eqz v5, :cond_0

    .line 571
    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v5}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->isBluetoothOn()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 573
    .local v4, "useBT":Z
    :goto_0
    if-eqz v4, :cond_2

    const-string v3, "snd_bt_speaker_level"

    .line 574
    .local v3, "speaker_key":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_3

    const-string v1, "snd_bt_mic_level"

    .line 576
    .local v1, "mic_key":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v5}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;)F

    move-result v2

    .line 577
    .local v2, "speakVolume":F
    iget-boolean v5, p0, Lcom/csipsimple/service/MediaManager;->userWantMicrophoneMute:Z

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    .line 579
    .local v0, "micVolume":F
    :goto_3
    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v5}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v5

    new-instance v6, Lcom/csipsimple/service/MediaManager$1;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/csipsimple/service/MediaManager$1;-><init>(Lcom/csipsimple/service/MediaManager;FFZ)V

    invoke-virtual {v5, v6}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 593
    .end local v0    # "micVolume":F
    .end local v1    # "mic_key":Ljava/lang/String;
    .end local v2    # "speakVolume":F
    .end local v3    # "speaker_key":Ljava/lang/String;
    .end local v4    # "useBT":Z
    :cond_0
    return-void

    .line 571
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 573
    .restart local v4    # "useBT":Z
    :cond_2
    const-string v3, "snd_speaker_level"

    goto :goto_1

    .line 574
    .restart local v3    # "speaker_key":Ljava/lang/String;
    :cond_3
    const-string v1, "snd_mic_level"

    goto :goto_2

    .line 577
    .restart local v1    # "mic_key":Ljava/lang/String;
    .restart local v2    # "speakVolume":F
    :cond_4
    iget-object v5, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v5}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;)F

    move-result v0

    goto :goto_3
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->restartAudioWhenRoutingChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->ringer:Lcom/csipsimple/utils/Ringer;

    invoke-virtual {v0}, Lcom/csipsimple/utils/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->setNoSnd()V

    .line 516
    iput-boolean p1, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    .line 517
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->setSnd()V

    .line 522
    :goto_0
    invoke-virtual {p0}, Lcom/csipsimple/service/MediaManager;->broadcastMediaChanged()V

    .line 523
    return-void

    .line 519
    :cond_0
    iput-boolean p1, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    .line 520
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 617
    invoke-direct {p0, p1, p2}, Lcom/csipsimple/service/MediaManager;->broadcastVolumeWillBeUpdated(II)V

    .line 618
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 619
    return-void
.end method

.method public declared-synchronized startRing(Ljava/lang/String;)V
    .locals 2
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/csipsimple/service/MediaManager;->saveAudioState()V

    .line 466
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->audioFocusWrapper:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/audio/AudioFocusWrapper;->focus()V

    .line 468
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->ringer:Lcom/csipsimple/utils/Ringer;

    invoke-virtual {v0}, Lcom/csipsimple/utils/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->ringer:Lcom/csipsimple/utils/Ringer;

    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getRingtone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/csipsimple/utils/Ringer;->ring(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :goto_0
    monitor-exit p0

    return-void

    .line 471
    :cond_0
    :try_start_1
    const-string v0, "MediaManager"

    const-string v1, "Already ringing ...."

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startService()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-static {v0}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->getInstance(Landroid/content/Context;)Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    .line 115
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0, p0}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->setBluetoothChangeListener(Lcom/csipsimple/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->register()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->audioFocusWrapper:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    if-nez v0, :cond_1

    .line 119
    invoke-static {}, Lcom/csipsimple/utils/audio/AudioFocusWrapper;->getInstance()Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/service/MediaManager;->audioFocusWrapper:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    .line 120
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->audioFocusWrapper:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    iget-object v1, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    iget-object v2, p0, Lcom/csipsimple/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/utils/audio/AudioFocusWrapper;->init(Lcom/csipsimple/service/SipService;Landroid/media/AudioManager;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getInCallMode()I

    move-result v0

    sput v0, Lcom/csipsimple/service/MediaManager;->modeSipInCall:I

    .line 123
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "use_sgs_call_hack"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->useSgsWrkAround:Z

    .line 124
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "use_webrtc_hack"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->useWebRTCImpl:Z

    .line 125
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "do_focus_audio"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->doFocusAudio:Z

    .line 126
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_bluetooth"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->userWantBluetooth:Z

    .line 127
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_speaker"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->userWantSpeaker:Z

    .line 128
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "restart_aud_on_routing_change"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->restartAudioWhenRoutingChange:Z

    .line 129
    return-void
.end method

.method public declared-synchronized stopRing()V
    .locals 1

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->ringer:Lcom/csipsimple/utils/Ringer;

    invoke-virtual {v0}, Lcom/csipsimple/utils/Ringer;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->ringer:Lcom/csipsimple/utils/Ringer;

    invoke-virtual {v0}, Lcom/csipsimple/utils/Ringer;->stopRing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_0
    monitor-exit p0

    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRingAndUnfocus()V
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/csipsimple/service/MediaManager;->stopRing()V

    .line 491
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->audioFocusWrapper:Lcom/csipsimple/utils/audio/AudioFocusWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/audio/AudioFocusWrapper;->unFocus()V

    .line 492
    return-void
.end method

.method public stopService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    const-string v0, "MediaManager"

    const-string v1, "Remove media manager...."

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->unregister()V

    .line 135
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0, v2}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->setBluetoothChangeListener(Lcom/csipsimple/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;)V

    .line 136
    iput-object v2, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    .line 138
    :cond_0
    return-void
.end method

.method public toggleMute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->userWantMicrophoneMute:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/csipsimple/service/MediaManager;->setMicrophoneMute(Z)V

    .line 503
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unsetAudioInCall()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/csipsimple/service/MediaManager;->actualUnsetAudioInCall()V

    .line 174
    return-void
.end method

.method public validateAudioClockRate(I)I
    .locals 1
    .param p1, "clockRate"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f40

    if-eq p1, v0, :cond_0

    .line 161
    iget-boolean v0, p0, Lcom/csipsimple/service/MediaManager;->userWantBluetooth:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/service/MediaManager;->bluetoothWrapper:Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->canBluetooth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, -0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/csipsimple/ui/incall/InCallMediaControl;
.super Landroid/app/Activity;
.source "InCallMediaControl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/incall/InCallMediaControl$LockTimerTask;,
        Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;,
        Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;
    }
.end annotation


# static fields
.field private static final AUTO_QUIT_DELAY:I = 0xbb8

.field protected static final THIS_FILE:Ljava/lang/String; = "inCallMediaCtrl"


# instance fields
.field private callStateReceiver:Landroid/content/BroadcastReceiver;

.field private echoCancellation:Landroid/widget/CheckBox;

.field private isAutoClose:Z

.field private microAmplification:Landroid/widget/SeekBar;

.field private monitorThread:Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;

.field private okBar:Landroid/widget/LinearLayout;

.field private quitTimer:Ljava/util/Timer;

.field private rxProgress:Landroid/widget/ProgressBar;

.field private saveButton:Landroid/widget/Button;

.field private sipConnection:Landroid/content/ServiceConnection;

.field private sipService:Lcom/csipsimple/api/ISipService;

.field private speakerAmplification:Landroid/widget/SeekBar;

.field private txProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->isAutoClose:Z

    .line 152
    new-instance v0, Lcom/csipsimple/ui/incall/InCallMediaControl$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/incall/InCallMediaControl$1;-><init>(Lcom/csipsimple/ui/incall/InCallMediaControl;)V

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->callStateReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    new-instance v0, Lcom/csipsimple/ui/incall/InCallMediaControl$2;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/incall/InCallMediaControl$2;-><init>(Lcom/csipsimple/ui/incall/InCallMediaControl;)V

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipConnection:Landroid/content/ServiceConnection;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/incall/InCallMediaControl;)Lcom/csipsimple/api/ISipService;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/incall/InCallMediaControl;Lcom/csipsimple/api/ISipService;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    return-void
.end method

.method static synthetic access$2(Lcom/csipsimple/ui/incall/InCallMediaControl;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->updateUIFromMedia()V

    return-void
.end method

.method static synthetic access$3(Lcom/csipsimple/ui/incall/InCallMediaControl;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->txProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/csipsimple/ui/incall/InCallMediaControl;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->rxProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private updateUIFromMedia()V
    .locals 7

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    .line 273
    const/4 v3, 0x0

    .line 274
    .local v3, "useBT":Z
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    if-eqz v4, :cond_0

    .line 276
    :try_start_0
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    invoke-interface {v4}, Lcom/csipsimple/api/ISipService;->getCurrentMediaState()Lcom/csipsimple/api/MediaState;

    move-result-object v4

    iget-boolean v3, v4, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 283
    const-string v4, "snd_bt_speaker_level"

    .line 282
    :goto_1
    invoke-static {p0, v4}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 284
    .local v2, "speakerLevel":Ljava/lang/Float;
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 286
    if-eqz v3, :cond_2

    .line 287
    const-string v4, "snd_bt_mic_level"

    .line 286
    :goto_2
    invoke-static {p0, v4}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 288
    .local v1, "microLevel":Ljava/lang/Float;
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->microAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 290
    iget-object v4, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->echoCancellation:Landroid/widget/CheckBox;

    .line 291
    const-string v5, "echo_cancellation"

    .line 290
    invoke-static {p0, v5}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 293
    return-void

    .line 277
    .end local v1    # "microLevel":Ljava/lang/Float;
    .end local v2    # "speakerLevel":Ljava/lang/Float;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "inCallMediaCtrl"

    const-string v5, "Sip service not avail for request "

    invoke-static {v4, v5, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 283
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v4, "snd_speaker_level"

    goto :goto_1

    .line 287
    .restart local v2    # "speakerLevel":Ljava/lang/Float;
    :cond_2
    const-string v4, "snd_mic_level"

    goto :goto_2
.end method


# virtual methods
.method public delayedQuit(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 201
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 202
    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    .line 205
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Quit-timer-media"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    .line 207
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    new-instance v1, Lcom/csipsimple/ui/incall/InCallMediaControl$LockTimerTask;

    invoke-direct {v1, p0, v2}, Lcom/csipsimple/ui/incall/InCallMediaControl$LockTimerTask;-><init>(Lcom/csipsimple/ui/incall/InCallMediaControl;Lcom/csipsimple/ui/incall/InCallMediaControl$LockTimerTask;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 208
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "value"    # Z

    .prologue
    .line 341
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    if-eqz v2, :cond_1

    .line 343
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 344
    .local v0, "bId":I
    const v2, 0x7f0600cb

    if-ne v0, v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    invoke-interface {v2, p2}, Lcom/csipsimple/api/ISipService;->setEchoCancellation(Z)V

    .line 346
    const-string v2, "echo_cancellation"

    invoke-static {p0, v2, p2}, Lcom/csipsimple/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 349
    :cond_0
    iget-boolean v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->isAutoClose:Z

    if-eqz v2, :cond_1

    .line 350
    const/16 v2, 0xbb8

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallMediaControl;->delayedQuit(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "bId":I
    :cond_1
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "inCallMediaCtrl"

    const-string v3, "Impossible to set mic/speaker level"

    invoke-static {v2, v3, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06008e

    if-ne v0, v1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->finish()V

    .line 363
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->setContentView(I)V

    .line 81
    const v0, 0x7f0600c9

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    .line 82
    const v0, 0x7f0600ca

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->microAmplification:Landroid/widget/SeekBar;

    .line 83
    const v0, 0x7f06008e

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->saveButton:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0600cb

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->echoCancellation:Landroid/widget/CheckBox;

    .line 85
    const v0, 0x7f0600cc

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->okBar:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->microAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->saveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->echoCancellation:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->rxProgress:Landroid/widget/ProgressBar;

    .line 95
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->txProgress:Landroid/widget/ProgressBar;

    .line 96
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 216
    sparse-switch p1, :sswitch_data_0

    .line 238
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 220
    :sswitch_1
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    .line 221
    const/16 v3, 0x19

    if-ne p1, v3, :cond_1

    const/4 v1, -0x1

    .line 222
    .local v1, "step":I
    :goto_1
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int v0, v3, v1

    .line 223
    .local v0, "newValue":I
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .end local v0    # "newValue":I
    .end local v1    # "step":I
    :cond_1
    move v1, v2

    .line 221
    goto :goto_1

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 243
    sparse-switch p1, :sswitch_data_0

    .line 251
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 249
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 135
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 136
    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    .line 139
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->callStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->monitorThread:Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->monitorThread:Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;

    invoke-virtual {v0}, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->markFinished()V

    .line 146
    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->monitorThread:Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;

    .line 148
    :cond_1
    iput-object v1, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    .line 149
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_1

    .line 129
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "value"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 298
    const-string v5, "inCallMediaCtrl"

    const-string v6, "Progress has changed"

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v5, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    if-eqz v5, :cond_0

    .line 301
    int-to-double v5, p2

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    double-to-float v5, v5

    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 303
    .local v2, "newValue":Ljava/lang/Float;
    iget-object v5, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    invoke-interface {v5}, Lcom/csipsimple/api/ISipService;->getCurrentMediaState()Lcom/csipsimple/api/MediaState;

    move-result-object v5

    iget-boolean v4, v5, Lcom/csipsimple/api/MediaState;->isBluetoothScoOn:Z

    .line 304
    .local v4, "useBT":Z
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v3

    .line 305
    .local v3, "sId":I
    const v5, 0x7f0600c9

    if-ne v3, v5, :cond_3

    .line 306
    iget-object v5, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/csipsimple/api/ISipService;->confAdjustTxLevel(IF)V

    .line 307
    if-eqz v4, :cond_2

    const-string v1, "snd_bt_speaker_level"

    .line 308
    .local v1, "key":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1, v2}, Lcom/csipsimple/api/SipConfigManager;->setPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Float;
    .end local v3    # "sId":I
    .end local v4    # "useBT":Z
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->isAutoClose:Z

    if-eqz v5, :cond_1

    .line 324
    const/16 v5, 0xbb8

    invoke-virtual {p0, v5}, Lcom/csipsimple/ui/incall/InCallMediaControl;->delayedQuit(I)V

    .line 326
    :cond_1
    return-void

    .line 307
    .restart local v2    # "newValue":Ljava/lang/Float;
    .restart local v3    # "sId":I
    .restart local v4    # "useBT":Z
    :cond_2
    :try_start_1
    const-string v1, "snd_speaker_level"

    goto :goto_0

    .line 309
    :cond_3
    const v5, 0x7f0600ca

    if-ne v3, v5, :cond_0

    .line 310
    iget-object v5, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipService:Lcom/csipsimple/api/ISipService;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/csipsimple/api/ISipService;->confAdjustRxLevel(IF)V

    .line 311
    if-eqz v4, :cond_4

    const-string v1, "snd_bt_mic_level"

    .line 312
    .restart local v1    # "key":Ljava/lang/String;
    :goto_2
    invoke-static {p0, v1, v2}, Lcom/csipsimple/api/SipConfigManager;->setPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 314
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Float;
    .end local v3    # "sId":I
    .end local v4    # "useBT":Z
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "inCallMediaCtrl"

    const-string v6, "Impossible to set mic/speaker level"

    invoke-static {v5, v6, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "newValue":Ljava/lang/Float;
    .restart local v3    # "sId":I
    .restart local v4    # "useBT":Z
    :cond_4
    :try_start_2
    const-string v1, "snd_mic_level"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.csipsimple.service.SipService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "sipServiceIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->sipConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v5}, Lcom/csipsimple/ui/incall/InCallMediaControl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 106
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/InCallMediaControl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "direction":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v5, :cond_2

    .line 108
    :cond_0
    iput-boolean v5, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->isAutoClose:Z

    .line 109
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->okBar:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    const/16 v2, 0xbb8

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/incall/InCallMediaControl;->delayedQuit(I)V

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->callStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.csipsimple.service.CALL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/ui/incall/InCallMediaControl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->monitorThread:Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;

    if-nez v2, :cond_1

    .line 118
    new-instance v2, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;-><init>(Lcom/csipsimple/ui/incall/InCallMediaControl;Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;)V

    iput-object v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->monitorThread:Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;

    .line 119
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->monitorThread:Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;

    invoke-virtual {v2}, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->start()V

    .line 122
    :cond_1
    return-void

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->okBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iput-boolean v4, p0, Lcom/csipsimple/ui/incall/InCallMediaControl;->isAutoClose:Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 331
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 336
    return-void
.end method

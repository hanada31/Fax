.class Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;
.super Ljava/lang/Thread;
.source "InCallMediaControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/InCallMediaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorThread"
.end annotation


# instance fields
.field private finished:Z

.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;


# direct methods
.method private constructor <init>(Lcom/csipsimple/ui/incall/InCallMediaControl;)V
    .locals 1

    .prologue
    .line 367
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->finished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/ui/incall/InCallMediaControl;Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;-><init>(Lcom/csipsimple/ui/incall/InCallMediaControl;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized markFinished()V
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0xff

    .line 376
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 378
    :goto_0
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    invoke-static {v3}, Lcom/csipsimple/ui/incall/InCallMediaControl;->access$0(Lcom/csipsimple/ui/incall/InCallMediaControl;)Lcom/csipsimple/api/ISipService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 380
    :try_start_0
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    invoke-static {v3}, Lcom/csipsimple/ui/incall/InCallMediaControl;->access$0(Lcom/csipsimple/ui/incall/InCallMediaControl;)Lcom/csipsimple/api/ISipService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/csipsimple/api/ISipService;->confGetRxTxLevel(I)J

    move-result-wide v1

    .line 381
    .local v1, "value":J
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    new-instance v4, Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;

    iget-object v5, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->this$0:Lcom/csipsimple/ui/incall/InCallMediaControl;

    const/16 v6, 0x8

    shr-long v6, v1, v6

    and-long/2addr v6, v9

    long-to-int v6, v6

    and-long v7, v1, v9

    long-to-int v7, v7

    invoke-direct {v4, v5, v6, v7}, Lcom/csipsimple/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;-><init>(Lcom/csipsimple/ui/incall/InCallMediaControl;II)V

    invoke-virtual {v3, v4}, Lcom/csipsimple/ui/incall/InCallMediaControl;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v1    # "value":J
    :cond_0
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    :goto_1
    monitor-enter p0

    .line 395
    :try_start_2
    iget-boolean v3, p0, Lcom/csipsimple/ui/incall/InCallMediaControl$MonitorThread;->finished:Z

    if-eqz v3, :cond_1

    .line 396
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :goto_2
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "inCallMediaCtrl"

    const-string v4, "Problem with remote service"

    invoke-static {v3, v4, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 391
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "inCallMediaCtrl"

    const-string v4, "Interupted monitor thread"

    invoke-static {v3, v4, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 394
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

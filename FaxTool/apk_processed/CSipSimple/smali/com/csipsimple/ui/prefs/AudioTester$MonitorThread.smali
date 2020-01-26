.class Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;
.super Ljava/lang/Thread;
.source "AudioTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/prefs/AudioTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;
    }
.end annotation


# instance fields
.field private finished:Z

.field final synthetic this$0:Lcom/csipsimple/ui/prefs/AudioTester;


# direct methods
.method private constructor <init>(Lcom/csipsimple/ui/prefs/AudioTester;)V
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->finished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/ui/prefs/AudioTester;Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;-><init>(Lcom/csipsimple/ui/prefs/AudioTester;)V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;)Lcom/csipsimple/ui/prefs/AudioTester;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized markFinished()V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xff

    .line 146
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 148
    :goto_0
    iget-object v3, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    invoke-static {v3}, Lcom/csipsimple/ui/prefs/AudioTester;->access$1(Lcom/csipsimple/ui/prefs/AudioTester;)Lcom/csipsimple/api/ISipService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 150
    :try_start_0
    iget-object v3, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    invoke-static {v3}, Lcom/csipsimple/ui/prefs/AudioTester;->access$1(Lcom/csipsimple/ui/prefs/AudioTester;)Lcom/csipsimple/api/ISipService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/csipsimple/api/ISipService;->confGetRxTxLevel(I)J

    move-result-wide v1

    .line 151
    .local v1, "value":J
    iget-object v3, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->this$0:Lcom/csipsimple/ui/prefs/AudioTester;

    new-instance v4, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;

    const/16 v5, 0x8

    shr-long v5, v1, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    and-long v6, v1, v8

    long-to-int v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;-><init>(Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;II)V

    invoke-virtual {v3, v4}, Lcom/csipsimple/ui/prefs/AudioTester;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1    # "value":J
    :cond_0
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    :goto_1
    monitor-enter p0

    .line 165
    :try_start_2
    iget-boolean v3, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->finished:Z

    if-eqz v3, :cond_1

    .line 166
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :goto_2
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioTester"

    const-string v4, "Problem with remote service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "AudioTester"

    const-string v4, "Interupted monitor thread"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 164
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

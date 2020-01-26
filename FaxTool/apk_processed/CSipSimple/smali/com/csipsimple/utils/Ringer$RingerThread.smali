.class Lcom/csipsimple/utils/Ringer$RingerThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/utils/Ringer;


# direct methods
.method private constructor <init>(Lcom/csipsimple/utils/Ringer;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/csipsimple/utils/Ringer$RingerThread;->this$0:Lcom/csipsimple/utils/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/utils/Ringer;Lcom/csipsimple/utils/Ringer$RingerThread;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/csipsimple/utils/Ringer$RingerThread;-><init>(Lcom/csipsimple/utils/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/utils/Ringer$RingerThread;->this$0:Lcom/csipsimple/utils/Ringer;

    iget-object v1, v1, Lcom/csipsimple/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/csipsimple/utils/Ringer$RingerThread;->this$0:Lcom/csipsimple/utils/Ringer;

    iget-object v1, v1, Lcom/csipsimple/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "Ringer"

    const-string v2, "Ringer thread interrupt"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    iget-object v1, p0, Lcom/csipsimple/utils/Ringer$RingerThread;->this$0:Lcom/csipsimple/utils/Ringer;

    iget-object v1, v1, Lcom/csipsimple/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/csipsimple/utils/Ringer$RingerThread;->this$0:Lcom/csipsimple/utils/Ringer;

    iget-object v1, v1, Lcom/csipsimple/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 233
    :cond_1
    const-string v1, "Ringer"

    const-string v2, "Ringer thread exiting"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void

    .line 228
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 229
    iget-object v2, p0, Lcom/csipsimple/utils/Ringer$RingerThread;->this$0:Lcom/csipsimple/utils/Ringer;

    iget-object v2, v2, Lcom/csipsimple/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/csipsimple/utils/Ringer$RingerThread;->this$0:Lcom/csipsimple/utils/Ringer;

    iget-object v2, v2, Lcom/csipsimple/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 232
    :cond_2
    throw v1
.end method

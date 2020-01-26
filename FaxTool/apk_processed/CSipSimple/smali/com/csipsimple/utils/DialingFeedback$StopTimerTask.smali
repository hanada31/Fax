.class Lcom/csipsimple/utils/DialingFeedback$StopTimerTask;
.super Ljava/util/TimerTask;
.source "DialingFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/DialingFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StopTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/utils/DialingFeedback;


# direct methods
.method constructor <init>(Lcom/csipsimple/utils/DialingFeedback;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/csipsimple/utils/DialingFeedback$StopTimerTask;->this$0:Lcom/csipsimple/utils/DialingFeedback;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback$StopTimerTask;->this$0:Lcom/csipsimple/utils/DialingFeedback;

    invoke-static {v0}, Lcom/csipsimple/utils/DialingFeedback;->access$0(Lcom/csipsimple/utils/DialingFeedback;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback$StopTimerTask;->this$0:Lcom/csipsimple/utils/DialingFeedback;

    invoke-static {v0}, Lcom/csipsimple/utils/DialingFeedback;->access$1(Lcom/csipsimple/utils/DialingFeedback;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    monitor-exit v1

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback$StopTimerTask;->this$0:Lcom/csipsimple/utils/DialingFeedback;

    invoke-static {v0}, Lcom/csipsimple/utils/DialingFeedback;->access$1(Lcom/csipsimple/utils/DialingFeedback;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 184
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

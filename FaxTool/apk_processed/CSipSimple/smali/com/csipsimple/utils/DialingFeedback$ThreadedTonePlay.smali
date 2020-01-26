.class Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;
.super Ljava/lang/Thread;
.source "DialingFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/DialingFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadedTonePlay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/utils/DialingFeedback;

.field private final tone:I


# direct methods
.method constructor <init>(Lcom/csipsimple/utils/DialingFeedback;I)V
    .locals 0
    .param p2, "t"    # I

    .prologue
    .line 166
    iput-object p1, p0, Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/csipsimple/utils/DialingFeedback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 167
    iput p2, p0, Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;->tone:I

    .line 168
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/csipsimple/utils/DialingFeedback;

    invoke-static {v0}, Lcom/csipsimple/utils/DialingFeedback;->access$0(Lcom/csipsimple/utils/DialingFeedback;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/csipsimple/utils/DialingFeedback;

    invoke-static {v0}, Lcom/csipsimple/utils/DialingFeedback;->access$1(Lcom/csipsimple/utils/DialingFeedback;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    monitor-exit v1

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/csipsimple/utils/DialingFeedback;

    invoke-static {v0}, Lcom/csipsimple/utils/DialingFeedback;->access$1(Lcom/csipsimple/utils/DialingFeedback;)Landroid/media/ToneGenerator;

    move-result-object v0

    iget v2, p0, Lcom/csipsimple/utils/DialingFeedback$ThreadedTonePlay;->tone:I

    invoke-virtual {v0, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 172
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

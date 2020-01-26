.class Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;
.super Ljava/lang/Object;
.source "AudioTester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateConfLevelRunnable"
.end annotation


# instance fields
.field private final mRx:I

.field private final mTx:I

.field final synthetic this$1:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;II)V
    .locals 0
    .param p2, "rx"    # I
    .param p3, "tx"    # I

    .prologue
    .line 175
    iput-object p1, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;->this$1:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p2, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;->mRx:I

    .line 177
    iput p3, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;->mTx:I

    .line 178
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;->this$1:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

    invoke-static {v0}, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->access$1(Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;)Lcom/csipsimple/ui/prefs/AudioTester;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/ui/prefs/AudioTester;->access$3(Lcom/csipsimple/ui/prefs/AudioTester;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;->mRx:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 182
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;->this$1:Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;

    invoke-static {v0}, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;->access$1(Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread;)Lcom/csipsimple/ui/prefs/AudioTester;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/ui/prefs/AudioTester;->access$4(Lcom/csipsimple/ui/prefs/AudioTester;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;->mTx:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 183
    return-void
.end method

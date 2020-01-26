.class Lcom/csipsimple/widgets/ScreenLocker$LockTimerTask;
.super Ljava/util/TimerTask;
.source "ScreenLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/widgets/ScreenLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/widgets/ScreenLocker;


# direct methods
.method private constructor <init>(Lcom/csipsimple/widgets/ScreenLocker;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/csipsimple/widgets/ScreenLocker$LockTimerTask;->this$0:Lcom/csipsimple/widgets/ScreenLocker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/widgets/ScreenLocker;Lcom/csipsimple/widgets/ScreenLocker$LockTimerTask;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/csipsimple/widgets/ScreenLocker$LockTimerTask;-><init>(Lcom/csipsimple/widgets/ScreenLocker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/csipsimple/widgets/ScreenLocker$LockTimerTask;->this$0:Lcom/csipsimple/widgets/ScreenLocker;

    invoke-static {v0}, Lcom/csipsimple/widgets/ScreenLocker;->access$0(Lcom/csipsimple/widgets/ScreenLocker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/widgets/ScreenLocker$LockTimerTask;->this$0:Lcom/csipsimple/widgets/ScreenLocker;

    invoke-static {v1}, Lcom/csipsimple/widgets/ScreenLocker;->access$0(Lcom/csipsimple/widgets/ScreenLocker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

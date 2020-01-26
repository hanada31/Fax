.class Lcom/csipsimple/service/MediaManager$1;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/service/MediaManager;->setSoftwareVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/service/MediaManager;

.field private final synthetic val$micVolume:F

.field private final synthetic val$speakVolume:F

.field private final synthetic val$useBT:Z


# direct methods
.method constructor <init>(Lcom/csipsimple/service/MediaManager;FFZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/service/MediaManager$1;->this$0:Lcom/csipsimple/service/MediaManager;

    iput p2, p0, Lcom/csipsimple/service/MediaManager$1;->val$speakVolume:F

    iput p3, p0, Lcom/csipsimple/service/MediaManager$1;->val$micVolume:F

    iput-boolean p4, p0, Lcom/csipsimple/service/MediaManager$1;->val$useBT:Z

    .line 579
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager$1;->this$0:Lcom/csipsimple/service/MediaManager;

    invoke-static {v0}, Lcom/csipsimple/service/MediaManager;->access$0(Lcom/csipsimple/service/MediaManager;)Lcom/csipsimple/service/SipService;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/service/MediaManager$1;->val$speakVolume:F

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService;->confAdjustTxLevel(F)V

    .line 584
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager$1;->this$0:Lcom/csipsimple/service/MediaManager;

    invoke-static {v0}, Lcom/csipsimple/service/MediaManager;->access$0(Lcom/csipsimple/service/MediaManager;)Lcom/csipsimple/service/SipService;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/service/MediaManager$1;->val$micVolume:F

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService;->confAdjustRxLevel(F)V

    .line 587
    iget-boolean v0, p0, Lcom/csipsimple/service/MediaManager$1;->val$useBT:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/csipsimple/service/MediaManager$1;->this$0:Lcom/csipsimple/service/MediaManager;

    invoke-static {v0}, Lcom/csipsimple/service/MediaManager;->access$1(Lcom/csipsimple/service/MediaManager;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 590
    :cond_0
    return-void
.end method

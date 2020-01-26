.class Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUIFromMediaRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallActivity;


# direct methods
.method private constructor <init>(Lcom/csipsimple/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;)V
    .locals 0

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v0}, Lcom/csipsimple/ui/incall/InCallActivity;->access$9(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallControls;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v1}, Lcom/csipsimple/ui/incall/InCallActivity;->access$3(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/MediaState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/incall/InCallControls;->setMediaState(Lcom/csipsimple/api/MediaState;)V

    .line 602
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v0}, Lcom/csipsimple/ui/incall/InCallActivity;->access$16(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/CallProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/ui/incall/CallProximityManager;->updateProximitySensorMode()V

    .line 603
    return-void
.end method

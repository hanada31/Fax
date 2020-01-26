.class Lcom/csipsimple/ui/incall/InCallActivity$2;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallActivity;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 797
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {p2}, Lcom/csipsimple/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/csipsimple/api/ISipService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->access$5(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/api/ISipService;)V

    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    iget-object v2, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v2}, Lcom/csipsimple/ui/incall/InCallActivity;->access$0(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/ISipService;

    move-result-object v2

    invoke-interface {v2}, Lcom/csipsimple/api/ISipService;->getCalls()[Lcom/csipsimple/api/SipCallSession;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->access$2(Lcom/csipsimple/ui/incall/InCallActivity;[Lcom/csipsimple/api/SipCallSession;)V

    .line 802
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->access$6(Lcom/csipsimple/ui/incall/InCallActivity;Z)V

    .line 804
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    new-instance v2, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;)V

    invoke-virtual {v1, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 805
    iget-object v1, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    new-instance v2, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;

    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;)V

    invoke-virtual {v1, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_0
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InCallActivity"

    const-string v2, "Can\'t get back the call"

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/csipsimple/ui/incall/InCallActivity;->access$6(Lcom/csipsimple/ui/incall/InCallActivity;Z)V

    .line 814
    iget-object v0, p0, Lcom/csipsimple/ui/incall/InCallActivity$2;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/csipsimple/ui/incall/InCallActivity;->access$2(Lcom/csipsimple/ui/incall/InCallActivity;[Lcom/csipsimple/api/SipCallSession;)V

    .line 815
    return-void
.end method

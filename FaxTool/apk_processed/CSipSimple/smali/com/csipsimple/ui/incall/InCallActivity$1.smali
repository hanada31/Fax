.class Lcom/csipsimple/ui/incall/InCallActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "InCallActivity.java"


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
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    .line 749
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 753
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.csipsimple.service.CALL_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 756
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v3}, Lcom/csipsimple/ui/incall/InCallActivity;->access$0(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/ISipService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 758
    :try_start_0
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v3}, Lcom/csipsimple/ui/incall/InCallActivity;->access$1(Lcom/csipsimple/ui/incall/InCallActivity;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :try_start_1
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    iget-object v5, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v5}, Lcom/csipsimple/ui/incall/InCallActivity;->access$0(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/ISipService;

    move-result-object v5

    invoke-interface {v5}, Lcom/csipsimple/api/ISipService;->getCalls()[Lcom/csipsimple/api/SipCallSession;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/csipsimple/ui/incall/InCallActivity;->access$2(Lcom/csipsimple/ui/incall/InCallActivity;[Lcom/csipsimple/api/SipCallSession;)V

    .line 760
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    new-instance v5, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;

    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;)V

    invoke-virtual {v3, v5}, Lcom/csipsimple/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 758
    monitor-exit v4

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 758
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 762
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "InCallActivity"

    const-string v4, "Not able to retrieve calls"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "com.csipsimple.service.MEDIA_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 767
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v3}, Lcom/csipsimple/ui/incall/InCallActivity;->access$0(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/ISipService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 770
    :try_start_3
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v3}, Lcom/csipsimple/ui/incall/InCallActivity;->access$0(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/ISipService;

    move-result-object v3

    invoke-interface {v3}, Lcom/csipsimple/api/ISipService;->getCurrentMediaState()Lcom/csipsimple/api/MediaState;

    move-result-object v2

    .line 771
    .local v2, "mediaState":Lcom/csipsimple/api/MediaState;
    const-string v3, "InCallActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Media update ...."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/csipsimple/api/MediaState;->isSpeakerphoneOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v3}, Lcom/csipsimple/ui/incall/InCallActivity;->access$1(Lcom/csipsimple/ui/incall/InCallActivity;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 773
    :try_start_4
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v3}, Lcom/csipsimple/ui/incall/InCallActivity;->access$3(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/api/MediaState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/csipsimple/api/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 774
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v3, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->access$4(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/api/MediaState;)V

    .line 775
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    new-instance v5, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;

    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;)V

    invoke-virtual {v3, v5}, Lcom/csipsimple/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 772
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 778
    .end local v2    # "mediaState":Lcom/csipsimple/api/MediaState;
    :catch_1
    move-exception v1

    .line 779
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "InCallActivity"

    const-string v4, "Can\'t get the media state "

    invoke-static {v3, v4, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 782
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v3, "com.csipsimple.service.SHOW_SAS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    iget-object v3, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    new-instance v4, Lcom/csipsimple/ui/incall/InCallActivity$ShowZRTPInfoRunnable;

    iget-object v5, p0, Lcom/csipsimple/ui/incall/InCallActivity$1;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    const-string v6, "android.intent.extra.UID"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "android.intent.extra.SUBJECT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/csipsimple/ui/incall/InCallActivity$ShowZRTPInfoRunnable;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/csipsimple/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.class Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;
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
    name = "UpdateUIFromCallRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallActivity;


# direct methods
.method private constructor <init>(Lcom/csipsimple/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;-><init>(Lcom/csipsimple/ui/incall/InCallActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, "mainCallInfo":Lcom/csipsimple/api/SipCallSession;
    const/4 v4, 0x0

    .line 489
    .local v4, "showCameraPreview":Z
    const/4 v3, 0x0

    .line 490
    .local v3, "mainsCalls":I
    const/4 v1, 0x0

    .line 492
    .local v1, "heldsCalls":I
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$1(Lcom/csipsimple/ui/incall/InCallActivity;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 494
    :try_start_0
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$7(Lcom/csipsimple/ui/incall/InCallActivity;)[Lcom/csipsimple/api/SipCallSession;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 495
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$7(Lcom/csipsimple/ui/incall/InCallActivity;)[Lcom/csipsimple/api/SipCallSession;

    move-result-object v8

    array-length v9, v8

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v9, :cond_5

    .line 492
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    add-int v6, v3, v1

    const/4 v7, 0x1

    if-lt v6, v7, :cond_8

    .line 521
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$9(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallControls;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/csipsimple/ui/incall/InCallControls;->setCallState(Lcom/csipsimple/api/SipCallSession;)V

    .line 522
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$10(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallAnswerControls;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setCallState(Lcom/csipsimple/api/SipCallSession;)V

    .line 528
    :goto_1
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$11(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallInfoGrid;

    move-result-object v7

    if-lez v1, :cond_9

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v7, v6}, Lcom/csipsimple/ui/incall/InCallInfoGrid;->setVisibility(I)V

    .line 530
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$12(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;->notifyDataSetChanged()V

    .line 531
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$13(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/csipsimple/ui/incall/InCallActivity$CallsAdapter;->notifyDataSetChanged()V

    .line 536
    if-eqz v2, :cond_2

    .line 537
    const-string v6, "InCallActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Active call is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v6, "InCallActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Update ui from call "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 539
    iget-object v8, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v2, v8}, Lcom/csipsimple/utils/CallsUtils;->getStringCallState(Lcom/csipsimple/api/SipCallSession;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 538
    invoke-static {v6, v7}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v2}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v5

    .line 545
    .local v5, "state":I
    packed-switch v5, :pswitch_data_0

    .line 567
    :cond_1
    :goto_3
    :pswitch_0
    const-string v6, "InCallActivity"

    const-string v7, "we leave the update ui function"

    invoke-static {v6, v7}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .end local v5    # "state":I
    :cond_2
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$16(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/CallProximityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/csipsimple/ui/incall/CallProximityManager;->updateProximitySensorMode()V

    .line 574
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$17(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/view/SurfaceView;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 575
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$17(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/view/SurfaceView;

    move-result-object v7

    if-eqz v4, :cond_a

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v7, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 576
    if-eqz v4, :cond_b

    .line 577
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$18(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 578
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$18(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 589
    :cond_3
    :goto_5
    add-int v6, v1, v3

    if-nez v6, :cond_4

    .line 590
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$15(Lcom/csipsimple/ui/incall/InCallActivity;)V

    .line 592
    :cond_4
    :goto_6
    return-void

    .line 495
    :cond_5
    :try_start_1
    aget-object v0, v8, v6

    .line 496
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    const-string v10, "InCallActivity"

    .line 497
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "We have a call "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getCallState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 498
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 497
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 496
    invoke-static {v10, v11}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->isAfterEnded()Z

    move-result v10

    if-nez v10, :cond_6

    .line 501
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->isLocalHeld()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 502
    add-int/lit8 v1, v1, 0x1

    .line 506
    :goto_7
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->mediaHasVideo()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 507
    const/4 v4, 0x1

    .line 511
    :cond_6
    iget-object v10, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v10, v0, v2}, Lcom/csipsimple/ui/incall/InCallActivity;->access$8(Lcom/csipsimple/ui/incall/InCallActivity;Lcom/csipsimple/api/SipCallSession;Lcom/csipsimple/api/SipCallSession;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v2

    .line 495
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 504
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 492
    .end local v0    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 524
    :cond_8
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$9(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallControls;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/csipsimple/ui/incall/InCallControls;->setCallState(Lcom/csipsimple/api/SipCallSession;)V

    .line 525
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$10(Lcom/csipsimple/ui/incall/InCallActivity;)Lcom/csipsimple/ui/incall/InCallAnswerControls;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/csipsimple/ui/incall/InCallAnswerControls;->setCallState(Lcom/csipsimple/api/SipCallSession;)V

    goto/16 :goto_1

    .line 528
    :cond_9
    const/16 v6, 0x8

    goto/16 :goto_2

    .line 551
    .restart local v5    # "state":I
    :pswitch_1
    const-string v6, "InCallActivity"

    const-string v7, "Acquire wake up lock"

    invoke-static {v6, v7}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$14(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$14(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-nez v6, :cond_1

    .line 553
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$14(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_3

    .line 560
    :pswitch_2
    const-string v6, "InCallActivity"

    const-string v7, "Active call session is disconnected or null wait for quit..."

    invoke-static {v6, v7}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$15(Lcom/csipsimple/ui/incall/InCallActivity;)V

    goto/16 :goto_6

    .line 575
    .end local v5    # "state":I
    :cond_a
    const/16 v6, 0x8

    goto/16 :goto_4

    .line 582
    :cond_b
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$18(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$18(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 583
    iget-object v6, p0, Lcom/csipsimple/ui/incall/InCallActivity$UpdateUIFromCallRunnable;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    invoke-static {v6}, Lcom/csipsimple/ui/incall/InCallActivity;->access$18(Lcom/csipsimple/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/csipsimple/pjsip/UAStateReceiver$1;
.super Lcom/csipsimple/service/SipService$SipRunnable;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/pjsip/UAStateReceiver;->on_reg_state(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

.field private final synthetic val$accountId:I


# direct methods
.method constructor <init>(Lcom/csipsimple/pjsip/UAStateReceiver;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    iput p2, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    .line 349
    invoke-direct {p0}, Lcom/csipsimple/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc8

    .line 353
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "New reg state for : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v3}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v3

    iget v4, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-virtual {v3, v4}, Lcom/csipsimple/pjsip/PjSipService;->updateProfileStateFromService(I)V

    .line 357
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v3}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v3

    iget v4, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-virtual {v3, v4}, Lcom/csipsimple/pjsip/PjSipService;->getAccountForPjsipId(I)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 358
    .local v0, "account":Lcom/csipsimple/api/SipProfile;
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/csipsimple/api/SipProfile;->try_clean_registers:I

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/csipsimple/api/SipProfile;->active:Z

    if-eqz v3, :cond_1

    .line 359
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v3}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$4(Lcom/csipsimple/pjsip/UAStateReceiver;)Lcom/csipsimple/pjsip/PjSipService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/csipsimple/pjsip/PjSipService;->getProfileState(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfileState;

    move-result-object v1

    .line 360
    .local v1, "pState":Lcom/csipsimple/api/SipProfileState;
    if-eqz v1, :cond_1

    .line 361
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "We have a new status "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfileState;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 363
    iget-object v5, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v5}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$11(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 364
    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfileState;->getExpires()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfileState;->getStatusCode()I

    move-result v3

    if-le v3, v7, :cond_2

    .line 369
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v3}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$11(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 370
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while registering for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 371
    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfileState;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfileState;->getStatusText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 370
    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v3}, Lorg/pjsip/pjsua/pjsua;->acc_clean_all_registrations(I)I

    move-result v2

    .line 375
    .local v2, "state":I
    sget v3, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v2, v3, :cond_0

    .line 376
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v3}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$11(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v2    # "state":I
    :cond_0
    :goto_0
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pending clean ups are  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v5}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$11(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .end local v1    # "pState":Lcom/csipsimple/api/SipProfileState;
    :cond_1
    return-void

    .line 379
    .restart local v1    # "pState":Lcom/csipsimple/api/SipProfileState;
    :cond_2
    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfileState;->getStatusCode()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 380
    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfileState;->getExpires()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 381
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v3}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$11(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 383
    iget v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/pjsip/pjsua/pjsua;->acc_set_registration(II)I

    move-result v2

    .line 384
    .restart local v2    # "state":I
    sget v3, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v2, v3, :cond_3

    .line 385
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v3}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$11(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_3
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Impossible to set again registration now "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    .end local v2    # "state":I
    :cond_4
    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfileState;->getStatusCode()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 392
    iget-object v3, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->this$0:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {v3}, Lcom/csipsimple/pjsip/UAStateReceiver;->access$11(Lcom/csipsimple/pjsip/UAStateReceiver;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/csipsimple/pjsip/UAStateReceiver$1;->val$accountId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

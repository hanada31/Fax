.class public final Lcom/csipsimple/pjsip/PjSipCalls;
.super Ljava/lang/Object;
.source "PjSipCalls.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "PjSipCalls"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static dumpCallInfo(I)Ljava/lang/String;
    .locals 2
    .param p0, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 143
    sget v0, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    const-string v1, " "

    invoke-static {p0, v0, v1}, Lorg/pjsip/pjsua/pjsua;->call_dump(IILjava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static updateSession(Lcom/csipsimple/api/SipCallSession;Lorg/pjsip/pjsua/pjsua_call_info;Lcom/csipsimple/pjsip/PjSipService;)V
    .locals 6
    .param p0, "session"    # Lcom/csipsimple/api/SipCallSession;
    .param p1, "pjCallInfo"    # Lorg/pjsip/pjsua/pjsua_call_info;
    .param p2, "service"    # Lcom/csipsimple/pjsip/PjSipService;

    .prologue
    .line 117
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/csipsimple/api/SipCallSession;->setCallId(I)V

    .line 121
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getState()Lorg/pjsip/pjsua/pjsip_inv_state;

    move-result-object v2

    invoke-virtual {v2}, Lorg/pjsip/pjsua/pjsip_inv_state;->swigValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/csipsimple/api/SipCallSession;->setCallState(I)V

    .line 122
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getMedia_status()Lorg/pjsip/pjsua/pjsua_call_media_status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/pjsip/pjsua/pjsua_call_media_status;->swigValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/csipsimple/api/SipCallSession;->setMediaStatus(I)V

    .line 123
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getRemote_info()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/csipsimple/api/SipCallSession;->setRemoteContact(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getConf_slot()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/csipsimple/api/SipCallSession;->setConfPort(I)V

    .line 127
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getAcc_id()I

    move-result v1

    .line 128
    .local v1, "pjAccId":I
    invoke-virtual {p2, v1}, Lcom/csipsimple/pjsip/PjSipService;->getAccountIdForPjsipId(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/api/SipCallSession;->setAccId(J)V

    .line 130
    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_info;->getConnect_duration()Lorg/pjsip/pjsua/pj_time_val;

    move-result-object v0

    .line 131
    .local v0, "duration":Lorg/pjsip/pjsua/pj_time_val;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pj_time_val;->getSec()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 132
    invoke-virtual {v0}, Lorg/pjsip/pjsua/pj_time_val;->getMsec()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 131
    invoke-virtual {p0, v2, v3}, Lcom/csipsimple/api/SipCallSession;->setConnectStart(J)V

    .line 133
    return-void
.end method

.method public static updateSessionFromPj(Lcom/csipsimple/api/SipCallSession;Lorg/pjsip/pjsua/pjsip_event;Lcom/csipsimple/pjsip/PjSipService;)V
    .locals 12
    .param p0, "session"    # Lcom/csipsimple/api/SipCallSession;
    .param p1, "e"    # Lorg/pjsip/pjsua/pjsip_event;
    .param p2, "service"    # Lcom/csipsimple/pjsip/PjSipService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 61
    const-string v7, "PjSipCalls"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Update call "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lorg/pjsip/pjsua/pjsua_call_info;

    invoke-direct {v1}, Lorg/pjsip/pjsua/pjsua_call_info;-><init>()V

    .line 63
    .local v1, "pjInfo":Lorg/pjsip/pjsua/pjsua_call_info;
    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v7

    invoke-static {v7, v1}, Lorg/pjsip/pjsua/pjsua;->call_get_info(ILorg/pjsip/pjsua/pjsua_call_info;)I

    move-result v3

    .line 65
    .local v3, "status":I
    sget v7, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    if-ne v3, v7, :cond_5

    .line 67
    invoke-static {p0, v1, p2}, Lcom/csipsimple/pjsip/PjSipCalls;->updateSession(Lcom/csipsimple/api/SipCallSession;Lorg/pjsip/pjsua/pjsua_call_info;Lcom/csipsimple/pjsip/PjSipService;)V

    .line 70
    if-eqz p1, :cond_1

    .line 71
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->get_event_status_code(Lorg/pjsip/pjsua/pjsip_event;)I

    move-result v4

    .line 72
    .local v4, "status_code":I
    if-nez v4, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjsua_call_info;->getLast_status()Lorg/pjsip/pjsua/pjsip_status_code;

    move-result-object v7

    invoke-virtual {v7}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/csipsimple/api/SipCallSession;->setLastStatusCode(I)V

    .line 80
    const-string v7, "PjSipCalls"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Last status code is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjsua_call_info;->getLast_status_text()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    invoke-static {v7}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "status_text":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/csipsimple/api/SipCallSession;->setLastStatusComment(Ljava/lang/String;)V

    .line 88
    .end local v4    # "status_code":I
    .end local v5    # "status_text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v7

    .line 87
    invoke-static {v7}, Lorg/pjsip/pjsua/pjsua;->call_secure_info(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    invoke-static {v7}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "secureInfo":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/csipsimple/api/SipCallSession;->setMediaSecureInfo(Ljava/lang/String;)V

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_1
    invoke-virtual {p0, v7}, Lcom/csipsimple/api/SipCallSession;->setMediaSecure(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v7

    invoke-static {v7}, Lorg/pjsip/pjsua/pjsua;->call_get_vid_stream_idx(I)I

    move-result v6

    .line 94
    .local v6, "vidStreamIdx":I
    if-ltz v6, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v7

    sget-object v10, Lorg/pjsip/pjsua/pjmedia_dir;->PJMEDIA_DIR_DECODING:Lorg/pjsip/pjsua/pjmedia_dir;

    invoke-static {v7, v6, v10}, Lorg/pjsip/pjsua/pjsua;->call_vid_stream_is_running(IILorg/pjsip/pjsua/pjmedia_dir;)I

    move-result v0

    .line 96
    .local v0, "hasVid":I
    sget v7, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    if-ne v0, v7, :cond_4

    :goto_2
    invoke-virtual {p0, v9}, Lcom/csipsimple/api/SipCallSession;->setMediaHasVideo(Z)V

    .line 105
    .end local v0    # "hasVid":I
    .end local v2    # "secureInfo":Ljava/lang/String;
    .end local v6    # "vidStreamIdx":I
    :cond_2
    :goto_3
    return-void

    .restart local v2    # "secureInfo":Ljava/lang/String;
    :cond_3
    move v7, v9

    .line 90
    goto :goto_1

    .restart local v0    # "hasVid":I
    .restart local v6    # "vidStreamIdx":I
    :cond_4
    move v9, v8

    .line 96
    goto :goto_2

    .line 101
    .end local v0    # "hasVid":I
    .end local v2    # "secureInfo":Ljava/lang/String;
    .end local v6    # "vidStreamIdx":I
    :cond_5
    const-string v7, "PjSipCalls"

    .line 102
    const-string v8, "Call info from does not exists in stack anymore - assume it has been disconnected"

    .line 101
    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v7, Lorg/pjsip/pjsua/pjsip_inv_state;->PJSIP_INV_STATE_DISCONNECTED:Lorg/pjsip/pjsua/pjsip_inv_state;

    invoke-virtual {v7}, Lorg/pjsip/pjsua/pjsip_inv_state;->swigValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/csipsimple/api/SipCallSession;->setCallState(I)V

    goto :goto_3

    .line 75
    .restart local v4    # "status_code":I
    :catch_0
    move-exception v7

    goto :goto_0
.end method

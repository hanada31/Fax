.class public Lorg/pjsip/pjsua/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_Callback()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/Callback;-><init>(JZ)V

    .line 175
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    iget-boolean v2, p0, Lorg/pjsip/pjsua/Callback;->swigCMemOwn:Z

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_director_connect(Lorg/pjsip/pjsua/Callback;JZZ)V

    .line 176
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lorg/pjsip/pjsua/Callback;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/Callback;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/Callback;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/Callback;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/Callback;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_Callback(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/pjsip/pjsua/Callback;->delete()V

    .line 26
    return-void
.end method

.method public on_buddy_state(I)V
    .locals 2
    .param p1, "buddy_id"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_buddy_state(JLorg/pjsip/pjsua/Callback;I)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_buddy_stateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;I)V

    goto :goto_0
.end method

.method public on_call_media_state(I)V
    .locals 2
    .param p1, "call_id"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_media_state(JLorg/pjsip/pjsua/Callback;I)V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_media_stateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;I)V

    goto :goto_0
.end method

.method public on_call_redirected(ILorg/pjsip/pjsua/pj_str_t;)Lorg/pjsip/pjsua/pjsip_redirect_op;
    .locals 7
    .param p1, "call_id"    # I
    .param p2, "target"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_redirected(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Lorg/pjsip/pjsua/pjsip_redirect_op;->swigToEnum(I)Lorg/pjsip/pjsua/pjsip_redirect_op;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_redirectedSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;)I

    move-result v0

    goto :goto_0
.end method

.method public on_call_replace_request(ILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;Lorg/pjsip/pjsua/SWIGTYPE_p_int;Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 11
    .param p1, "call_id"    # I
    .param p2, "rdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;
    .param p3, "st_code"    # Lorg/pjsip/pjsua/SWIGTYPE_p_int;
    .param p4, "st_text"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/SWIGTYPE_p_int;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_int;)J

    move-result-wide v6

    invoke-static {p4}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v8

    move-object v2, p0

    move v3, p1

    move-object v10, p4

    invoke-static/range {v0 .. v10}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_replace_request(JLorg/pjsip/pjsua/Callback;IJJJLorg/pjsip/pjsua/pj_str_t;)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/SWIGTYPE_p_int;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_int;)J

    move-result-wide v6

    invoke-static {p4}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v8

    move-object v2, p0

    move v3, p1

    move-object v10, p4

    invoke-static/range {v0 .. v10}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_replace_requestSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJJJLorg/pjsip/pjsua/pj_str_t;)V

    goto :goto_0
.end method

.method public on_call_replaced(II)V
    .locals 2
    .param p1, "old_call_id"    # I
    .param p2, "new_call_id"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_replaced(JLorg/pjsip/pjsua/Callback;II)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_replacedSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;II)V

    goto :goto_0
.end method

.method public on_call_sdp_created(ILorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;)V
    .locals 11
    .param p1, "call_id"    # I
    .param p2, "sdp"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;
    .param p3, "pool"    # Lorg/pjsip/pjsua/pj_pool_t;
    .param p4, "rem_sdp"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v6

    invoke-static {p4}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;)J

    move-result-wide v9

    move-object v2, p0

    move v3, p1

    move-object v8, p3

    invoke-static/range {v0 .. v10}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_sdp_created(JLorg/pjsip/pjsua/Callback;IJJLorg/pjsip/pjsua/pj_pool_t;J)V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/pj_pool_t;->getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v6

    invoke-static {p4}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;)J

    move-result-wide v9

    move-object v2, p0

    move v3, p1

    move-object v8, p3

    invoke-static/range {v0 .. v10}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_sdp_createdSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJJLorg/pjsip/pjsua/pj_pool_t;J)V

    goto :goto_0
.end method

.method public on_call_state(ILorg/pjsip/pjsua/pjsip_event;)V
    .locals 7
    .param p1, "call_id"    # I
    .param p2, "e"    # Lorg/pjsip/pjsua/pjsip_event;

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsip_event;->getCPtr(Lorg/pjsip/pjsua/pjsip_event;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_state(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pjsip_event;)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pjsip_event;->getCPtr(Lorg/pjsip/pjsua/pjsip_event;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_stateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pjsip_event;)V

    goto :goto_0
.end method

.method public on_call_transfer_request(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_status_code;)V
    .locals 9
    .param p1, "call_id"    # I
    .param p2, "dst"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "code"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_status_code;

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_status_code;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_status_code;)J

    move-result-wide v7

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_transfer_request(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;J)V

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_status_code;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_status_code;)J

    move-result-wide v7

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_transfer_requestSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;J)V

    goto :goto_0
.end method

.method public on_call_transfer_status(IILorg/pjsip/pjsua/pj_str_t;ILorg/pjsip/pjsua/SWIGTYPE_p_int;)V
    .locals 11
    .param p1, "call_id"    # I
    .param p2, "st_code"    # I
    .param p3, "st_text"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "final_"    # I
    .param p5, "p_cont"    # Lorg/pjsip/pjsua/SWIGTYPE_p_int;

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v5

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/SWIGTYPE_p_int;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_int;)J

    move-result-wide v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    move v8, p4

    invoke-static/range {v0 .. v10}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_transfer_status(JLorg/pjsip/pjsua/Callback;IIJLorg/pjsip/pjsua/pj_str_t;IJ)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v5

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/SWIGTYPE_p_int;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_int;)J

    move-result-wide v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    move v8, p4

    invoke-static/range {v0 .. v10}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_transfer_statusSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IIJLorg/pjsip/pjsua/pj_str_t;IJ)V

    goto :goto_0
.end method

.method public on_call_tsx_state(ILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;Lorg/pjsip/pjsua/pjsip_event;)V
    .locals 9
    .param p1, "call_id"    # I
    .param p2, "tsx"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;
    .param p3, "e"    # Lorg/pjsip/pjsua/pjsip_event;

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/pjsip_event;->getCPtr(Lorg/pjsip/pjsua/pjsip_event;)J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_tsx_state(JLorg/pjsip/pjsua/Callback;IJJLorg/pjsip/pjsua/pjsip_event;)V

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/pjsip_event;->getCPtr(Lorg/pjsip/pjsua/pjsip_event;)J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_call_tsx_stateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJJLorg/pjsip/pjsua/pjsip_event;)V

    goto :goto_0
.end method

.method public on_dtmf_digit(II)V
    .locals 2
    .param p1, "call_id"    # I
    .param p2, "digit"    # I

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_dtmf_digit(JLorg/pjsip/pjsua/Callback;II)V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_dtmf_digitSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;II)V

    goto :goto_0
.end method

.method public on_incoming_call(IILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)V
    .locals 7
    .param p1, "acc_id"    # I
    .param p2, "call_id"    # I
    .param p3, "rdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_incoming_call(JLorg/pjsip/pjsua/Callback;IIJ)V

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_incoming_callSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IIJ)V

    goto :goto_0
.end method

.method public on_mwi_info(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 10
    .param p1, "acc_id"    # I
    .param p2, "mime_type"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "body"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v7

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_mwi_info(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static {p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v7

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_mwi_infoSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)V

    goto :goto_0
.end method

.method public on_nat_detect(Lorg/pjsip/pjsua/pj_stun_nat_detect_result;)V
    .locals 6
    .param p1, "res"    # Lorg/pjsip/pjsua/pj_stun_nat_detect_result;

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_stun_nat_detect_result;->getCPtr(Lorg/pjsip/pjsua/pj_stun_nat_detect_result;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_nat_detect(JLorg/pjsip/pjsua/Callback;JLorg/pjsip/pjsua/pj_stun_nat_detect_result;)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_stun_nat_detect_result;->getCPtr(Lorg/pjsip/pjsua/pj_stun_nat_detect_result;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_nat_detectSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;JLorg/pjsip/pjsua/pj_stun_nat_detect_result;)V

    goto :goto_0
.end method

.method public on_pager(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 20
    .param p1, "call_id"    # I
    .param p2, "from"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "contact"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p5, "mime_type"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p6, "body"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 110
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/pjsip/pjsua/Callback;

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v5

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v8

    invoke-static/range {p4 .. p4}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v11

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v14

    invoke-static/range {p6 .. p6}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v17

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    move-object/from16 v19, p6

    invoke-static/range {v1 .. v19}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_pager(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v5

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v8

    invoke-static/range {p4 .. p4}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v11

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v14

    invoke-static/range {p6 .. p6}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v17

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    move-object/from16 v19, p6

    invoke-static/range {v1 .. v19}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_pagerSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)V

    goto :goto_0
.end method

.method public on_pager2(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)V
    .locals 22
    .param p1, "call_id"    # I
    .param p2, "from"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "contact"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p5, "mime_type"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p6, "body"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p7, "rdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    .prologue
    .line 114
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/pjsip/pjsua/Callback;

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v5

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v8

    invoke-static/range {p4 .. p4}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v11

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v14

    invoke-static/range {p6 .. p6}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v17

    invoke-static/range {p7 .. p7}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v20

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    move-object/from16 v19, p6

    invoke-static/range {v1 .. v21}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_pager2(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;J)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v5

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v8

    invoke-static/range {p4 .. p4}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v11

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v14

    invoke-static/range {p6 .. p6}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v17

    invoke-static/range {p7 .. p7}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v20

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    move-object/from16 v13, p4

    move-object/from16 v16, p5

    move-object/from16 v19, p6

    invoke-static/range {v1 .. v21}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_pager2SwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;J)V

    goto :goto_0
.end method

.method public on_pager_status(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsip_status_code;Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 14
    .param p1, "call_id"    # I
    .param p2, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "body"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "status"    # Lorg/pjsip/pjsua/pjsip_status_code;
    .param p5, "reason"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v7

    invoke-virtual/range {p4 .. p4}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v10

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v11

    move-object v2, p0

    move v3, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move-object/from16 v13, p5

    invoke-static/range {v0 .. v13}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_pager_status(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pj_str_t;)V

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v7

    invoke-virtual/range {p4 .. p4}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v10

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v11

    move-object v2, p0

    move v3, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move-object/from16 v13, p5

    invoke-static/range {v0 .. v13}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_pager_statusSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pj_str_t;)V

    goto :goto_0
.end method

.method public on_pager_status2(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsip_status_code;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tx_data;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)V
    .locals 19
    .param p1, "call_id"    # I
    .param p2, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "body"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "status"    # Lorg/pjsip/pjsua/pjsip_status_code;
    .param p5, "reason"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p6, "tdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tx_data;
    .param p7, "rdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    .prologue
    .line 122
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/pjsip/pjsua/Callback;

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v5

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v11

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v12

    invoke-static/range {p6 .. p6}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tx_data;)J

    move-result-wide v15

    invoke-static/range {p7 .. p7}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v17

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    move-object/from16 v14, p5

    invoke-static/range {v1 .. v18}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_pager_status2(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pj_str_t;JJ)V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v5

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v11

    invoke-static/range {p5 .. p5}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v12

    invoke-static/range {p6 .. p6}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tx_data;)J

    move-result-wide v15

    invoke-static/range {p7 .. p7}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v17

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    move-object/from16 v14, p5

    invoke-static/range {v1 .. v18}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_pager_status2SwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pj_str_t;JJ)V

    goto :goto_0
.end method

.method public on_reg_state(I)V
    .locals 2
    .param p1, "acc_id"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_reg_state(JLorg/pjsip/pjsua/Callback;I)V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_reg_stateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;I)V

    goto :goto_0
.end method

.method public on_set_micro_source()I
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_set_micro_source(JLorg/pjsip/pjsua/Callback;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_set_micro_sourceSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;)I

    move-result v0

    goto :goto_0
.end method

.method public on_setup_audio()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_setup_audio(JLorg/pjsip/pjsua/Callback;)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_setup_audioSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;)V

    goto :goto_0
.end method

.method public on_stream_created(ILorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;JLorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;)V
    .locals 10
    .param p1, "call_id"    # I
    .param p2, "strm"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;
    .param p3, "stream_idx"    # J
    .param p5, "p_port"    # Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;)J

    move-result-wide v4

    invoke-static {p5}, Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;)J

    move-result-wide v8

    move-object v2, p0

    move v3, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v9}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_stream_created(JLorg/pjsip/pjsua/Callback;IJJJ)V

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;)J

    move-result-wide v4

    invoke-static {p5}, Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;)J

    move-result-wide v8

    move-object v2, p0

    move v3, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v9}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_stream_createdSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJJJ)V

    goto :goto_0
.end method

.method public on_stream_destroyed(ILorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;J)V
    .locals 8
    .param p1, "call_id"    # I
    .param p2, "strm"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;
    .param p3, "stream_idx"    # J

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_stream_destroyed(JLorg/pjsip/pjsua/Callback;IJJ)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_stream_destroyedSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJJ)V

    goto :goto_0
.end method

.method public on_teardown_audio()V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_teardown_audio(JLorg/pjsip/pjsua/Callback;)V

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_teardown_audioSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;)V

    goto :goto_0
.end method

.method public on_typing(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;I)V
    .locals 14
    .param p1, "call_id"    # I
    .param p2, "from"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "contact"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p5, "is_typing"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v7

    invoke-static/range {p4 .. p4}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v10

    move-object v2, p0

    move v3, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v0 .. v13}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_typing(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;I)V

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static/range {p2 .. p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    invoke-static/range {p3 .. p3}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v7

    invoke-static/range {p4 .. p4}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v10

    move-object v2, p0

    move v3, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v0 .. v13}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_typingSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;I)V

    goto :goto_0
.end method

.method public on_validate_audio_clock_rate(I)I
    .locals 2
    .param p1, "clock_rate"    # I

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_validate_audio_clock_rate(JLorg/pjsip/pjsua/Callback;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_validate_audio_clock_rateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;I)I

    move-result v0

    goto :goto_0
.end method

.method public on_zrtp_show_sas(ILorg/pjsip/pjsua/pj_str_t;I)V
    .locals 8
    .param p1, "data"    # I
    .param p2, "sas"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "verified"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_zrtp_show_sas(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;I)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_zrtp_show_sasSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;I)V

    goto :goto_0
.end method

.method public on_zrtp_update_transport(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_zrtp_update_transport(JLorg/pjsip/pjsua/Callback;I)V

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_on_zrtp_update_transportSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;I)V

    goto :goto_0
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/Callback;->swigCMemOwn:Z

    .line 40
    invoke-virtual {p0}, Lorg/pjsip/pjsua/Callback;->delete()V

    .line 41
    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iput-boolean v2, p0, Lorg/pjsip/pjsua/Callback;->swigCMemOwn:Z

    .line 45
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_change_ownership(Lorg/pjsip/pjsua/Callback;JZ)V

    .line 46
    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    iput-boolean v2, p0, Lorg/pjsip/pjsua/Callback;->swigCMemOwn:Z

    .line 50
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_change_ownership(Lorg/pjsip/pjsua/Callback;JZ)V

    .line 51
    return-void
.end method

.method public timer_cancel(II)I
    .locals 2
    .param p1, "entry"    # I
    .param p2, "entryId"    # I

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_timer_cancel(JLorg/pjsip/pjsua/Callback;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_timer_cancelSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;II)I

    move-result v0

    goto :goto_0
.end method

.method public timer_schedule(III)I
    .locals 6
    .param p1, "entry"    # I
    .param p2, "entryId"    # I
    .param p3, "time"    # I

    .prologue
    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/pjsip/pjsua/Callback;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_timer_schedule(JLorg/pjsip/pjsua/Callback;III)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/Callback;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->Callback_timer_scheduleSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;III)I

    move-result v0

    goto :goto_0
.end method

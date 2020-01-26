.class public Lorg/pjsip/pjsua/pjsua_callback;
.super Ljava/lang/Object;
.source "pjsua_callback.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 380
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_callback()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_callback;-><init>(JZ)V

    .line 381
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_callback;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_callback;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_callback(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_callback;->delete()V

    .line 26
    return-void
.end method

.method public getOn_buddy_evsub_state()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub_p_pjsip_event__void;
    .locals 4

    .prologue
    .line 232
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_buddy_evsub_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 233
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub_p_pjsip_event__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub_p_pjsip_event__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_buddy_state()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;
    .locals 4

    .prologue
    .line 223
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_buddy_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 224
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_media_event()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_event__void;
    .locals 4

    .prologue
    .line 366
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_media_event_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 367
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_event__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_event__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_media_state()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;
    .locals 4

    .prologue
    .line 70
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_media_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 71
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_media_transport_state()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsua_med_tp_state_info__int;
    .locals 4

    .prologue
    .line 339
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_media_transport_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 340
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsua_med_tp_state_info__int;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsua_med_tp_state_info__int;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_redirected()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsip_uri_p_q_const__pjsip_event__pjsip_redirect_op;
    .locals 4

    .prologue
    .line 304
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_redirected_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 305
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsip_uri_p_q_const__pjsip_event__pjsip_redirect_op;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsip_uri_p_q_const__pjsip_event__pjsip_redirect_op;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_replace_request()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t__void;
    .locals 4

    .prologue
    .line 142
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_replace_request_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 143
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_replace_request2()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t_p_pjsua_call_setting__void;
    .locals 4

    .prologue
    .line 151
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_replace_request2_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 152
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t_p_pjsua_call_setting__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t_p_pjsua_call_setting__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_replaced()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;
    .locals 4

    .prologue
    .line 160
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_replaced_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 161
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_rx_offer()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjmedia_sdp_session_p_void_p_enum_pjsip_status_code_p_pjsua_call_setting__void;
    .locals 4

    .prologue
    .line 169
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_rx_offer_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 170
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjmedia_sdp_session_p_void_p_enum_pjsip_status_code_p_pjsua_call_setting__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjmedia_sdp_session_p_void_p_enum_pjsip_status_code_p_pjsua_call_setting__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_sdp_created()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_sdp_session_p_pj_pool_t_p_q_const__pjmedia_sdp_session__void;
    .locals 4

    .prologue
    .line 79
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_sdp_created_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 80
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_sdp_session_p_pj_pool_t_p_q_const__pjmedia_sdp_session__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_sdp_session_p_pj_pool_t_p_q_const__pjmedia_sdp_session__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_state()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_event__void;
    .locals 4

    .prologue
    .line 43
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 44
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_event__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_event__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_transfer_request()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code__void;
    .locals 4

    .prologue
    .line 115
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_transfer_request_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 116
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_transfer_request2()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code_p_pjsua_call_setting__void;
    .locals 4

    .prologue
    .line 124
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_transfer_request2_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 125
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code_p_pjsua_call_setting__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code_p_pjsua_call_setting__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_transfer_status()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_q_const__pj_str_t_int_p_int__void;
    .locals 4

    .prologue
    .line 133
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_transfer_status_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 134
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_q_const__pj_str_t_int_p_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_q_const__pj_str_t_int_p_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_call_tsx_state()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_transaction_p_pjsip_event__void;
    .locals 4

    .prologue
    .line 61
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_tsx_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 62
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_transaction_p_pjsip_event__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_transaction_p_pjsip_event__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_create_media_transport()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_transport_unsigned_int__p_pjmedia_transport;
    .locals 4

    .prologue
    .line 375
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_create_media_transport_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 376
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_transport_unsigned_int__p_pjmedia_transport;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_transport_unsigned_int__p_pjmedia_transport;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_dtmf_digit()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;
    .locals 4

    .prologue
    .line 106
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_dtmf_digit_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 107
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_ice_transport_error()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_pj_ice_strans_op_int_p_void__void;
    .locals 4

    .prologue
    .line 348
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_ice_transport_error_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 349
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_pj_ice_strans_op_int_p_void__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_pj_ice_strans_op_int_p_void__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_incoming_call()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_pjsip_rx_data__void;
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_incoming_call_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 53
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_pjsip_rx_data__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_pjsip_rx_data__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_incoming_subscribe()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_int_p_q_const__pj_str_t_p_pjsip_rx_data_p_enum_pjsip_status_code_p_pj_str_t_p_pjsua_msg_data__void;
    .locals 4

    .prologue
    .line 205
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_incoming_subscribe_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 206
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_int_p_q_const__pj_str_t_p_pjsip_rx_data_p_enum_pjsip_status_code_p_pj_str_t_p_pjsua_msg_data__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_int_p_q_const__pj_str_t_p_pjsip_rx_data_p_enum_pjsip_status_code_p_pj_str_t_p_pjsua_msg_data__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_mwi_info()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_mwi_info__void;
    .locals 4

    .prologue
    .line 322
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_mwi_info_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 323
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_mwi_info__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_mwi_info__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_mwi_state()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub__void;
    .locals 4

    .prologue
    .line 313
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_mwi_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 314
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_nat_detect()Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_nat_detect_result__void;
    .locals 4

    .prologue
    .line 295
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_nat_detect_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 296
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_nat_detect_result__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_nat_detect_result__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_pager()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t__void;
    .locals 4

    .prologue
    .line 241
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_pager_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 242
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_pager2()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_pjsip_rx_data_int__void;
    .locals 4

    .prologue
    .line 250
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_pager2_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 251
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_pjsip_rx_data_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_pjsip_rx_data_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_pager_status()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t__void;
    .locals 4

    .prologue
    .line 259
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_pager_status_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 260
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_pager_status2()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t_p_pjsip_tx_data_p_pjsip_rx_data_int__void;
    .locals 4

    .prologue
    .line 268
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_pager_status2_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 269
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t_p_pjsip_tx_data_p_pjsip_rx_data_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t_p_pjsip_tx_data_p_pjsip_rx_data_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_reg_started()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;
    .locals 4

    .prologue
    .line 178
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_reg_started_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 179
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_reg_state()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;
    .locals 4

    .prologue
    .line 187
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_reg_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 188
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_reg_state2()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_reg_info__void;
    .locals 4

    .prologue
    .line 196
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_reg_state2_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 197
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_reg_info__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_reg_info__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_snd_dev_operation()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__int;
    .locals 4

    .prologue
    .line 357
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_snd_dev_operation_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 358
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__int;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__int;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_srv_subscribe_state()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_p_q_const__pj_str_t_pjsip_evsub_state_p_pjsip_event__void;
    .locals 4

    .prologue
    .line 214
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_srv_subscribe_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 215
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_p_q_const__pj_str_t_pjsip_evsub_state_p_pjsip_event__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_p_q_const__pj_str_t_pjsip_evsub_state_p_pjsip_event__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_stream_created()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int_p_p_pjmedia_port__void;
    .locals 4

    .prologue
    .line 88
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_stream_created_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 89
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int_p_p_pjmedia_port__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int_p_p_pjmedia_port__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_stream_destroyed()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int__void;
    .locals 4

    .prologue
    .line 97
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_stream_destroyed_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 98
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_transport_state()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tp_state_callback;
    .locals 4

    .prologue
    .line 331
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tp_state_callback;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_transport_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tp_state_callback;-><init>(JZ)V

    return-object v0
.end method

.method public getOn_typing()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int__void;
    .locals 4

    .prologue
    .line 277
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_typing_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 278
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_typing2()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int_p_pjsip_rx_data_int__void;
    .locals 4

    .prologue
    .line 286
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_typing2_get(JLorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v0

    .line 287
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int_p_pjsip_rx_data_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int_p_pjsip_rx_data_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public setOn_buddy_evsub_state(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub_p_pjsip_event__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub_p_pjsip_event__void;

    .prologue
    .line 228
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub_p_pjsip_event__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub_p_pjsip_event__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_buddy_evsub_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 229
    return-void
.end method

.method public setOn_buddy_state(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;

    .prologue
    .line 219
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_buddy_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 220
    return-void
.end method

.method public setOn_call_media_event(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_event__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_event__void;

    .prologue
    .line 362
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_event__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_event__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_media_event_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 363
    return-void
.end method

.method public setOn_call_media_state(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_media_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 67
    return-void
.end method

.method public setOn_call_media_transport_state(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsua_med_tp_state_info__int;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsua_med_tp_state_info__int;

    .prologue
    .line 335
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsua_med_tp_state_info__int;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsua_med_tp_state_info__int;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_media_transport_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 336
    return-void
.end method

.method public setOn_call_redirected(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsip_uri_p_q_const__pjsip_event__pjsip_redirect_op;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsip_uri_p_q_const__pjsip_event__pjsip_redirect_op;

    .prologue
    .line 300
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsip_uri_p_q_const__pjsip_event__pjsip_redirect_op;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjsip_uri_p_q_const__pjsip_event__pjsip_redirect_op;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_redirected_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 301
    return-void
.end method

.method public setOn_call_replace_request(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t__void;

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_replace_request_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 139
    return-void
.end method

.method public setOn_call_replace_request2(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t_p_pjsua_call_setting__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t_p_pjsua_call_setting__void;

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t_p_pjsua_call_setting__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_rx_data_p_int_p_pj_str_t_p_pjsua_call_setting__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_replace_request2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 148
    return-void
.end method

.method public setOn_call_replaced(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_replaced_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 157
    return-void
.end method

.method public setOn_call_rx_offer(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjmedia_sdp_session_p_void_p_enum_pjsip_status_code_p_pjsua_call_setting__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjmedia_sdp_session_p_void_p_enum_pjsip_status_code_p_pjsua_call_setting__void;

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjmedia_sdp_session_p_void_p_enum_pjsip_status_code_p_pjsua_call_setting__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pjmedia_sdp_session_p_void_p_enum_pjsip_status_code_p_pjsua_call_setting__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_rx_offer_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 166
    return-void
.end method

.method public setOn_call_sdp_created(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_sdp_session_p_pj_pool_t_p_q_const__pjmedia_sdp_session__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_sdp_session_p_pj_pool_t_p_q_const__pjmedia_sdp_session__void;

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_sdp_session_p_pj_pool_t_p_q_const__pjmedia_sdp_session__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_sdp_session_p_pj_pool_t_p_q_const__pjmedia_sdp_session__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_sdp_created_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 76
    return-void
.end method

.method public setOn_call_state(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_event__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_event__void;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_event__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_event__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 40
    return-void
.end method

.method public setOn_call_transfer_request(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code__void;

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_transfer_request_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 112
    return-void
.end method

.method public setOn_call_transfer_request2(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code_p_pjsua_call_setting__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code_p_pjsua_call_setting__void;

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code_p_pjsua_call_setting__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_enum_pjsip_status_code_p_pjsua_call_setting__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_transfer_request2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 121
    return-void
.end method

.method public setOn_call_transfer_status(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_q_const__pj_str_t_int_p_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_q_const__pj_str_t_int_p_int__void;

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_q_const__pj_str_t_int_p_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_q_const__pj_str_t_int_p_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_transfer_status_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 130
    return-void
.end method

.method public setOn_call_tsx_state(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_transaction_p_pjsip_event__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_transaction_p_pjsip_event__void;

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_transaction_p_pjsip_event__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_transaction_p_pjsip_event__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_call_tsx_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 58
    return-void
.end method

.method public setOn_create_media_transport(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_transport_unsigned_int__p_pjmedia_transport;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_transport_unsigned_int__p_pjmedia_transport;

    .prologue
    .line 371
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_transport_unsigned_int__p_pjmedia_transport;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_unsigned_int_p_pjmedia_transport_unsigned_int__p_pjmedia_transport;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_create_media_transport_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 372
    return-void
.end method

.method public setOn_dtmf_digit(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_dtmf_digit_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 103
    return-void
.end method

.method public setOn_ice_transport_error(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_pj_ice_strans_op_int_p_void__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_pj_ice_strans_op_int_p_void__void;

    .prologue
    .line 344
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_pj_ice_strans_op_int_p_void__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_pj_ice_strans_op_int_p_void__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_ice_transport_error_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 345
    return-void
.end method

.method public setOn_incoming_call(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_pjsip_rx_data__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_pjsip_rx_data__void;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_pjsip_rx_data__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int_p_pjsip_rx_data__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_incoming_call_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 49
    return-void
.end method

.method public setOn_incoming_subscribe(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_int_p_q_const__pj_str_t_p_pjsip_rx_data_p_enum_pjsip_status_code_p_pj_str_t_p_pjsua_msg_data__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_int_p_q_const__pj_str_t_p_pjsip_rx_data_p_enum_pjsip_status_code_p_pj_str_t_p_pjsua_msg_data__void;

    .prologue
    .line 201
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_int_p_q_const__pj_str_t_p_pjsip_rx_data_p_enum_pjsip_status_code_p_pj_str_t_p_pjsua_msg_data__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_int_p_q_const__pj_str_t_p_pjsip_rx_data_p_enum_pjsip_status_code_p_pj_str_t_p_pjsua_msg_data__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_incoming_subscribe_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 202
    return-void
.end method

.method public setOn_mwi_info(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_mwi_info__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_mwi_info__void;

    .prologue
    .line 318
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_mwi_info__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_mwi_info__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_mwi_info_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 319
    return-void
.end method

.method public setOn_mwi_state(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub__void;

    .prologue
    .line 309
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsip_evsub__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_mwi_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 310
    return-void
.end method

.method public setOn_nat_detect(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_nat_detect_result__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_nat_detect_result__void;

    .prologue
    .line 291
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_nat_detect_result__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_q_const__pj_stun_nat_detect_result__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_nat_detect_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 292
    return-void
.end method

.method public setOn_pager(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t__void;

    .prologue
    .line 237
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_pager_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 238
    return-void
.end method

.method public setOn_pager2(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_pjsip_rx_data_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_pjsip_rx_data_int__void;

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_pjsip_rx_data_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_p_pjsip_rx_data_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_pager2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 247
    return-void
.end method

.method public setOn_pager_status(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t__void;

    .prologue
    .line 255
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_pager_status_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 256
    return-void
.end method

.method public setOn_pager_status2(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t_p_pjsip_tx_data_p_pjsip_rx_data_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t_p_pjsip_tx_data_p_pjsip_rx_data_int__void;

    .prologue
    .line 264
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t_p_pjsip_tx_data_p_pjsip_rx_data_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_void_enum_pjsip_status_code_p_q_const__pj_str_t_p_pjsip_tx_data_p_pjsip_rx_data_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_pager_status2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 265
    return-void
.end method

.method public setOn_reg_started(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;

    .prologue
    .line 174
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_reg_started_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 175
    return-void
.end method

.method public setOn_reg_state(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_reg_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 184
    return-void
.end method

.method public setOn_reg_state2(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_reg_info__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_reg_info__void;

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_reg_info__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_reg_info__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_reg_state2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 193
    return-void
.end method

.method public setOn_snd_dev_operation(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__int;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__int;

    .prologue
    .line 353
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__int;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int__int;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_snd_dev_operation_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 354
    return-void
.end method

.method public setOn_srv_subscribe_state(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_p_q_const__pj_str_t_pjsip_evsub_state_p_pjsip_event__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_p_q_const__pj_str_t_pjsip_evsub_state_p_pjsip_event__void;

    .prologue
    .line 210
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_p_q_const__pj_str_t_pjsip_evsub_state_p_pjsip_event__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjsua_srv_pres_p_q_const__pj_str_t_pjsip_evsub_state_p_pjsip_event__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_srv_subscribe_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 211
    return-void
.end method

.method public setOn_stream_created(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int_p_p_pjmedia_port__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int_p_p_pjmedia_port__void;

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int_p_p_pjmedia_port__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int_p_p_pjmedia_port__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_stream_created_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 85
    return-void
.end method

.method public setOn_stream_destroyed(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int__void;

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_pjmedia_stream_unsigned_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_stream_destroyed_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 94
    return-void
.end method

.method public setOn_transport_state(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tp_state_callback;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tp_state_callback;

    .prologue
    .line 327
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tp_state_callback;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tp_state_callback;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_transport_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 328
    return-void
.end method

.method public setOn_typing(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int__void;

    .prologue
    .line 273
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_typing_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 274
    return-void
.end method

.method public setOn_typing2(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int_p_pjsip_rx_data_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int_p_pjsip_rx_data_int__void;

    .prologue
    .line 282
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_callback;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int_p_pjsip_rx_data_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__pj_str_t_p_q_const__pj_str_t_p_q_const__pj_str_t_int_p_pjsip_rx_data_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_callback_on_typing2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V

    .line 283
    return-void
.end method

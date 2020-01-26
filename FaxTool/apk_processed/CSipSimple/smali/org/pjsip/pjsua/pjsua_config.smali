.class public Lorg/pjsip/pjsua/pjsua_config;
.super Ljava/lang/Object;
.source "pjsua_config.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 253
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_config()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_config;-><init>(JZ)V

    .line 254
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_config;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_config;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_config(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_config;->delete()V

    .line 26
    return-void
.end method

.method public getCb()Lorg/pjsip/pjsua/pjsua_callback;
    .locals 4

    .prologue
    .line 207
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_cb_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    .line 208
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsua_callback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsua_callback;-><init>(JZ)V

    goto :goto_0
.end method

.method public getCred_count()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_cred_count_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCred_info()Lorg/pjsip/pjsua/pjsip_cred_info;
    .locals 4

    .prologue
    .line 198
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_cred_info_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    .line 199
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsip_cred_info;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsip_cred_info;-><init>(JZ)V

    goto :goto_0
.end method

.method public getEnable_unsolicited_mwi()I
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_enable_unsolicited_mwi_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    return v0
.end method

.method public getForce_lr()I
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_force_lr_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    return v0
.end method

.method public getHangup_forked_call()I
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_hangup_forked_call_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    return v0
.end method

.method public getMax_calls()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_max_calls_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNameserver()[Lorg/pjsip/pjsua/pj_str_t;
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_nameserver_get(JLorg/pjsip/pjsua/pjsua_config;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pj_str_t;->cArrayWrap([JZ)[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    return-object v0
.end method

.method public getNameserver_count()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_nameserver_count_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNat_type_in_sdp()I
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_nat_type_in_sdp_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    return v0
.end method

.method public getOutbound_proxy()[Lorg/pjsip/pjsua/pj_str_t;
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_outbound_proxy_get(JLorg/pjsip/pjsua/pjsua_config;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pj_str_t;->cArrayWrap([JZ)[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    return-object v0
.end method

.method public getOutbound_proxy_cnt()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_outbound_proxy_cnt_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequire_100rel()Lorg/pjsip/pjsua/pjsua_100rel_use;
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_require_100rel_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_100rel_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_100rel_use;

    move-result-object v0

    return-object v0
.end method

.method public getSrtp_optional_dup_offer()I
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_srtp_optional_dup_offer_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    return v0
.end method

.method public getSrtp_secure_signaling()I
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_srtp_secure_signaling_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    return v0
.end method

.method public getStun_domain()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 99
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_domain_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    .line 100
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getStun_host()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 108
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_host_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    .line 109
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getStun_ignore_failure()I
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_ignore_failure_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    return v0
.end method

.method public getStun_map_use_stun2()I
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_map_use_stun2_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    return v0
.end method

.method public getStun_srv()[Lorg/pjsip/pjsua/pj_str_t;
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_srv_get(JLorg/pjsip/pjsua/pjsua_config;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pj_str_t;->cArrayWrap([JZ)[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    return-object v0
.end method

.method public getStun_srv_cnt()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_srv_cnt_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThread_cnt()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_thread_cnt_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimer_setting()Lorg/pjsip/pjsua/pjsip_timer_setting;
    .locals 4

    .prologue
    .line 181
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_timer_setting_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    .line 182
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsip_timer_setting;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsip_timer_setting;-><init>(JZ)V

    goto :goto_0
.end method

.method public getUse_srtp()Lorg/pjsip/pjsua/pjmedia_srtp_use;
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_use_srtp_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjmedia_srtp_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjmedia_srtp_use;

    move-result-object v0

    return-object v0
.end method

.method public getUse_timer()Lorg/pjsip/pjsua/pjsua_sip_timer_use;
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_use_timer_get(JLorg/pjsip/pjsua/pjsua_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    move-result-object v0

    return-object v0
.end method

.method public getUser_agent()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 216
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_user_agent_get(JLorg/pjsip/pjsua/pjsua_config;)J

    move-result-wide v0

    .line 217
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public setCb(Lorg/pjsip/pjsua/pjsua_callback;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_callback;

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_callback;->getCPtr(Lorg/pjsip/pjsua/pjsua_callback;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_cb_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pjsua_callback;)V

    .line 204
    return-void
.end method

.method public setCred_count(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_cred_count_set(JLorg/pjsip/pjsua/pjsua_config;J)V

    .line 187
    return-void
.end method

.method public setCred_info(Lorg/pjsip/pjsua/pjsip_cred_info;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsip_cred_info;

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsip_cred_info;->getCPtr(Lorg/pjsip/pjsua/pjsip_cred_info;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_cred_info_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pjsip_cred_info;)V

    .line 195
    return-void
.end method

.method public setEnable_unsolicited_mwi(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_enable_unsolicited_mwi_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 170
    return-void
.end method

.method public setForce_lr(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_force_lr_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 72
    return-void
.end method

.method public setHangup_forked_call(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 245
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_hangup_forked_call_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 246
    return-void
.end method

.method public setMax_calls(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_max_calls_set(JLorg/pjsip/pjsua/pjsua_config;J)V

    .line 40
    return-void
.end method

.method public setNameserver([Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 3
    .param p1, "value"    # [Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->cArrayUnwrap([Lorg/pjsip/pjsua/pj_str_t;)[J

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_nameserver_set(JLorg/pjsip/pjsua/pjsua_config;[J)V

    .line 64
    return-void
.end method

.method public setNameserver_count(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_nameserver_count_set(JLorg/pjsip/pjsua/pjsua_config;J)V

    .line 56
    return-void
.end method

.method public setNat_type_in_sdp(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 145
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_nat_type_in_sdp_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 146
    return-void
.end method

.method public setOutbound_proxy([Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 3
    .param p1, "value"    # [Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->cArrayUnwrap([Lorg/pjsip/pjsua/pj_str_t;)[J

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_outbound_proxy_set(JLorg/pjsip/pjsua/pjsua_config;[J)V

    .line 88
    return-void
.end method

.method public setOutbound_proxy_cnt(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_outbound_proxy_cnt_set(JLorg/pjsip/pjsua/pjsua_config;J)V

    .line 80
    return-void
.end method

.method public setRequire_100rel(Lorg/pjsip/pjsua/pjsua_100rel_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_100rel_use;

    .prologue
    .line 153
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_100rel_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_require_100rel_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 154
    return-void
.end method

.method public setSrtp_optional_dup_offer(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 237
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_srtp_optional_dup_offer_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 238
    return-void
.end method

.method public setSrtp_secure_signaling(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 229
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_srtp_secure_signaling_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 230
    return-void
.end method

.method public setStun_domain(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_domain_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 96
    return-void
.end method

.method public setStun_host(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_host_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 105
    return-void
.end method

.method public setStun_ignore_failure(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_ignore_failure_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 130
    return-void
.end method

.method public setStun_map_use_stun2(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_map_use_stun2_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 138
    return-void
.end method

.method public setStun_srv([Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 3
    .param p1, "value"    # [Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->cArrayUnwrap([Lorg/pjsip/pjsua/pj_str_t;)[J

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_srv_set(JLorg/pjsip/pjsua/pjsua_config;[J)V

    .line 122
    return-void
.end method

.method public setStun_srv_cnt(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_stun_srv_cnt_set(JLorg/pjsip/pjsua/pjsua_config;J)V

    .line 114
    return-void
.end method

.method public setThread_cnt(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_thread_cnt_set(JLorg/pjsip/pjsua/pjsua_config;J)V

    .line 48
    return-void
.end method

.method public setTimer_setting(Lorg/pjsip/pjsua/pjsip_timer_setting;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsip_timer_setting;

    .prologue
    .line 177
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsip_timer_setting;->getCPtr(Lorg/pjsip/pjsua/pjsip_timer_setting;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_timer_setting_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pjsip_timer_setting;)V

    .line 178
    return-void
.end method

.method public setUse_srtp(Lorg/pjsip/pjsua/pjmedia_srtp_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjmedia_srtp_use;

    .prologue
    .line 221
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjmedia_srtp_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_use_srtp_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 222
    return-void
.end method

.method public setUse_timer(Lorg/pjsip/pjsua/pjsua_sip_timer_use;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_sip_timer_use;

    .prologue
    .line 161
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_sip_timer_use;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_use_timer_set(JLorg/pjsip/pjsua/pjsua_config;I)V

    .line 162
    return-void
.end method

.method public setUser_agent(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 212
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_config_user_agent_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 213
    return-void
.end method

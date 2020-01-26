.class public Lorg/pjsip/pjsua/pjsua_media_config;
.super Ljava/lang/Object;
.source "pjsua_media_config.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 288
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_media_config()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;-><init>(JZ)V

    .line 289
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_media_config;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_media_config;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_media_config(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_media_config;->delete()V

    .line 26
    return-void
.end method

.method public getAudio_frame_ptime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_audio_frame_ptime_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChannel_count()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_channel_count_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock_rate()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_clock_rate_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEc_options()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ec_options_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEc_tail_len()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ec_tail_len_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnable_ice()I
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_enable_ice_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getEnable_turn()I
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_enable_turn_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getHas_ioqueue()I
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_has_ioqueue_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getIce_max_host_cands()I
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ice_max_host_cands_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getIce_no_rtcp()I
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ice_no_rtcp_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getIce_opt()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ice_sess_options;
    .locals 4

    .prologue
    .line 227
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ice_sess_options;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ice_opt_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ice_sess_options;-><init>(JZ)V

    return-object v0
.end method

.method public getIlbc_mode()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ilbc_mode_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getJb_init()I
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_jb_init_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getJb_max()I
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_jb_max_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getJb_max_pre()I
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_jb_max_pre_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getJb_min_pre()I
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_jb_min_pre_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getMax_media_ports()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_max_media_ports_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNo_vad()I
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_no_vad_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getPtime()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ptime_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuality()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_quality_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRx_drop_pct()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_rx_drop_pct_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSnd_auto_close_time()I
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_snd_auto_close_time_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public getSnd_clock_rate()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_snd_clock_rate_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSnd_play_latency()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_snd_play_latency_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSnd_rec_latency()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_snd_rec_latency_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThread_cnt()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_thread_cnt_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTurn_auth_cred()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;
    .locals 4

    .prologue
    .line 268
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_turn_auth_cred_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;-><init>(JZ)V

    return-object v0
.end method

.method public getTurn_conn_type()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_turn_tp_type;
    .locals 4

    .prologue
    .line 260
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_turn_tp_type;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_turn_conn_type_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_turn_tp_type;-><init>(JZ)V

    return-object v0
.end method

.method public getTurn_server()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 251
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_turn_server_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    .line 252
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

.method public getTx_drop_pct()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_tx_drop_pct_get(JLorg/pjsip/pjsua/pjsua_media_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVid_preview_enable_native()I
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_vid_preview_enable_native_get(JLorg/pjsip/pjsua/pjsua_media_config;)I

    move-result v0

    return v0
.end method

.method public setAudio_frame_ptime(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_audio_frame_ptime_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 64
    return-void
.end method

.method public setChannel_count(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_channel_count_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 56
    return-void
.end method

.method public setClock_rate(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_clock_rate_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 40
    return-void
.end method

.method public setEc_options(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 143
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ec_options_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 144
    return-void
.end method

.method public setEc_tail_len(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ec_tail_len_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 152
    return-void
.end method

.method public setEnable_ice(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_enable_ice_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 208
    return-void
.end method

.method public setEnable_turn(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 239
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_enable_turn_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 240
    return-void
.end method

.method public setHas_ioqueue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_has_ioqueue_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 80
    return-void
.end method

.method public setIce_max_host_cands(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ice_max_host_cands_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 216
    return-void
.end method

.method public setIce_no_rtcp(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 231
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ice_no_rtcp_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 232
    return-void
.end method

.method public setIce_opt(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ice_sess_options;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ice_sess_options;

    .prologue
    .line 223
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ice_sess_options;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ice_sess_options;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ice_opt_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 224
    return-void
.end method

.method public setIlbc_mode(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ilbc_mode_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 120
    return-void
.end method

.method public setJb_init(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 175
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_jb_init_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 176
    return-void
.end method

.method public setJb_max(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 199
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_jb_max_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 200
    return-void
.end method

.method public setJb_max_pre(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 191
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_jb_max_pre_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 192
    return-void
.end method

.method public setJb_min_pre(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_jb_min_pre_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 184
    return-void
.end method

.method public setMax_media_ports(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_max_media_ports_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 72
    return-void
.end method

.method public setNo_vad(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_no_vad_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 112
    return-void
.end method

.method public setPtime(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_ptime_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 104
    return-void
.end method

.method public setQuality(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_quality_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 96
    return-void
.end method

.method public setRx_drop_pct(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_rx_drop_pct_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 136
    return-void
.end method

.method public setSnd_auto_close_time(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 272
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_snd_auto_close_time_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 273
    return-void
.end method

.method public setSnd_clock_rate(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_snd_clock_rate_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 48
    return-void
.end method

.method public setSnd_play_latency(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 167
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_snd_play_latency_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 168
    return-void
.end method

.method public setSnd_rec_latency(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_snd_rec_latency_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 160
    return-void
.end method

.method public setThread_cnt(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_thread_cnt_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 88
    return-void
.end method

.method public setTurn_auth_cred(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;

    .prologue
    .line 264
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_turn_auth_cred_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 265
    return-void
.end method

.method public setTurn_conn_type(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_turn_tp_type;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_turn_tp_type;

    .prologue
    .line 256
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_turn_tp_type;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_turn_tp_type;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_turn_conn_type_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 257
    return-void
.end method

.method public setTurn_server(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_turn_server_set(JLorg/pjsip/pjsua/pjsua_media_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 248
    return-void
.end method

.method public setTx_drop_pct(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_tx_drop_pct_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V

    .line 128
    return-void
.end method

.method public setVid_preview_enable_native(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 280
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_config_vid_preview_enable_native_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V

    .line 281
    return-void
.end method

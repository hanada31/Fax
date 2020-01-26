.class public Lorg/pjsip/pjsua/csipsimple_config;
.super Ljava/lang/Object;
.source "csipsimple_config.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 220
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_csipsimple_config()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/csipsimple_config;-><init>(JZ)V

    .line 221
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/csipsimple_config;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/csipsimple_config;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_csipsimple_config(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/csipsimple_config;->delete()V

    .line 26
    return-void
.end method

.method public getAdd_bandwidth_tias_in_sdp()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_add_bandwidth_tias_in_sdp_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getAudio_implementation()Lorg/pjsip/pjsua/dynamic_factory;
    .locals 4

    .prologue
    .line 141
    iget-wide v2, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_audio_implementation_get(JLorg/pjsip/pjsua/csipsimple_config;)J

    move-result-wide v0

    .line 142
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/dynamic_factory;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/dynamic_factory;-><init>(JZ)V

    goto :goto_0
.end method

.method public getDisable_tcp_switch()I
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_disable_tcp_switch_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getExtra_aud_codecs()[Lorg/pjsip/pjsua/dynamic_factory;
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_extra_aud_codecs_get(JLorg/pjsip/pjsua/csipsimple_config;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->cArrayWrap([JZ)[Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v0

    return-object v0
.end method

.method public getExtra_aud_codecs_cnt()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_extra_aud_codecs_cnt_get(JLorg/pjsip/pjsua/csipsimple_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtra_vid_codecs()[Lorg/pjsip/pjsua/dynamic_factory;
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_extra_vid_codecs_get(JLorg/pjsip/pjsua/csipsimple_config;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->cArrayWrap([JZ)[Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v0

    return-object v0
.end method

.method public getExtra_vid_codecs_cnt()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_extra_vid_codecs_cnt_get(JLorg/pjsip/pjsua/csipsimple_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtra_vid_codecs_destroy()[Lorg/pjsip/pjsua/dynamic_factory;
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_extra_vid_codecs_destroy_get(JLorg/pjsip/pjsua/csipsimple_config;)[J

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->cArrayWrap([JZ)[Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v0

    return-object v0
.end method

.method public getStorage_folder()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 132
    iget-wide v2, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_storage_folder_get(JLorg/pjsip/pjsua/csipsimple_config;)J

    move-result-wide v0

    .line 133
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

.method public getTcp_keep_alive_interval()I
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tcp_keep_alive_interval_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getTls_keep_alive_interval()I
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tls_keep_alive_interval_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getTsx_t1_timeout()I
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tsx_t1_timeout_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getTsx_t2_timeout()I
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tsx_t2_timeout_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getTsx_t4_timeout()I
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tsx_t4_timeout_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getTsx_td_timeout()I
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tsx_td_timeout_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getUse_compact_form_headers()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_use_compact_form_headers_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getUse_compact_form_sdp()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_use_compact_form_sdp_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getUse_no_update()I
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_use_no_update_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getUse_zrtp()I
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_use_zrtp_get(JLorg/pjsip/pjsua/csipsimple_config;)I

    move-result v0

    return v0
.end method

.method public getVid_converter()Lorg/pjsip/pjsua/dynamic_factory;
    .locals 4

    .prologue
    .line 123
    iget-wide v2, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_vid_converter_get(JLorg/pjsip/pjsua/csipsimple_config;)J

    move-result-wide v0

    .line 124
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/dynamic_factory;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/dynamic_factory;-><init>(JZ)V

    goto :goto_0
.end method

.method public getVideo_capture_implementation()Lorg/pjsip/pjsua/dynamic_factory;
    .locals 4

    .prologue
    .line 159
    iget-wide v2, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_video_capture_implementation_get(JLorg/pjsip/pjsua/csipsimple_config;)J

    move-result-wide v0

    .line 160
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/dynamic_factory;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/dynamic_factory;-><init>(JZ)V

    goto :goto_0
.end method

.method public getVideo_render_implementation()Lorg/pjsip/pjsua/dynamic_factory;
    .locals 4

    .prologue
    .line 150
    iget-wide v2, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_video_render_implementation_get(JLorg/pjsip/pjsua/csipsimple_config;)J

    move-result-wide v0

    .line 151
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/dynamic_factory;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/dynamic_factory;-><init>(JZ)V

    goto :goto_0
.end method

.method public setAdd_bandwidth_tias_in_sdp(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_add_bandwidth_tias_in_sdp_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 56
    return-void
.end method

.method public setAudio_implementation(Lorg/pjsip/pjsua/dynamic_factory;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/dynamic_factory;

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/dynamic_factory;->getCPtr(Lorg/pjsip/pjsua/dynamic_factory;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_audio_implementation_set(JLorg/pjsip/pjsua/csipsimple_config;JLorg/pjsip/pjsua/dynamic_factory;)V

    .line 138
    return-void
.end method

.method public setDisable_tcp_switch(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 212
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_disable_tcp_switch_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 213
    return-void
.end method

.method public setExtra_aud_codecs([Lorg/pjsip/pjsua/dynamic_factory;)V
    .locals 3
    .param p1, "value"    # [Lorg/pjsip/pjsua/dynamic_factory;

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/dynamic_factory;->cArrayUnwrap([Lorg/pjsip/pjsua/dynamic_factory;)[J

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_extra_aud_codecs_set(JLorg/pjsip/pjsua/csipsimple_config;[J)V

    .line 88
    return-void
.end method

.method public setExtra_aud_codecs_cnt(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_extra_aud_codecs_cnt_set(JLorg/pjsip/pjsua/csipsimple_config;J)V

    .line 80
    return-void
.end method

.method public setExtra_vid_codecs([Lorg/pjsip/pjsua/dynamic_factory;)V
    .locals 3
    .param p1, "value"    # [Lorg/pjsip/pjsua/dynamic_factory;

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/dynamic_factory;->cArrayUnwrap([Lorg/pjsip/pjsua/dynamic_factory;)[J

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_extra_vid_codecs_set(JLorg/pjsip/pjsua/csipsimple_config;[J)V

    .line 104
    return-void
.end method

.method public setExtra_vid_codecs_cnt(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_extra_vid_codecs_cnt_set(JLorg/pjsip/pjsua/csipsimple_config;J)V

    .line 96
    return-void
.end method

.method public setExtra_vid_codecs_destroy([Lorg/pjsip/pjsua/dynamic_factory;)V
    .locals 3
    .param p1, "value"    # [Lorg/pjsip/pjsua/dynamic_factory;

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/dynamic_factory;->cArrayUnwrap([Lorg/pjsip/pjsua/dynamic_factory;)[J

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_extra_vid_codecs_destroy_set(JLorg/pjsip/pjsua/csipsimple_config;[J)V

    .line 112
    return-void
.end method

.method public setStorage_folder(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_storage_folder_set(JLorg/pjsip/pjsua/csipsimple_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 129
    return-void
.end method

.method public setTcp_keep_alive_interval(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 164
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tcp_keep_alive_interval_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 165
    return-void
.end method

.method public setTls_keep_alive_interval(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tls_keep_alive_interval_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 173
    return-void
.end method

.method public setTsx_t1_timeout(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 180
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tsx_t1_timeout_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 181
    return-void
.end method

.method public setTsx_t2_timeout(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 188
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tsx_t2_timeout_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 189
    return-void
.end method

.method public setTsx_t4_timeout(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tsx_t4_timeout_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 197
    return-void
.end method

.method public setTsx_td_timeout(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 204
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_tsx_td_timeout_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 205
    return-void
.end method

.method public setUse_compact_form_headers(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_use_compact_form_headers_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 48
    return-void
.end method

.method public setUse_compact_form_sdp(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_use_compact_form_sdp_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 40
    return-void
.end method

.method public setUse_no_update(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_use_no_update_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 64
    return-void
.end method

.method public setUse_zrtp(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_use_zrtp_set(JLorg/pjsip/pjsua/csipsimple_config;I)V

    .line 72
    return-void
.end method

.method public setVid_converter(Lorg/pjsip/pjsua/dynamic_factory;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/dynamic_factory;

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/dynamic_factory;->getCPtr(Lorg/pjsip/pjsua/dynamic_factory;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_vid_converter_set(JLorg/pjsip/pjsua/csipsimple_config;JLorg/pjsip/pjsua/dynamic_factory;)V

    .line 120
    return-void
.end method

.method public setVideo_capture_implementation(Lorg/pjsip/pjsua/dynamic_factory;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/dynamic_factory;

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/dynamic_factory;->getCPtr(Lorg/pjsip/pjsua/dynamic_factory;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_video_capture_implementation_set(JLorg/pjsip/pjsua/csipsimple_config;JLorg/pjsip/pjsua/dynamic_factory;)V

    .line 156
    return-void
.end method

.method public setVideo_render_implementation(Lorg/pjsip/pjsua/dynamic_factory;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/dynamic_factory;

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/pjsip/pjsua/csipsimple_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/dynamic_factory;->getCPtr(Lorg/pjsip/pjsua/dynamic_factory;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->csipsimple_config_video_render_implementation_set(JLorg/pjsip/pjsua/csipsimple_config;JLorg/pjsip/pjsua/dynamic_factory;)V

    .line 147
    return-void
.end method

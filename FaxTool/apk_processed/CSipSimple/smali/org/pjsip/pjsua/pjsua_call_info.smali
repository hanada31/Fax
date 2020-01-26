.class public Lorg/pjsip/pjsua/pjsua_call_info;
.super Ljava/lang/Object;
.source "pjsua_call_info.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 251
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_call_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_call_info;-><init>(JZ)V

    .line 252
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_call_info;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_call_info;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_call_info(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_call_info;->delete()V

    .line 26
    return-void
.end method

.method public getAcc_id()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_acc_id_get(JLorg/pjsip/pjsua/pjsua_call_info;)I

    move-result v0

    return v0
.end method

.method public getCall_id()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 103
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_call_id_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 104
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

.method public getConf_slot()I
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_conf_slot_get(JLorg/pjsip/pjsua/pjsua_call_info;)I

    move-result v0

    return v0
.end method

.method public getConnect_duration()Lorg/pjsip/pjsua/pj_time_val;
    .locals 4

    .prologue
    .line 213
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_connect_duration_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 214
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_time_val;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_time_val;-><init>(JZ)V

    goto :goto_0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_id_get(JLorg/pjsip/pjsua/pjsua_call_info;)I

    move-result v0

    return v0
.end method

.method public getLast_status()Lorg/pjsip/pjsua/pjsip_status_code;
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_last_status_get(JLorg/pjsip/pjsua/pjsua_call_info;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsip_status_code;->swigToEnum(I)Lorg/pjsip/pjsua/pjsip_status_code;

    move-result-object v0

    return-object v0
.end method

.method public getLast_status_text()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 146
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_last_status_text_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 147
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

.method public getLocal_contact()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 76
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_local_contact_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 77
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

.method public getLocal_info()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 67
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_local_info_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 68
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

.method public getMedia()Lorg/pjsip/pjsua/pjsua_call_media_info;
    .locals 4

    .prologue
    .line 187
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_media_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

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
    new-instance v2, Lorg/pjsip/pjsua/pjsua_call_media_info;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsua_call_media_info;-><init>(JZ)V

    goto :goto_0
.end method

.method public getMedia_cnt()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_media_cnt_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMedia_dir()Lorg/pjsip/pjsua/pjmedia_dir;
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_media_dir_get(JLorg/pjsip/pjsua/pjsua_call_info;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjmedia_dir;->swigToEnum(I)Lorg/pjsip/pjsua/pjmedia_dir;

    move-result-object v0

    return-object v0
.end method

.method public getMedia_status()Lorg/pjsip/pjsua/pjsua_call_media_status;
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_media_status_get(JLorg/pjsip/pjsua/pjsua_call_info;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_call_media_status;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_call_media_status;

    move-result-object v0

    return-object v0
.end method

.method public getProv_media()Lorg/pjsip/pjsua/pjsua_call_media_info;
    .locals 4

    .prologue
    .line 204
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_prov_media_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 205
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsua_call_media_info;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsua_call_media_info;-><init>(JZ)V

    goto :goto_0
.end method

.method public getProv_media_cnt()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_prov_media_cnt_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRem_aud_cnt()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_rem_aud_cnt_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRem_offerer()I
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_rem_offerer_get(JLorg/pjsip/pjsua/pjsua_call_info;)I

    move-result v0

    return v0
.end method

.method public getRem_vid_cnt()J
    .locals 2

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_rem_vid_cnt_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemote_contact()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 94
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_remote_contact_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 95
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

.method public getRemote_info()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 85
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_remote_info_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 86
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

.method public getRole()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_role_e;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_role_e;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_role_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_role_e;-><init>(JZ)V

    return-object v0
.end method

.method public getSetting()Lorg/pjsip/pjsua/pjsua_call_setting;
    .locals 4

    .prologue
    .line 112
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_setting_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 113
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsua_call_setting;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsua_call_setting;-><init>(JZ)V

    goto :goto_0
.end method

.method public getState()Lorg/pjsip/pjsua/pjsip_inv_state;
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_state_get(JLorg/pjsip/pjsua/pjsua_call_info;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsip_inv_state;->swigToEnum(I)Lorg/pjsip/pjsua/pjsip_inv_state;

    move-result-object v0

    return-object v0
.end method

.method public getState_text()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 129
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_state_text_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 130
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

.method public getTotal_duration()Lorg/pjsip/pjsua/pj_time_val;
    .locals 4

    .prologue
    .line 222
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_total_duration_get(JLorg/pjsip/pjsua/pjsua_call_info;)J

    move-result-wide v0

    .line 223
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_time_val;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_time_val;-><init>(JZ)V

    goto :goto_0
.end method

.method public setAcc_id(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_acc_id_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V

    .line 56
    return-void
.end method

.method public setCall_id(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_call_id_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 100
    return-void
.end method

.method public setConf_slot(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 167
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_conf_slot_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V

    .line 168
    return-void
.end method

.method public setConnect_duration(Lorg/pjsip/pjsua/pj_time_val;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_time_val;

    .prologue
    .line 209
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_time_val;->getCPtr(Lorg/pjsip/pjsua/pj_time_val;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_connect_duration_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_time_val;)V

    .line 210
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_id_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V

    .line 40
    return-void
.end method

.method public setLast_status(Lorg/pjsip/pjsua/pjsip_status_code;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsip_status_code;

    .prologue
    .line 134
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_last_status_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V

    .line 135
    return-void
.end method

.method public setLast_status_text(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_last_status_text_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 143
    return-void
.end method

.method public setLocal_contact(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_local_contact_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 73
    return-void
.end method

.method public setLocal_info(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_local_info_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 64
    return-void
.end method

.method public setMedia(Lorg/pjsip/pjsua/pjsua_call_media_info;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_call_media_info;

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_call_media_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_media_info;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_media_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pjsua_call_media_info;)V

    .line 184
    return-void
.end method

.method public setMedia_cnt(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 175
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_media_cnt_set(JLorg/pjsip/pjsua/pjsua_call_info;J)V

    .line 176
    return-void
.end method

.method public setMedia_dir(Lorg/pjsip/pjsua/pjmedia_dir;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjmedia_dir;

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjmedia_dir;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_media_dir_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V

    .line 160
    return-void
.end method

.method public setMedia_status(Lorg/pjsip/pjsua/pjsua_call_media_status;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_call_media_status;

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_media_status;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_media_status_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V

    .line 152
    return-void
.end method

.method public setProv_media(Lorg/pjsip/pjsua/pjsua_call_media_info;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_call_media_info;

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_call_media_info;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_media_info;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_prov_media_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pjsua_call_media_info;)V

    .line 201
    return-void
.end method

.method public setProv_media_cnt(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_prov_media_cnt_set(JLorg/pjsip/pjsua/pjsua_call_info;J)V

    .line 193
    return-void
.end method

.method public setRem_aud_cnt(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_rem_aud_cnt_set(JLorg/pjsip/pjsua/pjsua_call_info;J)V

    .line 236
    return-void
.end method

.method public setRem_offerer(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 227
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_rem_offerer_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V

    .line 228
    return-void
.end method

.method public setRem_vid_cnt(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 243
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_rem_vid_cnt_set(JLorg/pjsip/pjsua/pjsua_call_info;J)V

    .line 244
    return-void
.end method

.method public setRemote_contact(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_remote_contact_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 91
    return-void
.end method

.method public setRemote_info(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_remote_info_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 82
    return-void
.end method

.method public setRole(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_role_e;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_role_e;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_role_e;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_role_e;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_role_set(JLorg/pjsip/pjsua/pjsua_call_info;J)V

    .line 48
    return-void
.end method

.method public setSetting(Lorg/pjsip/pjsua/pjsua_call_setting;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_call_setting;

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua_call_setting;->getCPtr(Lorg/pjsip/pjsua/pjsua_call_setting;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_setting_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pjsua_call_setting;)V

    .line 109
    return-void
.end method

.method public setState(Lorg/pjsip/pjsua/pjsip_inv_state;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsip_inv_state;

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsip_inv_state;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_state_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V

    .line 118
    return-void
.end method

.method public setState_text(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_state_text_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 126
    return-void
.end method

.method public setTotal_duration(Lorg/pjsip/pjsua/pj_time_val;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_time_val;

    .prologue
    .line 218
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_time_val;->getCPtr(Lorg/pjsip/pjsua/pj_time_val;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_info_total_duration_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_time_val;)V

    .line 219
    return-void
.end method

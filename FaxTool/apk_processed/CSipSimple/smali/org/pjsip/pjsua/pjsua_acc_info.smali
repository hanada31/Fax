.class public Lorg/pjsip/pjsua/pjsua_acc_info;
.super Ljava/lang/Object;
.source "pjsua_acc_info.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_acc_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_acc_info;-><init>(JZ)V

    .line 140
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_acc_info;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_acc_info;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_acc_info(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_acc_info;->delete()V

    .line 26
    return-void
.end method

.method public getAcc_uri()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 59
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_acc_uri_get(JLorg/pjsip/pjsua/pjsua_acc_info;)J

    move-result-wide v0

    .line 60
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

.method public getBuf_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_buf__get(JLorg/pjsip/pjsua/pjsua_acc_info;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()I
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_expires_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I

    move-result v0

    return v0
.end method

.method public getHas_registration()I
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_has_registration_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_id_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I

    move-result v0

    return v0
.end method

.method public getIs_default()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_is_default_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I

    move-result v0

    return v0
.end method

.method public getOnline_status()I
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_online_status_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I

    move-result v0

    return v0
.end method

.method public getOnline_status_text()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 117
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_online_status_text_get(JLorg/pjsip/pjsua/pjsua_acc_info;)J

    move-result-wide v0

    .line 118
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

.method public getReg_last_err()I
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_reg_last_err_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I

    move-result v0

    return v0
.end method

.method public getRpid()Lorg/pjsip/pjsua/pjrpid_element;
    .locals 4

    .prologue
    .line 126
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_rpid_get(JLorg/pjsip/pjsua/pjsua_acc_info;)J

    move-result-wide v0

    .line 127
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjrpid_element;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjrpid_element;-><init>(JZ)V

    goto :goto_0
.end method

.method public getStatus()Lorg/pjsip/pjsua/pjsip_status_code;
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_status_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsip_status_code;->swigToEnum(I)Lorg/pjsip/pjsua/pjsip_status_code;

    move-result-object v0

    return-object v0
.end method

.method public getStatus_text()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 100
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_status_text_get(JLorg/pjsip/pjsua/pjsua_acc_info;)J

    move-result-wide v0

    .line 101
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

.method public setAcc_uri(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_acc_uri_set(JLorg/pjsip/pjsua/pjsua_acc_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 56
    return-void
.end method

.method public setBuf_(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_buf__set(JLorg/pjsip/pjsua/pjsua_acc_info;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setExpires(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_expires_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V

    .line 73
    return-void
.end method

.method public setHas_registration(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_has_registration_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V

    .line 65
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_id_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V

    .line 40
    return-void
.end method

.method public setIs_default(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_is_default_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V

    .line 48
    return-void
.end method

.method public setOnline_status(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_online_status_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V

    .line 106
    return-void
.end method

.method public setOnline_status_text(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_online_status_text_set(JLorg/pjsip/pjsua/pjsua_acc_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 114
    return-void
.end method

.method public setReg_last_err(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_reg_last_err_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V

    .line 89
    return-void
.end method

.method public setRpid(Lorg/pjsip/pjsua/pjrpid_element;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjrpid_element;

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjrpid_element;->getCPtr(Lorg/pjsip/pjsua/pjrpid_element;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_rpid_set(JLorg/pjsip/pjsua/pjsua_acc_info;JLorg/pjsip/pjsua/pjrpid_element;)V

    .line 123
    return-void
.end method

.method public setStatus(Lorg/pjsip/pjsua/pjsip_status_code;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsip_status_code;

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_status_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V

    .line 81
    return-void
.end method

.method public setStatus_text(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_acc_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_acc_info_status_text_set(JLorg/pjsip/pjsua/pjsua_acc_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 97
    return-void
.end method

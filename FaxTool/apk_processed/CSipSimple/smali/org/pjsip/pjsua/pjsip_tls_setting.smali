.class public Lorg/pjsip/pjsua/pjsip_tls_setting;
.super Ljava/lang/Object;
.source "pjsip_tls_setting.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsip_tls_setting()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsip_tls_setting;-><init>(JZ)V

    .line 159
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsip_tls_setting;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsip_tls_setting;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsip_tls_setting(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsip_tls_setting;->delete()V

    .line 26
    return-void
.end method

.method public getCa_list_file()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 43
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_ca_list_file_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J

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
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getCert_file()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_cert_file_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J

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
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getCiphers()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ssl_cipher;
    .locals 4

    .prologue
    .line 95
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_ciphers_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J

    move-result-wide v0

    .line 96
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ssl_cipher;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ssl_cipher;-><init>(JZ)V

    goto :goto_0
.end method

.method public getCiphers_num()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_ciphers_num_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMethod()I
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_method_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I

    move-result v0

    return v0
.end method

.method public getPassword()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 70
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_password_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J

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
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getPrivkey_file()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 61
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_privkey_file_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J

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
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public getQos_ignore_error()I
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_qos_ignore_error_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I

    move-result v0

    return v0
.end method

.method public getQos_params()Lorg/pjsip/pjsua/pj_qos_params;
    .locals 4

    .prologue
    .line 145
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_qos_params_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J

    move-result-wide v0

    .line 146
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_qos_params;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pj_qos_params;-><init>(JZ)V

    goto :goto_0
.end method

.method public getQos_type()Lorg/pjsip/pjsua/pj_qos_type;
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_qos_type_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pj_qos_type;->swigToEnum(I)Lorg/pjsip/pjsua/pj_qos_type;

    move-result-object v0

    return-object v0
.end method

.method public getRequire_client_cert()I
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_require_client_cert_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I

    move-result v0

    return v0
.end method

.method public getTimeout()Lorg/pjsip/pjsua/pj_time_val;
    .locals 4

    .prologue
    .line 128
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_timeout_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J

    move-result-wide v0

    .line 129
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

.method public getVerify_client()I
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_verify_client_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I

    move-result v0

    return v0
.end method

.method public getVerify_server()I
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_verify_server_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I

    move-result v0

    return v0
.end method

.method public setCa_list_file(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_ca_list_file_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 40
    return-void
.end method

.method public setCert_file(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_cert_file_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 49
    return-void
.end method

.method public setCiphers(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ssl_cipher;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ssl_cipher;

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ssl_cipher;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_ssl_cipher;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_ciphers_set(JLorg/pjsip/pjsua/pjsip_tls_setting;J)V

    .line 92
    return-void
.end method

.method public setCiphers_num(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_ciphers_num_set(JLorg/pjsip/pjsua/pjsip_tls_setting;J)V

    .line 84
    return-void
.end method

.method public setMethod(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_method_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V

    .line 76
    return-void
.end method

.method public setPassword(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_password_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 67
    return-void
.end method

.method public setPrivkey_file(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_privkey_file_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 58
    return-void
.end method

.method public setQos_ignore_error(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_qos_ignore_error_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V

    .line 151
    return-void
.end method

.method public setQos_params(Lorg/pjsip/pjsua/pj_qos_params;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_qos_params;

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_qos_params;->getCPtr(Lorg/pjsip/pjsua/pj_qos_params;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_qos_params_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_qos_params;)V

    .line 142
    return-void
.end method

.method public setQos_type(Lorg/pjsip/pjsua/pj_qos_type;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_qos_type;

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pj_qos_type;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_qos_type_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V

    .line 134
    return-void
.end method

.method public setRequire_client_cert(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 116
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_require_client_cert_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V

    .line 117
    return-void
.end method

.method public setTimeout(Lorg/pjsip/pjsua/pj_time_val;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_time_val;

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_time_val;->getCPtr(Lorg/pjsip/pjsua/pj_time_val;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_timeout_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_time_val;)V

    .line 125
    return-void
.end method

.method public setVerify_client(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_verify_client_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V

    .line 109
    return-void
.end method

.method public setVerify_server(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_tls_setting;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_tls_setting_verify_server_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V

    .line 101
    return-void
.end method

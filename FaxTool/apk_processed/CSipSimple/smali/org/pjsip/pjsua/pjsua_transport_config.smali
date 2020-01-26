.class public Lorg/pjsip/pjsua/pjsua_transport_config;
.super Ljava/lang/Object;
.source "pjsua_transport_config.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_transport_config()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_transport_config;-><init>(JZ)V

    .line 92
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_transport_config;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_transport_config;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_transport_config(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_transport_config;->delete()V

    .line 26
    return-void
.end method

.method public getBound_addr()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 60
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_bound_addr_get(JLorg/pjsip/pjsua/pjsua_transport_config;)J

    move-result-wide v0

    .line 61
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

.method public getPort()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_port_get(JLorg/pjsip/pjsua/pjsua_transport_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPublic_addr()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 51
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_public_addr_get(JLorg/pjsip/pjsua/pjsua_transport_config;)J

    move-result-wide v0

    .line 52
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

.method public getQos_params()Lorg/pjsip/pjsua/pj_qos_params;
    .locals 4

    .prologue
    .line 86
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_qos_params_get(JLorg/pjsip/pjsua/pjsua_transport_config;)J

    move-result-wide v0

    .line 87
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
    .line 78
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_qos_type_get(JLorg/pjsip/pjsua/pjsua_transport_config;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pj_qos_type;->swigToEnum(I)Lorg/pjsip/pjsua/pj_qos_type;

    move-result-object v0

    return-object v0
.end method

.method public getTls_setting()Lorg/pjsip/pjsua/pjsip_tls_setting;
    .locals 4

    .prologue
    .line 69
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_tls_setting_get(JLorg/pjsip/pjsua/pjsua_transport_config;)J

    move-result-wide v0

    .line 70
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjsip_tls_setting;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjsip_tls_setting;-><init>(JZ)V

    goto :goto_0
.end method

.method public setBound_addr(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_bound_addr_set(JLorg/pjsip/pjsua/pjsua_transport_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 57
    return-void
.end method

.method public setPort(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_port_set(JLorg/pjsip/pjsua/pjsua_transport_config;J)V

    .line 40
    return-void
.end method

.method public setPublic_addr(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_public_addr_set(JLorg/pjsip/pjsua/pjsua_transport_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 48
    return-void
.end method

.method public setQos_params(Lorg/pjsip/pjsua/pj_qos_params;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_qos_params;

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_qos_params;->getCPtr(Lorg/pjsip/pjsua/pj_qos_params;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_qos_params_set(JLorg/pjsip/pjsua/pjsua_transport_config;JLorg/pjsip/pjsua/pj_qos_params;)V

    .line 83
    return-void
.end method

.method public setQos_type(Lorg/pjsip/pjsua/pj_qos_type;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_qos_type;

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pj_qos_type;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_qos_type_set(JLorg/pjsip/pjsua/pjsua_transport_config;I)V

    .line 75
    return-void
.end method

.method public setTls_setting(Lorg/pjsip/pjsua/pjsip_tls_setting;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsip_tls_setting;

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_transport_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjsip_tls_setting;->getCPtr(Lorg/pjsip/pjsua/pjsip_tls_setting;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_transport_config_tls_setting_set(JLorg/pjsip/pjsua/pjsua_transport_config;JLorg/pjsip/pjsua/pjsip_tls_setting;)V

    .line 66
    return-void
.end method

.class public Lorg/pjsip/pjsua/pj_qos_params;
.super Ljava/lang/Object;
.source "pj_qos_params.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pj_qos_params()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pj_qos_params;-><init>(JZ)V

    .line 72
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pj_qos_params;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pj_qos_params;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pj_qos_params(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_qos_params;->delete()V

    .line 26
    return-void
.end method

.method public getDscp_val()S
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_qos_params_dscp_val_get(JLorg/pjsip/pjsua/pj_qos_params;)S

    move-result v0

    return v0
.end method

.method public getFlags()S
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_qos_params_flags_get(JLorg/pjsip/pjsua/pj_qos_params;)S

    move-result v0

    return v0
.end method

.method public getSo_prio()S
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_qos_params_so_prio_get(JLorg/pjsip/pjsua/pj_qos_params;)S

    move-result v0

    return v0
.end method

.method public getWmm_prio()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_qos_wmm_prio;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_qos_wmm_prio;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_qos_params_wmm_prio_get(JLorg/pjsip/pjsua/pj_qos_params;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_qos_wmm_prio;-><init>(JZ)V

    return-object v0
.end method

.method public setDscp_val(S)V
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_qos_params_dscp_val_set(JLorg/pjsip/pjsua/pj_qos_params;S)V

    .line 48
    return-void
.end method

.method public setFlags(S)V
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_qos_params_flags_set(JLorg/pjsip/pjsua/pj_qos_params;S)V

    .line 40
    return-void
.end method

.method public setSo_prio(S)V
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_qos_params_so_prio_set(JLorg/pjsip/pjsua/pj_qos_params;S)V

    .line 56
    return-void
.end method

.method public setWmm_prio(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_qos_wmm_prio;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_qos_wmm_prio;

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_qos_params;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_qos_wmm_prio;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_qos_wmm_prio;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_qos_params_wmm_prio_set(JLorg/pjsip/pjsua/pj_qos_params;J)V

    .line 64
    return-void
.end method

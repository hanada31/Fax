.class public Lorg/pjsip/pjsua/pj_stun_resolve_result;
.super Ljava/lang/Object;
.source "pj_stun_resolve_result.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pj_stun_resolve_result()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pj_stun_resolve_result;-><init>(JZ)V

    .line 73
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pj_stun_resolve_result;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pj_stun_resolve_result;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pj_stun_resolve_result(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_stun_resolve_result;->delete()V

    .line 26
    return-void
.end method

.method public getAddr()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_sockaddr;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_sockaddr;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_stun_resolve_result_addr_get(JLorg/pjsip/pjsua/pj_stun_resolve_result;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_sockaddr;-><init>(JZ)V

    return-object v0
.end method

.method public getName()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 59
    iget-wide v2, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_stun_resolve_result_name_get(JLorg/pjsip/pjsua/pj_stun_resolve_result;)J

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

.method public getStatus()I
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_stun_resolve_result_status_get(JLorg/pjsip/pjsua/pj_stun_resolve_result;)I

    move-result v0

    return v0
.end method

.method public getToken()[B
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_stun_resolve_result_token_get(JLorg/pjsip/pjsua/pj_stun_resolve_result;)[B

    move-result-object v0

    return-object v0
.end method

.method public setAddr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_sockaddr;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_sockaddr;

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_sockaddr;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_sockaddr;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_stun_resolve_result_addr_set(JLorg/pjsip/pjsua/pj_stun_resolve_result;J)V

    .line 65
    return-void
.end method

.method public setName(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_stun_resolve_result_name_set(JLorg/pjsip/pjsua/pj_stun_resolve_result;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 56
    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_stun_resolve_result_status_set(JLorg/pjsip/pjsua/pj_stun_resolve_result;I)V

    .line 48
    return-void
.end method

.method public setToken([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_stun_resolve_result;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_stun_resolve_result_token_set(JLorg/pjsip/pjsua/pj_stun_resolve_result;[B)V

    .line 40
    return-void
.end method

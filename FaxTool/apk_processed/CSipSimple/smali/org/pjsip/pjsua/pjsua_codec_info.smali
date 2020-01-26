.class public Lorg/pjsip/pjsua/pjsua_codec_info;
.super Ljava/lang/Object;
.source "pjsua_codec_info.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_codec_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_codec_info;-><init>(JZ)V

    .line 74
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_codec_info;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_codec_info;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_codec_info(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_codec_info;->delete()V

    .line 26
    return-void
.end method

.method public getBuf_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_codec_info_buf__get(JLorg/pjsip/pjsua/pjsua_codec_info;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodec_id()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 43
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_codec_info_codec_id_get(JLorg/pjsip/pjsua/pjsua_codec_info;)J

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

.method public getDesc()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 60
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_codec_info_desc_get(JLorg/pjsip/pjsua/pjsua_codec_info;)J

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

.method public getPriority()S
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_codec_info_priority_get(JLorg/pjsip/pjsua/pjsua_codec_info;)S

    move-result v0

    return v0
.end method

.method public setBuf_(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_codec_info_buf__set(JLorg/pjsip/pjsua/pjsua_codec_info;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setCodec_id(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_codec_info_codec_id_set(JLorg/pjsip/pjsua/pjsua_codec_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 40
    return-void
.end method

.method public setDesc(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_codec_info_desc_set(JLorg/pjsip/pjsua/pjsua_codec_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 57
    return-void
.end method

.method public setPriority(S)V
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_codec_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_codec_info_priority_set(JLorg/pjsip/pjsua/pjsua_codec_info;S)V

    .line 49
    return-void
.end method

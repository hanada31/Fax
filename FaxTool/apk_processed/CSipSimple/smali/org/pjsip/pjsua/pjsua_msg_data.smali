.class public Lorg/pjsip/pjsua/pjsua_msg_data;
.super Ljava/lang/Object;
.source "pjsua_msg_data.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_msg_data()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_msg_data;-><init>(JZ)V

    .line 82
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_msg_data;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_msg_data;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_msg_data(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_msg_data;->delete()V

    .line 26
    return-void
.end method

.method public getContent_type()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 51
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_msg_data_content_type_get(JLorg/pjsip/pjsua/pjsua_msg_data;)J

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

.method public getHdr_list()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_msg_data_hdr_list_get(JLorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;-><init>(JZ)V

    return-object v0
.end method

.method public getMsg_body()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 60
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_msg_data_msg_body_get(JLorg/pjsip/pjsua/pjsua_msg_data;)J

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

.method public getMultipart_ctype()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_media_type;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_media_type;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_msg_data_multipart_ctype_get(JLorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_media_type;-><init>(JZ)V

    return-object v0
.end method

.method public getMultipart_parts()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_multipart_part;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_multipart_part;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_msg_data_multipart_parts_get(JLorg/pjsip/pjsua/pjsua_msg_data;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_multipart_part;-><init>(JZ)V

    return-object v0
.end method

.method public setContent_type(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_msg_data_content_type_set(JLorg/pjsip/pjsua/pjsua_msg_data;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 48
    return-void
.end method

.method public setHdr_list(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_hdr;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_msg_data_hdr_list_set(JLorg/pjsip/pjsua/pjsua_msg_data;J)V

    .line 40
    return-void
.end method

.method public setMsg_body(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_msg_data_msg_body_set(JLorg/pjsip/pjsua/pjsua_msg_data;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 57
    return-void
.end method

.method public setMultipart_ctype(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_media_type;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_media_type;

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_media_type;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_media_type;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_msg_data_multipart_ctype_set(JLorg/pjsip/pjsua/pjsua_msg_data;J)V

    .line 66
    return-void
.end method

.method public setMultipart_parts(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_multipart_part;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_multipart_part;

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_msg_data;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_multipart_part;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_multipart_part;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_msg_data_multipart_parts_set(JLorg/pjsip/pjsua/pjsua_msg_data;J)V

    .line 74
    return-void
.end method

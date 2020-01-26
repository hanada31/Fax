.class public Lorg/pjsip/pjsua/pjsua_call_media_info;
.super Ljava/lang/Object;
.source "pjsua_call_media_info.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_call_media_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_call_media_info;-><init>(JZ)V

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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_call_media_info;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_call_media_info;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_call_media_info(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_call_media_info;->delete()V

    .line 26
    return-void
.end method

.method public getDir()Lorg/pjsip/pjsua/pjmedia_dir;
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_media_info_dir_get(JLorg/pjsip/pjsua/pjsua_call_media_info;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjmedia_dir;->swigToEnum(I)Lorg/pjsip/pjsua/pjmedia_dir;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_media_info_index_get(JLorg/pjsip/pjsua/pjsua_call_media_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus()Lorg/pjsip/pjsua/pjsua_call_media_status;
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_media_info_status_get(JLorg/pjsip/pjsua/pjsua_call_media_info;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_call_media_status;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_call_media_status;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_type;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_type;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_media_info_type_get(JLorg/pjsip/pjsua/pjsua_call_media_info;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_type;-><init>(JZ)V

    return-object v0
.end method

.method public setDir(Lorg/pjsip/pjsua/pjmedia_dir;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjmedia_dir;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjmedia_dir;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_media_info_dir_set(JLorg/pjsip/pjsua/pjsua_call_media_info;I)V

    .line 56
    return-void
.end method

.method public setIndex(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_media_info_index_set(JLorg/pjsip/pjsua/pjsua_call_media_info;J)V

    .line 40
    return-void
.end method

.method public setStatus(Lorg/pjsip/pjsua/pjsua_call_media_status;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_call_media_status;

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_call_media_status;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_media_info_status_set(JLorg/pjsip/pjsua/pjsua_call_media_info;I)V

    .line 64
    return-void
.end method

.method public setType(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_type;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_type;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_call_media_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_type;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_type;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_call_media_info_type_set(JLorg/pjsip/pjsua/pjsua_call_media_info;J)V

    .line 48
    return-void
.end method

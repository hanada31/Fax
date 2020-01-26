.class public Lorg/pjsip/pjsua/pjmedia_port;
.super Ljava/lang/Object;
.source "pjmedia_port.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjmedia_port;-><init>(JZ)V

    .line 37
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjmedia_port;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjmedia_port;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCMemOwn:Z

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 30
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getGet_frame()Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;
    .locals 4

    .prologue
    .line 62
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_port_get_frame_get(JLorg/pjsip/pjsua/pjmedia_port;)J

    move-result-wide v0

    .line 63
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;-><init>(JZ)V

    goto :goto_0
.end method

.method public getInfo()Lorg/pjsip/pjsua/pjmedia_port_info;
    .locals 4

    .prologue
    .line 44
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_port_info_get(JLorg/pjsip/pjsua/pjmedia_port;)J

    move-result-wide v0

    .line 45
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjmedia_port_info;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjmedia_port_info;-><init>(JZ)V

    goto :goto_0
.end method

.method public getOn_destroy()Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port__int;
    .locals 4

    .prologue
    .line 71
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_port_on_destroy_get(JLorg/pjsip/pjsua/pjmedia_port;)J

    move-result-wide v0

    .line 72
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port__int;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port__int;-><init>(JZ)V

    goto :goto_0
.end method

.method public getPut_frame()Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;
    .locals 4

    .prologue
    .line 53
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_port_put_frame_get(JLorg/pjsip/pjsua/pjmedia_port;)J

    move-result-wide v0

    .line 54
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;-><init>(JZ)V

    goto :goto_0
.end method

.method public setGet_frame(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_port_get_frame_set(JLorg/pjsip/pjsua/pjmedia_port;J)V

    .line 59
    return-void
.end method

.method public setInfo(Lorg/pjsip/pjsua/pjmedia_port_info;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjmedia_port_info;

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjmedia_port_info;->getCPtr(Lorg/pjsip/pjsua/pjmedia_port_info;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_port_info_set(JLorg/pjsip/pjsua/pjmedia_port;JLorg/pjsip/pjsua/pjmedia_port_info;)V

    .line 41
    return-void
.end method

.method public setOn_destroy(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port__int;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port__int;

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port__int;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port__int;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_port_on_destroy_set(JLorg/pjsip/pjsua/pjmedia_port;J)V

    .line 68
    return-void
.end method

.method public setPut_frame(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_port;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_p_pjmedia_port_p_pjmedia_frame__int;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_port_put_frame_set(JLorg/pjsip/pjsua/pjmedia_port;J)V

    .line 50
    return-void
.end method

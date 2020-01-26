.class public Lorg/pjsip/pjsua/pjsua_media_transport;
.super Ljava/lang/Object;
.source "pjsua_media_transport.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_media_transport()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_transport;-><init>(JZ)V

    .line 57
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_media_transport;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_media_transport;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_media_transport(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_media_transport;->delete()V

    .line 26
    return-void
.end method

.method public getSkinfo()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sock_info;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sock_info;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_transport_skinfo_get(JLorg/pjsip/pjsua/pjsua_media_transport;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sock_info;-><init>(JZ)V

    return-object v0
.end method

.method public getTransport()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport;
    .locals 4

    .prologue
    .line 51
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_transport_transport_get(JLorg/pjsip/pjsua/pjsua_media_transport;)J

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
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport;-><init>(JZ)V

    goto :goto_0
.end method

.method public setSkinfo(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sock_info;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sock_info;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sock_info;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sock_info;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_transport_skinfo_set(JLorg/pjsip/pjsua/pjsua_media_transport;J)V

    .line 40
    return-void
.end method

.method public setTransport(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_media_transport;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_transport;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_media_transport_transport_set(JLorg/pjsip/pjsua/pjsua_media_transport;J)V

    .line 48
    return-void
.end method

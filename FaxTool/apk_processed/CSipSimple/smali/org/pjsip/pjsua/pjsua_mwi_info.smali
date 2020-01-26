.class public Lorg/pjsip/pjsua/pjsua_mwi_info;
.super Ljava/lang/Object;
.source "pjsua_mwi_info.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_mwi_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_mwi_info;-><init>(JZ)V

    .line 58
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_mwi_info;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_mwi_info;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_mwi_info(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_mwi_info;->delete()V

    .line 26
    return-void
.end method

.method public getEvsub()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub;
    .locals 4

    .prologue
    .line 43
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_mwi_info_evsub_get(JLorg/pjsip/pjsua/pjsua_mwi_info;)J

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
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub;-><init>(JZ)V

    goto :goto_0
.end method

.method public getRdata()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_mwi_info_rdata_get(JLorg/pjsip/pjsua/pjsua_mwi_info;)J

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
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;-><init>(JZ)V

    goto :goto_0
.end method

.method public setEvsub(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_mwi_info_evsub_set(JLorg/pjsip/pjsua/pjsua_mwi_info;J)V

    .line 40
    return-void
.end method

.method public setRdata(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_mwi_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_mwi_info_rdata_set(JLorg/pjsip/pjsua/pjsua_mwi_info;J)V

    .line 49
    return-void
.end method

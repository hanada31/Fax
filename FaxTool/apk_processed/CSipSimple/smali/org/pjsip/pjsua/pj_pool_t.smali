.class public Lorg/pjsip/pjsua/pj_pool_t;
.super Ljava/lang/Object;
.source "pj_pool_t.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pj_pool_t()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pj_pool_t;-><init>(JZ)V

    .line 98
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pj_pool_t;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pj_pool_t;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pj_pool_t(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_pool_t;->delete()V

    .line 26
    return-void
.end method

.method public getBlock_list()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_block;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_block;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_block_list_get(JLorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_block;-><init>(JZ)V

    return-object v0
.end method

.method public getCallback()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_callback;
    .locals 4

    .prologue
    .line 92
    iget-wide v2, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_callback_get(JLorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    .line 93
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_callback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_callback;-><init>(JZ)V

    goto :goto_0
.end method

.method public getCapacity()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_capacity_get(JLorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFactory()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_factory;
    .locals 4

    .prologue
    .line 51
    iget-wide v2, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_factory_get(JLorg/pjsip/pjsua/pj_pool_t;)J

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
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_factory;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_factory;-><init>(JZ)V

    goto :goto_0
.end method

.method public getFactory_data()[B
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_factory_data_get(JLorg/pjsip/pjsua/pj_pool_t;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIncrement_size()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_increment_size_get(JLorg/pjsip/pjsua/pj_pool_t;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObj_name()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_obj_name_get(JLorg/pjsip/pjsua/pj_pool_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBlock_list(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_block;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_block;

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_block;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_block;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_block_list_set(JLorg/pjsip/pjsua/pj_pool_t;J)V

    .line 81
    return-void
.end method

.method public setCallback(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_callback;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_callback;

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_callback;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_callback;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_callback_set(JLorg/pjsip/pjsua/pj_pool_t;J)V

    .line 89
    return-void
.end method

.method public setCapacity(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_capacity_set(JLorg/pjsip/pjsua/pj_pool_t;J)V

    .line 65
    return-void
.end method

.method public setFactory(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_factory;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_factory;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_factory;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pj_pool_factory;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_factory_set(JLorg/pjsip/pjsua/pj_pool_t;J)V

    .line 48
    return-void
.end method

.method public setFactory_data([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_factory_data_set(JLorg/pjsip/pjsua/pj_pool_t;[B)V

    .line 57
    return-void
.end method

.method public setIncrement_size(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_increment_size_set(JLorg/pjsip/pjsua/pj_pool_t;J)V

    .line 73
    return-void
.end method

.method public setObj_name(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_pool_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_pool_t_obj_name_set(JLorg/pjsip/pjsua/pj_pool_t;Ljava/lang/String;)V

    .line 40
    return-void
.end method

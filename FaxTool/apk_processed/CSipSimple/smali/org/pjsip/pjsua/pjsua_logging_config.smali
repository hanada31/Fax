.class public Lorg/pjsip/pjsua/pjsua_logging_config;
.super Ljava/lang/Object;
.source "pjsua_logging_config.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_logging_config()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_logging_config;-><init>(JZ)V

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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_logging_config;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_logging_config;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_logging_config(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_logging_config;->delete()V

    .line 26
    return-void
.end method

.method public getCb()Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__char_int__void;
    .locals 4

    .prologue
    .line 92
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_cb_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J

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
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__char_int__void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__char_int__void;-><init>(JZ)V

    goto :goto_0
.end method

.method public getConsole_level()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_console_level_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDecor()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_decor_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLevel()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_level_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLog_file_flags()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_log_file_flags_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLog_filename()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 75
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_log_filename_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J

    move-result-wide v0

    .line 76
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

.method public getMsg_logging()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_msg_logging_get(JLorg/pjsip/pjsua/pjsua_logging_config;)I

    move-result v0

    return v0
.end method

.method public setCb(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__char_int__void;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__char_int__void;

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__char_int__void;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_f_int_p_q_const__char_int__void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_cb_set(JLorg/pjsip/pjsua/pjsua_logging_config;J)V

    .line 89
    return-void
.end method

.method public setConsole_level(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_console_level_set(JLorg/pjsip/pjsua/pjsua_logging_config;J)V

    .line 56
    return-void
.end method

.method public setDecor(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_decor_set(JLorg/pjsip/pjsua/pjsua_logging_config;J)V

    .line 64
    return-void
.end method

.method public setLevel(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_level_set(JLorg/pjsip/pjsua/pjsua_logging_config;J)V

    .line 48
    return-void
.end method

.method public setLog_file_flags(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_log_file_flags_set(JLorg/pjsip/pjsua/pjsua_logging_config;J)V

    .line 81
    return-void
.end method

.method public setLog_filename(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_log_filename_set(JLorg/pjsip/pjsua/pjsua_logging_config;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 72
    return-void
.end method

.method public setMsg_logging(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_logging_config;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_logging_config_msg_logging_set(JLorg/pjsip/pjsua/pjsua_logging_config;I)V

    .line 40
    return-void
.end method

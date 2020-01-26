.class public Lorg/pjsip/pjsua/pjsua_buddy_info;
.super Ljava/lang/Object;
.source "pjsua_buddy_info.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_buddy_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_buddy_info;-><init>(JZ)V

    .line 149
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_buddy_info;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_buddy_info;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_buddy_info(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->delete()V

    .line 26
    return-void
.end method

.method public getBuf_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_buf__get(JLorg/pjsip/pjsua/pjsua_buddy_info;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContact()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 60
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_contact_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J

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

.method public getId()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_id_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)I

    move-result v0

    return v0
.end method

.method public getMonitor_pres()I
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_monitor_pres_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)I

    move-result v0

    return v0
.end method

.method public getPres_status()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_pres_status;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_pres_status;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_pres_status_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_pres_status;-><init>(JZ)V

    return-object v0
.end method

.method public getRpid()Lorg/pjsip/pjsua/pjrpid_element;
    .locals 4

    .prologue
    .line 127
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_rpid_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J

    move-result-wide v0

    .line 128
    .local v0, "cPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjrpid_element;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/pjsip/pjsua/pjrpid_element;-><init>(JZ)V

    goto :goto_0
.end method

.method public getStatus()Lorg/pjsip/pjsua/pjsua_buddy_status;
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_status_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua_buddy_status;->swigToEnum(I)Lorg/pjsip/pjsua/pjsua_buddy_status;

    move-result-object v0

    return-object v0
.end method

.method public getStatus_text()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 77
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_status_text_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J

    move-result-wide v0

    .line 78
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

.method public getSub_state()Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_sub_state_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;-><init>(JZ)V

    return-object v0
.end method

.method public getSub_state_name()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_sub_state_name_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSub_term_code()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_sub_term_code_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSub_term_reason()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 118
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_sub_term_reason_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J

    move-result-wide v0

    .line 119
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

.method public getUri()Lorg/pjsip/pjsua/pj_str_t;
    .locals 4

    .prologue
    .line 51
    iget-wide v2, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_uri_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J

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

.method public setBuf_(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_buf__set(JLorg/pjsip/pjsua/pjsua_buddy_info;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public setContact(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_contact_set(JLorg/pjsip/pjsua/pjsua_buddy_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 57
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_id_set(JLorg/pjsip/pjsua/pjsua_buddy_info;I)V

    .line 40
    return-void
.end method

.method public setMonitor_pres(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_monitor_pres_set(JLorg/pjsip/pjsua/pjsua_buddy_info;I)V

    .line 83
    return-void
.end method

.method public setPres_status(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_pres_status;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_pres_status;

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_pres_status;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_pres_status;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_pres_status_set(JLorg/pjsip/pjsua/pjsua_buddy_info;J)V

    .line 133
    return-void
.end method

.method public setRpid(Lorg/pjsip/pjsua/pjrpid_element;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pjrpid_element;

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pjrpid_element;->getCPtr(Lorg/pjsip/pjsua/pjrpid_element;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_rpid_set(JLorg/pjsip/pjsua/pjsua_buddy_info;JLorg/pjsip/pjsua/pjrpid_element;)V

    .line 124
    return-void
.end method

.method public setStatus(Lorg/pjsip/pjsua/pjsua_buddy_status;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsua_buddy_status;

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsua_buddy_status;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_status_set(JLorg/pjsip/pjsua/pjsua_buddy_info;I)V

    .line 66
    return-void
.end method

.method public setStatus_text(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_status_text_set(JLorg/pjsip/pjsua/pjsua_buddy_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 74
    return-void
.end method

.method public setSub_state(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_evsub_state;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_sub_state_set(JLorg/pjsip/pjsua/pjsua_buddy_info;J)V

    .line 91
    return-void
.end method

.method public setSub_state_name(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_sub_state_name_set(JLorg/pjsip/pjsua/pjsua_buddy_info;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setSub_term_code(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_sub_term_code_set(JLorg/pjsip/pjsua/pjsua_buddy_info;J)V

    .line 107
    return-void
.end method

.method public setSub_term_reason(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_sub_term_reason_set(JLorg/pjsip/pjsua/pjsua_buddy_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 115
    return-void
.end method

.method public setUri(Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 6
    .param p1, "value"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_buddy_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_buddy_info_uri_set(JLorg/pjsip/pjsua/pjsua_buddy_info;JLorg/pjsip/pjsua/pj_str_t;)V

    .line 48
    return-void
.end method

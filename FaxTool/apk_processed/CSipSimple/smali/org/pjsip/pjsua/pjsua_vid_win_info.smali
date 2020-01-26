.class public Lorg/pjsip/pjsua/pjsua_vid_win_info;
.super Ljava/lang/Object;
.source "pjsua_vid_win_info.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsua_vid_win_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_vid_win_info;-><init>(JZ)V

    .line 88
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsua_vid_win_info;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsua_vid_win_info;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsua_vid_win_info(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsua_vid_win_info;->delete()V

    .line 26
    return-void
.end method

.method public getHwnd()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_hwnd;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_hwnd;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_hwnd_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_hwnd;-><init>(JZ)V

    return-object v0
.end method

.method public getIs_native()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_is_native_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)I

    move-result v0

    return v0
.end method

.method public getPos()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_pos_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;-><init>(JZ)V

    return-object v0
.end method

.method public getRdr_dev()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_rdr_dev_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;-><init>(JZ)V

    return-object v0
.end method

.method public getShow()I
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_show_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)I

    move-result v0

    return v0
.end method

.method public getSize()Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;

    iget-wide v1, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_size_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;-><init>(JZ)V

    return-object v0
.end method

.method public setHwnd(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_hwnd;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_hwnd;

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_hwnd;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_hwnd;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_hwnd_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;J)V

    .line 48
    return-void
.end method

.method public setIs_native(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_is_native_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;I)V

    .line 40
    return-void
.end method

.method public setPos(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_coord;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_pos_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;J)V

    .line 72
    return-void
.end method

.method public setRdr_dev(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_vid_dev_index;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_rdr_dev_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;J)V

    .line 56
    return-void
.end method

.method public setShow(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_show_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;I)V

    .line 64
    return-void
.end method

.method public setSize(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;)V
    .locals 4
    .param p1, "value"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;

    .prologue
    .line 79
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsua_vid_win_info;->swigCPtr:J

    invoke-static {p1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;->getCPtr(Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_rect_size;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsua_vid_win_info_size_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;J)V

    .line 80
    return-void
.end method

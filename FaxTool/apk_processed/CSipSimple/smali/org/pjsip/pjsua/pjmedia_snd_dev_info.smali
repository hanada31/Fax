.class public Lorg/pjsip/pjsua/pjmedia_snd_dev_info;
.super Ljava/lang/Object;
.source "pjmedia_snd_dev_info.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjmedia_snd_dev_info()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;-><init>(JZ)V

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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjmedia_snd_dev_info;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjmedia_snd_dev_info;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjmedia_snd_dev_info(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->delete()V

    .line 26
    return-void
.end method

.method public getDefault_samples_per_sec()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_snd_dev_info_default_samples_per_sec_get(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInput_count()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_snd_dev_info_input_count_get(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_snd_dev_info_name_get(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutput_count()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_snd_dev_info_output_count_get(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setDefault_samples_per_sec(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_snd_dev_info_default_samples_per_sec_set(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;J)V

    .line 64
    return-void
.end method

.method public setInput_count(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_snd_dev_info_input_count_set(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;J)V

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_snd_dev_info_name_set(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setOutput_count(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_snd_dev_info;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_snd_dev_info_output_count_set(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;J)V

    .line 56
    return-void
.end method

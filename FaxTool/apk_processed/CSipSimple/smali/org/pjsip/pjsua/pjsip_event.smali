.class public Lorg/pjsip/pjsua/pjsip_event;
.super Ljava/lang/Object;
.source "pjsip_event.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjsip_event()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjsip_event;-><init>(JZ)V

    .line 48
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjsip_event;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjsip_event;->swigCPtr:J

    .line 18
    return-void
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjsip_event;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjsip_event;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_event;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_event;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjsip_event;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjsip_event;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_event;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjsip_event(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjsip_event;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjsip_event;->delete()V

    .line 26
    return-void
.end method

.method public getType()Lorg/pjsip/pjsua/pjsip_event_id_e;
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_event;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_event_type_get(JLorg/pjsip/pjsua/pjsip_event;)I

    move-result v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsip_event_id_e;->swigToEnum(I)Lorg/pjsip/pjsua/pjsip_event_id_e;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lorg/pjsip/pjsua/pjsip_event_id_e;)V
    .locals 3
    .param p1, "value"    # Lorg/pjsip/pjsua/pjsip_event_id_e;

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjsip_event;->swigCPtr:J

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pjsip_event_id_e;->swigValue()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lorg/pjsip/pjsua/pjsuaJNI;->pjsip_event_type_set(JLorg/pjsip/pjsua/pjsip_event;I)V

    .line 40
    return-void
.end method

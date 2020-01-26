.class public Lorg/pjsip/pjsua/pjmedia_tone_digit;
.super Ljava/lang/Object;
.source "pjmedia_tone_digit.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pjmedia_tone_digit()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pjmedia_tone_digit;-><init>(JZ)V

    .line 86
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static cArrayUnwrap([Lorg/pjsip/pjsua/pjmedia_tone_digit;)[J
    .locals 4
    .param p0, "arrayWrapper"    # [Lorg/pjsip/pjsua/pjmedia_tone_digit;

    .prologue
    .line 39
    array-length v2, p0

    new-array v0, v2, [J

    .line 40
    .local v0, "cArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 42
    return-object v0

    .line 41
    :cond_0
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->getCPtr(Lorg/pjsip/pjsua/pjmedia_tone_digit;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static cArrayWrap([JZ)[Lorg/pjsip/pjsua/pjmedia_tone_digit;
    .locals 5
    .param p0, "cArray"    # [J
    .param p1, "cMemoryOwn"    # Z

    .prologue
    .line 46
    array-length v2, p0

    new-array v0, v2, [Lorg/pjsip/pjsua/pjmedia_tone_digit;

    .line 47
    .local v0, "arrayWrapper":[Lorg/pjsip/pjsua/pjmedia_tone_digit;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 49
    return-object v0

    .line 48
    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pjmedia_tone_digit;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4, p1}, Lorg/pjsip/pjsua/pjmedia_tone_digit;-><init>(JZ)V

    aput-object v2, v0, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pjmedia_tone_digit;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pjmedia_tone_digit;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pjmedia_tone_digit(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->delete()V

    .line 26
    return-void
.end method

.method public getDigit()C
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tone_digit_digit_get(JLorg/pjsip/pjsua/pjmedia_tone_digit;)C

    move-result v0

    return v0
.end method

.method public getOff_msec()S
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tone_digit_off_msec_get(JLorg/pjsip/pjsua/pjmedia_tone_digit;)S

    move-result v0

    return v0
.end method

.method public getOn_msec()S
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tone_digit_on_msec_get(JLorg/pjsip/pjsua/pjmedia_tone_digit;)S

    move-result v0

    return v0
.end method

.method public getVolume()S
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tone_digit_volume_get(JLorg/pjsip/pjsua/pjmedia_tone_digit;)S

    move-result v0

    return v0
.end method

.method public setDigit(C)V
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tone_digit_digit_set(JLorg/pjsip/pjsua/pjmedia_tone_digit;C)V

    .line 54
    return-void
.end method

.method public setOff_msec(S)V
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tone_digit_off_msec_set(JLorg/pjsip/pjsua/pjmedia_tone_digit;S)V

    .line 70
    return-void
.end method

.method public setOn_msec(S)V
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tone_digit_on_msec_set(JLorg/pjsip/pjsua/pjmedia_tone_digit;S)V

    .line 62
    return-void
.end method

.method public setVolume(S)V
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/pjsip/pjsua/pjmedia_tone_digit;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pjmedia_tone_digit_volume_set(JLorg/pjsip/pjsua/pjmedia_tone_digit;S)V

    .line 78
    return-void
.end method

.class public Lorg/pjsip/pjsua/pj_str_t;
.super Ljava/lang/Object;
.source "pj_str_t.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->new_pj_str_t()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    .line 70
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
    iput-boolean p3, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static cArrayUnwrap([Lorg/pjsip/pjsua/pj_str_t;)[J
    .locals 4
    .param p0, "arrayWrapper"    # [Lorg/pjsip/pjsua/pj_str_t;

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

    invoke-static {v2}, Lorg/pjsip/pjsua/pj_str_t;->getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static cArrayWrap([JZ)[Lorg/pjsip/pjsua/pj_str_t;
    .locals 5
    .param p0, "cArray"    # [J
    .param p1, "cMemoryOwn"    # Z

    .prologue
    .line 46
    array-length v2, p0

    new-array v0, v2, [Lorg/pjsip/pjsua/pj_str_t;

    .line 47
    .local v0, "arrayWrapper":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 49
    return-object v0

    .line 48
    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4, p1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    aput-object v2, v0, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getCPtr(Lorg/pjsip/pjsua/pj_str_t;)J
    .locals 2
    .param p0, "obj"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCPtr:J

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
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCPtr:J

    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsuaJNI;->delete_pj_str_t(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCPtr:J
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
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->delete()V

    .line 26
    return-void
.end method

.method public getPtr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_str_t_ptr_get(JLorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlen()I
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_str_t_slen_get(JLorg/pjsip/pjsua/pj_str_t;)I

    move-result v0

    return v0
.end method

.method public setPtr(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_str_t_ptr_set(JLorg/pjsip/pjsua/pj_str_t;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setSlen(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/pjsip/pjsua/pj_str_t;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/pjsip/pjsua/pjsuaJNI;->pj_str_t_slen_set(JLorg/pjsip/pjsua/pj_str_t;I)V

    .line 62
    return-void
.end method

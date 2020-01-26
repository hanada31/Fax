.class public Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;
.super Ljava/lang/Object;
.source "PjStreamDialtoneGenerator.java"


# static fields
.field private static SUPPORTED_DTMF:Ljava/lang/String; = null

.field private static final THIS_FILE:Ljava/lang/String; = "PjStreamDialtoneGenerator"


# instance fields
.field private final callId:I

.field private dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

.field private dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

.field private dialtoneSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "0123456789abcd*#"

    sput-object v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->SUPPORTED_DTMF:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "aCallId"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    .line 52
    iput p1, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->callId:I

    .line 53
    return-void
.end method

.method private declared-synchronized startDialtoneGenerator()I
    .locals 24

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    new-instance v18, Lorg/pjsip/pjsua/pjsua_call_info;

    invoke-direct/range {v18 .. v18}, Lorg/pjsip/pjsua/pjsua_call_info;-><init>()V

    .line 63
    .local v18, "info":Lorg/pjsip/pjsua/pjsua_call_info;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->callId:I

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lorg/pjsip/pjsua/pjsua;->call_get_info(ILorg/pjsip/pjsua/pjsua_call_info;)I

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v16, "tonegen-"

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->callId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v20, 0x200

    const-wide/16 v22, 0x200

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-static {v4, v0, v1, v2, v3}, Lorg/pjsip/pjsua/pjsua;->pjsua_pool_create(Ljava/lang/String;JJ)Lorg/pjsip/pjsua/pj_pool_t;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

    .line 67
    const-string v4, "dialtoneGen"

    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v5

    .line 68
    .local v5, "name":Lorg/pjsip/pjsua/pj_str_t;
    const-wide/16 v6, 0x1f40

    .line 69
    .local v6, "clockRate":J
    const-wide/16 v8, 0x1

    .line 70
    .local v8, "channelCount":J
    const-wide/16 v10, 0xa0

    .line 71
    .local v10, "samplesPerFrame":J
    const-wide/16 v12, 0x10

    .line 72
    .local v12, "bitsPerSample":J
    const-wide/16 v14, 0x0

    .line 73
    .local v14, "options":J
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .line 74
    .local v17, "dialtoneSlotPtr":[I
    new-instance v4, Lorg/pjsip/pjsua/pjmedia_port;

    invoke-direct {v4}, Lorg/pjsip/pjsua/pjmedia_port;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    .line 75
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    move-object/from16 v16, v0

    invoke-static/range {v4 .. v16}, Lorg/pjsip/pjsua/pjsua;->pjmedia_tonegen_create2(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pj_str_t;JJJJJLorg/pjsip/pjsua/pjmedia_port;)I

    move-result v19

    .line 76
    .local v19, "status":I
    sget v4, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->stopDialtoneGenerator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v4, v19

    .line 92
    :goto_0
    monitor-exit p0

    return v4

    .line 80
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lorg/pjsip/pjsua/pjsua;->conf_add_port(Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/pjmedia_port;[I)I

    move-result v19

    .line 81
    sget v4, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_1

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->stopDialtoneGenerator()V

    move/from16 v4, v19

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    const/4 v4, 0x0

    aget v4, v17, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    .line 86
    move-object/from16 v0, p0

    iget v4, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    invoke-virtual/range {v18 .. v18}, Lorg/pjsip/pjsua/pjsua_call_info;->getConf_slot()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v4, v0}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    move-result v19

    .line 87
    sget v4, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_2

    .line 88
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->stopDialtoneGenerator()V

    move/from16 v4, v19

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    sget v4, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    .end local v5    # "name":Lorg/pjsip/pjsua/pj_str_t;
    .end local v6    # "clockRate":J
    .end local v8    # "channelCount":J
    .end local v10    # "samplesPerFrame":J
    .end local v12    # "bitsPerSample":J
    .end local v14    # "options":J
    .end local v17    # "dialtoneSlotPtr":[I
    .end local v18    # "info":Lorg/pjsip/pjsua/pjsua_call_info;
    .end local v19    # "status":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public declared-synchronized sendPjMediaDialTone(Ljava/lang/String;)I
    .locals 10
    .param p1, "dtmfChars"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->startDialtoneGenerator()I

    move-result v8

    .line 124
    .local v8, "status":I
    sget v0, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v8, v0, :cond_0

    move v0, v9

    .line 146
    :goto_0
    monitor-exit p0

    return v0

    .line 128
    .end local v8    # "status":I
    :cond_0
    :try_start_1
    sget v8, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    .line 130
    .restart local v8    # "status":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v7, v0, :cond_1

    move v0, v8

    .line 146
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 132
    .local v6, "d":C
    sget-object v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->SUPPORTED_DTMF:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 133
    const-string v0, "PjStreamDialtoneGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported DTMF char "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 136
    :cond_2
    const/4 v0, 0x1

    new-array v3, v0, [Lorg/pjsip/pjsua/pjmedia_tone_digit;

    .line 137
    .local v3, "tone":[Lorg/pjsip/pjsua/pjmedia_tone_digit;
    const/4 v0, 0x0

    new-instance v1, Lorg/pjsip/pjsua/pjmedia_tone_digit;

    invoke-direct {v1}, Lorg/pjsip/pjsua/pjmedia_tone_digit;-><init>()V

    aput-object v1, v3, v0

    .line 138
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->setVolume(S)V

    .line 139
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->setOn_msec(S)V

    .line 140
    const/4 v0, 0x0

    aget-object v0, v3, v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->setOff_msec(S)V

    .line 141
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0, v6}, Lorg/pjsip/pjsua/pjmedia_tone_digit;->setDigit(C)V

    .line 142
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    const-wide/16 v1, 0x1

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsua;->pjmedia_tonegen_play_digits(Lorg/pjsip/pjsua/pjmedia_port;J[Lorg/pjsip/pjsua/pjmedia_tone_digit;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 122
    .end local v3    # "tone":[Lorg/pjsip/pjsua/pjmedia_tone_digit;
    .end local v6    # "d":C
    .end local v7    # "i":I
    .end local v8    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDialtoneGenerator()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 102
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    if-eq v0, v1, :cond_0

    .line 103
    iget v0, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->conf_remove_port(I)I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneSlot:I

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtoneGen:Lorg/pjsip/pjsua/pjmedia_port;

    .line 110
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->pj_pool_release(Lorg/pjsip/pjsua/pj_pool_t;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->dialtonePool:Lorg/pjsip/pjsua/pj_pool_t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

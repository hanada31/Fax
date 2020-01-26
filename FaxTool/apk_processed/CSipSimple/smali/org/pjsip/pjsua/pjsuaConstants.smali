.class public interface abstract Lorg/pjsip/pjsua/pjsuaConstants;
.super Ljava/lang/Object;
.source "pjsuaConstants.java"


# static fields
.field public static final DISABLED_FOR_TICKET_1185:I

.field public static final PJMEDIA_TONEGEN_LOOP:I

.field public static final PJMEDIA_TONEGEN_NO_LOCK:I

.field public static final PJSUA_ACC_MAX_PROXIES:I

.field public static final PJSUA_ACQUIRE_CALL_TIMEOUT:I

.field public static final PJSUA_ADD_ICE_TAGS:I

.field public static final PJSUA_CONTACT_REWRITE_METHOD:I

.field public static final PJSUA_DEFAULT_ACC_PRIORITY:I

.field public static final PJSUA_DEFAULT_AUDIO_FRAME_PTIME:I

.field public static final PJSUA_DEFAULT_CLOCK_RATE:I

.field public static final PJSUA_DEFAULT_CODEC_QUALITY:I

.field public static final PJSUA_DEFAULT_EC_TAIL_LEN:I

.field public static final PJSUA_DEFAULT_ILBC_MODE:I

.field public static final PJSUA_DEFAULT_SRTP_SECURE_SIGNALING:I

.field public static final PJSUA_INVALID_ID:I

.field public static final PJSUA_MAX_ACC:I

.field public static final PJSUA_MAX_BUDDIES:I

.field public static final PJSUA_MAX_CALLS:I

.field public static final PJSUA_MAX_CONF_PORTS:I

.field public static final PJSUA_MAX_PLAYERS:I

.field public static final PJSUA_MAX_RECORDERS:I

.field public static final PJSUA_MAX_VID_WINS:I

.field public static final PJSUA_MEDIA_HAS_PJMEDIA:I

.field public static final PJSUA_PRES_TIMER:I

.field public static final PJSUA_REG_INTERVAL:I

.field public static final PJSUA_REG_RETRY_INTERVAL:I

.field public static final PJSUA_REG_USE_ACC_PROXY:I

.field public static final PJSUA_REG_USE_OUTBOUND_PROXY:I

.field public static final PJSUA_SDP_SESS_HAS_CONN:I

.field public static final PJSUA_SECURE_SCHEME:Ljava/lang/String;

.field public static final PJSUA_UNPUBLISH_MAX_WAIT_TIME_MSEC:I

.field public static final PJSUA_UNREG_TIMEOUT:I

.field public static final PJSUA_VID_REQ_KEYFRAME_INTERVAL:I

.field public static final PJSUA_XFER_NO_REQUIRE_REPLACES:I

.field public static final PJ_FALSE:I

.field public static final PJ_SUCCESS:I

.field public static final PJ_TRUE:I

.field public static final WRAPPER_CALLBACK_STRUCT:Lorg/pjsip/pjsua/pjsua_callback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lorg/pjsip/pjsua/pjsua_callback;

    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->WRAPPER_CALLBACK_STRUCT_get()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/pjsip/pjsua/pjsua_callback;-><init>(JZ)V

    sput-object v0, Lorg/pjsip/pjsua/pjsuaConstants;->WRAPPER_CALLBACK_STRUCT:Lorg/pjsip/pjsua/pjsua_callback;

    .line 13
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJ_SUCCESS_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    .line 14
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJ_TRUE_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    .line 15
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJ_FALSE_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    .line 16
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJMEDIA_TONEGEN_LOOP_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJMEDIA_TONEGEN_LOOP:I

    .line 17
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJMEDIA_TONEGEN_NO_LOCK_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJMEDIA_TONEGEN_NO_LOCK:I

    .line 19
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_INVALID_ID_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_INVALID_ID:I

    .line 20
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->DISABLED_FOR_TICKET_1185_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->DISABLED_FOR_TICKET_1185:I

    .line 21
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_ACC_MAX_PROXIES_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_ACC_MAX_PROXIES:I

    .line 22
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_DEFAULT_SRTP_SECURE_SIGNALING_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_DEFAULT_SRTP_SECURE_SIGNALING:I

    .line 23
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_ADD_ICE_TAGS_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_ADD_ICE_TAGS:I

    .line 24
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_ACQUIRE_CALL_TIMEOUT_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_ACQUIRE_CALL_TIMEOUT:I

    .line 25
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_VID_REQ_KEYFRAME_INTERVAL_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_VID_REQ_KEYFRAME_INTERVAL:I

    .line 26
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_MAX_ACC_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_MAX_ACC:I

    .line 27
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_REG_INTERVAL_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_REG_INTERVAL:I

    .line 28
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_UNREG_TIMEOUT_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_UNREG_TIMEOUT:I

    .line 29
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_DEFAULT_ACC_PRIORITY_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_DEFAULT_ACC_PRIORITY:I

    .line 30
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_SECURE_SCHEME_get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_SECURE_SCHEME:Ljava/lang/String;

    .line 31
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_UNPUBLISH_MAX_WAIT_TIME_MSEC_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_UNPUBLISH_MAX_WAIT_TIME_MSEC:I

    .line 32
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_REG_RETRY_INTERVAL_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_REG_RETRY_INTERVAL:I

    .line 33
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_CONTACT_REWRITE_METHOD_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_CONTACT_REWRITE_METHOD:I

    .line 34
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_REG_USE_OUTBOUND_PROXY_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_REG_USE_OUTBOUND_PROXY:I

    .line 35
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_REG_USE_ACC_PROXY_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_REG_USE_ACC_PROXY:I

    .line 36
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_MAX_CALLS_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_MAX_CALLS:I

    .line 37
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_MAX_VID_WINS_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_MAX_VID_WINS:I

    .line 38
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_XFER_NO_REQUIRE_REPLACES_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_XFER_NO_REQUIRE_REPLACES:I

    .line 39
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_MAX_BUDDIES_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_MAX_BUDDIES:I

    .line 40
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_PRES_TIMER_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_PRES_TIMER:I

    .line 41
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_MEDIA_HAS_PJMEDIA_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_MEDIA_HAS_PJMEDIA:I

    .line 42
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_MAX_CONF_PORTS_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_MAX_CONF_PORTS:I

    .line 43
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_DEFAULT_CLOCK_RATE_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_DEFAULT_CLOCK_RATE:I

    .line 44
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_DEFAULT_AUDIO_FRAME_PTIME_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_DEFAULT_AUDIO_FRAME_PTIME:I

    .line 45
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_DEFAULT_CODEC_QUALITY_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_DEFAULT_CODEC_QUALITY:I

    .line 46
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_DEFAULT_ILBC_MODE_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_DEFAULT_ILBC_MODE:I

    .line 47
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_DEFAULT_EC_TAIL_LEN_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_DEFAULT_EC_TAIL_LEN:I

    .line 48
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_MAX_PLAYERS_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_MAX_PLAYERS:I

    .line 49
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_MAX_RECORDERS_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_MAX_RECORDERS:I

    .line 50
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->PJSUA_SDP_SESS_HAS_CONN_get()I

    move-result v0

    sput v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJSUA_SDP_SESS_HAS_CONN:I

    .line 11
    return-void
.end method

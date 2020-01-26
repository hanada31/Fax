.class public Lorg/pjsip/pjsua/pjsuaJNI;
.super Ljava/lang/Object;
.source "pjsuaJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1353
    invoke-static {}, Lorg/pjsip/pjsua/pjsuaJNI;->swig_module_init()V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native Callback_change_ownership(Lorg/pjsip/pjsua/Callback;JZ)V
.end method

.method public static final native Callback_director_connect(Lorg/pjsip/pjsua/Callback;JZZ)V
.end method

.method public static final native Callback_on_buddy_state(JLorg/pjsip/pjsua/Callback;I)V
.end method

.method public static final native Callback_on_buddy_stateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;I)V
.end method

.method public static final native Callback_on_call_media_state(JLorg/pjsip/pjsua/Callback;I)V
.end method

.method public static final native Callback_on_call_media_stateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;I)V
.end method

.method public static final native Callback_on_call_redirected(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;)I
.end method

.method public static final native Callback_on_call_redirectedSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;)I
.end method

.method public static final native Callback_on_call_replace_request(JLorg/pjsip/pjsua/Callback;IJJJLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native Callback_on_call_replace_requestSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJJJLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native Callback_on_call_replaced(JLorg/pjsip/pjsua/Callback;II)V
.end method

.method public static final native Callback_on_call_replacedSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;II)V
.end method

.method public static final native Callback_on_call_sdp_created(JLorg/pjsip/pjsua/Callback;IJJLorg/pjsip/pjsua/pj_pool_t;J)V
.end method

.method public static final native Callback_on_call_sdp_createdSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJJLorg/pjsip/pjsua/pj_pool_t;J)V
.end method

.method public static final native Callback_on_call_state(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pjsip_event;)V
.end method

.method public static final native Callback_on_call_stateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pjsip_event;)V
.end method

.method public static final native Callback_on_call_transfer_request(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;J)V
.end method

.method public static final native Callback_on_call_transfer_requestSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;J)V
.end method

.method public static final native Callback_on_call_transfer_status(JLorg/pjsip/pjsua/Callback;IIJLorg/pjsip/pjsua/pj_str_t;IJ)V
.end method

.method public static final native Callback_on_call_transfer_statusSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IIJLorg/pjsip/pjsua/pj_str_t;IJ)V
.end method

.method public static final native Callback_on_call_tsx_state(JLorg/pjsip/pjsua/Callback;IJJLorg/pjsip/pjsua/pjsip_event;)V
.end method

.method public static final native Callback_on_call_tsx_stateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJJLorg/pjsip/pjsua/pjsip_event;)V
.end method

.method public static final native Callback_on_dtmf_digit(JLorg/pjsip/pjsua/Callback;II)V
.end method

.method public static final native Callback_on_dtmf_digitSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;II)V
.end method

.method public static final native Callback_on_incoming_call(JLorg/pjsip/pjsua/Callback;IIJ)V
.end method

.method public static final native Callback_on_incoming_callSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IIJ)V
.end method

.method public static final native Callback_on_mwi_info(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native Callback_on_mwi_infoSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native Callback_on_nat_detect(JLorg/pjsip/pjsua/Callback;JLorg/pjsip/pjsua/pj_stun_nat_detect_result;)V
.end method

.method public static final native Callback_on_nat_detectSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;JLorg/pjsip/pjsua/pj_stun_nat_detect_result;)V
.end method

.method public static final native Callback_on_pager(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native Callback_on_pager2(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;J)V
.end method

.method public static final native Callback_on_pager2SwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;J)V
.end method

.method public static final native Callback_on_pagerSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native Callback_on_pager_status(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native Callback_on_pager_status2(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pj_str_t;JJ)V
.end method

.method public static final native Callback_on_pager_status2SwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pj_str_t;JJ)V
.end method

.method public static final native Callback_on_pager_statusSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native Callback_on_reg_state(JLorg/pjsip/pjsua/Callback;I)V
.end method

.method public static final native Callback_on_reg_stateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;I)V
.end method

.method public static final native Callback_on_set_micro_source(JLorg/pjsip/pjsua/Callback;)I
.end method

.method public static final native Callback_on_set_micro_sourceSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;)I
.end method

.method public static final native Callback_on_setup_audio(JLorg/pjsip/pjsua/Callback;)V
.end method

.method public static final native Callback_on_setup_audioSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;)V
.end method

.method public static final native Callback_on_stream_created(JLorg/pjsip/pjsua/Callback;IJJJ)V
.end method

.method public static final native Callback_on_stream_createdSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJJJ)V
.end method

.method public static final native Callback_on_stream_destroyed(JLorg/pjsip/pjsua/Callback;IJJ)V
.end method

.method public static final native Callback_on_stream_destroyedSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJJ)V
.end method

.method public static final native Callback_on_teardown_audio(JLorg/pjsip/pjsua/Callback;)V
.end method

.method public static final native Callback_on_teardown_audioSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;)V
.end method

.method public static final native Callback_on_typing(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;I)V
.end method

.method public static final native Callback_on_typingSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;I)V
.end method

.method public static final native Callback_on_validate_audio_clock_rate(JLorg/pjsip/pjsua/Callback;I)I
.end method

.method public static final native Callback_on_validate_audio_clock_rateSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;I)I
.end method

.method public static final native Callback_on_zrtp_show_sas(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;I)V
.end method

.method public static final native Callback_on_zrtp_show_sasSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;IJLorg/pjsip/pjsua/pj_str_t;I)V
.end method

.method public static final native Callback_on_zrtp_update_transport(JLorg/pjsip/pjsua/Callback;I)V
.end method

.method public static final native Callback_on_zrtp_update_transportSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;I)V
.end method

.method public static final native Callback_timer_cancel(JLorg/pjsip/pjsua/Callback;II)I
.end method

.method public static final native Callback_timer_cancelSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;II)I
.end method

.method public static final native Callback_timer_schedule(JLorg/pjsip/pjsua/Callback;III)I
.end method

.method public static final native Callback_timer_scheduleSwigExplicitCallback(JLorg/pjsip/pjsua/Callback;III)I
.end method

.method public static final native DISABLED_FOR_TICKET_1185_get()I
.end method

.method public static final native PJMEDIA_DIR_DECODING_get()I
.end method

.method public static final native PJMEDIA_DIR_ENCODING_DECODING_get()I
.end method

.method public static final native PJMEDIA_DIR_ENCODING_get()I
.end method

.method public static final native PJMEDIA_DIR_NONE_get()I
.end method

.method public static final native PJMEDIA_TONEGEN_LOOP_get()I
.end method

.method public static final native PJMEDIA_TONEGEN_NO_LOCK_get()I
.end method

.method public static final native PJSIP_AC_AMBIGUOUS_get()I
.end method

.method public static final native PJSIP_CRED_DATA_DIGEST_get()I
.end method

.method public static final native PJSIP_CRED_DATA_EXT_AKA_get()I
.end method

.method public static final native PJSIP_CRED_DATA_PLAIN_PASSWD_get()I
.end method

.method public static final native PJSIP_SC_ACCEPTED_get()I
.end method

.method public static final native PJSIP_SC_ADDRESS_INCOMPLETE_get()I
.end method

.method public static final native PJSIP_SC_ALTERNATIVE_SERVICE_get()I
.end method

.method public static final native PJSIP_SC_BAD_EVENT_get()I
.end method

.method public static final native PJSIP_SC_BAD_EXTENSION_get()I
.end method

.method public static final native PJSIP_SC_BAD_GATEWAY_get()I
.end method

.method public static final native PJSIP_SC_BAD_REQUEST_get()I
.end method

.method public static final native PJSIP_SC_BUSY_EVERYWHERE_get()I
.end method

.method public static final native PJSIP_SC_BUSY_HERE_get()I
.end method

.method public static final native PJSIP_SC_CALL_BEING_FORWARDED_get()I
.end method

.method public static final native PJSIP_SC_CALL_TSX_DOES_NOT_EXIST_get()I
.end method

.method public static final native PJSIP_SC_DECLINE_get()I
.end method

.method public static final native PJSIP_SC_DOES_NOT_EXIST_ANYWHERE_get()I
.end method

.method public static final native PJSIP_SC_EXTENSION_REQUIRED_get()I
.end method

.method public static final native PJSIP_SC_FORBIDDEN_get()I
.end method

.method public static final native PJSIP_SC_GONE_get()I
.end method

.method public static final native PJSIP_SC_INTERNAL_SERVER_ERROR_get()I
.end method

.method public static final native PJSIP_SC_INTERVAL_TOO_BRIEF_get()I
.end method

.method public static final native PJSIP_SC_LOOP_DETECTED_get()I
.end method

.method public static final native PJSIP_SC_MESSAGE_TOO_LARGE_get()I
.end method

.method public static final native PJSIP_SC_METHOD_NOT_ALLOWED_get()I
.end method

.method public static final native PJSIP_SC_MOVED_PERMANENTLY_get()I
.end method

.method public static final native PJSIP_SC_MOVED_TEMPORARILY_get()I
.end method

.method public static final native PJSIP_SC_MULTIPLE_CHOICES_get()I
.end method

.method public static final native PJSIP_SC_NOT_ACCEPTABLE_ANYWHERE_get()I
.end method

.method public static final native PJSIP_SC_NOT_ACCEPTABLE_HERE_get()I
.end method

.method public static final native PJSIP_SC_NOT_ACCEPTABLE_get()I
.end method

.method public static final native PJSIP_SC_NOT_FOUND_get()I
.end method

.method public static final native PJSIP_SC_NOT_IMPLEMENTED_get()I
.end method

.method public static final native PJSIP_SC_OK_get()I
.end method

.method public static final native PJSIP_SC_PAYMENT_REQUIRED_get()I
.end method

.method public static final native PJSIP_SC_PRECONDITION_FAILURE_get()I
.end method

.method public static final native PJSIP_SC_PROGRESS_get()I
.end method

.method public static final native PJSIP_SC_PROXY_AUTHENTICATION_REQUIRED_get()I
.end method

.method public static final native PJSIP_SC_QUEUED_get()I
.end method

.method public static final native PJSIP_SC_REQUEST_ENTITY_TOO_LARGE_get()I
.end method

.method public static final native PJSIP_SC_REQUEST_PENDING_get()I
.end method

.method public static final native PJSIP_SC_REQUEST_TERMINATED_get()I
.end method

.method public static final native PJSIP_SC_REQUEST_TIMEOUT_get()I
.end method

.method public static final native PJSIP_SC_REQUEST_UPDATED_get()I
.end method

.method public static final native PJSIP_SC_REQUEST_URI_TOO_LONG_get()I
.end method

.method public static final native PJSIP_SC_RINGING_get()I
.end method

.method public static final native PJSIP_SC_SERVER_TIMEOUT_get()I
.end method

.method public static final native PJSIP_SC_SERVICE_UNAVAILABLE_get()I
.end method

.method public static final native PJSIP_SC_SESSION_TIMER_TOO_SMALL_get()I
.end method

.method public static final native PJSIP_SC_TEMPORARILY_UNAVAILABLE_get()I
.end method

.method public static final native PJSIP_SC_TOO_MANY_HOPS_get()I
.end method

.method public static final native PJSIP_SC_TRYING_get()I
.end method

.method public static final native PJSIP_SC_TSX_TIMEOUT_get()I
.end method

.method public static final native PJSIP_SC_TSX_TRANSPORT_ERROR_get()I
.end method

.method public static final native PJSIP_SC_UNAUTHORIZED_get()I
.end method

.method public static final native PJSIP_SC_UNDECIPHERABLE_get()I
.end method

.method public static final native PJSIP_SC_UNSUPPORTED_MEDIA_TYPE_get()I
.end method

.method public static final native PJSIP_SC_UNSUPPORTED_URI_SCHEME_get()I
.end method

.method public static final native PJSIP_SC_USE_PROXY_get()I
.end method

.method public static final native PJSIP_SC_VERSION_NOT_SUPPORTED_get()I
.end method

.method public static final native PJSIP_SSLV23_METHOD_get()I
.end method

.method public static final native PJSIP_SSLV2_METHOD_get()I
.end method

.method public static final native PJSIP_SSLV3_METHOD_get()I
.end method

.method public static final native PJSIP_SSL_UNSPECIFIED_METHOD_get()I
.end method

.method public static final native PJSIP_TLSV1_METHOD_get()I
.end method

.method public static final native PJSIP_TRANSPORT_IPV6_get()I
.end method

.method public static final native PJSIP_TRANSPORT_TCP6_get()I
.end method

.method public static final native PJSIP_TRANSPORT_UDP6_get()I
.end method

.method public static final native PJSUA_ACC_MAX_PROXIES_get()I
.end method

.method public static final native PJSUA_ACQUIRE_CALL_TIMEOUT_get()I
.end method

.method public static final native PJSUA_ADD_ICE_TAGS_get()I
.end method

.method public static final native PJSUA_CALL_INCLUDE_DISABLED_MEDIA_get()I
.end method

.method public static final native PJSUA_CALL_UNHOLD_get()I
.end method

.method public static final native PJSUA_CALL_UPDATE_CONTACT_get()I
.end method

.method public static final native PJSUA_CONTACT_REWRITE_METHOD_get()I
.end method

.method public static final native PJSUA_DEFAULT_ACC_PRIORITY_get()I
.end method

.method public static final native PJSUA_DEFAULT_AUDIO_FRAME_PTIME_get()I
.end method

.method public static final native PJSUA_DEFAULT_CLOCK_RATE_get()I
.end method

.method public static final native PJSUA_DEFAULT_CODEC_QUALITY_get()I
.end method

.method public static final native PJSUA_DEFAULT_EC_TAIL_LEN_get()I
.end method

.method public static final native PJSUA_DEFAULT_ILBC_MODE_get()I
.end method

.method public static final native PJSUA_DEFAULT_SRTP_SECURE_SIGNALING_get()I
.end method

.method public static final native PJSUA_DESTROY_NO_NETWORK_get()I
.end method

.method public static final native PJSUA_DESTROY_NO_RX_MSG_get()I
.end method

.method public static final native PJSUA_DESTROY_NO_TX_MSG_get()I
.end method

.method public static final native PJSUA_INVALID_ID_get()I
.end method

.method public static final native PJSUA_MAX_ACC_get()I
.end method

.method public static final native PJSUA_MAX_BUDDIES_get()I
.end method

.method public static final native PJSUA_MAX_CALLS_get()I
.end method

.method public static final native PJSUA_MAX_CONF_PORTS_get()I
.end method

.method public static final native PJSUA_MAX_PLAYERS_get()I
.end method

.method public static final native PJSUA_MAX_RECORDERS_get()I
.end method

.method public static final native PJSUA_MAX_VID_WINS_get()I
.end method

.method public static final native PJSUA_MEDIA_HAS_PJMEDIA_get()I
.end method

.method public static final native PJSUA_MED_TP_CLOSE_MEMBER_get()I
.end method

.method public static final native PJSUA_PRES_TIMER_get()I
.end method

.method public static final native PJSUA_REG_INTERVAL_get()I
.end method

.method public static final native PJSUA_REG_RETRY_INTERVAL_get()I
.end method

.method public static final native PJSUA_REG_USE_ACC_PROXY_get()I
.end method

.method public static final native PJSUA_REG_USE_OUTBOUND_PROXY_get()I
.end method

.method public static final native PJSUA_SDP_SESS_HAS_CONN_get()I
.end method

.method public static final native PJSUA_SECURE_SCHEME_get()Ljava/lang/String;
.end method

.method public static final native PJSUA_UNPUBLISH_MAX_WAIT_TIME_MSEC_get()I
.end method

.method public static final native PJSUA_UNREG_TIMEOUT_get()I
.end method

.method public static final native PJSUA_VID_REQ_KEYFRAME_INTERVAL_get()I
.end method

.method public static final native PJSUA_VID_REQ_KEYFRAME_RTCP_PLI_get()I
.end method

.method public static final native PJSUA_VID_REQ_KEYFRAME_SIP_INFO_get()I
.end method

.method public static final native PJSUA_XFER_NO_REQUIRE_REPLACES_get()I
.end method

.method public static final native PJ_FALSE_get()I
.end method

.method public static final native PJ_SUCCESS_get()I
.end method

.method public static final native PJ_TRUE_get()I
.end method

.method public static SwigDirector_Callback_on_buddy_state(Lorg/pjsip/pjsua/Callback;I)V
    .locals 0
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "buddy_id"    # I

    .prologue
    .line 1300
    invoke-virtual {p0, p1}, Lorg/pjsip/pjsua/Callback;->on_buddy_state(I)V

    .line 1301
    return-void
.end method

.method public static SwigDirector_Callback_on_call_media_state(Lorg/pjsip/pjsua/Callback;I)V
    .locals 0
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I

    .prologue
    .line 1270
    invoke-virtual {p0, p1}, Lorg/pjsip/pjsua/Callback;->on_call_media_state(I)V

    .line 1271
    return-void
.end method

.method public static SwigDirector_Callback_on_call_redirected(Lorg/pjsip/pjsua/Callback;IJ)I
    .locals 2
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "target"    # J

    .prologue
    .line 1321
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/pjsip/pjsua/Callback;->on_call_redirected(ILorg/pjsip/pjsua/pj_str_t;)Lorg/pjsip/pjsua/pjsip_redirect_op;

    move-result-object v0

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsip_redirect_op;->swigValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public static SwigDirector_Callback_on_call_replace_request(Lorg/pjsip/pjsua/Callback;IJJJ)V
    .locals 7
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "rdata"    # J
    .param p4, "st_code"    # J
    .param p6, "st_text"    # J

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1291
    cmp-long v1, p2, v5

    if-nez v1, :cond_0

    move-object v2, v0

    :goto_0
    cmp-long v1, p4, v5

    if-nez v1, :cond_1

    move-object v1, v0

    :goto_1
    cmp-long v3, p6, v5

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/pjsip/pjsua/Callback;->on_call_replace_request(ILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;Lorg/pjsip/pjsua/SWIGTYPE_p_int;Lorg/pjsip/pjsua/pj_str_t;)V

    .line 1292
    return-void

    .line 1291
    :cond_0
    new-instance v1, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    invoke-direct {v1, p2, p3, v4}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;-><init>(JZ)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/pjsip/pjsua/SWIGTYPE_p_int;

    invoke-direct {v1, p4, p5, v4}, Lorg/pjsip/pjsua/SWIGTYPE_p_int;-><init>(JZ)V

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    invoke-direct {v0, p6, p7, v4}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_2
.end method

.method public static SwigDirector_Callback_on_call_replaced(Lorg/pjsip/pjsua/Callback;II)V
    .locals 0
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "old_call_id"    # I
    .param p2, "new_call_id"    # I

    .prologue
    .line 1294
    invoke-virtual {p0, p1, p2}, Lorg/pjsip/pjsua/Callback;->on_call_replaced(II)V

    .line 1295
    return-void
.end method

.method public static SwigDirector_Callback_on_call_sdp_created(Lorg/pjsip/pjsua/Callback;IJJJ)V
    .locals 7
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "sdp"    # J
    .param p4, "pool"    # J
    .param p6, "rem_sdp"    # J

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1273
    cmp-long v1, p2, v5

    if-nez v1, :cond_0

    move-object v2, v0

    :goto_0
    cmp-long v1, p4, v5

    if-nez v1, :cond_1

    move-object v1, v0

    :goto_1
    cmp-long v3, p6, v5

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {p0, p1, v2, v1, v0}, Lorg/pjsip/pjsua/Callback;->on_call_sdp_created(ILorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;Lorg/pjsip/pjsua/pj_pool_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;)V

    .line 1274
    return-void

    .line 1273
    :cond_0
    new-instance v1, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;

    invoke-direct {v1, p2, p3, v4}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;-><init>(JZ)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/pjsip/pjsua/pj_pool_t;

    invoke-direct {v1, p4, p5, v4}, Lorg/pjsip/pjsua/pj_pool_t;-><init>(JZ)V

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;

    invoke-direct {v0, p6, p7, v4}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_sdp_session;-><init>(JZ)V

    goto :goto_2
.end method

.method public static SwigDirector_Callback_on_call_state(Lorg/pjsip/pjsua/Callback;IJ)V
    .locals 2
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "e"    # J

    .prologue
    .line 1261
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/pjsip/pjsua/Callback;->on_call_state(ILorg/pjsip/pjsua/pjsip_event;)V

    .line 1262
    return-void

    .line 1261
    :cond_0
    new-instance v0, Lorg/pjsip/pjsua/pjsip_event;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lorg/pjsip/pjsua/pjsip_event;-><init>(JZ)V

    goto :goto_0
.end method

.method public static SwigDirector_Callback_on_call_transfer_request(Lorg/pjsip/pjsua/Callback;IJJ)V
    .locals 6
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "dst"    # J
    .param p4, "code"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1285
    cmp-long v1, p2, v4

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    cmp-long v2, p4, v4

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Lorg/pjsip/pjsua/Callback;->on_call_transfer_request(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_status_code;)V

    .line 1286
    return-void

    .line 1285
    :cond_0
    new-instance v1, Lorg/pjsip/pjsua/pj_str_t;

    invoke-direct {v1, p2, p3, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_status_code;

    invoke-direct {v0, p4, p5, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_status_code;-><init>(JZ)V

    goto :goto_1
.end method

.method public static SwigDirector_Callback_on_call_transfer_status(Lorg/pjsip/pjsua/Callback;IIJIJ)V
    .locals 8
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "st_code"    # I
    .param p3, "st_text"    # J
    .param p5, "final_"    # I
    .param p6, "p_cont"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1288
    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    move-object v3, v5

    :goto_0
    cmp-long v0, p6, v6

    if-nez v0, :cond_1

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/pjsip/pjsua/Callback;->on_call_transfer_status(IILorg/pjsip/pjsua/pj_str_t;ILorg/pjsip/pjsua/SWIGTYPE_p_int;)V

    .line 1289
    return-void

    .line 1288
    :cond_0
    new-instance v3, Lorg/pjsip/pjsua/pj_str_t;

    invoke-direct {v3, p3, p4, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/pjsip/pjsua/SWIGTYPE_p_int;

    invoke-direct {v5, p6, p7, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_int;-><init>(JZ)V

    goto :goto_1
.end method

.method public static SwigDirector_Callback_on_call_tsx_state(Lorg/pjsip/pjsua/Callback;IJJ)V
    .locals 6
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "tsx"    # J
    .param p4, "e"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1267
    cmp-long v1, p2, v4

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    cmp-long v2, p4, v4

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Lorg/pjsip/pjsua/Callback;->on_call_tsx_state(ILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;Lorg/pjsip/pjsua/pjsip_event;)V

    .line 1268
    return-void

    .line 1267
    :cond_0
    new-instance v1, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;

    invoke-direct {v1, p2, p3, v3}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;-><init>(JZ)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/pjsip/pjsua/pjsip_event;

    invoke-direct {v0, p4, p5, v3}, Lorg/pjsip/pjsua/pjsip_event;-><init>(JZ)V

    goto :goto_1
.end method

.method public static SwigDirector_Callback_on_dtmf_digit(Lorg/pjsip/pjsua/Callback;II)V
    .locals 0
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "digit"    # I

    .prologue
    .line 1282
    invoke-virtual {p0, p1, p2}, Lorg/pjsip/pjsua/Callback;->on_dtmf_digit(II)V

    .line 1283
    return-void
.end method

.method public static SwigDirector_Callback_on_incoming_call(Lorg/pjsip/pjsua/Callback;IIJ)V
    .locals 2
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "acc_id"    # I
    .param p2, "call_id"    # I
    .param p3, "rdata"    # J

    .prologue
    .line 1264
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/pjsip/pjsua/Callback;->on_incoming_call(IILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)V

    .line 1265
    return-void

    .line 1264
    :cond_0
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;-><init>(JZ)V

    goto :goto_0
.end method

.method public static SwigDirector_Callback_on_mwi_info(Lorg/pjsip/pjsua/Callback;IJJ)V
    .locals 6
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "acc_id"    # I
    .param p2, "mime_type"    # J
    .param p4, "body"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1324
    cmp-long v1, p2, v4

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    cmp-long v2, p4, v4

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Lorg/pjsip/pjsua/Callback;->on_mwi_info(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)V

    .line 1325
    return-void

    .line 1324
    :cond_0
    new-instance v1, Lorg/pjsip/pjsua/pj_str_t;

    invoke-direct {v1, p2, p3, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    invoke-direct {v0, p4, p5, v3}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_1
.end method

.method public static SwigDirector_Callback_on_nat_detect(Lorg/pjsip/pjsua/Callback;J)V
    .locals 2
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "res"    # J

    .prologue
    .line 1318
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/pjsip/pjsua/Callback;->on_nat_detect(Lorg/pjsip/pjsua/pj_stun_nat_detect_result;)V

    .line 1319
    return-void

    .line 1318
    :cond_0
    new-instance v0, Lorg/pjsip/pjsua/pj_stun_nat_detect_result;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/pjsip/pjsua/pj_stun_nat_detect_result;-><init>(JZ)V

    goto :goto_0
.end method

.method public static SwigDirector_Callback_on_pager(Lorg/pjsip/pjsua/Callback;IJJJJJ)V
    .locals 9
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "from"    # J
    .param p4, "to"    # J
    .param p6, "contact"    # J
    .param p8, "mime_type"    # J
    .param p10, "body"    # J

    .prologue
    .line 1303
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_2

    const/4 v6, 0x0

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-nez v2, :cond_3

    const/4 v7, 0x0

    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, p10, v2

    if-nez v2, :cond_4

    const/4 v8, 0x0

    :goto_4
    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/pjsip/pjsua/Callback;->on_pager(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)V

    .line 1304
    return-void

    .line 1303
    :cond_0
    new-instance v4, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    invoke-direct {v4, p2, p3, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    invoke-direct {v5, p4, p5, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_1

    :cond_2
    new-instance v6, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    move-wide v0, p6

    invoke-direct {v6, v0, v1, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_2

    :cond_3
    new-instance v7, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    move-wide/from16 v0, p8

    invoke-direct {v7, v0, v1, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_3

    :cond_4
    new-instance v8, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    move-wide/from16 v0, p10

    invoke-direct {v8, v0, v1, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_4
.end method

.method public static SwigDirector_Callback_on_pager2(Lorg/pjsip/pjsua/Callback;IJJJJJJ)V
    .locals 10
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "from"    # J
    .param p4, "to"    # J
    .param p6, "contact"    # J
    .param p8, "mime_type"    # J
    .param p10, "body"    # J
    .param p12, "rdata"    # J

    .prologue
    .line 1306
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_2

    const/4 v6, 0x0

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-nez v2, :cond_3

    const/4 v7, 0x0

    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, p10, v2

    if-nez v2, :cond_4

    const/4 v8, 0x0

    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, p12, v2

    if-nez v2, :cond_5

    const/4 v9, 0x0

    :goto_5
    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v9}, Lorg/pjsip/pjsua/Callback;->on_pager2(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)V

    .line 1307
    return-void

    .line 1306
    :cond_0
    new-instance v4, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    invoke-direct {v4, p2, p3, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    invoke-direct {v5, p4, p5, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_1

    :cond_2
    new-instance v6, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    move-wide/from16 v0, p6

    invoke-direct {v6, v0, v1, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_2

    :cond_3
    new-instance v7, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    move-wide/from16 v0, p8

    invoke-direct {v7, v0, v1, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_3

    :cond_4
    new-instance v8, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    move-wide/from16 v0, p10

    invoke-direct {v8, v0, v1, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_4

    :cond_5
    new-instance v9, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    const/4 v2, 0x0

    move-wide/from16 v0, p12

    invoke-direct {v9, v0, v1, v2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;-><init>(JZ)V

    goto :goto_5
.end method

.method public static SwigDirector_Callback_on_pager_status(Lorg/pjsip/pjsua/Callback;IJJIJ)V
    .locals 6
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "to"    # J
    .param p4, "body"    # J
    .param p6, "status"    # I
    .param p7, "reason"    # J

    .prologue
    .line 1309
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-static {p6}, Lorg/pjsip/pjsua/pjsip_status_code;->swigToEnum(I)Lorg/pjsip/pjsua/pjsip_status_code;

    move-result-object v4

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_2

    const/4 v5, 0x0

    :goto_2
    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/pjsip/pjsua/Callback;->on_pager_status(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsip_status_code;Lorg/pjsip/pjsua/pj_str_t;)V

    .line 1310
    return-void

    .line 1309
    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v0, 0x0

    invoke-direct {v2, p2, p3, v0}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v0, 0x0

    invoke-direct {v3, p4, p5, v0}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_1

    :cond_2
    new-instance v5, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v0, 0x0

    invoke-direct {v5, p7, p8, v0}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_2
.end method

.method public static SwigDirector_Callback_on_pager_status2(Lorg/pjsip/pjsua/Callback;IJJIJJJ)V
    .locals 10
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "to"    # J
    .param p4, "body"    # J
    .param p6, "status"    # I
    .param p7, "reason"    # J
    .param p9, "tdata"    # J
    .param p11, "rdata"    # J

    .prologue
    .line 1312
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-static/range {p6 .. p6}, Lorg/pjsip/pjsua/pjsip_status_code;->swigToEnum(I)Lorg/pjsip/pjsua/pjsip_status_code;

    move-result-object v6

    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_2

    const/4 v7, 0x0

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-nez v2, :cond_3

    const/4 v8, 0x0

    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, p11, v2

    if-nez v2, :cond_4

    const/4 v9, 0x0

    :goto_4
    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v9}, Lorg/pjsip/pjsua/Callback;->on_pager_status2(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsip_status_code;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tx_data;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)V

    .line 1313
    return-void

    .line 1312
    :cond_0
    new-instance v4, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    invoke-direct {v4, p2, p3, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    invoke-direct {v5, p4, p5, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_1

    :cond_2
    new-instance v7, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v2, 0x0

    move-wide/from16 v0, p7

    invoke-direct {v7, v0, v1, v2}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_2

    :cond_3
    new-instance v8, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tx_data;

    const/4 v2, 0x0

    move-wide/from16 v0, p9

    invoke-direct {v8, v0, v1, v2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_tx_data;-><init>(JZ)V

    goto :goto_3

    :cond_4
    new-instance v9, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    const/4 v2, 0x0

    move-wide/from16 v0, p11

    invoke-direct {v9, v0, v1, v2}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;-><init>(JZ)V

    goto :goto_4
.end method

.method public static SwigDirector_Callback_on_reg_state(Lorg/pjsip/pjsua/Callback;I)V
    .locals 0
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "acc_id"    # I

    .prologue
    .line 1297
    invoke-virtual {p0, p1}, Lorg/pjsip/pjsua/Callback;->on_reg_state(I)V

    .line 1298
    return-void
.end method

.method public static SwigDirector_Callback_on_set_micro_source(Lorg/pjsip/pjsua/Callback;)I
    .locals 1
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;

    .prologue
    .line 1336
    invoke-virtual {p0}, Lorg/pjsip/pjsua/Callback;->on_set_micro_source()I

    move-result v0

    return v0
.end method

.method public static SwigDirector_Callback_on_setup_audio(Lorg/pjsip/pjsua/Callback;)V
    .locals 0
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;

    .prologue
    .line 1330
    invoke-virtual {p0}, Lorg/pjsip/pjsua/Callback;->on_setup_audio()V

    .line 1331
    return-void
.end method

.method public static SwigDirector_Callback_on_stream_created(Lorg/pjsip/pjsua/Callback;IJJJ)V
    .locals 6
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "strm"    # J
    .param p4, "stream_idx"    # J
    .param p6, "p_port"    # J

    .prologue
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1276
    cmp-long v0, p2, v3

    if-nez v0, :cond_0

    move-object v2, v5

    :goto_0
    cmp-long v0, p6, v3

    if-nez v0, :cond_1

    :goto_1
    move-object v0, p0

    move v1, p1

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/pjsip/pjsua/Callback;->on_stream_created(ILorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;JLorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;)V

    .line 1277
    return-void

    .line 1276
    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;

    invoke-direct {v2, p2, p3, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;-><init>(JZ)V

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;

    invoke-direct {v5, p6, p7, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_p_pjmedia_port;-><init>(JZ)V

    goto :goto_1
.end method

.method public static SwigDirector_Callback_on_stream_destroyed(Lorg/pjsip/pjsua/Callback;IJJ)V
    .locals 2
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "strm"    # J
    .param p4, "stream_idx"    # J

    .prologue
    .line 1279
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, p4, p5}, Lorg/pjsip/pjsua/Callback;->on_stream_destroyed(ILorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;J)V

    .line 1280
    return-void

    .line 1279
    :cond_0
    new-instance v0, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lorg/pjsip/pjsua/SWIGTYPE_p_pjmedia_stream;-><init>(JZ)V

    goto :goto_0
.end method

.method public static SwigDirector_Callback_on_teardown_audio(Lorg/pjsip/pjsua/Callback;)V
    .locals 0
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;

    .prologue
    .line 1333
    invoke-virtual {p0}, Lorg/pjsip/pjsua/Callback;->on_teardown_audio()V

    .line 1334
    return-void
.end method

.method public static SwigDirector_Callback_on_typing(Lorg/pjsip/pjsua/Callback;IJJJI)V
    .locals 7
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "call_id"    # I
    .param p2, "from"    # J
    .param p4, "to"    # J
    .param p6, "contact"    # J
    .param p8, "is_typing"    # I

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1315
    cmp-long v0, p2, v5

    if-nez v0, :cond_0

    move-object v2, v4

    :goto_0
    cmp-long v0, p4, v5

    if-nez v0, :cond_1

    move-object v3, v4

    :goto_1
    cmp-long v0, p6, v5

    if-nez v0, :cond_2

    :goto_2
    move-object v0, p0

    move v1, p1

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lorg/pjsip/pjsua/Callback;->on_typing(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;I)V

    .line 1316
    return-void

    .line 1315
    :cond_0
    new-instance v2, Lorg/pjsip/pjsua/pj_str_t;

    invoke-direct {v2, p2, p3, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/pjsip/pjsua/pj_str_t;

    invoke-direct {v3, p4, p5, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_1

    :cond_2
    new-instance v4, Lorg/pjsip/pjsua/pj_str_t;

    invoke-direct {v4, p6, p7, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_2
.end method

.method public static SwigDirector_Callback_on_validate_audio_clock_rate(Lorg/pjsip/pjsua/Callback;I)I
    .locals 1
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "clock_rate"    # I

    .prologue
    .line 1327
    invoke-virtual {p0, p1}, Lorg/pjsip/pjsua/Callback;->on_validate_audio_clock_rate(I)I

    move-result v0

    return v0
.end method

.method public static SwigDirector_Callback_on_zrtp_show_sas(Lorg/pjsip/pjsua/Callback;IJI)V
    .locals 2
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "data"    # I
    .param p2, "sas"    # J
    .param p4, "verified"    # I

    .prologue
    .line 1339
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, p4}, Lorg/pjsip/pjsua/Callback;->on_zrtp_show_sas(ILorg/pjsip/pjsua/pj_str_t;I)V

    .line 1340
    return-void

    .line 1339
    :cond_0
    new-instance v0, Lorg/pjsip/pjsua/pj_str_t;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lorg/pjsip/pjsua/pj_str_t;-><init>(JZ)V

    goto :goto_0
.end method

.method public static SwigDirector_Callback_on_zrtp_update_transport(Lorg/pjsip/pjsua/Callback;I)V
    .locals 0
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "data"    # I

    .prologue
    .line 1342
    invoke-virtual {p0, p1}, Lorg/pjsip/pjsua/Callback;->on_zrtp_update_transport(I)V

    .line 1343
    return-void
.end method

.method public static SwigDirector_Callback_timer_cancel(Lorg/pjsip/pjsua/Callback;II)I
    .locals 1
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "entry"    # I
    .param p2, "entryId"    # I

    .prologue
    .line 1348
    invoke-virtual {p0, p1, p2}, Lorg/pjsip/pjsua/Callback;->timer_cancel(II)I

    move-result v0

    return v0
.end method

.method public static SwigDirector_Callback_timer_schedule(Lorg/pjsip/pjsua/Callback;III)I
    .locals 1
    .param p0, "self"    # Lorg/pjsip/pjsua/Callback;
    .param p1, "entry"    # I
    .param p2, "entryId"    # I
    .param p3, "time"    # I

    .prologue
    .line 1345
    invoke-virtual {p0, p1, p2, p3}, Lorg/pjsip/pjsua/Callback;->timer_schedule(III)I

    move-result v0

    return v0
.end method

.method public static final native WRAPPER_CALLBACK_STRUCT_get()J
.end method

.method public static final native acc_add(JLorg/pjsip/pjsua/pjsua_acc_config;I[I)I
.end method

.method public static final native acc_add_local(II[I)I
.end method

.method public static final native acc_clean_all_registrations(I)I
.end method

.method public static final native acc_config_default(JLorg/pjsip/pjsua/pjsua_acc_config;)V
.end method

.method public static final native acc_config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsua_acc_config;)V
.end method

.method public static final native acc_create_request(IJJLorg/pjsip/pjsua/pj_str_t;J)I
.end method

.method public static final native acc_create_uac_contact(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pj_str_t;)I
.end method

.method public static final native acc_create_uas_contact(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pj_str_t;IJ)I
.end method

.method public static final native acc_del(I)I
.end method

.method public static final native acc_enum_info(JLorg/pjsip/pjsua/pjsua_acc_info;[J)I
.end method

.method public static final native acc_find_for_incoming(J)I
.end method

.method public static final native acc_find_for_outgoing(JLorg/pjsip/pjsua/pj_str_t;)I
.end method

.method public static final native acc_get_config(IJLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native acc_get_count()J
.end method

.method public static final native acc_get_default()I
.end method

.method public static final native acc_get_info(IJLorg/pjsip/pjsua/pjsua_acc_info;)I
.end method

.method public static final native acc_get_user_data(I)[B
.end method

.method public static final native acc_is_valid(I)I
.end method

.method public static final native acc_modify(IJLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native acc_set_default(I)I
.end method

.method public static final native acc_set_online_status(II)I
.end method

.method public static final native acc_set_online_status2(IIJLorg/pjsip/pjsua/pjrpid_element;)I
.end method

.method public static final native acc_set_registration(II)I
.end method

.method public static final native acc_set_transport(II)I
.end method

.method public static final native acc_set_user_data(I[B)I
.end method

.method public static final native buddy_add(JLorg/pjsip/pjsua/pjsua_buddy_config;[I)I
.end method

.method public static final native buddy_config_default(JLorg/pjsip/pjsua/pjsua_buddy_config;)V
.end method

.method public static final native buddy_del(I)I
.end method

.method public static final native buddy_find(JLorg/pjsip/pjsua/pj_str_t;)I
.end method

.method public static final native buddy_get_info(IJLorg/pjsip/pjsua/pjsua_buddy_info;)I
.end method

.method public static final native buddy_get_user_data(I)[B
.end method

.method public static final native buddy_is_valid(I)I
.end method

.method public static final native buddy_set_user_data(I[B)I
.end method

.method public static final native buddy_subscribe_pres(II)I
.end method

.method public static final native buddy_update_pres(I)I
.end method

.method public static final native call_answer(IJJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_answer2(IJLorg/pjsip/pjsua/pjsua_call_setting;JJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_dial_dtmf(IJLorg/pjsip/pjsua/pj_str_t;)I
.end method

.method public static final native call_dump__SWIG_0(IILjava/lang/String;JLjava/lang/String;)I
.end method

.method public static final native call_dump__SWIG_1(IILjava/lang/String;)J
.end method

.method public static final native call_get_conf_port(I)I
.end method

.method public static final native call_get_count()J
.end method

.method public static final native call_get_info(IJLorg/pjsip/pjsua/pjsua_call_info;)I
.end method

.method public static final native call_get_max_count()J
.end method

.method public static final native call_get_med_transport_info(IJJ)I
.end method

.method public static final native call_get_rem_nat_type(IJ)I
.end method

.method public static final native call_get_stream_info(IJJLorg/pjsip/pjsua/pjsua_stream_info;)I
.end method

.method public static final native call_get_stream_stat(IJJLorg/pjsip/pjsua/pjsua_stream_stat;)I
.end method

.method public static final native call_get_user_data(I)[B
.end method

.method public static final native call_get_vid_stream_idx(I)I
.end method

.method public static final native call_hangup(IJJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_hangup_all()V
.end method

.method public static final native call_has_media(I)I
.end method

.method public static final native call_is_active(I)I
.end method

.method public static final native call_make_call(IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_call_setting;[BJLorg/pjsip/pjsua/pjsua_msg_data;[I)I
.end method

.method public static final native call_process_redirect(II)I
.end method

.method public static final native call_recording_start(IJLorg/pjsip/pjsua/pj_str_t;I)I
.end method

.method public static final native call_recording_status(I)I
.end method

.method public static final native call_recording_stop(I)I
.end method

.method public static final native call_reinvite(IJJLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_reinvite2(IJLorg/pjsip/pjsua/pjsua_call_setting;JLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_remote_has_cap(IIJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;)J
.end method

.method public static final native call_secure_info(I)J
.end method

.method public static final native call_send_im(IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;[B)I
.end method

.method public static final native call_send_request(IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_send_typing_ind(IIJLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_set_hold(IJLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_set_user_data(I[B)I
.end method

.method public static final native call_set_vid_strm(IIJLorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)I
.end method

.method public static final native call_setting_default(JLorg/pjsip/pjsua/pjsua_call_setting;)V
.end method

.method public static final native call_update(IJJLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_update2(IJLorg/pjsip/pjsua/pjsua_call_setting;JLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_vid_stream_is_running(III)I
.end method

.method public static final native call_vid_strm_op_param_default(JLorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)V
.end method

.method public static final native call_xfer(IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native call_xfer_replaces(IIJJLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native cancel_stun_resolution([BI)I
.end method

.method public static final native cancel_timer(J)V
.end method

.method public static final native codec_get_param(JLorg/pjsip/pjsua/pj_str_t;J)I
.end method

.method public static final native codec_h264_set_profile(JJJJJJ)I
.end method

.method public static final native codec_set_frames_per_packet(JLorg/pjsip/pjsua/pj_str_t;I)I
.end method

.method public static final native codec_set_param(JLorg/pjsip/pjsua/pj_str_t;J)I
.end method

.method public static final native codec_set_priority(JLorg/pjsip/pjsua/pj_str_t;S)I
.end method

.method public static final native codecs_get_id(I)J
.end method

.method public static final native codecs_get_nbr()I
.end method

.method public static final native codecs_vid_get_id(I)J
.end method

.method public static final native codecs_vid_get_nbr()I
.end method

.method public static final native conf_add_port(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjmedia_port;[I)I
.end method

.method public static final native conf_adjust_rx_level(IF)I
.end method

.method public static final native conf_adjust_tx_level(IF)I
.end method

.method public static final native conf_connect(II)I
.end method

.method public static final native conf_disconnect(II)I
.end method

.method public static final native conf_get_active_ports()J
.end method

.method public static final native conf_get_max_ports()J
.end method

.method public static final native conf_get_port_info(IJLorg/pjsip/pjsua/pjsua_conf_port_info;)I
.end method

.method public static final native conf_get_signal_level(I[J[J)I
.end method

.method public static final native conf_remove_port(I)I
.end method

.method public static final native config_default(JLorg/pjsip/pjsua/pjsua_config;)V
.end method

.method public static final native config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pjsua_config;)V
.end method

.method public static final native create()I
.end method

.method public static final native csipsimple_acc_config_default(JLorg/pjsip/pjsua/csipsimple_acc_config;)V
.end method

.method public static final native csipsimple_acc_config_p_preferred_identity_get(JLorg/pjsip/pjsua/csipsimple_acc_config;)J
.end method

.method public static final native csipsimple_acc_config_p_preferred_identity_set(JLorg/pjsip/pjsua/csipsimple_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native csipsimple_acc_config_use_zrtp_get(JLorg/pjsip/pjsua/csipsimple_acc_config;)I
.end method

.method public static final native csipsimple_acc_config_use_zrtp_set(JLorg/pjsip/pjsua/csipsimple_acc_config;I)V
.end method

.method public static final native csipsimple_config_add_bandwidth_tias_in_sdp_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_add_bandwidth_tias_in_sdp_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_audio_implementation_get(JLorg/pjsip/pjsua/csipsimple_config;)J
.end method

.method public static final native csipsimple_config_audio_implementation_set(JLorg/pjsip/pjsua/csipsimple_config;JLorg/pjsip/pjsua/dynamic_factory;)V
.end method

.method public static final native csipsimple_config_default(JLorg/pjsip/pjsua/csipsimple_config;)V
.end method

.method public static final native csipsimple_config_disable_tcp_switch_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_disable_tcp_switch_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_extra_aud_codecs_cnt_get(JLorg/pjsip/pjsua/csipsimple_config;)J
.end method

.method public static final native csipsimple_config_extra_aud_codecs_cnt_set(JLorg/pjsip/pjsua/csipsimple_config;J)V
.end method

.method public static final native csipsimple_config_extra_aud_codecs_get(JLorg/pjsip/pjsua/csipsimple_config;)[J
.end method

.method public static final native csipsimple_config_extra_aud_codecs_set(JLorg/pjsip/pjsua/csipsimple_config;[J)V
.end method

.method public static final native csipsimple_config_extra_vid_codecs_cnt_get(JLorg/pjsip/pjsua/csipsimple_config;)J
.end method

.method public static final native csipsimple_config_extra_vid_codecs_cnt_set(JLorg/pjsip/pjsua/csipsimple_config;J)V
.end method

.method public static final native csipsimple_config_extra_vid_codecs_destroy_get(JLorg/pjsip/pjsua/csipsimple_config;)[J
.end method

.method public static final native csipsimple_config_extra_vid_codecs_destroy_set(JLorg/pjsip/pjsua/csipsimple_config;[J)V
.end method

.method public static final native csipsimple_config_extra_vid_codecs_get(JLorg/pjsip/pjsua/csipsimple_config;)[J
.end method

.method public static final native csipsimple_config_extra_vid_codecs_set(JLorg/pjsip/pjsua/csipsimple_config;[J)V
.end method

.method public static final native csipsimple_config_storage_folder_get(JLorg/pjsip/pjsua/csipsimple_config;)J
.end method

.method public static final native csipsimple_config_storage_folder_set(JLorg/pjsip/pjsua/csipsimple_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native csipsimple_config_tcp_keep_alive_interval_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_tcp_keep_alive_interval_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_tls_keep_alive_interval_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_tls_keep_alive_interval_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_tsx_t1_timeout_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_tsx_t1_timeout_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_tsx_t2_timeout_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_tsx_t2_timeout_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_tsx_t4_timeout_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_tsx_t4_timeout_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_tsx_td_timeout_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_tsx_td_timeout_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_use_compact_form_headers_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_use_compact_form_headers_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_use_compact_form_sdp_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_use_compact_form_sdp_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_use_no_update_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_use_no_update_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_use_zrtp_get(JLorg/pjsip/pjsua/csipsimple_config;)I
.end method

.method public static final native csipsimple_config_use_zrtp_set(JLorg/pjsip/pjsua/csipsimple_config;I)V
.end method

.method public static final native csipsimple_config_vid_converter_get(JLorg/pjsip/pjsua/csipsimple_config;)J
.end method

.method public static final native csipsimple_config_vid_converter_set(JLorg/pjsip/pjsua/csipsimple_config;JLorg/pjsip/pjsua/dynamic_factory;)V
.end method

.method public static final native csipsimple_config_video_capture_implementation_get(JLorg/pjsip/pjsua/csipsimple_config;)J
.end method

.method public static final native csipsimple_config_video_capture_implementation_set(JLorg/pjsip/pjsua/csipsimple_config;JLorg/pjsip/pjsua/dynamic_factory;)V
.end method

.method public static final native csipsimple_config_video_render_implementation_get(JLorg/pjsip/pjsua/csipsimple_config;)J
.end method

.method public static final native csipsimple_config_video_render_implementation_set(JLorg/pjsip/pjsua/csipsimple_config;JLorg/pjsip/pjsua/dynamic_factory;)V
.end method

.method public static final native csipsimple_destroy(J)I
.end method

.method public static final native csipsimple_init(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pjsua_logging_config;JLorg/pjsip/pjsua/pjsua_media_config;JLorg/pjsip/pjsua/csipsimple_config;Ljava/lang/Object;)I
.end method

.method public static final native csipsimple_init_acc_msg_data(IJLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native csipsimple_set_acc_user_data(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/csipsimple_acc_config;)I
.end method

.method public static final native css_on_call_media_state(I)V
.end method

.method public static final native css_on_call_state(IJLorg/pjsip/pjsua/pjsip_event;)V
.end method

.method public static final native delete_Callback(J)V
.end method

.method public static final native delete_csipsimple_acc_config(J)V
.end method

.method public static final native delete_csipsimple_config(J)V
.end method

.method public static final native delete_dynamic_factory(J)V
.end method

.method public static final native delete_pj_pool_t(J)V
.end method

.method public static final native delete_pj_qos_params(J)V
.end method

.method public static final native delete_pj_str_t(J)V
.end method

.method public static final native delete_pj_stun_nat_detect_result(J)V
.end method

.method public static final native delete_pj_stun_resolve_result(J)V
.end method

.method public static final native delete_pj_time_val(J)V
.end method

.method public static final native delete_pjmedia_port_info(J)V
.end method

.method public static final native delete_pjmedia_snd_dev_info(J)V
.end method

.method public static final native delete_pjmedia_tone_desc(J)V
.end method

.method public static final native delete_pjmedia_tone_digit(J)V
.end method

.method public static final native delete_pjrpid_element(J)V
.end method

.method public static final native delete_pjsip_cred_info(J)V
.end method

.method public static final native delete_pjsip_event(J)V
.end method

.method public static final native delete_pjsip_timer_setting(J)V
.end method

.method public static final native delete_pjsip_tls_setting(J)V
.end method

.method public static final native delete_pjsua_acc_config(J)V
.end method

.method public static final native delete_pjsua_acc_info(J)V
.end method

.method public static final native delete_pjsua_buddy_config(J)V
.end method

.method public static final native delete_pjsua_buddy_info(J)V
.end method

.method public static final native delete_pjsua_call_info(J)V
.end method

.method public static final native delete_pjsua_call_media_info(J)V
.end method

.method public static final native delete_pjsua_call_setting(J)V
.end method

.method public static final native delete_pjsua_call_vid_strm_op_param(J)V
.end method

.method public static final native delete_pjsua_callback(J)V
.end method

.method public static final native delete_pjsua_codec_info(J)V
.end method

.method public static final native delete_pjsua_conf_port_info(J)V
.end method

.method public static final native delete_pjsua_config(J)V
.end method

.method public static final native delete_pjsua_ice_config(J)V
.end method

.method public static final native delete_pjsua_logging_config(J)V
.end method

.method public static final native delete_pjsua_med_tp_state_info(J)V
.end method

.method public static final native delete_pjsua_media_config(J)V
.end method

.method public static final native delete_pjsua_media_transport(J)V
.end method

.method public static final native delete_pjsua_msg_data(J)V
.end method

.method public static final native delete_pjsua_mwi_info(J)V
.end method

.method public static final native delete_pjsua_reg_info(J)V
.end method

.method public static final native delete_pjsua_stream_info(J)V
.end method

.method public static final native delete_pjsua_stream_stat(J)V
.end method

.method public static final native delete_pjsua_transport_config(J)V
.end method

.method public static final native delete_pjsua_transport_info(J)V
.end method

.method public static final native delete_pjsua_turn_config(J)V
.end method

.method public static final native delete_pjsua_vid_preview_param(J)V
.end method

.method public static final native delete_pjsua_vid_win_info(J)V
.end method

.method public static final native detect_nat_type()I
.end method

.method public static final native dump(I)V
.end method

.method public static final native dynamic_factory_init_factory_name_get(JLorg/pjsip/pjsua/dynamic_factory;)J
.end method

.method public static final native dynamic_factory_init_factory_name_set(JLorg/pjsip/pjsua/dynamic_factory;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native dynamic_factory_shared_lib_path_get(JLorg/pjsip/pjsua/dynamic_factory;)J
.end method

.method public static final native dynamic_factory_shared_lib_path_set(JLorg/pjsip/pjsua/dynamic_factory;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native enum_accs([I[J)I
.end method

.method public static final native enum_aud_devs(J[J)I
.end method

.method public static final native enum_buddies([I[J)I
.end method

.method public static final native enum_calls([I[J)I
.end method

.method public static final native enum_codecs(JLorg/pjsip/pjsua/pjsua_codec_info;[J)I
.end method

.method public static final native enum_conf_ports([I[J)I
.end method

.method public static final native enum_snd_devs(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;[J)I
.end method

.method public static final native enum_transports([I[J)I
.end method

.method public static final native get_buddy_count()J
.end method

.method public static final native get_ec_tail(J)I
.end method

.method public static final native get_error_message(I)J
.end method

.method public static final native get_event_status_code(JLorg/pjsip/pjsua/pjsip_event;)I
.end method

.method public static final native get_nat_type(J)I
.end method

.method public static final native get_pjmedia_endpt()J
.end method

.method public static final native get_pjsip_endpt()J
.end method

.method public static final native get_pool_factory()J
.end method

.method public static final native get_snd_dev([I[I)I
.end method

.method public static final native get_state()I
.end method

.method public static final native handle_events(J)I
.end method

.method public static final native ice_config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_ice_config;JLorg/pjsip/pjsua/pjsua_ice_config;)V
.end method

.method public static final native ice_config_from_media_config(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_ice_config;JLorg/pjsip/pjsua/pjsua_media_config;)V
.end method

.method public static final native im_send(IJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pjsua_msg_data;[B)I
.end method

.method public static final native im_typing(IJLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native jzrtp_SASVerified(I)V
.end method

.method public static final native jzrtp_getCallId(I)I
.end method

.method public static final native logging_config_default(JLorg/pjsip/pjsua/pjsua_logging_config;)V
.end method

.method public static final native logging_config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_logging_config;JLorg/pjsip/pjsua/pjsua_logging_config;)V
.end method

.method public static final native media_config_default(JLorg/pjsip/pjsua/pjsua_media_config;)V
.end method

.method public static final native msg_data_clone(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_msg_data;)J
.end method

.method public static final native msg_data_init(JLorg/pjsip/pjsua/pjsua_msg_data;)V
.end method

.method public static final native new_Callback()J
.end method

.method public static final native new_csipsimple_acc_config()J
.end method

.method public static final native new_csipsimple_config()J
.end method

.method public static final native new_dynamic_factory()J
.end method

.method public static final native new_pj_pool_t()J
.end method

.method public static final native new_pj_qos_params()J
.end method

.method public static final native new_pj_str_t()J
.end method

.method public static final native new_pj_stun_nat_detect_result()J
.end method

.method public static final native new_pj_stun_resolve_result()J
.end method

.method public static final native new_pj_time_val()J
.end method

.method public static final native new_pjmedia_port_info()J
.end method

.method public static final native new_pjmedia_snd_dev_info()J
.end method

.method public static final native new_pjmedia_tone_desc()J
.end method

.method public static final native new_pjmedia_tone_digit()J
.end method

.method public static final native new_pjrpid_element()J
.end method

.method public static final native new_pjsip_cred_info()J
.end method

.method public static final native new_pjsip_event()J
.end method

.method public static final native new_pjsip_timer_setting()J
.end method

.method public static final native new_pjsip_tls_setting()J
.end method

.method public static final native new_pjsua_acc_config()J
.end method

.method public static final native new_pjsua_acc_info()J
.end method

.method public static final native new_pjsua_buddy_config()J
.end method

.method public static final native new_pjsua_buddy_info()J
.end method

.method public static final native new_pjsua_call_info()J
.end method

.method public static final native new_pjsua_call_media_info()J
.end method

.method public static final native new_pjsua_call_setting()J
.end method

.method public static final native new_pjsua_call_vid_strm_op_param()J
.end method

.method public static final native new_pjsua_callback()J
.end method

.method public static final native new_pjsua_codec_info()J
.end method

.method public static final native new_pjsua_conf_port_info()J
.end method

.method public static final native new_pjsua_config()J
.end method

.method public static final native new_pjsua_ice_config()J
.end method

.method public static final native new_pjsua_logging_config()J
.end method

.method public static final native new_pjsua_med_tp_state_info()J
.end method

.method public static final native new_pjsua_media_config()J
.end method

.method public static final native new_pjsua_media_transport()J
.end method

.method public static final native new_pjsua_msg_data()J
.end method

.method public static final native new_pjsua_mwi_info()J
.end method

.method public static final native new_pjsua_reg_info()J
.end method

.method public static final native new_pjsua_stream_info()J
.end method

.method public static final native new_pjsua_stream_stat()J
.end method

.method public static final native new_pjsua_transport_config()J
.end method

.method public static final native new_pjsua_transport_info()J
.end method

.method public static final native new_pjsua_turn_config()J
.end method

.method public static final native new_pjsua_vid_preview_param()J
.end method

.method public static final native new_pjsua_vid_win_info()J
.end method

.method public static final native perror(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static final native pj_pool_release(JLorg/pjsip/pjsua/pj_pool_t;)V
.end method

.method public static final native pj_pool_t_block_list_get(JLorg/pjsip/pjsua/pj_pool_t;)J
.end method

.method public static final native pj_pool_t_block_list_set(JLorg/pjsip/pjsua/pj_pool_t;J)V
.end method

.method public static final native pj_pool_t_callback_get(JLorg/pjsip/pjsua/pj_pool_t;)J
.end method

.method public static final native pj_pool_t_callback_set(JLorg/pjsip/pjsua/pj_pool_t;J)V
.end method

.method public static final native pj_pool_t_capacity_get(JLorg/pjsip/pjsua/pj_pool_t;)J
.end method

.method public static final native pj_pool_t_capacity_set(JLorg/pjsip/pjsua/pj_pool_t;J)V
.end method

.method public static final native pj_pool_t_factory_data_get(JLorg/pjsip/pjsua/pj_pool_t;)[B
.end method

.method public static final native pj_pool_t_factory_data_set(JLorg/pjsip/pjsua/pj_pool_t;[B)V
.end method

.method public static final native pj_pool_t_factory_get(JLorg/pjsip/pjsua/pj_pool_t;)J
.end method

.method public static final native pj_pool_t_factory_set(JLorg/pjsip/pjsua/pj_pool_t;J)V
.end method

.method public static final native pj_pool_t_increment_size_get(JLorg/pjsip/pjsua/pj_pool_t;)J
.end method

.method public static final native pj_pool_t_increment_size_set(JLorg/pjsip/pjsua/pj_pool_t;J)V
.end method

.method public static final native pj_pool_t_obj_name_get(JLorg/pjsip/pjsua/pj_pool_t;)Ljava/lang/String;
.end method

.method public static final native pj_pool_t_obj_name_set(JLorg/pjsip/pjsua/pj_pool_t;Ljava/lang/String;)V
.end method

.method public static final native pj_qos_params_dscp_val_get(JLorg/pjsip/pjsua/pj_qos_params;)S
.end method

.method public static final native pj_qos_params_dscp_val_set(JLorg/pjsip/pjsua/pj_qos_params;S)V
.end method

.method public static final native pj_qos_params_flags_get(JLorg/pjsip/pjsua/pj_qos_params;)S
.end method

.method public static final native pj_qos_params_flags_set(JLorg/pjsip/pjsua/pj_qos_params;S)V
.end method

.method public static final native pj_qos_params_so_prio_get(JLorg/pjsip/pjsua/pj_qos_params;)S
.end method

.method public static final native pj_qos_params_so_prio_set(JLorg/pjsip/pjsua/pj_qos_params;S)V
.end method

.method public static final native pj_qos_params_wmm_prio_get(JLorg/pjsip/pjsua/pj_qos_params;)J
.end method

.method public static final native pj_qos_params_wmm_prio_set(JLorg/pjsip/pjsua/pj_qos_params;J)V
.end method

.method public static final native pj_str_copy(Ljava/lang/String;)J
.end method

.method public static final native pj_str_t_ptr_get(JLorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;
.end method

.method public static final native pj_str_t_ptr_set(JLorg/pjsip/pjsua/pj_str_t;Ljava/lang/String;)V
.end method

.method public static final native pj_str_t_slen_get(JLorg/pjsip/pjsua/pj_str_t;)I
.end method

.method public static final native pj_str_t_slen_set(JLorg/pjsip/pjsua/pj_str_t;I)V
.end method

.method public static final native pj_stun_nat_detect_result_nat_type_get(JLorg/pjsip/pjsua/pj_stun_nat_detect_result;)J
.end method

.method public static final native pj_stun_nat_detect_result_nat_type_name_get(JLorg/pjsip/pjsua/pj_stun_nat_detect_result;)Ljava/lang/String;
.end method

.method public static final native pj_stun_nat_detect_result_nat_type_name_set(JLorg/pjsip/pjsua/pj_stun_nat_detect_result;Ljava/lang/String;)V
.end method

.method public static final native pj_stun_nat_detect_result_nat_type_set(JLorg/pjsip/pjsua/pj_stun_nat_detect_result;J)V
.end method

.method public static final native pj_stun_nat_detect_result_status_get(JLorg/pjsip/pjsua/pj_stun_nat_detect_result;)I
.end method

.method public static final native pj_stun_nat_detect_result_status_set(JLorg/pjsip/pjsua/pj_stun_nat_detect_result;I)V
.end method

.method public static final native pj_stun_nat_detect_result_status_text_get(JLorg/pjsip/pjsua/pj_stun_nat_detect_result;)Ljava/lang/String;
.end method

.method public static final native pj_stun_nat_detect_result_status_text_set(JLorg/pjsip/pjsua/pj_stun_nat_detect_result;Ljava/lang/String;)V
.end method

.method public static final native pj_stun_resolve_result_addr_get(JLorg/pjsip/pjsua/pj_stun_resolve_result;)J
.end method

.method public static final native pj_stun_resolve_result_addr_set(JLorg/pjsip/pjsua/pj_stun_resolve_result;J)V
.end method

.method public static final native pj_stun_resolve_result_name_get(JLorg/pjsip/pjsua/pj_stun_resolve_result;)J
.end method

.method public static final native pj_stun_resolve_result_name_set(JLorg/pjsip/pjsua/pj_stun_resolve_result;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pj_stun_resolve_result_status_get(JLorg/pjsip/pjsua/pj_stun_resolve_result;)I
.end method

.method public static final native pj_stun_resolve_result_status_set(JLorg/pjsip/pjsua/pj_stun_resolve_result;I)V
.end method

.method public static final native pj_stun_resolve_result_token_get(JLorg/pjsip/pjsua/pj_stun_resolve_result;)[B
.end method

.method public static final native pj_stun_resolve_result_token_set(JLorg/pjsip/pjsua/pj_stun_resolve_result;[B)V
.end method

.method public static final native pj_time_val_msec_get(JLorg/pjsip/pjsua/pj_time_val;)I
.end method

.method public static final native pj_time_val_msec_set(JLorg/pjsip/pjsua/pj_time_val;I)V
.end method

.method public static final native pj_time_val_sec_get(JLorg/pjsip/pjsua/pj_time_val;)I
.end method

.method public static final native pj_time_val_sec_set(JLorg/pjsip/pjsua/pj_time_val;I)V
.end method

.method public static final native pj_timer_fire(I)I
.end method

.method public static final native pjmedia_port_get_frame_get(JLorg/pjsip/pjsua/pjmedia_port;)J
.end method

.method public static final native pjmedia_port_get_frame_set(JLorg/pjsip/pjsua/pjmedia_port;J)V
.end method

.method public static final native pjmedia_port_info_dir_get(JLorg/pjsip/pjsua/pjmedia_port_info;)I
.end method

.method public static final native pjmedia_port_info_dir_set(JLorg/pjsip/pjsua/pjmedia_port_info;I)V
.end method

.method public static final native pjmedia_port_info_fmt_get(JLorg/pjsip/pjsua/pjmedia_port_info;)J
.end method

.method public static final native pjmedia_port_info_fmt_set(JLorg/pjsip/pjsua/pjmedia_port_info;J)V
.end method

.method public static final native pjmedia_port_info_get(JLorg/pjsip/pjsua/pjmedia_port;)J
.end method

.method public static final native pjmedia_port_info_name_get(JLorg/pjsip/pjsua/pjmedia_port_info;)J
.end method

.method public static final native pjmedia_port_info_name_set(JLorg/pjsip/pjsua/pjmedia_port_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjmedia_port_info_set(JLorg/pjsip/pjsua/pjmedia_port;JLorg/pjsip/pjsua/pjmedia_port_info;)V
.end method

.method public static final native pjmedia_port_info_signature_get(JLorg/pjsip/pjsua/pjmedia_port_info;)J
.end method

.method public static final native pjmedia_port_info_signature_set(JLorg/pjsip/pjsua/pjmedia_port_info;J)V
.end method

.method public static final native pjmedia_port_on_destroy_get(JLorg/pjsip/pjsua/pjmedia_port;)J
.end method

.method public static final native pjmedia_port_on_destroy_set(JLorg/pjsip/pjsua/pjmedia_port;J)V
.end method

.method public static final native pjmedia_port_put_frame_get(JLorg/pjsip/pjsua/pjmedia_port;)J
.end method

.method public static final native pjmedia_port_put_frame_set(JLorg/pjsip/pjsua/pjmedia_port;J)V
.end method

.method public static final native pjmedia_snd_dev_info_default_samples_per_sec_get(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;)J
.end method

.method public static final native pjmedia_snd_dev_info_default_samples_per_sec_set(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;J)V
.end method

.method public static final native pjmedia_snd_dev_info_input_count_get(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;)J
.end method

.method public static final native pjmedia_snd_dev_info_input_count_set(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;J)V
.end method

.method public static final native pjmedia_snd_dev_info_name_get(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;)Ljava/lang/String;
.end method

.method public static final native pjmedia_snd_dev_info_name_set(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;Ljava/lang/String;)V
.end method

.method public static final native pjmedia_snd_dev_info_output_count_get(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;)J
.end method

.method public static final native pjmedia_snd_dev_info_output_count_set(JLorg/pjsip/pjsua/pjmedia_snd_dev_info;J)V
.end method

.method public static final native pjmedia_tone_desc_freq1_get(JLorg/pjsip/pjsua/pjmedia_tone_desc;)S
.end method

.method public static final native pjmedia_tone_desc_freq1_set(JLorg/pjsip/pjsua/pjmedia_tone_desc;S)V
.end method

.method public static final native pjmedia_tone_desc_freq2_get(JLorg/pjsip/pjsua/pjmedia_tone_desc;)S
.end method

.method public static final native pjmedia_tone_desc_freq2_set(JLorg/pjsip/pjsua/pjmedia_tone_desc;S)V
.end method

.method public static final native pjmedia_tone_desc_off_msec_get(JLorg/pjsip/pjsua/pjmedia_tone_desc;)S
.end method

.method public static final native pjmedia_tone_desc_off_msec_set(JLorg/pjsip/pjsua/pjmedia_tone_desc;S)V
.end method

.method public static final native pjmedia_tone_desc_on_msec_get(JLorg/pjsip/pjsua/pjmedia_tone_desc;)S
.end method

.method public static final native pjmedia_tone_desc_on_msec_set(JLorg/pjsip/pjsua/pjmedia_tone_desc;S)V
.end method

.method public static final native pjmedia_tone_desc_volume_get(JLorg/pjsip/pjsua/pjmedia_tone_desc;)S
.end method

.method public static final native pjmedia_tone_desc_volume_set(JLorg/pjsip/pjsua/pjmedia_tone_desc;S)V
.end method

.method public static final native pjmedia_tone_digit_digit_get(JLorg/pjsip/pjsua/pjmedia_tone_digit;)C
.end method

.method public static final native pjmedia_tone_digit_digit_set(JLorg/pjsip/pjsua/pjmedia_tone_digit;C)V
.end method

.method public static final native pjmedia_tone_digit_off_msec_get(JLorg/pjsip/pjsua/pjmedia_tone_digit;)S
.end method

.method public static final native pjmedia_tone_digit_off_msec_set(JLorg/pjsip/pjsua/pjmedia_tone_digit;S)V
.end method

.method public static final native pjmedia_tone_digit_on_msec_get(JLorg/pjsip/pjsua/pjmedia_tone_digit;)S
.end method

.method public static final native pjmedia_tone_digit_on_msec_set(JLorg/pjsip/pjsua/pjmedia_tone_digit;S)V
.end method

.method public static final native pjmedia_tone_digit_volume_get(JLorg/pjsip/pjsua/pjmedia_tone_digit;)S
.end method

.method public static final native pjmedia_tone_digit_volume_set(JLorg/pjsip/pjsua/pjmedia_tone_digit;S)V
.end method

.method public static final native pjmedia_tonegen_create2(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pj_str_t;JJJJJLorg/pjsip/pjsua/pjmedia_port;)I
.end method

.method public static final native pjmedia_tonegen_play(JLorg/pjsip/pjsua/pjmedia_port;J[JJ)I
.end method

.method public static final native pjmedia_tonegen_play_digits(JLorg/pjsip/pjsua/pjmedia_port;J[JJ)I
.end method

.method public static final native pjmedia_tonegen_rewind(JLorg/pjsip/pjsua/pjmedia_port;)I
.end method

.method public static final native pjrpid_element_activity_get(JLorg/pjsip/pjsua/pjrpid_element;)I
.end method

.method public static final native pjrpid_element_activity_set(JLorg/pjsip/pjsua/pjrpid_element;I)V
.end method

.method public static final native pjrpid_element_id_get(JLorg/pjsip/pjsua/pjrpid_element;)J
.end method

.method public static final native pjrpid_element_id_set(JLorg/pjsip/pjsua/pjrpid_element;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjrpid_element_note_get(JLorg/pjsip/pjsua/pjrpid_element;)J
.end method

.method public static final native pjrpid_element_note_set(JLorg/pjsip/pjsua/pjrpid_element;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjrpid_element_type_get(JLorg/pjsip/pjsua/pjrpid_element;)J
.end method

.method public static final native pjrpid_element_type_set(JLorg/pjsip/pjsua/pjrpid_element;J)V
.end method

.method public static final native pjsip_cred_info_data_get(JLorg/pjsip/pjsua/pjsip_cred_info;)J
.end method

.method public static final native pjsip_cred_info_data_set(JLorg/pjsip/pjsua/pjsip_cred_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsip_cred_info_data_type_get(JLorg/pjsip/pjsua/pjsip_cred_info;)I
.end method

.method public static final native pjsip_cred_info_data_type_set(JLorg/pjsip/pjsua/pjsip_cred_info;I)V
.end method

.method public static final native pjsip_cred_info_realm_get(JLorg/pjsip/pjsua/pjsip_cred_info;)J
.end method

.method public static final native pjsip_cred_info_realm_set(JLorg/pjsip/pjsua/pjsip_cred_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsip_cred_info_scheme_get(JLorg/pjsip/pjsua/pjsip_cred_info;)J
.end method

.method public static final native pjsip_cred_info_scheme_set(JLorg/pjsip/pjsua/pjsip_cred_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsip_cred_info_username_get(JLorg/pjsip/pjsua/pjsip_cred_info;)J
.end method

.method public static final native pjsip_cred_info_username_set(JLorg/pjsip/pjsua/pjsip_cred_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsip_event_type_get(JLorg/pjsip/pjsua/pjsip_event;)I
.end method

.method public static final native pjsip_event_type_set(JLorg/pjsip/pjsua/pjsip_event;I)V
.end method

.method public static final native pjsip_info_method_get()J
.end method

.method public static final native pjsip_message_method_get()J
.end method

.method public static final native pjsip_timer_setting_min_se_get(JLorg/pjsip/pjsua/pjsip_timer_setting;)J
.end method

.method public static final native pjsip_timer_setting_min_se_set(JLorg/pjsip/pjsua/pjsip_timer_setting;J)V
.end method

.method public static final native pjsip_timer_setting_sess_expires_get(JLorg/pjsip/pjsua/pjsip_timer_setting;)J
.end method

.method public static final native pjsip_timer_setting_sess_expires_set(JLorg/pjsip/pjsua/pjsip_timer_setting;J)V
.end method

.method public static final native pjsip_tls_setting_ca_list_file_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J
.end method

.method public static final native pjsip_tls_setting_ca_list_file_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsip_tls_setting_cert_file_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J
.end method

.method public static final native pjsip_tls_setting_cert_file_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsip_tls_setting_ciphers_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J
.end method

.method public static final native pjsip_tls_setting_ciphers_num_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J
.end method

.method public static final native pjsip_tls_setting_ciphers_num_set(JLorg/pjsip/pjsua/pjsip_tls_setting;J)V
.end method

.method public static final native pjsip_tls_setting_ciphers_set(JLorg/pjsip/pjsua/pjsip_tls_setting;J)V
.end method

.method public static final native pjsip_tls_setting_method_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I
.end method

.method public static final native pjsip_tls_setting_method_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V
.end method

.method public static final native pjsip_tls_setting_password_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J
.end method

.method public static final native pjsip_tls_setting_password_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsip_tls_setting_privkey_file_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J
.end method

.method public static final native pjsip_tls_setting_privkey_file_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsip_tls_setting_qos_ignore_error_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I
.end method

.method public static final native pjsip_tls_setting_qos_ignore_error_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V
.end method

.method public static final native pjsip_tls_setting_qos_params_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J
.end method

.method public static final native pjsip_tls_setting_qos_params_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_qos_params;)V
.end method

.method public static final native pjsip_tls_setting_qos_type_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I
.end method

.method public static final native pjsip_tls_setting_qos_type_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V
.end method

.method public static final native pjsip_tls_setting_require_client_cert_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I
.end method

.method public static final native pjsip_tls_setting_require_client_cert_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V
.end method

.method public static final native pjsip_tls_setting_timeout_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)J
.end method

.method public static final native pjsip_tls_setting_timeout_set(JLorg/pjsip/pjsua/pjsip_tls_setting;JLorg/pjsip/pjsua/pj_time_val;)V
.end method

.method public static final native pjsip_tls_setting_verify_client_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I
.end method

.method public static final native pjsip_tls_setting_verify_client_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V
.end method

.method public static final native pjsip_tls_setting_verify_server_get(JLorg/pjsip/pjsua/pjsip_tls_setting;)I
.end method

.method public static final native pjsip_tls_setting_verify_server_set(JLorg/pjsip/pjsua/pjsip_tls_setting;I)V
.end method

.method public static final native pjsua_acc_config_allow_contact_rewrite_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_allow_contact_rewrite_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_allow_via_rewrite_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_allow_via_rewrite_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_auth_pref_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_auth_pref_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_call_hold_type_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_call_hold_type_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_contact_params_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_contact_params_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_config_contact_rewrite_method_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_contact_rewrite_method_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_contact_uri_params_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_contact_uri_params_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_config_cred_count_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_cred_count_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_cred_info_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_cred_info_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsip_cred_info;)V
.end method

.method public static final native pjsua_acc_config_drop_calls_on_reg_fail_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_drop_calls_on_reg_fail_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_force_contact_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_force_contact_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_config_ice_cfg_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_ice_cfg_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsua_ice_config;)V
.end method

.method public static final native pjsua_acc_config_ice_cfg_use_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_ice_cfg_use_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_id_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_id_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_config_ka_data_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_ka_data_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_config_ka_interval_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_ka_interval_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_lock_codec_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_lock_codec_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_media_stun_use_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_media_stun_use_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_mwi_enabled_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_mwi_enabled_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_mwi_expires_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_mwi_expires_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_pidf_tuple_id_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_pidf_tuple_id_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_config_priority_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_priority_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_proxy_cnt_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_proxy_cnt_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_proxy_get(JLorg/pjsip/pjsua/pjsua_acc_config;)[J
.end method

.method public static final native pjsua_acc_config_proxy_set(JLorg/pjsip/pjsua/pjsua_acc_config;[J)V
.end method

.method public static final native pjsua_acc_config_publish_enabled_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_publish_enabled_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_publish_opt_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_publish_opt_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_reg_delay_before_refresh_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_reg_delay_before_refresh_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_reg_first_retry_interval_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_reg_first_retry_interval_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_reg_hdr_list_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_reg_hdr_list_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_reg_retry_interval_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_reg_retry_interval_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_reg_timeout_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_reg_timeout_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_reg_uri_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_reg_uri_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_config_reg_use_proxy_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_reg_use_proxy_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_register_on_acc_add_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_register_on_acc_add_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_require_100rel_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_require_100rel_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_rfc5626_instance_id_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_rfc5626_instance_id_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_config_rfc5626_reg_id_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_rfc5626_reg_id_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_config_rtp_cfg_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_rtp_cfg_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsua_transport_config;)V
.end method

.method public static final native pjsua_acc_config_sip_stun_use_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_sip_stun_use_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_srtp_optional_dup_offer_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_srtp_optional_dup_offer_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_srtp_secure_signaling_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_srtp_secure_signaling_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_sub_hdr_list_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_sub_hdr_list_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_timer_setting_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_timer_setting_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsip_timer_setting;)V
.end method

.method public static final native pjsua_acc_config_transport_id_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_transport_id_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_turn_cfg_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_turn_cfg_set(JLorg/pjsip/pjsua/pjsua_acc_config;JLorg/pjsip/pjsua/pjsua_turn_config;)V
.end method

.method public static final native pjsua_acc_config_turn_cfg_use_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_turn_cfg_use_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_unpublish_max_wait_time_msec_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_unpublish_max_wait_time_msec_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_unreg_timeout_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_unreg_timeout_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_use_rfc5626_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_use_rfc5626_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_use_srtp_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_use_srtp_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_use_timer_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_use_timer_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_user_data_get(JLorg/pjsip/pjsua/pjsua_acc_config;)[B
.end method

.method public static final native pjsua_acc_config_user_data_set(JLorg/pjsip/pjsua/pjsua_acc_config;[B)V
.end method

.method public static final native pjsua_acc_config_vid_cap_dev_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_vid_cap_dev_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_vid_in_auto_show_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_vid_in_auto_show_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_vid_out_auto_transmit_get(JLorg/pjsip/pjsua/pjsua_acc_config;)I
.end method

.method public static final native pjsua_acc_config_vid_out_auto_transmit_set(JLorg/pjsip/pjsua/pjsua_acc_config;I)V
.end method

.method public static final native pjsua_acc_config_vid_rend_dev_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_vid_rend_dev_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_vid_stream_rc_cfg_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_vid_stream_rc_cfg_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_config_vid_wnd_flags_get(JLorg/pjsip/pjsua/pjsua_acc_config;)J
.end method

.method public static final native pjsua_acc_config_vid_wnd_flags_set(JLorg/pjsip/pjsua/pjsua_acc_config;J)V
.end method

.method public static final native pjsua_acc_info_acc_uri_get(JLorg/pjsip/pjsua/pjsua_acc_info;)J
.end method

.method public static final native pjsua_acc_info_acc_uri_set(JLorg/pjsip/pjsua/pjsua_acc_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_info_buf__get(JLorg/pjsip/pjsua/pjsua_acc_info;)Ljava/lang/String;
.end method

.method public static final native pjsua_acc_info_buf__set(JLorg/pjsip/pjsua/pjsua_acc_info;Ljava/lang/String;)V
.end method

.method public static final native pjsua_acc_info_expires_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I
.end method

.method public static final native pjsua_acc_info_expires_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V
.end method

.method public static final native pjsua_acc_info_has_registration_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I
.end method

.method public static final native pjsua_acc_info_has_registration_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V
.end method

.method public static final native pjsua_acc_info_id_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I
.end method

.method public static final native pjsua_acc_info_id_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V
.end method

.method public static final native pjsua_acc_info_is_default_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I
.end method

.method public static final native pjsua_acc_info_is_default_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V
.end method

.method public static final native pjsua_acc_info_online_status_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I
.end method

.method public static final native pjsua_acc_info_online_status_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V
.end method

.method public static final native pjsua_acc_info_online_status_text_get(JLorg/pjsip/pjsua/pjsua_acc_info;)J
.end method

.method public static final native pjsua_acc_info_online_status_text_set(JLorg/pjsip/pjsua/pjsua_acc_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_acc_info_reg_last_err_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I
.end method

.method public static final native pjsua_acc_info_reg_last_err_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V
.end method

.method public static final native pjsua_acc_info_rpid_get(JLorg/pjsip/pjsua/pjsua_acc_info;)J
.end method

.method public static final native pjsua_acc_info_rpid_set(JLorg/pjsip/pjsua/pjsua_acc_info;JLorg/pjsip/pjsua/pjrpid_element;)V
.end method

.method public static final native pjsua_acc_info_status_get(JLorg/pjsip/pjsua/pjsua_acc_info;)I
.end method

.method public static final native pjsua_acc_info_status_set(JLorg/pjsip/pjsua/pjsua_acc_info;I)V
.end method

.method public static final native pjsua_acc_info_status_text_get(JLorg/pjsip/pjsua/pjsua_acc_info;)J
.end method

.method public static final native pjsua_acc_info_status_text_set(JLorg/pjsip/pjsua/pjsua_acc_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_buddy_config_subscribe_get(JLorg/pjsip/pjsua/pjsua_buddy_config;)I
.end method

.method public static final native pjsua_buddy_config_subscribe_set(JLorg/pjsip/pjsua/pjsua_buddy_config;I)V
.end method

.method public static final native pjsua_buddy_config_uri_get(JLorg/pjsip/pjsua/pjsua_buddy_config;)J
.end method

.method public static final native pjsua_buddy_config_uri_set(JLorg/pjsip/pjsua/pjsua_buddy_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_buddy_config_user_data_get(JLorg/pjsip/pjsua/pjsua_buddy_config;)[B
.end method

.method public static final native pjsua_buddy_config_user_data_set(JLorg/pjsip/pjsua/pjsua_buddy_config;[B)V
.end method

.method public static final native pjsua_buddy_info_buf__get(JLorg/pjsip/pjsua/pjsua_buddy_info;)Ljava/lang/String;
.end method

.method public static final native pjsua_buddy_info_buf__set(JLorg/pjsip/pjsua/pjsua_buddy_info;Ljava/lang/String;)V
.end method

.method public static final native pjsua_buddy_info_contact_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J
.end method

.method public static final native pjsua_buddy_info_contact_set(JLorg/pjsip/pjsua/pjsua_buddy_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_buddy_info_id_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)I
.end method

.method public static final native pjsua_buddy_info_id_set(JLorg/pjsip/pjsua/pjsua_buddy_info;I)V
.end method

.method public static final native pjsua_buddy_info_monitor_pres_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)I
.end method

.method public static final native pjsua_buddy_info_monitor_pres_set(JLorg/pjsip/pjsua/pjsua_buddy_info;I)V
.end method

.method public static final native pjsua_buddy_info_pres_status_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J
.end method

.method public static final native pjsua_buddy_info_pres_status_set(JLorg/pjsip/pjsua/pjsua_buddy_info;J)V
.end method

.method public static final native pjsua_buddy_info_rpid_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J
.end method

.method public static final native pjsua_buddy_info_rpid_set(JLorg/pjsip/pjsua/pjsua_buddy_info;JLorg/pjsip/pjsua/pjrpid_element;)V
.end method

.method public static final native pjsua_buddy_info_status_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)I
.end method

.method public static final native pjsua_buddy_info_status_set(JLorg/pjsip/pjsua/pjsua_buddy_info;I)V
.end method

.method public static final native pjsua_buddy_info_status_text_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J
.end method

.method public static final native pjsua_buddy_info_status_text_set(JLorg/pjsip/pjsua/pjsua_buddy_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_buddy_info_sub_state_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J
.end method

.method public static final native pjsua_buddy_info_sub_state_name_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)Ljava/lang/String;
.end method

.method public static final native pjsua_buddy_info_sub_state_name_set(JLorg/pjsip/pjsua/pjsua_buddy_info;Ljava/lang/String;)V
.end method

.method public static final native pjsua_buddy_info_sub_state_set(JLorg/pjsip/pjsua/pjsua_buddy_info;J)V
.end method

.method public static final native pjsua_buddy_info_sub_term_code_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J
.end method

.method public static final native pjsua_buddy_info_sub_term_code_set(JLorg/pjsip/pjsua/pjsua_buddy_info;J)V
.end method

.method public static final native pjsua_buddy_info_sub_term_reason_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J
.end method

.method public static final native pjsua_buddy_info_sub_term_reason_set(JLorg/pjsip/pjsua/pjsua_buddy_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_buddy_info_uri_get(JLorg/pjsip/pjsua/pjsua_buddy_info;)J
.end method

.method public static final native pjsua_buddy_info_uri_set(JLorg/pjsip/pjsua/pjsua_buddy_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_call_info_acc_id_get(JLorg/pjsip/pjsua/pjsua_call_info;)I
.end method

.method public static final native pjsua_call_info_acc_id_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V
.end method

.method public static final native pjsua_call_info_call_id_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_call_id_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_call_info_conf_slot_get(JLorg/pjsip/pjsua/pjsua_call_info;)I
.end method

.method public static final native pjsua_call_info_conf_slot_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V
.end method

.method public static final native pjsua_call_info_connect_duration_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_connect_duration_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_time_val;)V
.end method

.method public static final native pjsua_call_info_id_get(JLorg/pjsip/pjsua/pjsua_call_info;)I
.end method

.method public static final native pjsua_call_info_id_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V
.end method

.method public static final native pjsua_call_info_last_status_get(JLorg/pjsip/pjsua/pjsua_call_info;)I
.end method

.method public static final native pjsua_call_info_last_status_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V
.end method

.method public static final native pjsua_call_info_last_status_text_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_last_status_text_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_call_info_local_contact_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_local_contact_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_call_info_local_info_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_local_info_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_call_info_media_cnt_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_media_cnt_set(JLorg/pjsip/pjsua/pjsua_call_info;J)V
.end method

.method public static final native pjsua_call_info_media_dir_get(JLorg/pjsip/pjsua/pjsua_call_info;)I
.end method

.method public static final native pjsua_call_info_media_dir_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V
.end method

.method public static final native pjsua_call_info_media_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_media_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pjsua_call_media_info;)V
.end method

.method public static final native pjsua_call_info_media_status_get(JLorg/pjsip/pjsua/pjsua_call_info;)I
.end method

.method public static final native pjsua_call_info_media_status_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V
.end method

.method public static final native pjsua_call_info_prov_media_cnt_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_prov_media_cnt_set(JLorg/pjsip/pjsua/pjsua_call_info;J)V
.end method

.method public static final native pjsua_call_info_prov_media_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_prov_media_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pjsua_call_media_info;)V
.end method

.method public static final native pjsua_call_info_rem_aud_cnt_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_rem_aud_cnt_set(JLorg/pjsip/pjsua/pjsua_call_info;J)V
.end method

.method public static final native pjsua_call_info_rem_offerer_get(JLorg/pjsip/pjsua/pjsua_call_info;)I
.end method

.method public static final native pjsua_call_info_rem_offerer_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V
.end method

.method public static final native pjsua_call_info_rem_vid_cnt_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_rem_vid_cnt_set(JLorg/pjsip/pjsua/pjsua_call_info;J)V
.end method

.method public static final native pjsua_call_info_remote_contact_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_remote_contact_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_call_info_remote_info_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_remote_info_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_call_info_role_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_role_set(JLorg/pjsip/pjsua/pjsua_call_info;J)V
.end method

.method public static final native pjsua_call_info_setting_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_setting_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pjsua_call_setting;)V
.end method

.method public static final native pjsua_call_info_state_get(JLorg/pjsip/pjsua/pjsua_call_info;)I
.end method

.method public static final native pjsua_call_info_state_set(JLorg/pjsip/pjsua/pjsua_call_info;I)V
.end method

.method public static final native pjsua_call_info_state_text_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_state_text_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_call_info_total_duration_get(JLorg/pjsip/pjsua/pjsua_call_info;)J
.end method

.method public static final native pjsua_call_info_total_duration_set(JLorg/pjsip/pjsua/pjsua_call_info;JLorg/pjsip/pjsua/pj_time_val;)V
.end method

.method public static final native pjsua_call_media_info_dir_get(JLorg/pjsip/pjsua/pjsua_call_media_info;)I
.end method

.method public static final native pjsua_call_media_info_dir_set(JLorg/pjsip/pjsua/pjsua_call_media_info;I)V
.end method

.method public static final native pjsua_call_media_info_index_get(JLorg/pjsip/pjsua/pjsua_call_media_info;)J
.end method

.method public static final native pjsua_call_media_info_index_set(JLorg/pjsip/pjsua/pjsua_call_media_info;J)V
.end method

.method public static final native pjsua_call_media_info_status_get(JLorg/pjsip/pjsua/pjsua_call_media_info;)I
.end method

.method public static final native pjsua_call_media_info_status_set(JLorg/pjsip/pjsua/pjsua_call_media_info;I)V
.end method

.method public static final native pjsua_call_media_info_type_get(JLorg/pjsip/pjsua/pjsua_call_media_info;)J
.end method

.method public static final native pjsua_call_media_info_type_set(JLorg/pjsip/pjsua/pjsua_call_media_info;J)V
.end method

.method public static final native pjsua_call_setting_aud_cnt_get(JLorg/pjsip/pjsua/pjsua_call_setting;)J
.end method

.method public static final native pjsua_call_setting_aud_cnt_set(JLorg/pjsip/pjsua/pjsua_call_setting;J)V
.end method

.method public static final native pjsua_call_setting_flag_get(JLorg/pjsip/pjsua/pjsua_call_setting;)J
.end method

.method public static final native pjsua_call_setting_flag_set(JLorg/pjsip/pjsua/pjsua_call_setting;J)V
.end method

.method public static final native pjsua_call_setting_req_keyframe_method_get(JLorg/pjsip/pjsua/pjsua_call_setting;)J
.end method

.method public static final native pjsua_call_setting_req_keyframe_method_set(JLorg/pjsip/pjsua/pjsua_call_setting;J)V
.end method

.method public static final native pjsua_call_setting_vid_cnt_get(JLorg/pjsip/pjsua/pjsua_call_setting;)J
.end method

.method public static final native pjsua_call_setting_vid_cnt_set(JLorg/pjsip/pjsua/pjsua_call_setting;J)V
.end method

.method public static final native pjsua_call_vid_strm_op_param_cap_dev_get(JLorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)J
.end method

.method public static final native pjsua_call_vid_strm_op_param_cap_dev_set(JLorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;J)V
.end method

.method public static final native pjsua_call_vid_strm_op_param_dir_get(JLorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)I
.end method

.method public static final native pjsua_call_vid_strm_op_param_dir_set(JLorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;I)V
.end method

.method public static final native pjsua_call_vid_strm_op_param_med_idx_get(JLorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)I
.end method

.method public static final native pjsua_call_vid_strm_op_param_med_idx_set(JLorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;I)V
.end method

.method public static final native pjsua_callback_on_buddy_evsub_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_buddy_evsub_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_buddy_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_buddy_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_media_event_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_media_event_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_media_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_media_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_media_transport_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_media_transport_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_redirected_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_redirected_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_replace_request2_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_replace_request2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_replace_request_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_replace_request_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_replaced_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_replaced_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_rx_offer_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_rx_offer_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_sdp_created_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_sdp_created_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_transfer_request2_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_transfer_request2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_transfer_request_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_transfer_request_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_transfer_status_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_transfer_status_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_call_tsx_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_call_tsx_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_create_media_transport_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_create_media_transport_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_dtmf_digit_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_dtmf_digit_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_ice_transport_error_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_ice_transport_error_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_incoming_call_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_incoming_call_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_incoming_subscribe_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_incoming_subscribe_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_mwi_info_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_mwi_info_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_mwi_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_mwi_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_nat_detect_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_nat_detect_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_pager2_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_pager2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_pager_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_pager_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_pager_status2_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_pager_status2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_pager_status_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_pager_status_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_reg_started_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_reg_started_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_reg_state2_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_reg_state2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_reg_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_reg_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_snd_dev_operation_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_snd_dev_operation_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_srv_subscribe_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_srv_subscribe_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_stream_created_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_stream_created_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_stream_destroyed_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_stream_destroyed_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_transport_state_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_transport_state_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_typing2_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_typing2_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_callback_on_typing_get(JLorg/pjsip/pjsua/pjsua_callback;)J
.end method

.method public static final native pjsua_callback_on_typing_set(JLorg/pjsip/pjsua/pjsua_callback;J)V
.end method

.method public static final native pjsua_codec_info_buf__get(JLorg/pjsip/pjsua/pjsua_codec_info;)Ljava/lang/String;
.end method

.method public static final native pjsua_codec_info_buf__set(JLorg/pjsip/pjsua/pjsua_codec_info;Ljava/lang/String;)V
.end method

.method public static final native pjsua_codec_info_codec_id_get(JLorg/pjsip/pjsua/pjsua_codec_info;)J
.end method

.method public static final native pjsua_codec_info_codec_id_set(JLorg/pjsip/pjsua/pjsua_codec_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_codec_info_desc_get(JLorg/pjsip/pjsua/pjsua_codec_info;)J
.end method

.method public static final native pjsua_codec_info_desc_set(JLorg/pjsip/pjsua/pjsua_codec_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_codec_info_priority_get(JLorg/pjsip/pjsua/pjsua_codec_info;)S
.end method

.method public static final native pjsua_codec_info_priority_set(JLorg/pjsip/pjsua/pjsua_codec_info;S)V
.end method

.method public static final native pjsua_conf_port_info_bits_per_sample_get(JLorg/pjsip/pjsua/pjsua_conf_port_info;)J
.end method

.method public static final native pjsua_conf_port_info_bits_per_sample_set(JLorg/pjsip/pjsua/pjsua_conf_port_info;J)V
.end method

.method public static final native pjsua_conf_port_info_channel_count_get(JLorg/pjsip/pjsua/pjsua_conf_port_info;)J
.end method

.method public static final native pjsua_conf_port_info_channel_count_set(JLorg/pjsip/pjsua/pjsua_conf_port_info;J)V
.end method

.method public static final native pjsua_conf_port_info_clock_rate_get(JLorg/pjsip/pjsua/pjsua_conf_port_info;)J
.end method

.method public static final native pjsua_conf_port_info_clock_rate_set(JLorg/pjsip/pjsua/pjsua_conf_port_info;J)V
.end method

.method public static final native pjsua_conf_port_info_listener_cnt_get(JLorg/pjsip/pjsua/pjsua_conf_port_info;)J
.end method

.method public static final native pjsua_conf_port_info_listener_cnt_set(JLorg/pjsip/pjsua/pjsua_conf_port_info;J)V
.end method

.method public static final native pjsua_conf_port_info_listeners_get(JLorg/pjsip/pjsua/pjsua_conf_port_info;)[I
.end method

.method public static final native pjsua_conf_port_info_listeners_set(JLorg/pjsip/pjsua/pjsua_conf_port_info;[I)V
.end method

.method public static final native pjsua_conf_port_info_name_get(JLorg/pjsip/pjsua/pjsua_conf_port_info;)J
.end method

.method public static final native pjsua_conf_port_info_name_set(JLorg/pjsip/pjsua/pjsua_conf_port_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_conf_port_info_samples_per_frame_get(JLorg/pjsip/pjsua/pjsua_conf_port_info;)J
.end method

.method public static final native pjsua_conf_port_info_samples_per_frame_set(JLorg/pjsip/pjsua/pjsua_conf_port_info;J)V
.end method

.method public static final native pjsua_conf_port_info_slot_id_get(JLorg/pjsip/pjsua/pjsua_conf_port_info;)I
.end method

.method public static final native pjsua_conf_port_info_slot_id_set(JLorg/pjsip/pjsua/pjsua_conf_port_info;I)V
.end method

.method public static final native pjsua_config_cb_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_cb_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pjsua_callback;)V
.end method

.method public static final native pjsua_config_cred_count_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_cred_count_set(JLorg/pjsip/pjsua/pjsua_config;J)V
.end method

.method public static final native pjsua_config_cred_info_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_cred_info_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pjsip_cred_info;)V
.end method

.method public static final native pjsua_config_enable_unsolicited_mwi_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_enable_unsolicited_mwi_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_force_lr_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_force_lr_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_hangup_forked_call_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_hangup_forked_call_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_max_calls_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_max_calls_set(JLorg/pjsip/pjsua/pjsua_config;J)V
.end method

.method public static final native pjsua_config_nameserver_count_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_nameserver_count_set(JLorg/pjsip/pjsua/pjsua_config;J)V
.end method

.method public static final native pjsua_config_nameserver_get(JLorg/pjsip/pjsua/pjsua_config;)[J
.end method

.method public static final native pjsua_config_nameserver_set(JLorg/pjsip/pjsua/pjsua_config;[J)V
.end method

.method public static final native pjsua_config_nat_type_in_sdp_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_nat_type_in_sdp_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_outbound_proxy_cnt_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_outbound_proxy_cnt_set(JLorg/pjsip/pjsua/pjsua_config;J)V
.end method

.method public static final native pjsua_config_outbound_proxy_get(JLorg/pjsip/pjsua/pjsua_config;)[J
.end method

.method public static final native pjsua_config_outbound_proxy_set(JLorg/pjsip/pjsua/pjsua_config;[J)V
.end method

.method public static final native pjsua_config_require_100rel_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_require_100rel_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_srtp_optional_dup_offer_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_srtp_optional_dup_offer_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_srtp_secure_signaling_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_srtp_secure_signaling_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_stun_domain_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_stun_domain_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_config_stun_host_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_stun_host_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_config_stun_ignore_failure_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_stun_ignore_failure_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_stun_map_use_stun2_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_stun_map_use_stun2_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_stun_srv_cnt_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_stun_srv_cnt_set(JLorg/pjsip/pjsua/pjsua_config;J)V
.end method

.method public static final native pjsua_config_stun_srv_get(JLorg/pjsip/pjsua/pjsua_config;)[J
.end method

.method public static final native pjsua_config_stun_srv_set(JLorg/pjsip/pjsua/pjsua_config;[J)V
.end method

.method public static final native pjsua_config_thread_cnt_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_thread_cnt_set(JLorg/pjsip/pjsua/pjsua_config;J)V
.end method

.method public static final native pjsua_config_timer_setting_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_timer_setting_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pjsip_timer_setting;)V
.end method

.method public static final native pjsua_config_use_srtp_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_use_srtp_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_use_timer_get(JLorg/pjsip/pjsua/pjsua_config;)I
.end method

.method public static final native pjsua_config_use_timer_set(JLorg/pjsip/pjsua/pjsua_config;I)V
.end method

.method public static final native pjsua_config_user_agent_get(JLorg/pjsip/pjsua/pjsua_config;)J
.end method

.method public static final native pjsua_config_user_agent_set(JLorg/pjsip/pjsua/pjsua_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_ice_config_enable_ice_get(JLorg/pjsip/pjsua/pjsua_ice_config;)I
.end method

.method public static final native pjsua_ice_config_enable_ice_set(JLorg/pjsip/pjsua/pjsua_ice_config;I)V
.end method

.method public static final native pjsua_ice_config_ice_max_host_cands_get(JLorg/pjsip/pjsua/pjsua_ice_config;)I
.end method

.method public static final native pjsua_ice_config_ice_max_host_cands_set(JLorg/pjsip/pjsua/pjsua_ice_config;I)V
.end method

.method public static final native pjsua_ice_config_ice_no_rtcp_get(JLorg/pjsip/pjsua/pjsua_ice_config;)I
.end method

.method public static final native pjsua_ice_config_ice_no_rtcp_set(JLorg/pjsip/pjsua/pjsua_ice_config;I)V
.end method

.method public static final native pjsua_ice_config_ice_opt_get(JLorg/pjsip/pjsua/pjsua_ice_config;)J
.end method

.method public static final native pjsua_ice_config_ice_opt_set(JLorg/pjsip/pjsua/pjsua_ice_config;J)V
.end method

.method public static final native pjsua_logging_config_cb_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J
.end method

.method public static final native pjsua_logging_config_cb_set(JLorg/pjsip/pjsua/pjsua_logging_config;J)V
.end method

.method public static final native pjsua_logging_config_console_level_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J
.end method

.method public static final native pjsua_logging_config_console_level_set(JLorg/pjsip/pjsua/pjsua_logging_config;J)V
.end method

.method public static final native pjsua_logging_config_decor_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J
.end method

.method public static final native pjsua_logging_config_decor_set(JLorg/pjsip/pjsua/pjsua_logging_config;J)V
.end method

.method public static final native pjsua_logging_config_level_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J
.end method

.method public static final native pjsua_logging_config_level_set(JLorg/pjsip/pjsua/pjsua_logging_config;J)V
.end method

.method public static final native pjsua_logging_config_log_file_flags_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J
.end method

.method public static final native pjsua_logging_config_log_file_flags_set(JLorg/pjsip/pjsua/pjsua_logging_config;J)V
.end method

.method public static final native pjsua_logging_config_log_filename_get(JLorg/pjsip/pjsua/pjsua_logging_config;)J
.end method

.method public static final native pjsua_logging_config_log_filename_set(JLorg/pjsip/pjsua/pjsua_logging_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_logging_config_msg_logging_get(JLorg/pjsip/pjsua/pjsua_logging_config;)I
.end method

.method public static final native pjsua_logging_config_msg_logging_set(JLorg/pjsip/pjsua/pjsua_logging_config;I)V
.end method

.method public static final native pjsua_med_tp_state_info_ext_info_get(JLorg/pjsip/pjsua/pjsua_med_tp_state_info;)[B
.end method

.method public static final native pjsua_med_tp_state_info_ext_info_set(JLorg/pjsip/pjsua/pjsua_med_tp_state_info;[B)V
.end method

.method public static final native pjsua_med_tp_state_info_med_idx_get(JLorg/pjsip/pjsua/pjsua_med_tp_state_info;)J
.end method

.method public static final native pjsua_med_tp_state_info_med_idx_set(JLorg/pjsip/pjsua/pjsua_med_tp_state_info;J)V
.end method

.method public static final native pjsua_med_tp_state_info_sip_err_code_get(JLorg/pjsip/pjsua/pjsua_med_tp_state_info;)I
.end method

.method public static final native pjsua_med_tp_state_info_sip_err_code_set(JLorg/pjsip/pjsua/pjsua_med_tp_state_info;I)V
.end method

.method public static final native pjsua_med_tp_state_info_state_get(JLorg/pjsip/pjsua/pjsua_med_tp_state_info;)I
.end method

.method public static final native pjsua_med_tp_state_info_state_set(JLorg/pjsip/pjsua/pjsua_med_tp_state_info;I)V
.end method

.method public static final native pjsua_med_tp_state_info_status_get(JLorg/pjsip/pjsua/pjsua_med_tp_state_info;)I
.end method

.method public static final native pjsua_med_tp_state_info_status_set(JLorg/pjsip/pjsua/pjsua_med_tp_state_info;I)V
.end method

.method public static final native pjsua_media_config_audio_frame_ptime_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_audio_frame_ptime_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_channel_count_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_channel_count_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_clock_rate_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_clock_rate_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_ec_options_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_ec_options_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_ec_tail_len_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_ec_tail_len_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_enable_ice_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_enable_ice_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_enable_turn_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_enable_turn_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_has_ioqueue_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_has_ioqueue_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_ice_max_host_cands_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_ice_max_host_cands_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_ice_no_rtcp_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_ice_no_rtcp_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_ice_opt_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_ice_opt_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_ilbc_mode_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_ilbc_mode_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_jb_init_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_jb_init_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_jb_max_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_jb_max_pre_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_jb_max_pre_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_jb_max_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_jb_min_pre_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_jb_min_pre_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_max_media_ports_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_max_media_ports_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_no_vad_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_no_vad_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_ptime_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_ptime_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_quality_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_quality_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_rx_drop_pct_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_rx_drop_pct_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_snd_auto_close_time_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_snd_auto_close_time_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_config_snd_clock_rate_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_snd_clock_rate_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_snd_play_latency_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_snd_play_latency_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_snd_rec_latency_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_snd_rec_latency_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_thread_cnt_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_thread_cnt_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_turn_auth_cred_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_turn_auth_cred_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_turn_conn_type_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_turn_conn_type_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_turn_server_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_turn_server_set(JLorg/pjsip/pjsua/pjsua_media_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_media_config_tx_drop_pct_get(JLorg/pjsip/pjsua/pjsua_media_config;)J
.end method

.method public static final native pjsua_media_config_tx_drop_pct_set(JLorg/pjsip/pjsua/pjsua_media_config;J)V
.end method

.method public static final native pjsua_media_config_vid_preview_enable_native_get(JLorg/pjsip/pjsua/pjsua_media_config;)I
.end method

.method public static final native pjsua_media_config_vid_preview_enable_native_set(JLorg/pjsip/pjsua/pjsua_media_config;I)V
.end method

.method public static final native pjsua_media_transport_skinfo_get(JLorg/pjsip/pjsua/pjsua_media_transport;)J
.end method

.method public static final native pjsua_media_transport_skinfo_set(JLorg/pjsip/pjsua/pjsua_media_transport;J)V
.end method

.method public static final native pjsua_media_transport_transport_get(JLorg/pjsip/pjsua/pjsua_media_transport;)J
.end method

.method public static final native pjsua_media_transport_transport_set(JLorg/pjsip/pjsua/pjsua_media_transport;J)V
.end method

.method public static final native pjsua_msg_data_content_type_get(JLorg/pjsip/pjsua/pjsua_msg_data;)J
.end method

.method public static final native pjsua_msg_data_content_type_set(JLorg/pjsip/pjsua/pjsua_msg_data;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_msg_data_hdr_list_get(JLorg/pjsip/pjsua/pjsua_msg_data;)J
.end method

.method public static final native pjsua_msg_data_hdr_list_set(JLorg/pjsip/pjsua/pjsua_msg_data;J)V
.end method

.method public static final native pjsua_msg_data_msg_body_get(JLorg/pjsip/pjsua/pjsua_msg_data;)J
.end method

.method public static final native pjsua_msg_data_msg_body_set(JLorg/pjsip/pjsua/pjsua_msg_data;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_msg_data_multipart_ctype_get(JLorg/pjsip/pjsua/pjsua_msg_data;)J
.end method

.method public static final native pjsua_msg_data_multipart_ctype_set(JLorg/pjsip/pjsua/pjsua_msg_data;J)V
.end method

.method public static final native pjsua_msg_data_multipart_parts_get(JLorg/pjsip/pjsua/pjsua_msg_data;)J
.end method

.method public static final native pjsua_msg_data_multipart_parts_set(JLorg/pjsip/pjsua/pjsua_msg_data;J)V
.end method

.method public static final native pjsua_mwi_info_evsub_get(JLorg/pjsip/pjsua/pjsua_mwi_info;)J
.end method

.method public static final native pjsua_mwi_info_evsub_set(JLorg/pjsip/pjsua/pjsua_mwi_info;J)V
.end method

.method public static final native pjsua_mwi_info_rdata_get(JLorg/pjsip/pjsua/pjsua_mwi_info;)J
.end method

.method public static final native pjsua_mwi_info_rdata_set(JLorg/pjsip/pjsua/pjsua_mwi_info;J)V
.end method

.method public static final native pjsua_pool_create(Ljava/lang/String;JJ)J
.end method

.method public static final native pjsua_reg_info_cbparam_get(JLorg/pjsip/pjsua/pjsua_reg_info;)J
.end method

.method public static final native pjsua_reg_info_cbparam_set(JLorg/pjsip/pjsua/pjsua_reg_info;J)V
.end method

.method public static final native pjsua_schedule_timer2(J[BJ)I
.end method

.method public static final native pjsua_stream_info_type_get(JLorg/pjsip/pjsua/pjsua_stream_info;)J
.end method

.method public static final native pjsua_stream_info_type_set(JLorg/pjsip/pjsua/pjsua_stream_info;J)V
.end method

.method public static final native pjsua_stream_stat_jbuf_get(JLorg/pjsip/pjsua/pjsua_stream_stat;)J
.end method

.method public static final native pjsua_stream_stat_jbuf_set(JLorg/pjsip/pjsua/pjsua_stream_stat;J)V
.end method

.method public static final native pjsua_stream_stat_rtcp_get(JLorg/pjsip/pjsua/pjsua_stream_stat;)J
.end method

.method public static final native pjsua_stream_stat_rtcp_set(JLorg/pjsip/pjsua/pjsua_stream_stat;J)V
.end method

.method public static final native pjsua_transport_config_bound_addr_get(JLorg/pjsip/pjsua/pjsua_transport_config;)J
.end method

.method public static final native pjsua_transport_config_bound_addr_set(JLorg/pjsip/pjsua/pjsua_transport_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_transport_config_port_get(JLorg/pjsip/pjsua/pjsua_transport_config;)J
.end method

.method public static final native pjsua_transport_config_port_set(JLorg/pjsip/pjsua/pjsua_transport_config;J)V
.end method

.method public static final native pjsua_transport_config_public_addr_get(JLorg/pjsip/pjsua/pjsua_transport_config;)J
.end method

.method public static final native pjsua_transport_config_public_addr_set(JLorg/pjsip/pjsua/pjsua_transport_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_transport_config_qos_params_get(JLorg/pjsip/pjsua/pjsua_transport_config;)J
.end method

.method public static final native pjsua_transport_config_qos_params_set(JLorg/pjsip/pjsua/pjsua_transport_config;JLorg/pjsip/pjsua/pj_qos_params;)V
.end method

.method public static final native pjsua_transport_config_qos_type_get(JLorg/pjsip/pjsua/pjsua_transport_config;)I
.end method

.method public static final native pjsua_transport_config_qos_type_set(JLorg/pjsip/pjsua/pjsua_transport_config;I)V
.end method

.method public static final native pjsua_transport_config_tls_setting_get(JLorg/pjsip/pjsua/pjsua_transport_config;)J
.end method

.method public static final native pjsua_transport_config_tls_setting_set(JLorg/pjsip/pjsua/pjsua_transport_config;JLorg/pjsip/pjsua/pjsip_tls_setting;)V
.end method

.method public static final native pjsua_transport_info_addr_len_get(JLorg/pjsip/pjsua/pjsua_transport_info;)J
.end method

.method public static final native pjsua_transport_info_addr_len_set(JLorg/pjsip/pjsua/pjsua_transport_info;J)V
.end method

.method public static final native pjsua_transport_info_flag_get(JLorg/pjsip/pjsua/pjsua_transport_info;)J
.end method

.method public static final native pjsua_transport_info_flag_set(JLorg/pjsip/pjsua/pjsua_transport_info;J)V
.end method

.method public static final native pjsua_transport_info_id_get(JLorg/pjsip/pjsua/pjsua_transport_info;)I
.end method

.method public static final native pjsua_transport_info_id_set(JLorg/pjsip/pjsua/pjsua_transport_info;I)V
.end method

.method public static final native pjsua_transport_info_info_get(JLorg/pjsip/pjsua/pjsua_transport_info;)J
.end method

.method public static final native pjsua_transport_info_info_set(JLorg/pjsip/pjsua/pjsua_transport_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_transport_info_local_addr_get(JLorg/pjsip/pjsua/pjsua_transport_info;)J
.end method

.method public static final native pjsua_transport_info_local_addr_set(JLorg/pjsip/pjsua/pjsua_transport_info;J)V
.end method

.method public static final native pjsua_transport_info_local_name_get(JLorg/pjsip/pjsua/pjsua_transport_info;)J
.end method

.method public static final native pjsua_transport_info_local_name_set(JLorg/pjsip/pjsua/pjsua_transport_info;J)V
.end method

.method public static final native pjsua_transport_info_type_get(JLorg/pjsip/pjsua/pjsua_transport_info;)I
.end method

.method public static final native pjsua_transport_info_type_name_get(JLorg/pjsip/pjsua/pjsua_transport_info;)J
.end method

.method public static final native pjsua_transport_info_type_name_set(JLorg/pjsip/pjsua/pjsua_transport_info;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_transport_info_type_set(JLorg/pjsip/pjsua/pjsua_transport_info;I)V
.end method

.method public static final native pjsua_transport_info_usage_count_get(JLorg/pjsip/pjsua/pjsua_transport_info;)J
.end method

.method public static final native pjsua_transport_info_usage_count_set(JLorg/pjsip/pjsua/pjsua_transport_info;J)V
.end method

.method public static final native pjsua_turn_config_enable_turn_get(JLorg/pjsip/pjsua/pjsua_turn_config;)I
.end method

.method public static final native pjsua_turn_config_enable_turn_set(JLorg/pjsip/pjsua/pjsua_turn_config;I)V
.end method

.method public static final native pjsua_turn_config_turn_auth_cred_get(JLorg/pjsip/pjsua/pjsua_turn_config;)J
.end method

.method public static final native pjsua_turn_config_turn_auth_cred_set(JLorg/pjsip/pjsua/pjsua_turn_config;J)V
.end method

.method public static final native pjsua_turn_config_turn_conn_type_get(JLorg/pjsip/pjsua/pjsua_turn_config;)J
.end method

.method public static final native pjsua_turn_config_turn_conn_type_set(JLorg/pjsip/pjsua/pjsua_turn_config;J)V
.end method

.method public static final native pjsua_turn_config_turn_server_get(JLorg/pjsip/pjsua/pjsua_turn_config;)J
.end method

.method public static final native pjsua_turn_config_turn_server_set(JLorg/pjsip/pjsua/pjsua_turn_config;JLorg/pjsip/pjsua/pj_str_t;)V
.end method

.method public static final native pjsua_vid_preview_param_rend_id_get(JLorg/pjsip/pjsua/pjsua_vid_preview_param;)J
.end method

.method public static final native pjsua_vid_preview_param_rend_id_set(JLorg/pjsip/pjsua/pjsua_vid_preview_param;J)V
.end method

.method public static final native pjsua_vid_preview_param_show_get(JLorg/pjsip/pjsua/pjsua_vid_preview_param;)I
.end method

.method public static final native pjsua_vid_preview_param_show_set(JLorg/pjsip/pjsua/pjsua_vid_preview_param;I)V
.end method

.method public static final native pjsua_vid_preview_param_wnd_flags_get(JLorg/pjsip/pjsua/pjsua_vid_preview_param;)J
.end method

.method public static final native pjsua_vid_preview_param_wnd_flags_set(JLorg/pjsip/pjsua/pjsua_vid_preview_param;J)V
.end method

.method public static final native pjsua_vid_win_info_hwnd_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)J
.end method

.method public static final native pjsua_vid_win_info_hwnd_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;J)V
.end method

.method public static final native pjsua_vid_win_info_is_native_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)I
.end method

.method public static final native pjsua_vid_win_info_is_native_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;I)V
.end method

.method public static final native pjsua_vid_win_info_pos_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)J
.end method

.method public static final native pjsua_vid_win_info_pos_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;J)V
.end method

.method public static final native pjsua_vid_win_info_rdr_dev_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)J
.end method

.method public static final native pjsua_vid_win_info_rdr_dev_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;J)V
.end method

.method public static final native pjsua_vid_win_info_show_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)I
.end method

.method public static final native pjsua_vid_win_info_show_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;I)V
.end method

.method public static final native pjsua_vid_win_info_size_get(JLorg/pjsip/pjsua/pjsua_vid_win_info;)J
.end method

.method public static final native pjsua_vid_win_info_size_set(JLorg/pjsip/pjsua/pjsua_vid_win_info;J)V
.end method

.method public static final native player_create(JLorg/pjsip/pjsua/pj_str_t;J[I)I
.end method

.method public static final native player_destroy(I)I
.end method

.method public static final native player_get_conf_port(I)I
.end method

.method public static final native player_get_port(IJ)I
.end method

.method public static final native player_set_pos(IJ)I
.end method

.method public static final native playlist_create([JJJLorg/pjsip/pjsua/pj_str_t;J[I)I
.end method

.method public static final native pool_create(Ljava/lang/String;JJ)J
.end method

.method public static final native pres_dump(I)V
.end method

.method public static final native pres_notify(IJJJLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;IJLorg/pjsip/pjsua/pjsua_msg_data;)I
.end method

.method public static final native reconfigure_logging(JLorg/pjsip/pjsua/pjsua_logging_config;)I
.end method

.method public static final native recorder_create(JLorg/pjsip/pjsua/pj_str_t;J[BIJ[I)I
.end method

.method public static final native recorder_destroy(I)I
.end method

.method public static final native recorder_get_conf_port(I)I
.end method

.method public static final native recorder_get_port(IJ)I
.end method

.method public static final native resolve_stun_servers(J[JI[BJ)I
.end method

.method public static final native schedule_timer(JJLorg/pjsip/pjsua/pj_time_val;)I
.end method

.method public static final native send_dtmf_info(IJLorg/pjsip/pjsua/pj_str_t;)I
.end method

.method public static final native setCallbackObject(JLorg/pjsip/pjsua/Callback;)V
.end method

.method public static final native set_ec(JJ)I
.end method

.method public static final native set_no_snd_dev()J
.end method

.method public static final native set_null_snd_dev()I
.end method

.method public static final native set_snd_dev(II)I
.end method

.method public static final native set_turn_credentials(JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;JLorg/pjsip/pjsua/pj_str_t;J)I
.end method

.method public static final native snd_get_setting(J[B)I
.end method

.method public static final native snd_is_active()I
.end method

.method public static final native snd_set_setting(J[BI)I
.end method

.method public static final native start()I
.end method

.method private static final native swig_module_init()V
.end method

.method public static final native transport_close(II)I
.end method

.method public static final native transport_config_default(JLorg/pjsip/pjsua/pjsua_transport_config;)V
.end method

.method public static final native transport_config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_transport_config;JLorg/pjsip/pjsua/pjsua_transport_config;)V
.end method

.method public static final native transport_create(IJLorg/pjsip/pjsua/pjsua_transport_config;[I)I
.end method

.method public static final native transport_get_info(IJLorg/pjsip/pjsua/pjsua_transport_info;)I
.end method

.method public static final native transport_register(J[I)I
.end method

.method public static final native transport_set_enable(II)I
.end method

.method public static final native turn_config_dup(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_turn_config;JLorg/pjsip/pjsua/pjsua_turn_config;)V
.end method

.method public static final native turn_config_from_media_config(JLorg/pjsip/pjsua/pj_pool_t;JLorg/pjsip/pjsua/pjsua_turn_config;JLorg/pjsip/pjsua/pjsua_media_config;)V
.end method

.method public static final native update_transport(JLorg/pjsip/pjsua/pj_str_t;)I
.end method

.method public static final native verify_sip_url(Ljava/lang/String;)I
.end method

.method public static final native verify_url(Ljava/lang/String;)I
.end method

.method public static final native vid_codec_get_param(JLorg/pjsip/pjsua/pj_str_t;J)I
.end method

.method public static final native vid_codec_set_param(JLorg/pjsip/pjsua/pj_str_t;J)I
.end method

.method public static final native vid_codec_set_priority(JLorg/pjsip/pjsua/pj_str_t;S)I
.end method

.method public static final native vid_dev_count()J
.end method

.method public static final native vid_dev_get_info(JJ)I
.end method

.method public static final native vid_enum_codecs(JLorg/pjsip/pjsua/pjsua_codec_info;[J)I
.end method

.method public static final native vid_enum_devs(J[J)I
.end method

.method public static final native vid_enum_wins([I[J)I
.end method

.method public static final native vid_preview_get_win(J)I
.end method

.method public static final native vid_preview_has_native(J)I
.end method

.method public static final native vid_preview_param_default(JLorg/pjsip/pjsua/pjsua_vid_preview_param;)V
.end method

.method public static final native vid_preview_start(JJLorg/pjsip/pjsua/pjsua_vid_preview_param;)I
.end method

.method public static final native vid_preview_stop(J)I
.end method

.method public static final native vid_set_android_window(ILjava/lang/Object;)I
.end method

.method public static final native vid_win_get_info(IJLorg/pjsip/pjsua/pjsua_vid_win_info;)I
.end method

.method public static final native vid_win_rotate(II)I
.end method

.method public static final native vid_win_set_pos(IJ)I
.end method

.method public static final native vid_win_set_show(II)I
.end method

.method public static final native vid_win_set_size(IJ)I
.end method

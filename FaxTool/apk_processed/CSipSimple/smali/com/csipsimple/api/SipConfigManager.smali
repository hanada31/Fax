.class public Lcom/csipsimple/api/SipConfigManager;
.super Ljava/lang/Object;
.source "SipConfigManager.java"


# static fields
.field public static final ADD_BANDWIDTH_TIAS_IN_SDP:Ljava/lang/String; = "add_bandwidth_tias_in_sdp"

.field public static final AUDIO_IMPLEMENTATION:Ljava/lang/String; = "audio_implementation"

.field public static final AUDIO_IMPLEMENTATION_JAVA:I = 0x0

.field public static final AUDIO_IMPLEMENTATION_OPENSLES:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.csipsimple.prefs"

.field public static final AUTO_CONNECT_BLUETOOTH:Ljava/lang/String; = "auto_connect_bluetooth"

.field public static final AUTO_CONNECT_SPEAKER:Ljava/lang/String; = "auto_connect_speaker"

.field public static final AUTO_DETECT_SPEAKER:Ljava/lang/String; = "auto_detect_speaker"

.field public static final AUTO_RECORD_CALLS:Ljava/lang/String; = "auto_record_calls"

.field private static final BASE_DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.csipsimple"

.field private static final BASE_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.csipsimple"

.field public static final CA_LIST_FILE:Ljava/lang/String; = "ca_list_file"

.field public static final CERT_FILE:Ljava/lang/String; = "cert_file"

.field public static final CODECS_PER_BANDWIDTH:Ljava/lang/String; = "codecs_per_bandwidth"

.field public static final CODEC_NB:Ljava/lang/String; = "nb"

.field public static final CODEC_WB:Ljava/lang/String; = "wb"

.field public static final DEFAULT_CALLER_ID:Ljava/lang/String; = "default_caller_id"

.field public static final DIAL_PRESS_TONE_MODE:Ljava/lang/String; = "dial_press_tone_mode"

.field public static final DIAL_PRESS_VIBRATE_MODE:Ljava/lang/String; = "dial_press_vibrate_mode"

.field public static final DISABLE_TCP_SWITCH:Ljava/lang/String; = "disable_tcp_switch"

.field public static final DO_FOCUS_AUDIO:Ljava/lang/String; = "do_focus_audio"

.field public static final DSCP_VAL:Ljava/lang/String; = "dscp_val"

.field public static final DTMF_MODE:Ljava/lang/String; = "dtmf_mode"

.field public static final DTMF_MODE_AUTO:I = 0x0

.field public static final DTMF_MODE_INBAND:I = 0x2

.field public static final DTMF_MODE_INFO:I = 0x3

.field public static final DTMF_MODE_RTP:I = 0x1

.field public static final ECHO_CANCELLATION:Ljava/lang/String; = "echo_cancellation"

.field public static final ECHO_CANCELLATION_TAIL:Ljava/lang/String; = "echo_cancellation_tail"

.field public static final ECHO_MODE:Ljava/lang/String; = "echo_mode"

.field public static final ECHO_MODE_AUTO:I = 0x0

.field public static final ECHO_MODE_SIMPLE:I = 0x1

.field public static final ECHO_MODE_SPEEX:I = 0x2

.field public static final ECHO_MODE_WEBRTC_M:I = 0x3

.field public static final ENABLE_DNS_SRV:Ljava/lang/String; = "enable_dns_srv"

.field public static final ENABLE_ICE:Ljava/lang/String; = "enable_ice"

.field public static final ENABLE_QOS:Ljava/lang/String; = "enable_qos"

.field public static final ENABLE_STUN:Ljava/lang/String; = "enable_stun"

.field public static final ENABLE_STUN2:Ljava/lang/String; = "enable_stun2"

.field public static final ENABLE_TCP:Ljava/lang/String; = "enable_tcp"

.field public static final ENABLE_TLS:Ljava/lang/String; = "enable_tls"

.field public static final ENABLE_TURN:Ljava/lang/String; = "enable_turn"

.field public static final ENABLE_UDP:Ljava/lang/String; = "enable_udp"

.field public static final ENABLE_VAD:Ljava/lang/String; = "enable_vad"

.field public static final FIELD_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_VALUE:Ljava/lang/String; = "value"

.field public static final FORCE_NO_UPDATE:Ljava/lang/String; = "force_no_update"

.field public static final FRAMES_PER_PACKET_SUFFIX:Ljava/lang/String; = "fpp"

.field public static final GENERIC_TYPE_AUTO:I = 0x0

.field public static final GENERIC_TYPE_FORCE:I = 0x1

.field public static final GENERIC_TYPE_PREVENT:I = 0x2

.field public static final GSM_INTEGRATION_TYPE:Ljava/lang/String; = "gsm_integration_type"

.field public static final HAS_IO_QUEUE:Ljava/lang/String; = "has_io_queue"

.field public static final HEADSET_ACTION:Ljava/lang/String; = "headset_action"

.field public static final HEADSET_ACTION_CLEAR_CALL:I = 0x0

.field public static final HEADSET_ACTION_HOLD:I = 0x2

.field public static final HEADSET_ACTION_MUTE:I = 0x1

.field public static final ICON_IN_STATUS_BAR:Ljava/lang/String; = "icon_in_status_bar"

.field public static final ICON_IN_STATUS_BAR_NBR:Ljava/lang/String; = "icon_in_status_bar_nbr"

.field public static final INTEGRATE_TEL_PRIVILEGED:Ljava/lang/String; = "integrate_tel_privileged"

.field public static final INTEGRATE_WITH_CALLLOGS:Ljava/lang/String; = "integrate_with_native_calllogs"

.field public static final INTEGRATE_WITH_DIALER:Ljava/lang/String; = "integrate_with_native_dialer"

.field public static final INTEGRATE_WITH_NATIVE_MUSIC:Ljava/lang/String; = "integrate_with_native_music"

.field public static final INVERT_PROXIMITY_SENSOR:Ljava/lang/String; = "invert_proximity_sensor"

.field public static final KEEP_ALIVE_INTERVAL_MOBILE:Ljava/lang/String; = "keep_alive_interval_mobile"

.field public static final KEEP_ALIVE_INTERVAL_WIFI:Ljava/lang/String; = "keep_alive_interval_wifi"

.field public static final KEEP_AWAKE_IN_CALL:Ljava/lang/String; = "keep_awake_incall"

.field public static final LOCK_WIFI:Ljava/lang/String; = "lock_wifi"

.field public static final LOCK_WIFI_PERFS:Ljava/lang/String; = "lock_wifi_perfs"

.field public static final LOG_LEVEL:Ljava/lang/String; = "log_level"

.field public static final LOG_USE_DIRECT_FILE:Ljava/lang/String; = "log_use_direct_file"

.field public static final MICRO_SOURCE:Ljava/lang/String; = "micro_source"

.field public static final NETWORK_ROUTES_POLLING:Ljava/lang/String; = "network_route_polling"

.field public static final OVERRIDE_NAMESERVER:Ljava/lang/String; = "override_nameserver"

.field public static final PREFS_TABLE_NAME:Ljava/lang/String; = "preferences"

.field public static final PREF_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.csipsimple.pref"

.field public static final PREF_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.csipsimple.pref"

.field public static final PREF_ID_URI_BASE:Landroid/net/Uri;

.field public static final PREF_URI:Landroid/net/Uri;

.field public static final PREVENT_SCREEN_ROTATION:Ljava/lang/String; = "prevent_screen_rotation"

.field public static final PRIVKEY_FILE:Ljava/lang/String; = "privkey_file"

.field public static final RAZ_URI:Landroid/net/Uri;

.field public static final RESET_TABLE_NAME:Ljava/lang/String; = "raz"

.field public static final RESTART_AUDIO_ON_ROUTING_CHANGES:Ljava/lang/String; = "restart_aud_on_routing_change"

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final RTP_PORT:Ljava/lang/String; = "network_rtp_port"

.field public static final SET_AUDIO_GENERATE_TONE:Ljava/lang/String; = "set_audio_generate_tone"

.field public static final SIP_AUDIO_MODE:Ljava/lang/String; = "sip_audio_mode"

.field public static final SND_AUTO_CLOSE_TIME:Ljava/lang/String; = "snd_auto_close_time"

.field public static final SND_BT_MIC_LEVEL:Ljava/lang/String; = "snd_bt_mic_level"

.field public static final SND_BT_SPEAKER_LEVEL:Ljava/lang/String; = "snd_bt_speaker_level"

.field public static final SND_CLOCK_RATE:Ljava/lang/String; = "snd_clock_rate"

.field public static final SND_MEDIA_QUALITY:Ljava/lang/String; = "snd_media_quality"

.field public static final SND_MIC_LEVEL:Ljava/lang/String; = "snd_mic_level"

.field public static final SND_PTIME:Ljava/lang/String; = "snd_ptime"

.field public static final SND_SPEAKER_LEVEL:Ljava/lang/String; = "snd_speaker_level"

.field public static final SND_STREAM_LEVEL:Ljava/lang/String; = "snd_stream_level"

.field public static final STUN_SERVER:Ljava/lang/String; = "stun_server"

.field public static final SUPPORT_MULTIPLE_CALLS:Ljava/lang/String; = "support_multiple_calls"

.field public static final TCP_KEEP_ALIVE_INTERVAL_MOBILE:Ljava/lang/String; = "tcp_keep_alive_interval_mobile"

.field public static final TCP_KEEP_ALIVE_INTERVAL_WIFI:Ljava/lang/String; = "tcp_keep_alive_interval_wifi"

.field public static final TCP_TRANSPORT_PORT:Ljava/lang/String; = "network_tcp_transport_port"

.field public static final THEME:Ljava/lang/String; = "selected_theme"

.field public static final THREAD_COUNT:Ljava/lang/String; = "thread_count"

.field public static final TIMER_MIN_SE:Ljava/lang/String; = "timer_min_se"

.field public static final TIMER_SESS_EXPIRES:Ljava/lang/String; = "timer_sess_expires"

.field public static final TLS_KEEP_ALIVE_INTERVAL_MOBILE:Ljava/lang/String; = "tls_keep_alive_interval_mobile"

.field public static final TLS_KEEP_ALIVE_INTERVAL_WIFI:Ljava/lang/String; = "tls_keep_alive_interval_wifi"

.field public static final TLS_METHOD:Ljava/lang/String; = "tls_method"

.field public static final TLS_PASSWORD:Ljava/lang/String; = "tls_password"

.field public static final TLS_SERVER_NAME:Ljava/lang/String; = "network_tls_server_name"

.field public static final TLS_TRANSPORT_PORT:Ljava/lang/String; = "network_tls_transport_port"

.field public static final TLS_VERIFY_CLIENT:Ljava/lang/String; = "tls_verify_client"

.field public static final TLS_VERIFY_SERVER:Ljava/lang/String; = "tls_verify_server"

.field public static final TSX_T1_TIMEOUT:Ljava/lang/String; = "tsx_t1_timeout"

.field public static final TSX_T2_TIMEOUT:Ljava/lang/String; = "tsx_t2_timeout"

.field public static final TSX_T4_TIMEOUT:Ljava/lang/String; = "tsx_t4_timeout"

.field public static final TSX_TD_TIMEOUT:Ljava/lang/String; = "tsx_td_timeout"

.field public static final TURN_PASSWORD:Ljava/lang/String; = "turn_password"

.field public static final TURN_SERVER:Ljava/lang/String; = "turn_server"

.field public static final TURN_USERNAME:Ljava/lang/String; = "turn_username"

.field public static final UDP_TRANSPORT_PORT:Ljava/lang/String; = "network_udp_transport_port"

.field public static final USER_AGENT:Ljava/lang/String; = "user_agent"

.field public static final USE_3G_IN:Ljava/lang/String; = "use_3g_in"

.field public static final USE_3G_OUT:Ljava/lang/String; = "use_3g_out"

.field public static final USE_ALTERNATE_UNLOCKER:Ljava/lang/String; = "use_alternate_unlocker"

.field public static final USE_ANYWAY_IN:Ljava/lang/String; = "use_anyway_in"

.field public static final USE_ANYWAY_OUT:Ljava/lang/String; = "use_anyway_out"

.field public static final USE_COMPACT_FORM:Ljava/lang/String; = "use_compact_form"

.field public static final USE_EDGE_IN:Ljava/lang/String; = "use_edge_in"

.field public static final USE_EDGE_OUT:Ljava/lang/String; = "use_edge_out"

.field public static final USE_GPRS_IN:Ljava/lang/String; = "use_gprs_in"

.field public static final USE_GPRS_OUT:Ljava/lang/String; = "use_gprs_out"

.field public static final USE_IPV6:Ljava/lang/String; = "use_ipv6"

.field public static final USE_MODE_API:Ljava/lang/String; = "use_mode_api"

.field public static final USE_OTHER_IN:Ljava/lang/String; = "use_other_in"

.field public static final USE_OTHER_OUT:Ljava/lang/String; = "use_other_out"

.field public static final USE_PARTIAL_WAKE_LOCK:Ljava/lang/String; = "use_partial_wake_lock"

.field public static final USE_ROUTING_API:Ljava/lang/String; = "use_routing_api"

.field public static final USE_SGS_CALL_HACK:Ljava/lang/String; = "use_sgs_call_hack"

.field public static final USE_SOFT_VOLUME:Ljava/lang/String; = "use_soft_volume"

.field public static final USE_SRTP:Ljava/lang/String; = "use_srtp"

.field public static final USE_VIDEO:Ljava/lang/String; = "use_video"

.field public static final USE_WEBRTC_HACK:Ljava/lang/String; = "use_webrtc_hack"

.field public static final USE_WIFI_IN:Ljava/lang/String; = "use_wifi_in"

.field public static final USE_WIFI_OUT:Ljava/lang/String; = "use_wifi_out"

.field public static final USE_ZRTP:Ljava/lang/String; = "use_zrtp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1148
    const-string v0, "content://com.csipsimple.prefs/preferences"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipConfigManager;->PREF_URI:Landroid/net/Uri;

    .line 1160
    const-string v0, "content://com.csipsimple.prefs/preferences/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipConfigManager;->PREF_ID_URI_BASE:Landroid/net/Uri;

    .line 1168
    const-string v0, "content://com.csipsimple.prefs/raz"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1167
    sput-object v0, Lcom/csipsimple/api/SipConfigManager;->RAZ_URI:Landroid/net/Uri;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBandTypeKey(II)Ljava/lang/String;
    .locals 2
    .param p0, "networkType"    # I
    .param p1, "subType"    # I

    .prologue
    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "band_for_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/csipsimple/api/SipConfigManager;->keyForNetwork(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "codecName"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1214
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, "codecParts":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1216
    .local v1, "preferenceKey":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "codec_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    .end local v1    # "preferenceKey":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static getPrefUriForKey(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1265
    sget-object v0, Lcom/csipsimple/api/SipConfigManager;->PREF_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1306
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 10
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 1318
    move-object v8, p2

    .line 1319
    .local v8, "value":Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/csipsimple/api/SipConfigManager;->getPrefUriForKey(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1320
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1321
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1322
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1323
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1324
    .local v7, "intValue":I
    if-ltz v7, :cond_0

    .line 1325
    if-ne v7, v9, :cond_2

    move v0, v9

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1327
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1329
    .end local v7    # "intValue":I
    :cond_1
    return-object v8

    .line 1325
    .restart local v7    # "intValue":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1338
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 9
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    const/4 v2, 0x0

    .line 1350
    move-object v8, p2

    .line 1351
    .local v8, "value":Ljava/lang/Float;
    invoke-static {p1}, Lcom/csipsimple/api/SipConfigManager;->getPrefUriForKey(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1352
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-class v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1353
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1354
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1355
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 1356
    .local v7, "fValue":Ljava/lang/Float;
    if-eqz v7, :cond_0

    .line 1357
    move-object v8, v7

    .line 1359
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1361
    .end local v7    # "fValue":Ljava/lang/Float;
    :cond_1
    return-object v8
.end method

.method public static getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1370
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 9
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 1382
    move-object v8, p2

    .line 1383
    .local v8, "value":Ljava/lang/Integer;
    invoke-static {p1}, Lcom/csipsimple/api/SipConfigManager;->getPrefUriForKey(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1384
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1385
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1386
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1387
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1388
    .local v7, "iValue":Ljava/lang/Integer;
    if-eqz v7, :cond_0

    .line 1389
    move-object v8, v7

    .line 1391
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1393
    .end local v7    # "iValue":Ljava/lang/Integer;
    :cond_1
    return-object v8
.end method

.method public static getPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1274
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1286
    move-object v8, p2

    .line 1287
    .local v8, "value":Ljava/lang/String;
    invoke-static {p1}, Lcom/csipsimple/api/SipConfigManager;->getPrefUriForKey(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1288
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1289
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1290
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1291
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1292
    .local v7, "strValue":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1293
    move-object v8, v7

    .line 1295
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1297
    .end local v7    # "strValue":Ljava/lang/String;
    :cond_1
    return-object v8
.end method

.method private static keyForNetwork(II)Ljava/lang/String;
    .locals 2
    .param p0, "networkType"    # I
    .param p1, "subType"    # I

    .prologue
    const/4 v1, 0x1

    .line 1230
    if-ne p0, v1, :cond_0

    .line 1231
    const-string v0, "wifi"

    .line 1250
    :goto_0
    return-object v0

    .line 1232
    :cond_0
    if-nez p0, :cond_4

    .line 1234
    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 1235
    const-string v0, "3g"

    goto :goto_0

    .line 1239
    :cond_1
    if-eq p1, v1, :cond_2

    .line 1240
    if-nez p1, :cond_3

    .line 1241
    :cond_2
    const-string v0, "gprs"

    goto :goto_0

    .line 1245
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1246
    const-string v0, "edge"

    goto :goto_0

    .line 1250
    :cond_4
    const-string v0, "other"

    goto :goto_0
.end method

.method public static setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1418
    invoke-static {p1}, Lcom/csipsimple/api/SipConfigManager;->getPrefUriForKey(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1419
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1420
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1421
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1422
    return-void
.end method

.method public static setPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 1432
    invoke-static {p1}, Lcom/csipsimple/api/SipConfigManager;->getPrefUriForKey(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1433
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1434
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1435
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-class v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1436
    return-void
.end method

.method public static setPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 1446
    if-eqz p2, :cond_0

    .line 1447
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/csipsimple/api/SipConfigManager;->setPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :cond_0
    return-void
.end method

.method public static setPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1404
    invoke-static {p1}, Lcom/csipsimple/api/SipConfigManager;->getPrefUriForKey(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1405
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1406
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1408
    return-void
.end method

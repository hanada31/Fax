.class public Lcom/csipsimple/ui/prefs/PrefsLogic;
.super Ljava/lang/Object;
.source "PrefsLogic.java"


# static fields
.field public static final EXTRA_PREFERENCE_TYPE:Ljava/lang/String; = "preference_type"

.field private static final MEDIA_AUDIO_QUALITY_KEY:Ljava/lang/String; = "audio_quality"

.field private static final MEDIA_AUDIO_TROUBLESHOOT_KEY:Ljava/lang/String; = "audio_troubleshooting"

.field private static final MEDIA_AUDIO_VOLUME_KEY:Ljava/lang/String; = "audio_volume"

.field private static final MEDIA_BAND_TYPE_KEY:Ljava/lang/String; = "band_types"

.field private static final MEDIA_CODEC_LIST_KEY:Ljava/lang/String; = "codecs_list"

.field private static final MEDIA_MISC_KEY:Ljava/lang/String; = "misc"

.field private static final NWK_KEEP_ALIVE_KEY:Ljava/lang/String; = "keep_alive"

.field private static final NWK_NAT_TRAVERSAL_KEY:Ljava/lang/String; = "nat_traversal"

.field private static final NWK_PERFS_KEY:Ljava/lang/String; = "perfs"

.field private static final NWK_SECURE_TRANSPORT_KEY:Ljava/lang/String; = "secure_transport"

.field private static final NWK_SIP_PROTOCOL_KEY:Ljava/lang/String; = "sip_protocol"

.field private static final NWK_TLS_KEY:Ljava/lang/String; = "tls"

.field private static final NWK_TRANSPORT_KEY:Ljava/lang/String; = "transport"

.field public static final TYPE_CALLS:I = 0x28

.field public static final TYPE_MEDIA:I = 0x0

.field public static final TYPE_MEDIA_BAND_TYPE:I = 0x1

.field public static final TYPE_MEDIA_TROUBLESHOOT:I = 0x2

.field public static final TYPE_NETWORK:I = 0x14

.field public static final TYPE_NETWORK_KEEP_ALIVE:I = 0x15

.field public static final TYPE_NETWORK_SECURE:I = 0x16

.field public static final TYPE_NETWORK_SIP_PROTOCOL:I = 0x17

.field public static final TYPE_UI:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterBuildPrefsForType(Landroid/content/Context;Lcom/csipsimple/ui/prefs/IPreferenceHelper;I)V
    .locals 14
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "pfh"    # Lcom/csipsimple/ui/prefs/IPreferenceHelper;
    .param p2, "t"    # I

    .prologue
    .line 139
    new-instance v6, Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-direct {v6, p0}, Lcom/csipsimple/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 141
    .local v6, "pfw":Lcom/csipsimple/utils/PreferencesWrapper;
    sparse-switch p2, :sswitch_data_0

    .line 306
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 144
    :sswitch_1
    const-string v12, "audio_quality"

    const-string v13, "has_io_queue"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v6}, Lcom/csipsimple/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v12

    if-nez v12, :cond_1

    .line 149
    const-string v12, "audio_quality"

    const-string v13, "snd_media_quality"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v12, "audio_quality"

    const-string v13, "echo_cancellation_tail"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v12, "audio_quality"

    const-string v13, "echo_mode"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v12, "audio_quality"

    const-string v13, "snd_ptime"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v12, "audio_volume"

    const-string v13, "snd_mic_level"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v12, "audio_volume"

    const-string v13, "snd_speaker_level"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v12, "audio_volume"

    const-string v13, "snd_bt_mic_level"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v12, "audio_volume"

    const-string v13, "snd_bt_speaker_level"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v12, "audio_volume"

    const-string v13, "use_soft_volume"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v12, "misc"

    const-string v13, "auto_connect_speaker"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v12, "misc"

    const-string v13, "thread_count"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v12, 0x0

    const-string v13, "band_types"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v12, 0x0

    const-string v13, "audio_troubleshooting"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_1
    const-string v12, "codecs_list"

    invoke-interface {p1, v12}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 177
    .local v5, "pf":Landroid/preference/Preference;
    new-instance v3, Landroid/content/Intent;

    const-class v12, Lcom/csipsimple/ui/prefs/Codecs;

    invoke-direct {v3, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v3, "it":Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    .end local v3    # "it":Landroid/content/Intent;
    .end local v5    # "pf":Landroid/preference/Preference;
    :cond_1
    const-string v12, "audio_troubleshooting"

    const/4 v13, 0x2

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->setPreferenceScreenType(Ljava/lang/String;I)V

    .line 172
    const-string v12, "band_types"

    const/4 v13, 0x1

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->setPreferenceScreenType(Ljava/lang/String;I)V

    goto :goto_1

    .line 189
    :sswitch_2
    const-string v12, "phone"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 191
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 192
    const-string v12, "for_incoming"

    const-string v13, "use_gprs_in"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v12, "for_outgoing"

    const-string v13, "use_gprs_out"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v12, "for_incoming"

    const-string v13, "use_edge_in"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v12, "for_outgoing"

    const-string v13, "use_edge_out"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_2
    const/16 v12, 0x9

    invoke-static {v12}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 200
    const-string v12, "perfs"

    const-string v13, "lock_wifi_perfs"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_3
    invoke-virtual {v6}, Lcom/csipsimple/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v12

    if-nez v12, :cond_4

    .line 205
    const-string v12, "nat_traversal"

    const-string v13, "enable_turn"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v12, "nat_traversal"

    const-string v13, "turn_server"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v12, "nat_traversal"

    const-string v13, "turn_username"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v12, "nat_traversal"

    const-string v13, "turn_password"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v12, "transport"

    const-string v13, "enable_tcp"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v12, "transport"

    const-string v13, "enable_udp"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v12, "transport"

    const-string v13, "disable_tcp_switch"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v12, "transport"

    const-string v13, "network_tcp_transport_port"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v12, "transport"

    const-string v13, "network_udp_transport_port"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v12, "transport"

    const-string v13, "network_rtp_port"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v12, "transport"

    const-string v13, "use_ipv6"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v12, "transport"

    const-string v13, "override_nameserver"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v12, "transport"

    const-string v13, "force_no_update"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v12, "transport"

    const-string v13, "enable_qos"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v12, "transport"

    const-string v13, "dscp_val"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v12, "transport"

    const-string v13, "user_agent"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v12, "transport"

    const-string v13, "network_route_polling"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v12, "nat_traversal"

    const-string v13, "enable_stun2"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v12, "for_incoming"

    const-string v13, "use_anyway_in"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v12, "for_outgoing"

    const-string v13, "use_anyway_out"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v12, 0x0

    const-string v13, "sip_protocol"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v12, 0x0

    const-string v13, "perfs"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_2
    const-string v12, "keep_alive"

    const/16 v13, 0x15

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->setPreferenceScreenType(Ljava/lang/String;I)V

    .line 239
    const-string v12, "secure_transport"

    const/16 v13, 0x16

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->setPreferenceScreenType(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 234
    :cond_4
    const-string v12, "sip_protocol"

    const/16 v13, 0x17

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->setPreferenceScreenType(Ljava/lang/String;I)V

    goto :goto_2

    .line 245
    .end local v7    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :sswitch_3
    invoke-virtual {v6}, Lcom/csipsimple/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v12

    if-nez v12, :cond_5

    .line 246
    const-string v12, "tls"

    const-string v13, "ca_list_file"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v12, "tls"

    const-string v13, "tls_verify_client"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v12, "tls"

    const-string v13, "tls_verify_server"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v12, "tls"

    const-string v13, "tls_password"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v12, "tls"

    const-string v13, "tls_method"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v12, "tls"

    const-string v13, "network_tls_server_name"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v12, "tls"

    const-string v13, "cert_file"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v12, "tls"

    const-string v13, "privkey_file"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_5
    const-string v12, "cap_tls"

    invoke-virtual {v6, v12}, Lcom/csipsimple/utils/PreferencesWrapper;->getLibCapability(Ljava/lang/String;)Z

    move-result v0

    .line 257
    .local v0, "canTls":Z
    if-nez v0, :cond_0

    .line 258
    const/4 v12, 0x0

    const-string v13, "tls"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v12, "secure_media"

    const-string v13, "use_zrtp"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    .end local v0    # "canTls":Z
    :sswitch_4
    invoke-virtual {v6}, Lcom/csipsimple/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v12

    if-nez v12, :cond_6

    .line 266
    const/4 v12, 0x0

    const-string v13, "advanced_ui"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v12, "android_integration"

    const-string v13, "gsm_integration_type"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v12, "android_integration"

    const-string v13, "integrate_tel_privileged"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_6
    const-string v12, "selected_theme"

    invoke-interface {p1, v12}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 273
    .local v4, "lp":Landroid/preference/ListPreference;
    invoke-static {p0}, Lcom/csipsimple/utils/Theme;->getAvailableThemes(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v9

    .line 275
    .local v9, "themes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v1, v12, [Ljava/lang/CharSequence;

    .line 276
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v10, v12, [Ljava/lang/CharSequence;

    .line 277
    .local v10, "values":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 278
    .local v2, "i":I
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7

    .line 284
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 279
    .local v8, "theme":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    aput-object v12, v1, v2

    .line 280
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    aput-object v12, v10, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 291
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "i":I
    .end local v4    # "lp":Landroid/preference/ListPreference;
    .end local v8    # "theme":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "themes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "values":[Ljava/lang/CharSequence;
    :sswitch_5
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->forceNoMultipleCalls()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 292
    const/4 v12, 0x0

    const-string v13, "support_multiple_calls"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_8
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->supportCallRecord()Z

    move-result v12

    if-nez v12, :cond_9

    .line 295
    const/4 v12, 0x0

    const-string v13, "auto_record_calls"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_9
    const-string v12, "com.csipsimple.plugins.action.REGISTER_VIDEO"

    invoke-static {p0, v12}, Lcom/csipsimple/utils/ExtraPlugins;->getDynPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 298
    .local v11, "videoPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v12

    if-nez v12, :cond_0

    .line 299
    const/4 v12, 0x0

    const-string v13, "use_video"

    invoke-interface {p1, v12, v13}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x14 -> :sswitch_2
        0x16 -> :sswitch_3
        0x28 -> :sswitch_5
        0x3c -> :sswitch_4
    .end sparse-switch
.end method

.method public static getTitleResourceForType(I)I
    .locals 1
    .param p0, "t"    # I

    .prologue
    .line 113
    sparse-switch p0, :sswitch_data_0

    .line 133
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 115
    :sswitch_0
    const v0, 0x7f0b0099

    goto :goto_0

    .line 117
    :sswitch_1
    const v0, 0x7f0b014b

    goto :goto_0

    .line 119
    :sswitch_2
    const v0, 0x7f0b0175

    goto :goto_0

    .line 121
    :sswitch_3
    const v0, 0x7f0b0097

    goto :goto_0

    .line 123
    :sswitch_4
    const v0, 0x7f0b00e1

    goto :goto_0

    .line 125
    :sswitch_5
    const v0, 0x7f0b00fb

    goto :goto_0

    .line 127
    :sswitch_6
    const v0, 0x7f0b00ed

    goto :goto_0

    .line 129
    :sswitch_7
    const v0, 0x7f0b009d

    goto :goto_0

    .line 131
    :sswitch_8
    const v0, 0x7f0b009b

    goto :goto_0

    .line 113
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x28 -> :sswitch_7
        0x3c -> :sswitch_8
    .end sparse-switch
.end method

.method public static getXmlResourceForType(I)I
    .locals 1
    .param p0, "t"    # I

    .prologue
    .line 84
    sparse-switch p0, :sswitch_data_0

    .line 104
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 86
    :sswitch_0
    const v0, 0x7f050004

    goto :goto_0

    .line 88
    :sswitch_1
    const v0, 0x7f050005

    goto :goto_0

    .line 90
    :sswitch_2
    const v0, 0x7f050006

    goto :goto_0

    .line 92
    :sswitch_3
    const v0, 0x7f050007

    goto :goto_0

    .line 94
    :sswitch_4
    const v0, 0x7f050008

    goto :goto_0

    .line 96
    :sswitch_5
    const v0, 0x7f050009

    goto :goto_0

    .line 98
    :sswitch_6
    const v0, 0x7f05000a

    goto :goto_0

    .line 100
    :sswitch_7
    const v0, 0x7f050002

    goto :goto_0

    .line 102
    :sswitch_8
    const v0, 0x7f05000b

    goto :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x28 -> :sswitch_7
        0x3c -> :sswitch_8
    .end sparse-switch
.end method

.method public static onMainActivityOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;Landroid/content/Context;Lcom/csipsimple/utils/PreferencesWrapper;)Z
    .locals 4
    .param p0, "item"    # Lcom/actionbarsherlock/view/MenuItem;
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "prefsWrapper"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    const/4 v1, 0x1

    .line 322
    invoke-interface {p0}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 323
    .local v0, "id":I
    const v2, 0x7f06011c

    if-ne v0, v2, :cond_0

    .line 324
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/csipsimple/ui/prefs/AudioTester;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 334
    :goto_0
    return v1

    .line 326
    :cond_0
    const v2, 0x7f06011e

    if-ne v0, v2, :cond_1

    .line 327
    invoke-virtual {p2}, Lcom/csipsimple/utils/PreferencesWrapper;->resetAllDefaultValues()V

    goto :goto_0

    .line 329
    :cond_1
    const v2, 0x7f06011d

    if-ne v0, v2, :cond_2

    .line 330
    invoke-virtual {p2}, Lcom/csipsimple/utils/PreferencesWrapper;->toogleExpertMode()V

    goto :goto_0

    .line 334
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static onMainActivityPrepareOptionMenu(Lcom/actionbarsherlock/view/Menu;Landroid/content/Context;Lcom/csipsimple/utils/PreferencesWrapper;)V
    .locals 2
    .param p0, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "prefsWrapper"    # Lcom/csipsimple/utils/PreferencesWrapper;

    .prologue
    .line 339
    const v0, 0x7f06011d

    invoke-interface {p0, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-virtual {p2}, Lcom/csipsimple/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b01be

    :goto_0
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 341
    return-void

    .line 339
    :cond_0
    const v0, 0x7f0b01bd

    goto :goto_0
.end method

.method public static updateDescriptionForType(Landroid/content/Context;Lcom/csipsimple/ui/prefs/IPreferenceHelper;I)V
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "pfh"    # Lcom/csipsimple/ui/prefs/IPreferenceHelper;
    .param p2, "t"    # I

    .prologue
    .line 311
    sparse-switch p2, :sswitch_data_0

    .line 318
    :goto_0
    :sswitch_0
    return-void

    .line 315
    :sswitch_1
    const-string v0, "stun_server"

    invoke-interface {p1, v0}, Lcom/csipsimple/ui/prefs/IPreferenceHelper;->setStringFieldSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.class public Lcom/csipsimple/pjsip/PjSipService;
.super Ljava/lang/Object;
.source "PjSipService.java"


# static fields
.field public static final BITMASK_IN:I = 0x2

.field public static final BITMASK_OUT:I = 0x1

.field private static final DTMF_TONE_PAUSE_LENGTH:I = 0x12c

.field private static final DTMF_TONE_WAIT_LENGTH:I = 0x7d0

.field public static final INVALID_PLAYER:I = -0x1

.field private static final THIS_FILE:Ljava/lang/String; = "PjService"

.field private static codecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static codecs_initialized:Z

.field private static video_codecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private created:Z

.field private dtmfDialtoneGenerators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private dtmfTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/TimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private dtmfToAutoSend:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeenChangedRingerMode:Ljava/lang/Integer;

.field private hasBeenHoldByGSM:Ljava/lang/Integer;

.field private hasSipStack:Z

.field private localTcpAccPjId:Ljava/lang/Integer;

.field private localTlsAccPjId:Ljava/lang/Integer;

.field private localUdpAccPjId:Ljava/lang/Integer;

.field public mediaManager:Lcom/csipsimple/service/MediaManager;

.field private playedCalls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

.field private recordingFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public service:Lcom/csipsimple/service/SipService;

.field private sipStackIsCorrupted:Z

.field private tasksTimer:Ljava/util/Timer;

.field private tcpTranportId:Ljava/lang/Integer;

.field private tlsTransportId:Ljava/lang/Integer;

.field private udpTranportId:Ljava/lang/Integer;

.field public userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/csipsimple/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/csipsimple/pjsip/PjSipService;->video_codecs:Ljava/util/ArrayList;

    .line 873
    const/4 v0, 0x0

    sput-boolean v0, Lcom/csipsimple/pjsip/PjSipService;->codecs_initialized:Z

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    .line 101
    iput-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->hasSipStack:Z

    .line 102
    iput-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->sipStackIsCorrupted:Z

    .line 108
    iput-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    .line 109
    iput-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    .line 1846
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->recordingFiles:Landroid/util/SparseArray;

    .line 1963
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->playedCalls:Landroid/util/SparseArray;

    .line 125
    return-void
.end method

.method private buffCodecLog(Ljava/lang/StringBuilder;Ljava/lang/String;S)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "codec"    # Ljava/lang/String;
    .param p3, "prio"    # S

    .prologue
    .line 935
    if-lez p3, :cond_0

    invoke-static {}, Lcom/csipsimple/utils/Log;->getLogLevel()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 936
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 939
    const-string v0, ") - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    :cond_0
    return-void
.end method

.method private cleanPjsua()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 591
    const-string v2, "PjService"

    const-string v3, "Detroying..."

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-wide/16 v0, 0x1

    .line 595
    .local v0, "flags":J
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    const-wide/16 v0, 0x3

    .line 598
    :cond_0
    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsua;->csipsimple_destroy(J)I

    .line 599
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v2}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 600
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    if-eqz v2, :cond_1

    .line 601
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-virtual {v2}, Lcom/csipsimple/pjsip/UAStateReceiver;->stopService()V

    .line 602
    iput-object v4, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    .line 605
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v2, :cond_2

    .line 606
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v2}, Lcom/csipsimple/service/MediaManager;->stopService()V

    .line 607
    iput-object v4, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    .line 610
    :cond_2
    invoke-static {}, Lcom/csipsimple/utils/TimerWrapper;->destroy()V

    .line 612
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    .line 613
    return-void
.end method

.method private createTransport(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;
    .locals 16
    .param p1, "type"    # Lorg/pjsip/pjsua/pjsip_transport_type_e;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 622
    new-instance v3, Lorg/pjsip/pjsua/pjsua_transport_config;

    invoke-direct {v3}, Lorg/pjsip/pjsua/pjsua_transport_config;-><init>()V

    .line 623
    .local v3, "cfg":Lorg/pjsip/pjsua/pjsua_transport_config;
    const/4 v14, 0x1

    new-array v11, v14, [I

    .line 625
    .local v11, "tId":[I
    invoke-static {v3}, Lorg/pjsip/pjsua/pjsua;->transport_config_default(Lorg/pjsip/pjsua/pjsua_transport_config;)V

    .line 626
    move/from16 v0, p2

    int-to-long v14, v0

    invoke-virtual {v3, v14, v15}, Lorg/pjsip/pjsua/pjsua_transport_config;->setPort(J)V

    .line 628
    sget-object v14, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TLS:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/pjsip/pjsua/pjsip_transport_type_e;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 629
    invoke-virtual {v3}, Lorg/pjsip/pjsua/pjsua_transport_config;->getTls_setting()Lorg/pjsip/pjsua/pjsip_tls_setting;

    move-result-object v13

    .line 639
    .local v13, "tlsSetting":Lorg/pjsip/pjsua/pjsip_tls_setting;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 640
    const-string v15, "ca_list_file"

    invoke-virtual {v14, v15}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, "caListFile":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 642
    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setCa_list_file(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 645
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v15, "cert_file"

    invoke-virtual {v14, v15}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "certFile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 647
    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setCert_file(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 650
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v15, "privkey_file"

    invoke-virtual {v14, v15}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 652
    .local v8, "privKey":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 653
    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setPrivkey_file(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 656
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v15, "tls_password"

    invoke-virtual {v14, v15}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 657
    .local v12, "tlsPwd":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 658
    invoke-static {v12}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setPassword(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 661
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 662
    const-string v15, "tls_verify_client"

    invoke-virtual {v14, v15}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v4

    .line 663
    .local v4, "checkClient":Z
    if-eqz v4, :cond_7

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v13, v14}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setVerify_client(I)V

    .line 665
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v14}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getTLSMethod()I

    move-result v14

    invoke-virtual {v13, v14}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setMethod(I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 667
    const-string v15, "tls_verify_server"

    invoke-virtual {v14, v15}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v5

    .line 668
    .local v5, "checkServer":Z
    if-eqz v5, :cond_8

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v13, v14}, Lorg/pjsip/pjsua/pjsip_tls_setting;->setVerify_server(I)V

    .line 670
    invoke-virtual {v3, v13}, Lorg/pjsip/pjsua/pjsua_transport_config;->setTls_setting(Lorg/pjsip/pjsua/pjsip_tls_setting;)V

    .line 674
    .end local v1    # "caListFile":Ljava/lang/String;
    .end local v2    # "certFile":Ljava/lang/String;
    .end local v4    # "checkClient":Z
    .end local v5    # "checkServer":Z
    .end local v8    # "privKey":Ljava/lang/String;
    .end local v12    # "tlsPwd":Ljava/lang/String;
    .end local v13    # "tlsSetting":Lorg/pjsip/pjsua/pjsip_tls_setting;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v15, "enable_qos"

    invoke-virtual {v14, v15}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 675
    const-string v14, "PjService"

    const-string v15, "Activate qos for this transport"

    invoke-static {v14, v15}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {v3}, Lorg/pjsip/pjsua/pjsua_transport_config;->getQos_params()Lorg/pjsip/pjsua/pj_qos_params;

    move-result-object v9

    .line 677
    .local v9, "qosParam":Lorg/pjsip/pjsua/pj_qos_params;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v14}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getDSCPVal()I

    move-result v14

    int-to-short v14, v14

    invoke-virtual {v9, v14}, Lorg/pjsip/pjsua/pj_qos_params;->setDscp_val(S)V

    .line 678
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lorg/pjsip/pjsua/pj_qos_params;->setFlags(S)V

    .line 679
    invoke-virtual {v3, v9}, Lorg/pjsip/pjsua/pjsua_transport_config;->setQos_params(Lorg/pjsip/pjsua/pj_qos_params;)V

    .line 682
    .end local v9    # "qosParam":Lorg/pjsip/pjsua/pj_qos_params;
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v3, v11}, Lorg/pjsip/pjsua/pjsua;->transport_create(Lorg/pjsip/pjsua/pjsip_transport_type_e;Lorg/pjsip/pjsua/pjsua_transport_config;[I)I

    move-result v10

    .line 683
    .local v10, "status":I
    sget v14, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-eq v10, v14, :cond_9

    .line 684
    invoke-static {v10}, Lorg/pjsip/pjsua/pjsua;->get_error_message(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v14

    invoke-static {v14}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v6

    .line 685
    .local v6, "errorMsg":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Fail to create transport "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 686
    .local v7, "msg":Ljava/lang/String;
    const-string v14, "PjService"

    invoke-static {v14, v7}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const v14, 0x1d522

    if-ne v10, v14, :cond_6

    .line 688
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const v15, 0x7f0b01f7

    invoke-virtual {v14, v15}, Lcom/csipsimple/service/SipService;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 690
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v14, v7}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    .line 691
    const/4 v14, 0x0

    .line 693
    .end local v6    # "errorMsg":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    :goto_2
    return-object v14

    .line 663
    .end local v10    # "status":I
    .restart local v1    # "caListFile":Ljava/lang/String;
    .restart local v2    # "certFile":Ljava/lang/String;
    .restart local v4    # "checkClient":Z
    .restart local v8    # "privKey":Ljava/lang/String;
    .restart local v12    # "tlsPwd":Ljava/lang/String;
    .restart local v13    # "tlsSetting":Lorg/pjsip/pjsua/pjsip_tls_setting;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 668
    .restart local v5    # "checkServer":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 693
    .end local v1    # "caListFile":Ljava/lang/String;
    .end local v2    # "certFile":Ljava/lang/String;
    .end local v4    # "checkClient":Z
    .end local v5    # "checkServer":Z
    .end local v8    # "privKey":Ljava/lang/String;
    .end local v12    # "tlsPwd":Ljava/lang/String;
    .end local v13    # "tlsSetting":Lorg/pjsip/pjsua/pjsip_tls_setting;
    .restart local v10    # "status":I
    :cond_9
    const/4 v14, 0x0

    aget v14, v11, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_2
.end method

.method private getNameservers()[Lorg/pjsip/pjsua/pj_str_t;
    .locals 13

    .prologue
    .line 1759
    const/4 v8, 0x0

    check-cast v8, [Lorg/pjsip/pjsua/pj_str_t;

    .line 1761
    .local v8, "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    iget-object v10, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v10}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->enableDNSSRV()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1762
    iget-object v10, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 1763
    const-string v11, "override_nameserver"

    invoke-virtual {v10, v11}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1764
    .local v9, "prefsDNS":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1765
    const-string v6, "[ \\[\\]]"

    .line 1766
    .local v6, "ipv6Escape":Ljava/lang/String;
    const-string v5, "^\\d+(\\.\\d+){3}$"

    .line 1767
    .local v5, "ipv4Matcher":Ljava/lang/String;
    const-string v7, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    .line 1769
    .local v7, "ipv6Matcher":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    .local v2, "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1771
    .local v3, "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v10, 0x2

    if-le v4, v10, :cond_1

    .line 1786
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 1788
    move-object v1, v3

    .line 1793
    .local v1, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 1795
    const/4 v10, 0x1

    new-array v8, v10, [Lorg/pjsip/pjsua/pj_str_t;

    .end local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v10, 0x0

    .line 1796
    const-string v11, "127.0.0.1"

    invoke-static {v11}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    aput-object v11, v8, v10

    .line 1814
    .end local v1    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v5    # "ipv4Matcher":Ljava/lang/String;
    .end local v6    # "ipv6Escape":Ljava/lang/String;
    .end local v7    # "ipv6Matcher":Ljava/lang/String;
    .end local v9    # "prefsDNS":Ljava/lang/String;
    .restart local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    :cond_0
    :goto_2
    return-object v8

    .line 1772
    .restart local v2    # "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v5    # "ipv4Matcher":Ljava/lang/String;
    .restart local v6    # "ipv6Escape":Ljava/lang/String;
    .restart local v7    # "ipv6Matcher":Ljava/lang/String;
    .restart local v9    # "prefsDNS":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "net.dns"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1773
    .local v0, "dnsName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1774
    const-string v10, ""

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1775
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1776
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1777
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1779
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1780
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1771
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1790
    .end local v0    # "dnsName":Ljava/lang/String;
    :cond_5
    move-object v1, v2

    .restart local v1    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 1798
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 1799
    const/4 v10, 0x1

    new-array v8, v10, [Lorg/pjsip/pjsua/pj_str_t;

    .end local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v11, 0x0

    .line 1800
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v10

    aput-object v10, v8, v11

    .line 1799
    .restart local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    goto :goto_2

    .line 1803
    :cond_7
    const/4 v10, 0x2

    new-array v8, v10, [Lorg/pjsip/pjsua/pj_str_t;

    .end local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v11, 0x0

    .line 1804
    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v10

    aput-object v10, v8, v11

    const/4 v11, 0x1

    .line 1805
    const/4 v10, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v10

    aput-object v10, v8, v11

    .line 1803
    .restart local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    goto/16 :goto_2

    .line 1809
    .end local v1    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "dnsServersAll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "dnsServersIpv4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v5    # "ipv4Matcher":Ljava/lang/String;
    .end local v6    # "ipv6Escape":Ljava/lang/String;
    .end local v7    # "ipv6Matcher":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x1

    new-array v8, v10, [Lorg/pjsip/pjsua/pj_str_t;

    .end local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    const/4 v10, 0x0

    .line 1810
    invoke-static {v9}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v11

    aput-object v11, v8, v10

    .line 1809
    .restart local v8    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    goto/16 :goto_2
.end method

.method private getOnlineForStatus(Lcom/csipsimple/api/SipManager$PresenceStatus;)I
    .locals 1
    .param p1, "presence"    # Lcom/csipsimple/api/SipManager$PresenceStatus;

    .prologue
    .line 1518
    sget-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->ONLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRecordFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 1943
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-static {v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getRecordsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 1944
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1945
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1946
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1947
    invoke-direct {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->sanitizeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1948
    const-string v4, "yy-MM-dd_kkmmss"

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1946
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1949
    .local v2, "file":Ljava/io/File;
    const-string v3, "PjService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Out dir "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getUseSrtp()Lorg/pjsip/pjsua/pjmedia_srtp_use;
    .locals 4

    .prologue
    .line 1819
    :try_start_0
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 1820
    const-string v3, "use_srtp"

    invoke-virtual {v2, v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1819
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1821
    .local v1, "use_srtp":I
    if-ltz v1, :cond_0

    .line 1822
    invoke-static {v1}, Lorg/pjsip/pjsua/pjmedia_srtp_use;->swigToEnum(I)Lorg/pjsip/pjsua/pjmedia_srtp_use;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1827
    .end local v1    # "use_srtp":I
    :goto_0
    return-object v2

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "PjService"

    const-string v3, "Transport port not well formated"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    sget-object v2, Lorg/pjsip/pjsua/pjmedia_srtp_use;->PJMEDIA_SRTP_DISABLED:Lorg/pjsip/pjsua/pjmedia_srtp_use;

    goto :goto_0
.end method

.method private initCodecs()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 895
    sget-object v4, Lcom/csipsimple/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v4

    .line 896
    :try_start_0
    sget-boolean v3, Lcom/csipsimple/pjsip/PjSipService;->codecs_initialized:Z

    if-nez v3, :cond_0

    .line 900
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->codecs_get_nbr()I

    move-result v2

    .line 901
    .local v2, "nbrCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 907
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    sget-object v5, Lcom/csipsimple/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setCodecList(Ljava/util/List;)V

    .line 910
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->codecs_vid_get_nbr()I

    move-result v2

    .line 911
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_2

    .line 917
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    sget-object v5, Lcom/csipsimple/pjsip/PjSipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setVideoCodecList(Ljava/util/List;)V

    .line 919
    const/4 v3, 0x1

    sput-boolean v3, Lcom/csipsimple/pjsip/PjSipService;->codecs_initialized:Z

    .line 921
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v5, "cap_tls"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setLibCapability(Ljava/lang/String;Z)V

    .line 922
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v5, "cap_srtp"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setLibCapability(Ljava/lang/String;Z)V

    .line 895
    .end local v1    # "i":I
    .end local v2    # "nbrCodecs":I
    :cond_0
    monitor-exit v4

    .line 926
    return-void

    .line 902
    .restart local v1    # "i":I
    .restart local v2    # "nbrCodecs":I
    :cond_1
    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->codecs_get_id(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v3

    invoke-static {v3}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "codecId":Ljava/lang/String;
    sget-object v3, Lcom/csipsimple/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    .end local v0    # "codecId":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->codecs_vid_get_id(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v3

    invoke-static {v3}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    .line 913
    .restart local v0    # "codecId":Ljava/lang/String;
    sget-object v3, Lcom/csipsimple/pjsip/PjSipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    const-string v3, "PjService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Added video codec "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 895
    .end local v0    # "codecId":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "nbrCodecs":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;
    .locals 4
    .param p0, "pjStr"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 2045
    if-eqz p0, :cond_1

    .line 2047
    :try_start_0
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->getSlen()I

    move-result v1

    .line 2048
    .local v1, "len":I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->getPtr()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2050
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->getPtr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 2051
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->getPtr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2054
    :cond_0
    if-lez v1, :cond_1

    .line 2055
    invoke-virtual {p0}, Lorg/pjsip/pjsua/pj_str_t;->getPtr()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2062
    .end local v1    # "len":I
    :goto_0
    return-object v2

    .line 2059
    :catch_0
    move-exception v0

    .line 2060
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "PjService"

    const-string v3, "Impossible to retrieve string from pjsip "

    invoke-static {v2, v3, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2062
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static resetCodecs()V
    .locals 2

    .prologue
    .line 879
    sget-object v1, Lcom/csipsimple/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v1

    .line 880
    :try_start_0
    sget-boolean v0, Lcom/csipsimple/pjsip/PjSipService;->codecs_initialized:Z

    if-eqz v0, :cond_0

    .line 881
    sget-object v0, Lcom/csipsimple/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 882
    sget-object v0, Lcom/csipsimple/pjsip/PjSipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 883
    const/4 v0, 0x0

    sput-boolean v0, Lcom/csipsimple/pjsip/PjSipService;->codecs_initialized:Z

    .line 879
    :cond_0
    monitor-exit v1

    .line 886
    return-void

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sanitizeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 1956
    move-object v0, p1

    .line 1957
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "[\\.\\\\<>:; \"\'\\*]"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1958
    return-object v0
.end method

.method private sanitizeSipUri(Ljava/lang/String;J)Lcom/csipsimple/service/SipService$ToCall;
    .locals 22
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1593
    const/16 v18, -0x1

    .line 1597
    .local v18, "pjsipAccountId":I
    new-instance v8, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v8}, Lcom/csipsimple/api/SipProfile;-><init>()V

    .line 1598
    .local v8, "account":Lcom/csipsimple/api/SipProfile;
    move-wide/from16 v0, p2

    iput-wide v0, v8, Lcom/csipsimple/api/SipProfile;->id:J

    .line 1599
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/csipsimple/pjsip/PjSipService;->getProfileState(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfileState;

    move-result-object v19

    .line 1600
    .local v19, "profileState":Lcom/csipsimple/api/SipProfileState;
    move-wide/from16 v15, p2

    .line 1604
    .local v15, "finalAccountId":J
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/csipsimple/api/SipProfileState;->isAddedToStack()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1605
    :cond_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->acc_get_default()I

    move-result v12

    .line 1607
    .local v12, "defaultPjsipAccount":I
    const/16 v21, 0x0

    .line 1608
    .local v21, "valid":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/csipsimple/pjsip/PjSipService;->getAccountForPjsipId(I)Lcom/csipsimple/api/SipProfile;

    move-result-object v8

    .line 1609
    if-eqz v8, :cond_1

    .line 1610
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/csipsimple/pjsip/PjSipService;->getProfileState(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfileState;

    move-result-object v19

    .line 1611
    invoke-virtual/range {v19 .. v19}, Lcom/csipsimple/api/SipProfileState;->isAddedToStack()Z

    move-result v21

    .line 1614
    :cond_1
    if-nez v21, :cond_6

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v2}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 1616
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1615
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1617
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 1619
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1620
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1622
    :cond_2
    new-instance v20, Lcom/csipsimple/api/SipProfileState;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/csipsimple/api/SipProfileState;-><init>(Landroid/database/Cursor;)V

    .line 1623
    .local v20, "ps":Lcom/csipsimple/api/SipProfileState;
    invoke-virtual/range {v20 .. v20}, Lcom/csipsimple/api/SipProfileState;->isValidForCall()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1624
    invoke-virtual/range {v20 .. v20}, Lcom/csipsimple/api/SipProfileState;->getAccountId()I

    move-result v2

    int-to-long v15, v2

    .line 1625
    invoke-virtual/range {v20 .. v20}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    .line 1633
    .end local v20    # "ps":Lcom/csipsimple/api/SipProfileState;
    :cond_3
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1646
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "defaultPjsipAccount":I
    .end local v21    # "valid":Z
    :cond_4
    :goto_1
    move/from16 v0, v18

    int-to-long v2, v0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 1647
    const-string v2, "PjService"

    const-string v3, "Unable to find a valid account for this call"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const/4 v2, 0x0

    .line 1690
    :goto_2
    return-object v2

    .line 1628
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v12    # "defaultPjsipAccount":I
    .restart local v20    # "ps":Lcom/csipsimple/api/SipProfileState;
    .restart local v21    # "valid":Z
    :cond_5
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1621
    if-nez v2, :cond_2

    goto :goto_0

    .line 1630
    .end local v20    # "ps":Lcom/csipsimple/api/SipProfileState;
    :catch_0
    move-exception v14

    .line 1631
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "PjService"

    const-string v3, "Error on looping over sip profiles state"

    invoke-static {v2, v3, v14}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1633
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1632
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1633
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1634
    throw v2

    .line 1638
    .end local v9    # "c":Landroid/database/Cursor;
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/csipsimple/api/SipProfileState;->getAccountId()I

    move-result v2

    int-to-long v15, v2

    .line 1639
    invoke-virtual/range {v19 .. v19}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I

    move-result v18

    goto :goto_1

    .line 1643
    .end local v12    # "defaultPjsipAccount":I
    .end local v21    # "valid":Z
    :cond_7
    invoke-virtual/range {v19 .. v19}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I

    move-result v18

    goto :goto_1

    .line 1653
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/csipsimple/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    move-result-object v17

    .line 1655
    .local v17, "finalCallee":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1656
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1657
    :cond_9
    const-string v2, "PjService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "default acc : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    long-to-int v3, v15

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/csipsimple/service/SipService;->getAccount(J)Lcom/csipsimple/api/SipProfile;

    move-result-object v8

    .line 1661
    :cond_a
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1662
    invoke-virtual {v8}, Lcom/csipsimple/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v11

    .line 1663
    .local v11, "defaultDomain":Ljava/lang/String;
    move-object/from16 v0, v17

    iput-object v11, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 1665
    .end local v11    # "defaultDomain":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1666
    iget-object v2, v8, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    .line 1667
    const-string v2, "sips"

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    .line 1672
    :cond_c
    :goto_3
    const/4 v13, 0x0

    .line 1673
    .local v13, "digitsToAdd":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1674
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1675
    .local v10, "commaIndex":I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1676
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 1679
    .end local v10    # "commaIndex":I
    :cond_d
    const-string v2, "PjService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "will call "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->verify_sip_url(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    .line 1684
    move/from16 v0, v18

    int-to-long v2, v0

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    .line 1685
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v2

    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->acc_find_for_outgoing(Lorg/pjsip/pjsua/pj_str_t;)I

    move-result v18

    .line 1687
    :cond_e
    new-instance v2, Lcom/csipsimple/service/SipService$ToCall;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v13}, Lcom/csipsimple/service/SipService$ToCall;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1669
    .end local v13    # "digitsToAdd":Ljava/lang/String;
    :cond_f
    const-string v2, "sip"

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    goto/16 :goto_3

    .line 1690
    .restart local v13    # "digitsToAdd":Ljava/lang/String;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method private sendDtmf(ILjava/lang/String;)I
    .locals 12
    .param p1, "callId"    # I
    .param p2, "keyPressed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1156
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1157
    sget v7, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    .line 1248
    :cond_0
    :goto_0
    return v7

    .line 1161
    :cond_1
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->call_is_active(I)I

    move-result v9

    sget v10, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    if-eq v9, v10, :cond_2

    .line 1162
    const/4 v7, -0x1

    goto :goto_0

    .line 1165
    :cond_2
    move-object v1, p2

    .line 1166
    .local v1, "dtmfToDial":Ljava/lang/String;
    const-string v6, ""

    .line 1167
    .local v6, "remainingDtmf":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1168
    .local v4, "pauseBeforeRemaining":I
    const/4 v2, 0x0

    .line 1169
    .local v2, "foundSeparator":Z
    const-string v9, ","

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, ";"

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1170
    :cond_3
    const-string v1, ""

    .line 1171
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v3, v9, :cond_7

    .line 1193
    .end local v3    # "i":I
    :cond_4
    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v5

    .line 1194
    .local v5, "pjKeyPressed":Lorg/pjsip/pjsua/pj_str_t;
    const/4 v7, -0x1

    .line 1195
    .local v7, "res":I
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v9}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->useSipInfoDtmf()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1196
    invoke-static {p1, v5}, Lorg/pjsip/pjsua/pjsua;->send_dtmf_info(ILorg/pjsip/pjsua/pj_str_t;)I

    move-result v7

    .line 1197
    const-string v9, "PjService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Has been sent DTMF INFO : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_5
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 1219
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    if-nez v9, :cond_6

    .line 1220
    new-instance v9, Ljava/util/Timer;

    const-string v10, "com.csipsimple.PjSipServiceTasks"

    invoke-direct {v9, v10}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    .line 1222
    :cond_6
    new-instance v8, Lcom/csipsimple/pjsip/PjSipService$1;

    invoke-direct {v8, p0, p1}, Lcom/csipsimple/pjsip/PjSipService$1;-><init>(Lcom/csipsimple/pjsip/PjSipService;I)V

    .line 1234
    .local v8, "tt":Ljava/util/TimerTask;
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v9, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1235
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v9, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1236
    const-string v9, "PjService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Schedule DTMF "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    int-to-long v10, v4

    invoke-virtual {v9, v8, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 1172
    .end local v5    # "pjKeyPressed":Lorg/pjsip/pjsua/pj_str_t;
    .end local v7    # "res":I
    .end local v8    # "tt":Ljava/util/TimerTask;
    .restart local v3    # "i":I
    :cond_7
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1173
    .local v0, "c":C
    if-nez v2, :cond_b

    .line 1174
    const/16 v9, 0x2c

    if-eq v0, v9, :cond_8

    const/16 v9, 0x3b

    if-ne v0, v9, :cond_a

    .line 1175
    :cond_8
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_9

    const/16 v9, 0x12c

    :goto_3
    add-int/2addr v4, v9

    .line 1176
    const/4 v2, 0x1

    .line 1171
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1175
    :cond_9
    const/16 v9, 0x7d0

    goto :goto_3

    .line 1178
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1181
    :cond_b
    const/16 v9, 0x2c

    if-eq v0, v9, :cond_c

    const/16 v9, 0x3b

    if-ne v0, v9, :cond_e

    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1182
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_d

    const/16 v9, 0x12c

    :goto_5
    add-int/2addr v4, v9

    goto :goto_4

    :cond_d
    const/16 v9, 0x7d0

    goto :goto_5

    .line 1184
    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 1199
    .end local v0    # "c":C
    .end local v3    # "i":I
    .restart local v5    # "pjKeyPressed":Lorg/pjsip/pjsua/pj_str_t;
    .restart local v7    # "res":I
    :cond_f
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v9}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->forceDtmfInBand()Z

    move-result v9

    if-nez v9, :cond_10

    .line 1201
    invoke-static {p1, v5}, Lorg/pjsip/pjsua/pjsua;->call_dial_dtmf(ILorg/pjsip/pjsua/pj_str_t;)I

    move-result v7

    .line 1202
    const-string v9, "PjService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Has been sent in RTP DTMF : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :cond_10
    sget v9, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    if-eq v7, v9, :cond_5

    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v9}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->forceDtmfRTP()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1207
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_11

    .line 1208
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    new-instance v10, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;

    invoke-direct {v10, p1}, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;-><init>(I)V

    invoke-virtual {v9, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1210
    :cond_11
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;

    invoke-virtual {v9, p2}, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->sendPjMediaDialTone(Ljava/lang/String;)I

    move-result v7

    .line 1211
    const-string v9, "PjService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Has been sent DTMF analogic : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1239
    :cond_12
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 1240
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1242
    :cond_13
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1243
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private setCodecsPriorities()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 948
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    .line 949
    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 948
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 951
    .local v3, "cm":Landroid/net/ConnectivityManager;
    sget-object v12, Lcom/csipsimple/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v12

    .line 952
    :try_start_0
    sget-boolean v11, Lcom/csipsimple/pjsip/PjSipService;->codecs_initialized:Z

    if-eqz v11, :cond_2

    .line 953
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 954
    .local v9, "ni":Landroid/net/NetworkInfo;
    if-eqz v9, :cond_2

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    .local v2, "audioSb":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    .local v10, "videoSb":Ljava/lang/StringBuilder;
    const-string v11, "Audio codecs : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    const-string v11, "Video codecs : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 962
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v14

    invoke-static {v13, v14}, Lcom/csipsimple/api/SipConfigManager;->getBandTypeKey(II)Ljava/lang/String;

    move-result-object v13

    .line 963
    const-string v14, "wb"

    .line 961
    invoke-virtual {v11, v13, v14}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 965
    .local v7, "currentBandType":Ljava/lang/String;
    sget-object v13, Lcom/csipsimple/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 967
    :try_start_1
    sget-object v11, Lcom/csipsimple/pjsip/PjSipService;->codecs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 984
    sget-object v11, Lcom/csipsimple/pjsip/PjSipService;->video_codecs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_5

    .line 965
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    :try_start_2
    const-string v11, "PjService"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v11, "PjService"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .end local v2    # "audioSb":Ljava/lang/StringBuilder;
    .end local v7    # "currentBandType":Ljava/lang/String;
    .end local v9    # "ni":Landroid/net/NetworkInfo;
    .end local v10    # "videoSb":Ljava/lang/StringBuilder;
    :cond_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1004
    return-void

    .line 967
    .restart local v2    # "audioSb":Ljava/lang/StringBuilder;
    .restart local v7    # "currentBandType":Ljava/lang/String;
    .restart local v9    # "ni":Landroid/net/NetworkInfo;
    .restart local v10    # "videoSb":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 968
    .local v4, "codec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 969
    const-string v15, "-1"

    .line 968
    invoke-virtual {v14, v4, v7, v15}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v1

    .line 970
    .local v1, "aPrio":S
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v1}, Lcom/csipsimple/pjsip/PjSipService;->buffCodecLog(Ljava/lang/StringBuilder;Ljava/lang/String;S)V

    .line 971
    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v6

    .line 972
    .local v6, "codecStr":Lorg/pjsip/pjsua/pj_str_t;
    if-ltz v1, :cond_4

    .line 973
    invoke-static {v6, v1}, Lorg/pjsip/pjsua/pjsua;->codec_set_priority(Lorg/pjsip/pjsua/pj_str_t;S)I

    .line 976
    :cond_4
    const-string v14, "fpp"

    invoke-static {v4, v14}, Lcom/csipsimple/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 977
    .local v5, "codecKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-static {v14, v5}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 978
    .local v8, "frmPerPacket":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_0

    .line 979
    const-string v14, "PjService"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Set codec "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " fpp : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v6, v14}, Lorg/pjsip/pjsua/pjsua;->codec_set_frames_per_packet(Lorg/pjsip/pjsua/pj_str_t;I)I

    goto :goto_0

    .line 965
    .end local v1    # "aPrio":S
    .end local v4    # "codec":Ljava/lang/String;
    .end local v5    # "codecKey":Ljava/lang/String;
    .end local v6    # "codecStr":Lorg/pjsip/pjsua/pj_str_t;
    .end local v8    # "frmPerPacket":Ljava/lang/Integer;
    :catchall_0
    move-exception v11

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11

    .line 951
    .end local v2    # "audioSb":Ljava/lang/StringBuilder;
    .end local v7    # "currentBandType":Ljava/lang/String;
    .end local v9    # "ni":Landroid/net/NetworkInfo;
    .end local v10    # "videoSb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 984
    .restart local v2    # "audioSb":Ljava/lang/StringBuilder;
    .restart local v7    # "currentBandType":Ljava/lang/String;
    .restart local v9    # "ni":Landroid/net/NetworkInfo;
    .restart local v10    # "videoSb":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 985
    .restart local v4    # "codec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 986
    const-string v15, "-1"

    .line 985
    invoke-virtual {v14, v4, v7, v15}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v1

    .line 987
    .restart local v1    # "aPrio":S
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4, v1}, Lcom/csipsimple/pjsip/PjSipService;->buffCodecLog(Ljava/lang/StringBuilder;Ljava/lang/String;S)V

    .line 988
    if-ltz v1, :cond_1

    .line 989
    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v14

    invoke-static {v14, v1}, Lorg/pjsip/pjsua/pjsua;->vid_codec_set_priority(Lorg/pjsip/pjsua/pj_str_t;S)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public addAccount(Lcom/csipsimple/api/SipProfile;)Z
    .locals 14
    .param p1, "profile"    # Lcom/csipsimple/api/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 697
    sget v6, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    .line 698
    .local v6, "status":I
    iget-boolean v9, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v9, :cond_2

    .line 699
    const-string v9, "PjService"

    const-string v10, "PJSIP is not started here, nothing can be done"

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    sget v9, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v6, v9, :cond_1

    .line 797
    :cond_0
    :goto_0
    return v7

    :cond_1
    move v7, v8

    .line 700
    goto :goto_0

    .line 703
    :cond_2
    new-instance v1, Lcom/csipsimple/pjsip/PjSipAccount;

    invoke-direct {v1, p1}, Lcom/csipsimple/pjsip/PjSipAccount;-><init>(Lcom/csipsimple/api/SipProfile;)V

    .line 705
    .local v1, "account":Lcom/csipsimple/pjsip/PjSipAccount;
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1, v9}, Lcom/csipsimple/pjsip/PjSipAccount;->applyExtraParams(Landroid/content/Context;)V

    .line 730
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->getProfileState(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfileState;

    move-result-object v2

    .line 732
    .local v2, "currentAccountStatus":Lcom/csipsimple/api/SipProfileState;
    invoke-virtual {v2}, Lcom/csipsimple/api/SipProfileState;->isAddedToStack()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 733
    iget-object v9, v1, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-object v10, v1, Lcom/csipsimple/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    invoke-static {v9, v10}, Lorg/pjsip/pjsua/pjsua;->csipsimple_set_acc_user_data(Lorg/pjsip/pjsua/pjsua_acc_config;Lorg/pjsip/pjsua/csipsimple_acc_config;)I

    .line 734
    invoke-virtual {v2}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I

    move-result v9

    iget-object v10, v1, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-static {v9, v10}, Lorg/pjsip/pjsua/pjsua;->acc_modify(ILorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v6

    .line 735
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 736
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v9, "added_status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v9}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 738
    sget-object v10, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    iget-wide v11, p1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 737
    invoke-virtual {v9, v10, v3, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 741
    iget-object v9, v1, Lcom/csipsimple/pjsip/PjSipAccount;->wizard:Ljava/lang/String;

    const-string v10, "LOCAL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 743
    sget v9, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v6, v9, :cond_3

    .line 744
    invoke-virtual {v2}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I

    move-result v9

    invoke-static {v9, v7}, Lorg/pjsip/pjsua/pjsua;->acc_set_registration(II)I

    move-result v6

    .line 745
    sget v9, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v6, v9, :cond_3

    .line 746
    invoke-virtual {v2}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I

    move-result v9

    invoke-static {v9, v7}, Lorg/pjsip/pjsua/pjsua;->acc_set_online_status(II)I

    .line 797
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_3
    :goto_1
    sget v9, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-eq v6, v9, :cond_0

    move v7, v8

    goto :goto_0

    .line 751
    :cond_4
    new-array v0, v7, [I

    .line 752
    .local v0, "accId":[I
    iget-object v9, v1, Lcom/csipsimple/pjsip/PjSipAccount;->wizard:Ljava/lang/String;

    const-string v10, "LOCAL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 756
    iget-object v9, v1, Lcom/csipsimple/pjsip/PjSipAccount;->transport:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 768
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->localUdpAccPjId:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v0, v8

    .line 772
    :goto_2
    new-instance v4, Lorg/pjsip/pjsua/pjsua_acc_config;

    invoke-direct {v4}, Lorg/pjsip/pjsua/pjsua_acc_config;-><init>()V

    .line 773
    .local v4, "nCfg":Lorg/pjsip/pjsua/pjsua_acc_config;
    aget v9, v0, v8

    invoke-static {v9, v4}, Lorg/pjsip/pjsua/pjsua;->acc_get_config(ILorg/pjsip/pjsua/pjsua_acc_config;)I

    .line 774
    iget-object v9, v1, Lcom/csipsimple/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    invoke-static {v4, v9}, Lorg/pjsip/pjsua/pjsua;->csipsimple_set_acc_user_data(Lorg/pjsip/pjsua/pjsua_acc_config;Lorg/pjsip/pjsua/csipsimple_acc_config;)I

    .line 775
    sget v9, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    invoke-virtual {v4, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setVid_in_auto_show(I)V

    .line 776
    sget v9, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    invoke-virtual {v4, v9}, Lorg/pjsip/pjsua/pjsua_acc_config;->setVid_out_auto_transmit(I)V

    .line 777
    aget v9, v0, v8

    invoke-static {v9, v4}, Lorg/pjsip/pjsua/pjsua;->acc_modify(ILorg/pjsip/pjsua/pjsua_acc_config;)I

    move-result v6

    .line 785
    .end local v4    # "nCfg":Lorg/pjsip/pjsua/pjsua_acc_config;
    :goto_3
    sget v9, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v6, v9, :cond_3

    .line 786
    new-instance v5, Lcom/csipsimple/api/SipProfileState;

    invoke-direct {v5, p1}, Lcom/csipsimple/api/SipProfileState;-><init>(Lcom/csipsimple/api/SipProfile;)V

    .line 787
    .local v5, "ps":Lcom/csipsimple/api/SipProfileState;
    invoke-virtual {v5, v6}, Lcom/csipsimple/api/SipProfileState;->setAddedStatus(I)V

    .line 788
    aget v9, v0, v8

    invoke-virtual {v5, v9}, Lcom/csipsimple/api/SipProfileState;->setPjsuaId(I)V

    .line 789
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v9}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 790
    sget-object v10, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    .line 791
    iget-object v11, v1, Lcom/csipsimple/pjsip/PjSipAccount;->id:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 790
    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 791
    invoke-virtual {v5}, Lcom/csipsimple/api/SipProfileState;->getAsContentValue()Landroid/content/ContentValues;

    move-result-object v11

    .line 789
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 793
    aget v9, v0, v8

    invoke-static {v9, v7}, Lorg/pjsip/pjsua/pjsua;->acc_set_online_status(II)I

    goto :goto_1

    .line 758
    .end local v5    # "ps":Lcom/csipsimple/api/SipProfileState;
    :pswitch_0
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->localUdpAccPjId:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v0, v8

    goto :goto_2

    .line 761
    :pswitch_1
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->localTcpAccPjId:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v0, v8

    goto :goto_2

    .line 764
    :pswitch_2
    iget-object v9, p0, Lcom/csipsimple/pjsip/PjSipService;->localTlsAccPjId:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v0, v8

    goto :goto_2

    .line 780
    :cond_5
    iget-object v9, v1, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    iget-object v10, v1, Lcom/csipsimple/pjsip/PjSipAccount;->css_cfg:Lorg/pjsip/pjsua/csipsimple_acc_config;

    invoke-static {v9, v10}, Lorg/pjsip/pjsua/pjsua;->csipsimple_set_acc_user_data(Lorg/pjsip/pjsua/pjsua_acc_config;Lorg/pjsip/pjsua/csipsimple_acc_config;)I

    .line 781
    iget-object v9, v1, Lcom/csipsimple/pjsip/PjSipAccount;->cfg:Lorg/pjsip/pjsua/pjsua_acc_config;

    sget v10, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    invoke-static {v9, v10, v0}, Lorg/pjsip/pjsua/pjsua;->acc_add(Lorg/pjsip/pjsua/pjsua_acc_config;I[I)I

    move-result v6

    goto :goto_3

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addBuddy(Ljava/lang/String;)I
    .locals 4
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1285
    iget-boolean v2, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v2, :cond_0

    .line 1286
    const/4 v2, -0x1

    .line 1297
    :goto_0
    return v2

    .line 1288
    :cond_0
    new-array v1, v3, [I

    .line 1290
    .local v1, "p_buddy_id":[I
    new-instance v0, Lorg/pjsip/pjsua/pjsua_buddy_config;

    invoke-direct {v0}, Lorg/pjsip/pjsua/pjsua_buddy_config;-><init>()V

    .line 1291
    .local v0, "buddy_cfg":Lorg/pjsip/pjsua/pjsua_buddy_config;
    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->buddy_config_default(Lorg/pjsip/pjsua/pjsua_buddy_config;)V

    .line 1292
    invoke-virtual {v0, v3}, Lorg/pjsip/pjsua/pjsua_buddy_config;->setSubscribe(I)V

    .line 1293
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/pjsip/pjsua/pjsua_buddy_config;->setUri(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 1295
    invoke-static {v0, v1}, Lorg/pjsip/pjsua/pjsua;->buddy_add(Lorg/pjsip/pjsua/pjsua_buddy_config;[I)I

    .line 1297
    const/4 v2, 0x0

    aget v2, v1, v2

    goto :goto_0
.end method

.method public adjustStreamVolume(III)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/csipsimple/service/MediaManager;->adjustStreamVolume(III)V

    .line 1420
    :cond_0
    return-void
.end method

.method public callAnswer(II)I
    .locals 6
    .param p1, "callId"    # I
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1017
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_1

    .line 1019
    new-instance v1, Lorg/pjsip/pjsua/pjsua_call_setting;

    invoke-direct {v1}, Lorg/pjsip/pjsua/pjsua_call_setting;-><init>()V

    .line 1020
    .local v1, "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->call_setting_default(Lorg/pjsip/pjsua/pjsua_call_setting;)V

    .line 1021
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/pjsip/pjsua/pjsua_call_setting;->setAud_cnt(J)V

    .line 1022
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v2, "use_video"

    invoke-virtual {v0, v2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/pjsip/pjsua/pjsua_call_setting;->setVid_cnt(J)V

    .line 1023
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/pjsip/pjsua/pjsua_call_setting;->setFlag(J)V

    .line 1024
    int-to-long v2, p2

    move v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsua;->call_answer2(ILorg/pjsip/pjsua/pjsua_call_setting;JLorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1027
    .end local v1    # "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    :goto_1
    return v0

    .line 1022
    .restart local v1    # "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1027
    .end local v1    # "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public callHangup(II)I
    .locals 3
    .param p1, "callId"    # I
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1038
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    .line 1039
    int-to-long v0, p2

    invoke-static {p1, v0, v1, v2, v2}, Lorg/pjsip/pjsua/pjsua;->call_hangup(IJLorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1041
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public callHold(I)I
    .locals 1
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1337
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    .line 1338
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/pjsip/pjsua/pjsua;->call_set_hold(ILorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1340
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public callReinvite(IZ)I
    .locals 3
    .param p1, "callId"    # I
    .param p2, "unhold"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_1

    .line 1346
    if-eqz p2, :cond_0

    sget-object v0, Lorg/pjsip/pjsua/pjsua_call_flag;->PJSUA_CALL_UNHOLD:Lorg/pjsip/pjsua/pjsua_call_flag;

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_call_flag;->swigValue()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    const/4 v2, 0x0

    .line 1345
    invoke-static {p1, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua;->call_reinvite(IJLorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1349
    :goto_1
    return v0

    .line 1346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1349
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public callXfer(ILjava/lang/String;)I
    .locals 2
    .param p1, "callId"    # I
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1045
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    .line 1046
    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/pjsip/pjsua/pjsua;->call_xfer(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1048
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public callXferReplace(III)I
    .locals 3
    .param p1, "callId"    # I
    .param p2, "otherCallId"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    .line 1053
    int-to-long v0, p3

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lorg/pjsip/pjsua/pjsua;->call_xfer_replaces(IIJLorg/pjsip/pjsua/pjsua_msg_data;)I

    move-result v0

    .line 1055
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public canRecord(I)Z
    .locals 5
    .param p1, "callId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1906
    iget-boolean v4, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v4, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return v2

    .line 1910
    :cond_1
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->getCallInfo(I)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 1911
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getMediaStatus()I

    move-result v1

    .line 1916
    .local v1, "ms":I
    if-eq v1, v3, :cond_2

    .line 1917
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    :cond_2
    move v2, v3

    .line 1921
    goto :goto_0
.end method

.method public confAdjustRxLevel(IF)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1403
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1404
    invoke-static {p1, p2}, Lorg/pjsip/pjsua/pjsua;->conf_adjust_rx_level(IF)I

    .line 1406
    :cond_0
    return-void
.end method

.method public confAdjustTxLevel(IF)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1398
    invoke-static {p1, p2}, Lorg/pjsip/pjsua/pjsua;->conf_adjust_tx_level(IF)I

    .line 1400
    :cond_0
    return-void
.end method

.method public getAccountForPjsipId(I)Lcom/csipsimple/api/SipProfile;
    .locals 4
    .param p1, "pjId"    # I

    .prologue
    .line 1547
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->getAccountIdForPjsipId(I)J

    move-result-wide v0

    .line 1548
    .local v0, "accId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1549
    const/4 v2, 0x0

    .line 1551
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v2, v0, v1}, Lcom/csipsimple/service/SipService;->getAccount(J)Lcom/csipsimple/api/SipProfile;

    move-result-object v2

    goto :goto_0
.end method

.method public getAccountIdForPjsipId(I)J
    .locals 11
    .param p1, "pjId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1522
    const-wide/16 v6, -0x1

    .line 1524
    .local v6, "accId":J
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1526
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1528
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1530
    :cond_0
    const-string v0, "pjsua_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1531
    .local v10, "pjsuaId":I
    const-string v0, "PjService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found pjsua "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " searching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    if-ne v10, p1, :cond_2

    .line 1533
    const-string v0, "account_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v6, v0

    .line 1540
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1543
    .end local v10    # "pjsuaId":I
    :cond_1
    :goto_1
    return-wide v6

    .line 1536
    .restart local v10    # "pjsuaId":I
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1529
    if-nez v0, :cond_0

    goto :goto_0

    .line 1537
    .end local v10    # "pjsuaId":I
    :catch_0
    move-exception v9

    .line 1538
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "PjService"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v9}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1540
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1539
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1540
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1541
    throw v0
.end method

.method public getActiveCallInProgress()Lcom/csipsimple/api/SipCallSession;
    .locals 1

    .prologue
    .line 1576
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-virtual {v0}, Lcom/csipsimple/pjsip/UAStateReceiver;->getActiveCallInProgress()Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 1579
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallInfo(I)Lcom/csipsimple/api/SipCallSession;
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 1353
    iget-boolean v1, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    if-eqz v1, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 1357
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCalls()[Lcom/csipsimple/api/SipCallSession;
    .locals 2

    .prologue
    .line 1389
    iget-boolean v1, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    if-eqz v1, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-virtual {v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->getCalls()[Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 1393
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/csipsimple/api/SipCallSession;

    goto :goto_0
.end method

.method public getProfileState(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfileState;
    .locals 9
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v2, 0x0

    .line 846
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-object v2

    .line 849
    :cond_1
    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 852
    new-instance v6, Lcom/csipsimple/api/SipProfileState;

    invoke-direct {v6, p1}, Lcom/csipsimple/api/SipProfileState;-><init>(Lcom/csipsimple/api/SipProfile;)V

    .line 853
    .local v6, "accountInfo":Lcom/csipsimple/api/SipProfileState;
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 854
    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 853
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 856
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 858
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 859
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 860
    invoke-virtual {v6, v7}, Lcom/csipsimple/api/SipProfileState;->createFromDb(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v2, v6

    .line 868
    goto :goto_0

    .line 862
    :catch_0
    move-exception v8

    .line 863
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "PjService"

    const-string v1, "Error on looping over sip profiles states"

    invoke-static {v0, v1, v8}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 864
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 865
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 866
    throw v0
.end method

.method public getRxTxLevel(I)J
    .locals 6
    .param p1, "port"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2066
    new-array v0, v2, [J

    .line 2067
    .local v0, "rx_level":[J
    new-array v1, v2, [J

    .line 2068
    .local v1, "tx_level":[J
    invoke-static {p1, v1, v0}, Lorg/pjsip/pjsua/pjsua;->conf_get_signal_level(I[J[J)I

    .line 2069
    aget-wide v2, v0, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    aget-wide v4, v1, v5

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public isCreated()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    return v0
.end method

.method public isRecording(I)Z
    .locals 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1932
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->call_recording_status(I)I

    move-result v0

    sget v1, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeCall(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 12
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "accountId"    # I
    .param p3, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1065
    iget-boolean v8, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v8, :cond_1

    .line 1066
    const/4 v6, -0x1

    .line 1102
    :cond_0
    :goto_0
    return v6

    .line 1069
    :cond_1
    int-to-long v8, p2

    invoke-direct {p0, p1, v8, v9}, Lcom/csipsimple/pjsip/PjSipService;->sanitizeSipUri(Ljava/lang/String;J)Lcom/csipsimple/service/SipService$ToCall;

    move-result-object v7

    .line 1070
    .local v7, "toCall":Lcom/csipsimple/service/SipService$ToCall;
    if-eqz v7, :cond_3

    .line 1071
    invoke-virtual {v7}, Lcom/csipsimple/service/SipService$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v1

    .line 1074
    .local v1, "uri":Lorg/pjsip/pjsua/pj_str_t;
    const/4 v8, 0x1

    new-array v3, v8, [B

    .line 1075
    .local v3, "userData":[B
    const/4 v8, 0x1

    new-array v5, v8, [I

    .line 1076
    .local v5, "callId":[I
    new-instance v2, Lorg/pjsip/pjsua/pjsua_call_setting;

    invoke-direct {v2}, Lorg/pjsip/pjsua/pjsua_call_setting;-><init>()V

    .line 1077
    .local v2, "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    new-instance v4, Lorg/pjsip/pjsua/pjsua_msg_data;

    invoke-direct {v4}, Lorg/pjsip/pjsua/pjsua_msg_data;-><init>()V

    .line 1078
    .local v4, "msgData":Lorg/pjsip/pjsua/pjsua_msg_data;
    invoke-virtual {v7}, Lcom/csipsimple/service/SipService$ToCall;->getPjsipAccountId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1081
    .local v0, "pjsuaAccId":I
    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->call_setting_default(Lorg/pjsip/pjsua/pjsua_call_setting;)V

    .line 1082
    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/pjsip/pjsua/pjsua_call_setting;->setAud_cnt(J)V

    .line 1083
    const-wide/16 v8, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/pjsip/pjsua/pjsua_call_setting;->setVid_cnt(J)V

    .line 1084
    if-eqz p3, :cond_2

    const-string v8, "opt_call_video"

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1085
    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/pjsip/pjsua/pjsua_call_setting;->setVid_cnt(J)V

    .line 1087
    :cond_2
    const-wide/16 v8, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/pjsip/pjsua/pjsua_call_setting;->setFlag(J)V

    .line 1089
    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->msg_data_init(Lorg/pjsip/pjsua/pjsua_msg_data;)V

    .line 1090
    invoke-static {v0, v4}, Lorg/pjsip/pjsua/pjsua;->csipsimple_init_acc_msg_data(ILorg/pjsip/pjsua/pjsua_msg_data;)I

    .line 1092
    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsua;->call_make_call(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_call_setting;[BLorg/pjsip/pjsua/pjsua_msg_data;[I)I

    move-result v6

    .line 1093
    .local v6, "status":I
    sget v8, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v6, v8, :cond_0

    .line 1094
    iget-object v8, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    const/4 v9, 0x0

    aget v9, v5, v9

    invoke-virtual {v7}, Lcom/csipsimple/service/SipService$ToCall;->getDtmf()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1095
    const-string v8, "PjService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DTMF - Store for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/csipsimple/service/SipService$ToCall;->getDtmf()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1099
    .end local v0    # "pjsuaAccId":I
    .end local v1    # "uri":Lorg/pjsip/pjsua/pj_str_t;
    .end local v2    # "cs":Lorg/pjsip/pjsua/pjsua_call_setting;
    .end local v3    # "userData":[B
    .end local v4    # "msgData":Lorg/pjsip/pjsua/pjsua_msg_data;
    .end local v5    # "callId":[I
    .end local v6    # "status":I
    :cond_3
    iget-object v8, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const v11, 0x7f0b01c4

    invoke-virtual {v10, v11}, Lcom/csipsimple/service/SipService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1100
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1099
    invoke-virtual {v8, v9}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    .line 1102
    const/4 v6, -0x1

    goto/16 :goto_0
.end method

.method public onGSMStateChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1695
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v2, :cond_0

    .line 1696
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v2}, Lcom/csipsimple/service/MediaManager;->stopRingAndUnfocus()V

    .line 1702
    :cond_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    if-eqz v2, :cond_3

    .line 1703
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-virtual {v2}, Lcom/csipsimple/pjsip/UAStateReceiver;->getActiveCallOngoing()Lcom/csipsimple/api/SipCallSession;

    move-result-object v1

    .line 1705
    .local v1, "currentActiveCall":Lcom/csipsimple/api/SipCallSession;
    if-eqz v1, :cond_1

    .line 1706
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1707
    .local v0, "am":Landroid/media/AudioManager;
    if-ne p1, v6, :cond_2

    .line 1709
    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    .line 1710
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/csipsimple/pjsip/PjSipService;->callHold(I)I

    .line 1711
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->set_no_snd_dev()Lorg/pjsip/pjsua/pjmedia_port;

    .line 1713
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setMode(I)V

    .line 1741
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "currentActiveCall":Lcom/csipsimple/api/SipCallSession;
    :cond_1
    :goto_0
    return-void

    .line 1717
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "currentActiveCall":Lcom/csipsimple/api/SipCallSession;
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    .line 1718
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1720
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v2, :cond_1

    .line 1721
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v2, v5}, Lcom/csipsimple/service/MediaManager;->playInCallTone(I)V

    goto :goto_0

    .line 1728
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "currentActiveCall":Lcom/csipsimple/api/SipCallSession;
    :cond_3
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/csipsimple/pjsip/PjSipService;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1729
    invoke-static {v4, v4}, Lorg/pjsip/pjsua/pjsua;->set_snd_dev(II)I

    .line 1730
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v5}, Lcom/csipsimple/pjsip/PjSipService;->callReinvite(IZ)I

    .line 1731
    iput-object v7, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenHoldByGSM:Ljava/lang/Integer;

    .line 1735
    :cond_4
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1736
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1737
    .restart local v0    # "am":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1738
    iput-object v7, p0, Lcom/csipsimple/pjsip/PjSipService;->hasBeenChangedRingerMode:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public playWaveFile(Ljava/lang/String;II)V
    .locals 11
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callId"    # I
    .param p3, "way"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1981
    iget-boolean v6, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v6, :cond_1

    .line 2017
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    invoke-virtual {p0, p2}, Lcom/csipsimple/pjsip/PjSipService;->stopPlaying(I)V

    .line 1988
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1995
    new-array v1, v10, [I

    .line 1996
    .local v1, "plId":[I
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v6

    const-wide/16 v7, 0x1

    invoke-static {v6, v7, v8, v1}, Lorg/pjsip/pjsua/pjsua;->player_create(Lorg/pjsip/pjsua/pj_str_t;J[I)I

    move-result v3

    .line 1998
    .local v3, "status":I
    sget v6, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v3, v6, :cond_0

    .line 2000
    aget v2, v1, v9

    .line 2001
    .local v2, "playerId":I
    iget-object v6, p0, Lcom/csipsimple/pjsip/PjSipService;->playedCalls:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2004
    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->player_get_conf_port(I)I

    move-result v5

    .line 2005
    .local v5, "wavPort":I
    and-int/lit8 v6, p3, 0x1

    if-ne v6, v10, :cond_2

    .line 2006
    invoke-virtual {p0, p2}, Lcom/csipsimple/pjsip/PjSipService;->getCallInfo(I)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 2007
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getConfPort()I

    move-result v4

    .line 2008
    .local v4, "wavConfPort":I
    invoke-static {v5, v4}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 2010
    .end local v0    # "callInfo":Lcom/csipsimple/api/SipCallSession;
    .end local v4    # "wavConfPort":I
    :cond_2
    and-int/lit8 v6, p3, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 2011
    invoke-static {v5, v9}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 2014
    :cond_3
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lorg/pjsip/pjsua/pjsua;->player_set_pos(IJ)I

    goto :goto_0
.end method

.method public removeBuddy(Ljava/lang/String;)V
    .locals 2
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1306
    iget-boolean v1, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v1, :cond_1

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v1

    invoke-static {v1}, Lorg/pjsip/pjsua/pjsua;->buddy_find(Lorg/pjsip/pjsua/pj_str_t;)I

    move-result v0

    .line 1310
    .local v0, "buddyId":I
    if-ltz v0, :cond_0

    .line 1311
    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->buddy_del(I)I

    goto :goto_0
.end method

.method public sendDtmf(II)I
    .locals 3
    .param p1, "callId"    # I
    .param p2, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1135
    iget-boolean v2, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v2, :cond_0

    .line 1136
    const/4 v2, -0x1

    .line 1152
    :goto_0
    return v2

    .line 1138
    :cond_0
    const-string v0, ""

    .line 1141
    .local v0, "keyPressed":Ljava/lang/String;
    const/4 v2, 0x7

    if-lt p2, v2, :cond_1

    const/16 v2, 0x10

    if-gt p2, v2, :cond_1

    .line 1142
    add-int/lit8 v2, p2, -0x7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1152
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/csipsimple/pjsip/PjSipService;->sendDtmf(ILjava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 1143
    :cond_1
    const/16 v2, 0x12

    if-ne p2, v2, :cond_2

    .line 1144
    const-string v0, "#"

    goto :goto_1

    .line 1145
    :cond_2
    const/16 v2, 0x11

    if-ne p2, v2, :cond_3

    .line 1146
    const-string v0, "*"

    goto :goto_1

    .line 1149
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 1150
    .local v1, "km":Landroid/view/KeyCharacterMap;
    invoke-virtual {v1, p2}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;J)Lcom/csipsimple/service/SipService$ToCall;
    .locals 8
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1256
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_1

    move-object v7, v2

    .line 1276
    :cond_0
    :goto_0
    return-object v7

    .line 1260
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/csipsimple/pjsip/PjSipService;->sanitizeSipUri(Ljava/lang/String;J)Lcom/csipsimple/service/SipService$ToCall;

    move-result-object v7

    .line 1261
    .local v7, "toCall":Lcom/csipsimple/service/SipService$ToCall;
    if-eqz v7, :cond_0

    .line 1263
    invoke-virtual {v7}, Lcom/csipsimple/service/SipService$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v1

    .line 1264
    .local v1, "uri":Lorg/pjsip/pjsua/pj_str_t;
    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v3

    .line 1271
    .local v3, "text":Lorg/pjsip/pjsua/pj_str_t;
    const/4 v0, 0x1

    new-array v5, v0, [B

    .line 1273
    .local v5, "userData":[B
    invoke-virtual {v7}, Lcom/csipsimple/service/SipService$ToCall;->getPjsipAccountId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lorg/pjsip/pjsua/pjsua;->im_send(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;[B)I

    move-result v6

    .line 1274
    .local v6, "status":I
    sget v0, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-eq v6, v0, :cond_0

    move-object v7, v2

    goto :goto_0
.end method

.method public sendPendingDtmf(I)V
    .locals 3
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1317
    const-string v1, "PjService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "DTMF - Send pending dtmf "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/pjsip/PjSipService;->sendDtmf(ILjava/lang/String;)I

    .line 1320
    :cond_0
    return-void
.end method

.method public setAccountRegistration(Lcom/csipsimple/api/SipProfile;IZ)Z
    .locals 9
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;
    .param p2, "renew"    # I
    .param p3, "forceReAdd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1438
    const/4 v1, -0x1

    .line 1439
    .local v1, "status":I
    iget-boolean v4, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    .line 1440
    :cond_0
    const-string v3, "PjService"

    const-string v4, "PJSIP is not started here, nothing can be done"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_1
    :goto_0
    return v2

    .line 1443
    :cond_2
    iget-wide v4, p1, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1444
    const-string v3, "PjService"

    const-string v4, "Trying to set registration on a deleted account"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1449
    :cond_3
    iget-object v4, p1, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    const-string v5, "LOCAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1450
    if-eqz p2, :cond_1

    .line 1455
    :cond_4
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->getProfileState(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfileState;

    move-result-object v0

    .line 1460
    .local v0, "profileState":Lcom/csipsimple/api/SipProfileState;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/csipsimple/api/SipProfileState;->isAddedToStack()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    const-string v5, "LOCAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1462
    iget-object v4, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v4}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1463
    sget-object v5, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1462
    invoke-virtual {v4, v5, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1465
    const-string v4, "PjService"

    const-string v5, "Account already added to stack, remove and re-load or delete"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    if-ne p2, v3, :cond_6

    .line 1467
    if-eqz p3, :cond_5

    .line 1468
    invoke-virtual {v0}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I

    move-result v4

    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->acc_del(I)I

    move-result v1

    .line 1469
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->addAccount(Lcom/csipsimple/api/SipProfile;)Z

    .line 1488
    :goto_1
    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    .line 1471
    :cond_5
    invoke-virtual {v0}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I

    move-result v4

    iget-object v5, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v5}, Lcom/csipsimple/service/SipService;->getPresence()Lcom/csipsimple/api/SipManager$PresenceStatus;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/csipsimple/pjsip/PjSipService;->getOnlineForStatus(Lcom/csipsimple/api/SipManager$PresenceStatus;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/pjsip/pjsua/pjsua;->acc_set_online_status(II)I

    .line 1472
    invoke-virtual {v0}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I

    move-result v4

    invoke-static {v4, p2}, Lorg/pjsip/pjsua/pjsua;->acc_set_registration(II)I

    move-result v1

    goto :goto_1

    .line 1476
    :cond_6
    const-string v4, "PjService"

    const-string v5, "Delete account !!"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v0}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I

    move-result v4

    invoke-static {v4}, Lorg/pjsip/pjsua/pjsua;->acc_del(I)I

    move-result v1

    goto :goto_1

    .line 1480
    :cond_7
    if-ne p2, v3, :cond_8

    .line 1481
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->addAccount(Lcom/csipsimple/api/SipProfile;)Z

    goto :goto_1

    .line 1483
    :cond_8
    const-string v4, "PjService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ask to unregister an unexisting account !!"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAudioInCall()V
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v0}, Lcom/csipsimple/service/MediaManager;->setAudioInCall()V

    .line 1566
    :cond_0
    return-void
.end method

.method public setBluetoothOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1361
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v0, p1}, Lcom/csipsimple/service/MediaManager;->setBluetoothOn(Z)V

    .line 1364
    :cond_0
    return-void
.end method

.method public setEchoCancellation(Z)V
    .locals 4
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1409
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1410
    const-string v0, "PjService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set echo cancelation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getEchoCancellationTail()J

    move-result-wide v0

    .line 1412
    :goto_0
    iget-object v2, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v3, "echo_mode"

    invoke-virtual {v2, v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 1411
    invoke-static {v0, v1, v2, v3}, Lorg/pjsip/pjsua/pjsua;->set_ec(JJ)I

    .line 1414
    :cond_0
    return-void

    .line 1411
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1372
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v0, p1}, Lcom/csipsimple/service/MediaManager;->setMicrophoneMute(Z)V

    .line 1375
    :cond_0
    return-void
.end method

.method public setNoSnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1831
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_0

    .line 1835
    :goto_0
    return-void

    .line 1834
    :cond_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->set_no_snd_dev()Lorg/pjsip/pjsua/pjmedia_port;

    goto :goto_0
.end method

.method public setPresence(Lcom/csipsimple/api/SipManager$PresenceStatus;Ljava/lang/String;J)V
    .locals 4
    .param p1, "presence"    # Lcom/csipsimple/api/SipManager$PresenceStatus;
    .param p2, "statusText"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1499
    iget-boolean v2, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v2, :cond_1

    .line 1500
    const-string v2, "PjService"

    const-string v3, "PJSIP is not started here, nothing can be done"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    new-instance v0, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v0}, Lcom/csipsimple/api/SipProfile;-><init>()V

    .line 1504
    .local v0, "account":Lcom/csipsimple/api/SipProfile;
    iput-wide p3, v0, Lcom/csipsimple/api/SipProfile;->id:J

    .line 1505
    invoke-virtual {p0, v0}, Lcom/csipsimple/pjsip/PjSipService;->getProfileState(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfileState;

    move-result-object v1

    .line 1510
    .local v1, "profileState":Lcom/csipsimple/api/SipProfileState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfileState;->isAddedToStack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1512
    invoke-virtual {v1}, Lcom/csipsimple/api/SipProfileState;->getPjsuaId()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->getOnlineForStatus(Lcom/csipsimple/api/SipManager$PresenceStatus;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/pjsip/pjsua/pjsua;->acc_set_online_status(II)I

    goto :goto_0
.end method

.method public setService(Lcom/csipsimple/service/SipService;)V
    .locals 1
    .param p1, "aService"    # Lcom/csipsimple/service/SipService;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    .line 129
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 130
    return-void
.end method

.method public setSnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1838
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_0

    .line 1842
    :goto_0
    return-void

    .line 1841
    :cond_0
    invoke-static {v1, v1}, Lorg/pjsip/pjsua/pjsua;->set_snd_dev(II)I

    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1383
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v0, p1}, Lcom/csipsimple/service/MediaManager;->setSpeakerphoneOn(Z)V

    .line 1386
    :cond_0
    return-void
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v0}, Lcom/csipsimple/service/MediaManager;->stopRingAndUnfocus()V

    .line 1426
    :cond_0
    return-void
.end method

.method public sipStart()Z
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v41

    invoke-static/range {v41 .. v41}, Lcom/csipsimple/utils/Log;->setLogLevel(I)V

    .line 181
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/csipsimple/pjsip/PjSipService;->hasSipStack:Z

    move/from16 v41, v0

    if-nez v41, :cond_0

    .line 182
    const-string v41, "PjService"

    const-string v42, "We have no sip stack, we can\'t start"

    invoke-static/range {v41 .. v42}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/16 v41, 0x0

    .line 559
    :goto_0
    return v41

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    move/from16 v41, v0

    if-nez v41, :cond_26

    .line 188
    const-string v41, "PjService"

    const-string v42, "Starting sip stack"

    invoke-static/range {v41 .. v42}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/16 v41, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->udpTranportId:Ljava/lang/Integer;

    .line 190
    const/16 v41, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->tcpTranportId:Ljava/lang/Integer;

    .line 191
    const/16 v41, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->tlsTransportId:Ljava/lang/Integer;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/csipsimple/utils/TimerWrapper;->create(Lcom/csipsimple/service/SipService;)V

    .line 197
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->create()I

    move-result v31

    .line 199
    .local v31, "status":I
    const-string v41, "PjService"

    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "Created "

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/csipsimple/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/16 v32, 0x0

    check-cast v32, [Lorg/pjsip/pjsua/pj_str_t;

    .line 203
    .local v32, "stunServers":[Lorg/pjsip/pjsua/pj_str_t;
    const/16 v33, 0x0

    .line 204
    .local v33, "stunServersCount":I
    new-instance v6, Lorg/pjsip/pjsua/pjsua_config;

    invoke-direct {v6}, Lorg/pjsip/pjsua/pjsua_config;-><init>()V

    .line 205
    .local v6, "cfg":Lorg/pjsip/pjsua/pjsua_config;
    new-instance v19, Lorg/pjsip/pjsua/pjsua_logging_config;

    invoke-direct/range {v19 .. v19}, Lorg/pjsip/pjsua/pjsua_logging_config;-><init>()V

    .line 206
    .local v19, "logCfg":Lorg/pjsip/pjsua/pjsua_logging_config;
    new-instance v20, Lorg/pjsip/pjsua/pjsua_media_config;

    invoke-direct/range {v20 .. v20}, Lorg/pjsip/pjsua/pjsua_media_config;-><init>()V

    .line 207
    .local v20, "mediaCfg":Lorg/pjsip/pjsua/pjsua_media_config;
    new-instance v10, Lorg/pjsip/pjsua/csipsimple_config;

    invoke-direct {v10}, Lorg/pjsip/pjsua/csipsimple_config;-><init>()V

    .line 211
    .local v10, "cssCfg":Lorg/pjsip/pjsua/csipsimple_config;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    move-object/from16 v41, v0

    if-nez v41, :cond_1

    .line 212
    const-string v41, "PjService"

    const-string v42, "create receiver...."

    invoke-static/range {v41 .. v42}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v41, Lcom/csipsimple/pjsip/UAStateReceiver;

    invoke-direct/range {v41 .. v41}, Lcom/csipsimple/pjsip/UAStateReceiver;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/csipsimple/pjsip/UAStateReceiver;->initService(Lcom/csipsimple/pjsip/PjSipService;)V

    .line 216
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    move-object/from16 v41, v0

    if-nez v41, :cond_2

    .line 217
    new-instance v41, Lcom/csipsimple/service/MediaManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v42, v0

    invoke-direct/range {v41 .. v42}, Lcom/csipsimple/service/MediaManager;-><init>(Lcom/csipsimple/service/SipService;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    .line 220
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/service/MediaManager;->startService()V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->setCallbackObject(Lorg/pjsip/pjsua/Callback;)V

    .line 224
    const-string v41, "PjService"

    const-string v42, "Attach is done to callback"

    invoke-static/range {v41 .. v42}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {v10}, Lorg/pjsip/pjsua/pjsua;->csipsimple_config_default(Lorg/pjsip/pjsua/csipsimple_config;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    .line 230
    const-string v42, "use_compact_form"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_f

    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    .line 229
    :goto_1
    move/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_compact_form_headers(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    .line 233
    const-string v42, "use_compact_form"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_10

    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    .line 232
    :goto_2
    move/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_compact_form_sdp(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    .line 236
    const-string v42, "force_no_update"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_11

    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    .line 235
    :goto_3
    move/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_no_update(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getTcpKeepAliveInterval()I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTcp_keep_alive_interval(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getTlsKeepAliveInterval()I

    move-result v41

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTls_keep_alive_interval(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "disable_tcp_switch"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_12

    sget v41, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_4
    move/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setDisable_tcp_switch(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "add_bandwidth_tias_in_sdp"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_13

    sget v41, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_5
    move/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setAdd_bandwidth_tias_in_sdp(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "tsx_t1_timeout"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v36

    .line 247
    .local v36, "tsx_to":I
    if-lez v36, :cond_3

    .line 248
    move/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTsx_t1_timeout(I)V

    .line 250
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "tsx_t2_timeout"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v36

    .line 251
    if-lez v36, :cond_4

    .line 252
    move/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTsx_t2_timeout(I)V

    .line 254
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "tsx_t4_timeout"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v36

    .line 255
    if-lez v36, :cond_5

    .line 256
    move/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTsx_t4_timeout(I)V

    .line 258
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "tsx_td_timeout"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v36

    .line 259
    if-lez v36, :cond_6

    .line 260
    move/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setTsx_td_timeout(I)V

    .line 265
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesWrapper;->getZrtpFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v40

    .line 266
    .local v40, "zrtpFolder":Ljava/io/File;
    if-eqz v40, :cond_15

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    .line 268
    const-string v42, "use_zrtp"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_14

    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_TRUE:I

    .line 267
    :goto_6
    move/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_zrtp(I)V

    .line 270
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setStorage_folder(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 276
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v41, v0

    const-string v42, "com.csipsimple.codecs.action.REGISTER_CODEC"

    invoke-static/range {v41 .. v42}, Lcom/csipsimple/utils/ExtraPlugins;->getDynPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 277
    .local v5, "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-virtual {v10}, Lorg/pjsip/pjsua/csipsimple_config;->getExtra_aud_codecs()[Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v11

    .line 278
    .local v11, "cssCodecs":[Lorg/pjsip/pjsua/dynamic_factory;
    const/4 v14, 0x0

    .line 279
    .local v14, "i":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_7
    :goto_8
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-nez v42, :cond_16

    .line 287
    int-to-long v0, v14

    move-wide/from16 v41, v0

    move-wide/from16 v0, v41

    invoke-virtual {v10, v0, v1}, Lorg/pjsip/pjsua/csipsimple_config;->setExtra_aud_codecs_cnt(J)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    .line 291
    const-string v42, "audio_implementation"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v16

    .line 292
    .local v16, "implementation":I
    const/16 v41, 0x1

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_8

    .line 293
    invoke-virtual {v10}, Lorg/pjsip/pjsua/csipsimple_config;->getAudio_implementation()Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v3

    .line 294
    .local v3, "audImp":Lorg/pjsip/pjsua/dynamic_factory;
    const-string v41, "pjmedia_opensl_factory"

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v41, v0

    .line 296
    const-string v42, "libpj_opensl_dev.so"

    .line 295
    invoke-static/range {v41 .. v42}, Lcom/csipsimple/pjsip/NativeLibManager;->getBundledStackLibFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    .line 297
    .local v24, "openslLib":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 298
    invoke-virtual {v10, v3}, Lorg/pjsip/pjsua/csipsimple_config;->setAudio_implementation(Lorg/pjsip/pjsua/dynamic_factory;)V

    .line 299
    const-string v41, "PjService"

    const-string v42, "Use OpenSL-ES implementation"

    invoke-static/range {v41 .. v42}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v3    # "audImp":Lorg/pjsip/pjsua/dynamic_factory;
    .end local v24    # "openslLib":Ljava/io/File;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "use_video"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v41, v0

    const-string v42, "com.csipsimple.plugins.action.REGISTER_VIDEO"

    invoke-static/range {v41 .. v42}, Lcom/csipsimple/utils/ExtraPlugins;->getDynPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v39

    .line 307
    .local v39, "videoPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->size()I

    move-result v41

    if-lez v41, :cond_9

    .line 308
    invoke-interface/range {v39 .. v39}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;

    .line 309
    .local v38, "videoPlugin":Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v27

    .line 310
    .local v27, "pjVideoFile":Lorg/pjsip/pjsua/pj_str_t;
    const-string v41, "PjService"

    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "Load video plugin at "

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v10}, Lorg/pjsip/pjsua/csipsimple_config;->getVideo_render_implementation()Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v37

    .line 315
    .local v37, "vidImpl":Lorg/pjsip/pjsua/dynamic_factory;
    const-string v41, "pjmedia_webrtc_vid_render_factory"

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    .line 314
    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 316
    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 320
    invoke-virtual {v10}, Lorg/pjsip/pjsua/csipsimple_config;->getVideo_capture_implementation()Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v37

    .line 322
    const-string v41, "pjmedia_webrtc_vid_capture_factory"

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    .line 321
    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 323
    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 338
    invoke-virtual {v10}, Lorg/pjsip/pjsua/csipsimple_config;->getExtra_vid_codecs()[Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v11

    .line 339
    const/16 v41, 0x0

    aget-object v41, v11, v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 340
    const/16 v41, 0x0

    aget-object v41, v11, v41

    .line 341
    const-string v42, "pjmedia_codec_ffmpeg_vid_init"

    invoke-static/range {v42 .. v42}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v42

    .line 340
    invoke-virtual/range {v41 .. v42}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 342
    invoke-virtual {v10}, Lorg/pjsip/pjsua/csipsimple_config;->getExtra_vid_codecs_destroy()[Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v11

    .line 343
    const/16 v41, 0x0

    aget-object v41, v11, v41

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 344
    const/16 v41, 0x0

    aget-object v41, v11, v41

    .line 345
    const-string v42, "pjmedia_codec_ffmpeg_vid_deinit"

    invoke-static/range {v42 .. v42}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v42

    .line 344
    invoke-virtual/range {v41 .. v42}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 346
    const-wide/16 v41, 0x1

    move-wide/from16 v0, v41

    invoke-virtual {v10, v0, v1}, Lorg/pjsip/pjsua/csipsimple_config;->setExtra_vid_codecs_cnt(J)V

    .line 349
    invoke-virtual {v10}, Lorg/pjsip/pjsua/csipsimple_config;->getVid_converter()Lorg/pjsip/pjsua/dynamic_factory;

    move-result-object v9

    .line 350
    .local v9, "convertImpl":Lorg/pjsip/pjsua/dynamic_factory;
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 352
    const-string v41, "pjmedia_libswscale_converter_init"

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    .line 351
    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 357
    .end local v9    # "convertImpl":Lorg/pjsip/pjsua/dynamic_factory;
    .end local v27    # "pjVideoFile":Lorg/pjsip/pjsua/pj_str_t;
    .end local v37    # "vidImpl":Lorg/pjsip/pjsua/dynamic_factory;
    .end local v38    # "videoPlugin":Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;
    .end local v39    # "videoPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    :cond_9
    invoke-static {v6}, Lorg/pjsip/pjsua/pjsua;->config_default(Lorg/pjsip/pjsua/pjsua_config;)V

    .line 358
    sget-object v41, Lorg/pjsip/pjsua/pjsuaConstants;->WRAPPER_CALLBACK_STRUCT:Lorg/pjsip/pjsua/pjsua_callback;

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Lorg/pjsip/pjsua/pjsua_config;->setCb(Lorg/pjsip/pjsua/pjsua_callback;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Lorg/pjsip/pjsua/pjsua_config;->setUser_agent(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "thread_count"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    move-wide/from16 v0, v41

    invoke-virtual {v6, v0, v1}, Lorg/pjsip/pjsua/pjsua_config;->setThread_cnt(J)V

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjSipService;->getUseSrtp()Lorg/pjsip/pjsua/pjmedia_srtp_use;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Lorg/pjsip/pjsua/pjsua_config;->setUse_srtp(Lorg/pjsip/pjsua/pjmedia_srtp_use;)V

    .line 365
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Lorg/pjsip/pjsua/pjsua_config;->setSrtp_secure_signaling(I)V

    .line 366
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Lorg/pjsip/pjsua/pjsua_config;->setNat_type_in_sdp(I)V

    .line 368
    invoke-virtual {v6}, Lorg/pjsip/pjsua/pjsua_config;->getTimer_setting()Lorg/pjsip/pjsua/pjsip_timer_setting;

    move-result-object v35

    .line 369
    .local v35, "timerSetting":Lorg/pjsip/pjsua/pjsip_timer_setting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "timer_min_se"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v21

    .line 370
    .local v21, "minSe":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    .line 371
    const-string v42, "timer_sess_expires"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v30

    .line 372
    .local v30, "sessExp":I
    move/from16 v0, v21

    move/from16 v1, v30

    if-gt v0, v1, :cond_a

    const/16 v41, 0x5a

    move/from16 v0, v21

    move/from16 v1, v41

    if-lt v0, v1, :cond_a

    .line 373
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v41, v0

    move-object/from16 v0, v35

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsip_timer_setting;->setMin_se(J)V

    .line 374
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v41, v0

    move-object/from16 v0, v35

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsip_timer_setting;->setSess_expires(J)V

    .line 375
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Lorg/pjsip/pjsua/pjsua_config;->setTimer_setting(Lorg/pjsip/pjsua/pjsip_timer_setting;)V

    .line 378
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->enableDNSSRV()Z

    move-result v41

    if-eqz v41, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v41

    if-nez v41, :cond_b

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjSipService;->getNameservers()[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v23

    .line 380
    .local v23, "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    if-eqz v23, :cond_17

    .line 381
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    move-wide/from16 v0, v41

    invoke-virtual {v6, v0, v1}, Lorg/pjsip/pjsua/pjsua_config;->setNameserver_count(J)V

    .line 382
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/pjsip/pjsua/pjsua_config;->setNameserver([Lorg/pjsip/pjsua/pj_str_t;)V

    .line 388
    .end local v23    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    :cond_b
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getStunEnabled()I

    move-result v17

    .line 389
    .local v17, "isStunEnabled":I
    const/16 v41, 0x1

    move/from16 v0, v17

    move/from16 v1, v41

    if-ne v0, v1, :cond_c

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    .line 391
    const-string v42, "stun_server"

    .line 390
    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 391
    const-string v42, ","

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 392
    .local v29, "servers":[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    move-wide/from16 v0, v41

    invoke-virtual {v6, v0, v1}, Lorg/pjsip/pjsua/pjsua_config;->setStun_srv_cnt(J)V

    .line 393
    invoke-virtual {v6}, Lorg/pjsip/pjsua/pjsua_config;->getStun_srv()[Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v32

    .line 394
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v42, v0

    const/16 v41, 0x0

    :goto_a
    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_18

    .line 399
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lorg/pjsip/pjsua/pjsua_config;->setStun_srv([Lorg/pjsip/pjsua/pj_str_t;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "enable_stun2"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_19

    sget v41, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    :goto_b
    move/from16 v0, v41

    invoke-virtual {v6, v0}, Lorg/pjsip/pjsua/pjsua_config;->setStun_map_use_stun2(I)V

    .line 404
    .end local v29    # "servers":[Ljava/lang/String;
    :cond_c
    invoke-static/range {v19 .. v19}, Lorg/pjsip/pjsua/pjsua;->logging_config_default(Lorg/pjsip/pjsua/pjsua_logging_config;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_logging_config;->setConsole_level(J)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_logging_config;->setLevel(J)V

    .line 407
    sget v41, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_TRUE:I

    move-object/from16 v0, v19

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_logging_config;->setMsg_logging(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "log_use_direct_file"

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesWrapper;->getLogsFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v25

    .line 411
    .local v25, "outFile":Ljava/io/File;
    if-eqz v25, :cond_d

    .line 412
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_logging_config;->setLog_filename(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 413
    const-wide/16 v41, 0x1108

    move-object/from16 v0, v19

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_logging_config;->setLog_file_flags(J)V

    .line 418
    .end local v25    # "outFile":Ljava/io/File;
    :cond_d
    invoke-static/range {v20 .. v20}, Lorg/pjsip/pjsua/pjsua;->media_config_default(Lorg/pjsip/pjsua/pjsua_media_config;)V

    .line 421
    const-wide/16 v41, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setChannel_count(J)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getAutoCloseTime()I

    move-result v41

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setSnd_auto_close_time(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getEchoCancellationTail()J

    move-result-wide v41

    move-object/from16 v0, v20

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setEc_tail_len(J)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    const-string v42, "echo_mode"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v13

    .line 426
    .local v13, "echoMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getClockRate()J

    move-result-wide v7

    .line 427
    .local v7, "clockRate":J
    const-wide/16 v41, 0x3e80

    cmp-long v41, v7, v41

    if-lez v41, :cond_e

    const/16 v41, 0x3

    move/from16 v0, v41

    if-ne v13, v0, :cond_e

    .line 430
    const/4 v13, 0x1

    .line 432
    :cond_e
    int-to-long v0, v13

    move-wide/from16 v41, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setEc_options(J)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    .line 434
    const-string v42, "enable_vad"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1a

    const/16 v41, 0x0

    .line 433
    :goto_c
    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setNo_vad(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getMediaQuality()J

    move-result-wide v41

    move-object/from16 v0, v20

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setQuality(J)V

    .line 436
    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Lorg/pjsip/pjsua/pjsua_media_config;->setClock_rate(J)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    .line 438
    const-string v42, "snd_ptime"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v41, v0

    .line 437
    move-object/from16 v0, v20

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua_media_config;->setAudio_frame_ptime(J)V

    .line 441
    const/16 v41, 0x0

    .line 440
    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setHas_ioqueue(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getIceEnabled()I

    move-result v41

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setEnable_ice(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getTurnEnabled()I

    move-result v18

    .line 448
    .local v18, "isTurnEnabled":I
    const/16 v41, 0x1

    move/from16 v0, v18

    move/from16 v1, v41

    if-ne v0, v1, :cond_1b

    .line 449
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setEnable_turn(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getTurnServer()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setTurn_server(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    .line 453
    const-string v42, "turn_username"

    invoke-virtual/range {v41 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 452
    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v42, v0

    .line 455
    const-string v43, "turn_password"

    invoke-virtual/range {v42 .. v43}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 454
    invoke-static/range {v42 .. v42}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v42

    .line 456
    const-string v43, "*"

    invoke-static/range {v43 .. v43}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v43

    invoke-virtual/range {v20 .. v20}, Lorg/pjsip/pjsua/pjsua_media_config;->getTurn_auth_cred()Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;

    move-result-object v44

    .line 451
    invoke-static/range {v41 .. v44}, Lorg/pjsip/pjsua/pjsua;->set_turn_credentials(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pj_stun_auth_cred;)I

    .line 462
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v41, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v41

    invoke-static {v6, v0, v1, v10, v2}, Lorg/pjsip/pjsua/pjsua;->csipsimple_init(Lorg/pjsip/pjsua/pjsua_config;Lorg/pjsip/pjsua/pjsua_logging_config;Lorg/pjsip/pjsua/pjsua_media_config;Lorg/pjsip/pjsua/csipsimple_config;Ljava/lang/Object;)I

    move-result v31

    .line 463
    sget v41, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    move/from16 v0, v31

    move/from16 v1, v41

    if-eq v0, v1, :cond_1c

    .line 464
    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Fail to init pjsua "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-static/range {v31 .. v31}, Lorg/pjsip/pjsua/pjsua;->get_error_message(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 464
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 466
    .local v22, "msg":Ljava/lang/String;
    const-string v41, "PjService"

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    .line 468
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjSipService;->cleanPjsua()V

    .line 469
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 231
    .end local v5    # "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v7    # "clockRate":J
    .end local v11    # "cssCodecs":[Lorg/pjsip/pjsua/dynamic_factory;
    .end local v13    # "echoMode":I
    .end local v14    # "i":I
    .end local v16    # "implementation":I
    .end local v17    # "isStunEnabled":I
    .end local v18    # "isTurnEnabled":I
    .end local v21    # "minSe":I
    .end local v22    # "msg":Ljava/lang/String;
    .end local v30    # "sessExp":I
    .end local v35    # "timerSetting":Lorg/pjsip/pjsua/pjsip_timer_setting;
    .end local v36    # "tsx_to":I
    .end local v40    # "zrtpFolder":Ljava/io/File;
    :cond_f
    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    goto/16 :goto_1

    .line 234
    :cond_10
    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    goto/16 :goto_2

    .line 237
    :cond_11
    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    goto/16 :goto_3

    .line 242
    :cond_12
    sget v41, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_4

    .line 243
    :cond_13
    sget v41, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_5

    .line 269
    .restart local v36    # "tsx_to":I
    .restart local v40    # "zrtpFolder":Ljava/io/File;
    :cond_14
    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    goto/16 :goto_6

    .line 272
    :cond_15
    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setUse_zrtp(I)V

    .line 273
    const-string v41, ""

    invoke-static/range {v41 .. v41}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v10, v0}, Lorg/pjsip/pjsua/csipsimple_config;->setStorage_folder(Lorg/pjsip/pjsua/pj_str_t;)V

    goto/16 :goto_7

    .line 279
    .restart local v5    # "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    .restart local v11    # "cssCodecs":[Lorg/pjsip/pjsua/dynamic_factory;
    .restart local v14    # "i":I
    :cond_16
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 280
    .local v4, "availableCodec":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;

    .line 281
    .local v12, "dyn":Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;
    iget-object v0, v12, Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 282
    aget-object v42, v11, v14

    iget-object v0, v12, Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;->libraryPath:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Lorg/pjsip/pjsua/dynamic_factory;->setShared_lib_path(Lorg/pjsip/pjsua/pj_str_t;)V

    .line 283
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    aget-object v42, v11, v14

    .line 284
    iget-object v0, v12, Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;->factoryInitFunction:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v43

    .line 283
    invoke-virtual/range {v42 .. v43}, Lorg/pjsip/pjsua/dynamic_factory;->setInit_factory_name(Lorg/pjsip/pjsua/pj_str_t;)V

    move v14, v15

    .end local v15    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_8

    .line 384
    .end local v4    # "availableCodec":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v12    # "dyn":Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;
    .restart local v16    # "implementation":I
    .restart local v21    # "minSe":I
    .restart local v23    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    .restart local v30    # "sessExp":I
    .restart local v35    # "timerSetting":Lorg/pjsip/pjsua/pjsip_timer_setting;
    :cond_17
    const-wide/16 v41, 0x0

    move-wide/from16 v0, v41

    invoke-virtual {v6, v0, v1}, Lorg/pjsip/pjsua/pjsua_config;->setNameserver_count(J)V

    goto/16 :goto_9

    .line 394
    .end local v23    # "nameservers":[Lorg/pjsip/pjsua/pj_str_t;
    .restart local v17    # "isStunEnabled":I
    .restart local v29    # "servers":[Ljava/lang/String;
    :cond_18
    aget-object v28, v29, v41

    .line 395
    .local v28, "server":Ljava/lang/String;
    const-string v43, "PjService"

    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "add server "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v43

    aput-object v43, v32, v33

    .line 397
    add-int/lit8 v33, v33, 0x1

    .line 394
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_a

    .line 400
    .end local v28    # "server":Ljava/lang/String;
    :cond_19
    sget v41, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    goto/16 :goto_b

    .line 434
    .end local v29    # "servers":[Ljava/lang/String;
    .restart local v7    # "clockRate":J
    .restart local v13    # "echoMode":I
    :cond_1a
    const/16 v41, 0x1

    goto/16 :goto_c

    .line 458
    .restart local v18    # "isTurnEnabled":I
    :cond_1b
    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/pjsip/pjsua/pjsua_media_config;->setEnable_turn(I)V

    goto/16 :goto_d

    .line 481
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isUDPEnabled()Z

    move-result v41

    if-eqz v41, :cond_1f

    .line 482
    sget-object v34, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_UDP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 483
    .local v34, "t":Lorg/pjsip/pjsua/pjsip_transport_type_e;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v41

    if-eqz v41, :cond_1d

    .line 484
    sget-object v34, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_UDP6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 486
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getUDPTransportPort()I

    move-result v41

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/pjsip/PjSipService;->createTransport(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->udpTranportId:Ljava/lang/Integer;

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->udpTranportId:Ljava/lang/Integer;

    move-object/from16 v41, v0

    if-nez v41, :cond_1e

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjSipService;->cleanPjsua()V

    .line 489
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 496
    :cond_1e
    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .line 497
    .local v26, "p_acc_id":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->udpTranportId:Ljava/lang/Integer;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v41

    sget v42, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    move/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua;->acc_add_local(II[I)I

    .line 498
    const/16 v41, 0x0

    aget v41, v26, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->localUdpAccPjId:Ljava/lang/Integer;

    .line 503
    .end local v26    # "p_acc_id":[I
    .end local v34    # "t":Lorg/pjsip/pjsua/pjsip_transport_type_e;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isTCPEnabled()Z

    move-result v41

    if-eqz v41, :cond_22

    .line 504
    sget-object v34, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TCP:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 505
    .restart local v34    # "t":Lorg/pjsip/pjsua/pjsip_transport_type_e;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v41

    if-eqz v41, :cond_20

    .line 506
    sget-object v34, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TCP6:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 508
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getTCPTransportPort()I

    move-result v41

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/pjsip/PjSipService;->createTransport(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->tcpTranportId:Ljava/lang/Integer;

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->tcpTranportId:Ljava/lang/Integer;

    move-object/from16 v41, v0

    if-nez v41, :cond_21

    .line 510
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjSipService;->cleanPjsua()V

    .line 511
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 516
    :cond_21
    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .line 517
    .restart local v26    # "p_acc_id":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->tcpTranportId:Ljava/lang/Integer;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v41

    sget v42, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    move/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua;->acc_add_local(II[I)I

    .line 518
    const/16 v41, 0x0

    aget v41, v26, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->localTcpAccPjId:Ljava/lang/Integer;

    .line 522
    .end local v26    # "p_acc_id":[I
    .end local v34    # "t":Lorg/pjsip/pjsua/pjsip_transport_type_e;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isTLSEnabled()Z

    move-result v41

    if-eqz v41, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->useIPv6()Z

    move-result v41

    if-nez v41, :cond_24

    .line 523
    sget-object v41, Lorg/pjsip/pjsua/pjsip_transport_type_e;->PJSIP_TRANSPORT_TLS:Lorg/pjsip/pjsua/pjsip_transport_type_e;

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getTLSTransportPort()I

    move-result v42

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/pjsip/PjSipService;->createTransport(Lorg/pjsip/pjsua/pjsip_transport_type_e;I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->tlsTransportId:Ljava/lang/Integer;

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->tlsTransportId:Ljava/lang/Integer;

    move-object/from16 v41, v0

    if-nez v41, :cond_23

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjSipService;->cleanPjsua()V

    .line 528
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 532
    :cond_23
    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .line 533
    .restart local v26    # "p_acc_id":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->tlsTransportId:Ljava/lang/Integer;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v41

    sget v42, Lorg/pjsip/pjsua/pjsua;->PJ_FALSE:I

    move/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/pjsip/pjsua/pjsua;->acc_add_local(II[I)I

    .line 534
    const/16 v41, 0x0

    aget v41, v26, v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/pjsip/PjSipService;->localTlsAccPjId:Ljava/lang/Integer;

    .line 539
    .end local v26    # "p_acc_id":[I
    :cond_24
    invoke-static {}, Lorg/pjsip/pjsua/pjsua;->start()I

    move-result v31

    .line 541
    sget v41, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    move/from16 v0, v31

    move/from16 v1, v41

    if-eq v0, v1, :cond_25

    .line 542
    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "Fail to start pjsip  "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-static/range {v31 .. v31}, Lorg/pjsip/pjsua/pjsua;->get_error_message(I)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 542
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 544
    .restart local v22    # "msg":Ljava/lang/String;
    const-string v41, "PjService"

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    .line 546
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjSipService;->cleanPjsua()V

    .line 547
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 551
    .end local v22    # "msg":Ljava/lang/String;
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjSipService;->initCodecs()V

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/csipsimple/pjsip/PjSipService;->setCodecsPriorities()V

    .line 554
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    .line 556
    const/16 v41, 0x1

    goto/16 :goto_0

    .line 559
    .end local v5    # "availableCodecs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v6    # "cfg":Lorg/pjsip/pjsua/pjsua_config;
    .end local v7    # "clockRate":J
    .end local v10    # "cssCfg":Lorg/pjsip/pjsua/csipsimple_config;
    .end local v11    # "cssCodecs":[Lorg/pjsip/pjsua/dynamic_factory;
    .end local v13    # "echoMode":I
    .end local v14    # "i":I
    .end local v16    # "implementation":I
    .end local v17    # "isStunEnabled":I
    .end local v18    # "isTurnEnabled":I
    .end local v19    # "logCfg":Lorg/pjsip/pjsua/pjsua_logging_config;
    .end local v20    # "mediaCfg":Lorg/pjsip/pjsua/pjsua_media_config;
    .end local v21    # "minSe":I
    .end local v30    # "sessExp":I
    .end local v31    # "status":I
    .end local v32    # "stunServers":[Lorg/pjsip/pjsua/pj_str_t;
    .end local v33    # "stunServersCount":I
    .end local v35    # "timerSetting":Lorg/pjsip/pjsua/pjsip_timer_setting;
    .end local v36    # "tsx_to":I
    .end local v40    # "zrtpFolder":Ljava/io/File;
    :cond_26
    const/16 v41, 0x0

    goto/16 :goto_0
.end method

.method public sipStop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 568
    const-string v0, "PjService"

    const-string v1, ">> SIP STOP <<"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/csipsimple/pjsip/PjSipService;->getActiveCallInProgress()Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    const-string v0, "PjService"

    const-string v1, "We have a call in progress... DO NOT STOP !!!"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v0, 0x0

    .line 587
    :goto_0
    return v0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    iget-object v0, v0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    iget-object v0, v0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipNotifications;->cancelRegisters()V

    .line 579
    :cond_1
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-eqz v0, :cond_2

    .line 580
    invoke-direct {p0}, Lcom/csipsimple/pjsip/PjSipService;->cleanPjsua()V

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 584
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->tasksTimer:Ljava/util/Timer;

    .line 587
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startRecording(I)V
    .locals 6
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const v5, 0x7f0b020d

    .line 1855
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->canRecord(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1871
    :goto_0
    return-void

    .line 1858
    :cond_0
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->getCallInfo(I)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 1859
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    invoke-virtual {v0}, Lcom/csipsimple/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/csipsimple/pjsip/PjSipService;->getRecordFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1860
    .local v2, "wavFile":Ljava/io/File;
    if-eqz v2, :cond_2

    .line 1861
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v1

    .line 1862
    .local v1, "filename":Lorg/pjsip/pjsua/pj_str_t;
    sget v3, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    invoke-static {p1, v1, v3}, Lorg/pjsip/pjsua/pjsua;->call_recording_start(ILorg/pjsip/pjsua/pj_str_t;I)I

    move-result v3

    sget v4, Lorg/pjsip/pjsua/pjsua;->PJ_SUCCESS:I

    if-ne v3, v4, :cond_1

    .line 1863
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v4, v5}, Lcom/csipsimple/pjsip/UAStateReceiver;->updateRecordingStatus(IZZ)V

    .line 1864
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->recordingFiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1866
    :cond_1
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v3, v5}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(I)V

    goto :goto_0

    .line 1869
    .end local v1    # "filename":Lorg/pjsip/pjsua/pj_str_t;
    :cond_2
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v3, v5}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(I)V

    goto :goto_0
.end method

.method public stopDialtoneGenerator(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1323
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;

    invoke-virtual {v0}, Lcom/csipsimple/pjsip/PjStreamDialtoneGenerator;->stopDialtoneGenerator()V

    .line 1325
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfDialtoneGenerators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfToAutoSend:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1330
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1331
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1332
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->dtmfTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1334
    :cond_2
    return-void
.end method

.method public stopPlaying(I)V
    .locals 4
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 2028
    iget-object v1, p0, Lcom/csipsimple/pjsip/PjSipService;->playedCalls:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2029
    .local v0, "playerId":I
    if-eq v0, v3, :cond_0

    .line 2030
    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->player_destroy(I)I

    .line 2031
    iget-object v1, p0, Lcom/csipsimple/pjsip/PjSipService;->playedCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2033
    :cond_0
    return-void
.end method

.method public stopRecording(I)V
    .locals 6
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1880
    iget-boolean v3, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v3, :cond_1

    .line 1897
    :cond_0
    :goto_0
    return-void

    .line 1884
    :cond_1
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->call_recording_stop(I)I

    move-result v3

    sget v4, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v3, v4, :cond_0

    .line 1885
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lcom/csipsimple/pjsip/UAStateReceiver;->updateRecordingStatus(IZZ)V

    .line 1887
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->recordingFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1888
    .local v1, "file":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1889
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->getCallInfo(I)Lcom/csipsimple/api/SipCallSession;

    move-result-object v0

    .line 1890
    .local v0, "callInfo":Lcom/csipsimple/api/SipCallSession;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.csipsimple.service.CALL_RECORDED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1891
    .local v2, "it":Landroid/content/Intent;
    const-string v3, "call_info"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1892
    const-string v3, "file_path"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1893
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v4, "android.permission.USE_SIP"

    invoke-virtual {v3, v2, v4}, Lcom/csipsimple/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1894
    iget-object v3, p0, Lcom/csipsimple/pjsip/PjSipService;->recordingFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method public tryToLoadStack()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 137
    iget-boolean v3, p0, Lcom/csipsimple/pjsip/PjSipService;->hasSipStack:Z

    if-eqz v3, :cond_0

    .line 168
    :goto_0
    return v1

    .line 142
    :cond_0
    iget-boolean v3, p0, Lcom/csipsimple/pjsip/PjSipService;->sipStackIsCorrupted:Z

    if-nez v3, :cond_1

    .line 151
    :try_start_0
    const-string v3, "stlport_shared"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 152
    const-string v3, "pjsipjni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 153
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/csipsimple/pjsip/PjSipService;->hasSipStack:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "PjService"

    .line 158
    const-string v4, "We have a problem with the current stack.... NOT YET Implemented"

    .line 157
    invoke-static {v3, v4, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    iput-boolean v2, p0, Lcom/csipsimple/pjsip/PjSipService;->hasSipStack:Z

    .line 160
    iput-boolean v1, p0, Lcom/csipsimple/pjsip/PjSipService;->sipStackIsCorrupted:Z

    .line 162
    iget-object v1, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    const-string v3, "Can\'t load native library. CPU arch invalid for this build"

    invoke-virtual {v1, v3}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(Ljava/lang/String;)V

    move v1, v2

    .line 163
    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PjService"

    const-string v3, "We have a problem with the current stack...."

    invoke-static {v1, v3, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 168
    goto :goto_0
.end method

.method public unsetAudioInCall()V
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v0}, Lcom/csipsimple/service/MediaManager;->unsetAudioInCall()V

    .line 1573
    :cond_0
    return-void
.end method

.method public updateCallOptions(ILandroid/os/Bundle;)I
    .locals 5
    .param p1, "callId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 1107
    const-string v4, "opt_call_video"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1108
    const-string v4, "opt_call_video"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1109
    .local v0, "add":Z
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->getCallInfo(I)Lcom/csipsimple/api/SipCallSession;

    move-result-object v1

    .line 1110
    .local v1, "ci":Lcom/csipsimple/api/SipCallSession;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->mediaHasVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1124
    .end local v0    # "add":Z
    .end local v1    # "ci":Lcom/csipsimple/api/SipCallSession;
    :cond_0
    :goto_0
    return v3

    .line 1113
    .restart local v0    # "add":Z
    .restart local v1    # "ci":Lcom/csipsimple/api/SipCallSession;
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/csipsimple/api/SipCallSession;->mediaHasVideo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1117
    :cond_2
    if-eqz v0, :cond_3

    sget-object v2, Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;->PJSUA_CALL_VID_STRM_ADD:Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;

    .line 1121
    .local v2, "op":Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;
    :goto_1
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/pjsip/pjsua/pjsua;->call_set_vid_strm(ILorg/pjsip/pjsua/pjsua_call_vid_strm_op;Lorg/pjsip/pjsua/pjsua_call_vid_strm_op_param;)I

    move-result v3

    goto :goto_0

    .line 1117
    .end local v2    # "op":Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;
    :cond_3
    sget-object v2, Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;->PJSUA_CALL_VID_STRM_REMOVE:Lorg/pjsip/pjsua/pjsua_call_vid_strm_op;

    goto :goto_1
.end method

.method public updateProfileStateFromService(I)V
    .locals 10
    .param p1, "pjsuaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 806
    iget-boolean v6, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v6, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    invoke-virtual {p0, p1}, Lcom/csipsimple/pjsip/PjSipService;->getAccountIdForPjsipId(I)J

    move-result-wide v0

    .line 810
    .local v0, "accId":J
    const-string v6, "PjService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Update profile from service for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " aka in db "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    .line 812
    sget v5, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_FALSE:I

    .line 814
    .local v5, "success":I
    new-instance v4, Lorg/pjsip/pjsua/pjsua_acc_info;

    invoke-direct {v4}, Lorg/pjsip/pjsua/pjsua_acc_info;-><init>()V

    .line 815
    .local v4, "pjAccountInfo":Lorg/pjsip/pjsua/pjsua_acc_info;
    invoke-static {p1, v4}, Lorg/pjsip/pjsua/pjsua;->acc_get_info(ILorg/pjsip/pjsua/pjsua_acc_info;)I

    move-result v5

    .line 816
    sget v6, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v5, v6, :cond_0

    if-eqz v4, :cond_0

    .line 817
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 822
    .local v2, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v6, "status_code"

    invoke-virtual {v4}, Lorg/pjsip/pjsua/pjsua_acc_info;->getStatus()Lorg/pjsip/pjsua/pjsip_status_code;

    move-result-object v7

    invoke-virtual {v7}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_1
    const-string v6, "status_text"

    invoke-virtual {v4}, Lorg/pjsip/pjsua/pjsua_acc_info;->getStatus_text()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v7

    invoke-static {v7}, Lcom/csipsimple/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v6, "expires"

    invoke-virtual {v4}, Lorg/pjsip/pjsua/pjsua_acc_info;->getExpires()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    iget-object v6, p0, Lcom/csipsimple/pjsip/PjSipService;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v6}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 832
    sget-object v7, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 831
    invoke-virtual {v6, v7, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 835
    const-string v6, "PjService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Profile state UP : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 823
    :catch_0
    move-exception v3

    .line 824
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "status_code"

    .line 825
    const/16 v7, 0x1f4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 824
    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public updateTransportIp(Ljava/lang/String;)V
    .locals 3
    .param p1, "oldIPAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2036
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_0

    .line 2041
    :goto_0
    return-void

    .line 2039
    :cond_0
    const-string v0, "PjService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to update my address in the current call to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v0

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->update_transport(Lorg/pjsip/pjsua/pj_str_t;)I

    goto :goto_0
.end method

.method public validateAudioClockRate(I)I
    .locals 1
    .param p1, "aClockRate"    # I

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/csipsimple/pjsip/PjSipService;->mediaManager:Lcom/csipsimple/service/MediaManager;

    invoke-virtual {v0, p1}, Lcom/csipsimple/service/MediaManager;->validateAudioClockRate(I)I

    move-result v0

    .line 1559
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public zrtpSASVerified(I)V
    .locals 1
    .param p1, "dataPtr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1751
    iget-boolean v0, p0, Lcom/csipsimple/pjsip/PjSipService;->created:Z

    if-nez v0, :cond_0

    .line 1755
    :goto_0
    return-void

    .line 1754
    :cond_0
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->jzrtp_SASVerified(I)V

    goto :goto_0
.end method

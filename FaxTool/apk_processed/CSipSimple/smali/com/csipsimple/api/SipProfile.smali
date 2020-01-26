.class public Lcom/csipsimple/api/SipProfile;
.super Ljava/lang/Object;
.source "SipProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCOUNTS_STATUS_TABLE_NAME:Ljava/lang/String; = "accounts_status"

.field public static final ACCOUNTS_TABLE_NAME:Ljava/lang/String; = "accounts"

.field public static final ACCOUNT_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.csipsimple.account"

.field public static final ACCOUNT_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.csipsimple.account"

.field public static final ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

.field public static final ACCOUNT_STATUS_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.csipsimple.account_status"

.field public static final ACCOUNT_STATUS_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.csipsimple.account_status"

.field public static final ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

.field public static final ACCOUNT_STATUS_URI:Landroid/net/Uri;

.field public static final ACCOUNT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/csipsimple/api/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final CRED_CRED_DATA_EXT_AKA:I = 0x2

.field public static final CRED_DATA_DIGEST:I = 0x1

.field public static final CRED_DATA_PLAIN_PASSWD:I = 0x0

.field public static final CRED_SCHEME_DIGEST:Ljava/lang/String; = "Digest"

.field public static final CRED_SCHEME_PGP:Ljava/lang/String; = "PGP"

.field public static final FIELD_ACC_ID:Ljava/lang/String; = "acc_id"

.field public static final FIELD_ACTIVE:Ljava/lang/String; = "active"

.field public static final FIELD_ALLOW_CONTACT_REWRITE:Ljava/lang/String; = "allow_contact_rewrite"

.field public static final FIELD_ALLOW_VIA_REWRITE:Ljava/lang/String; = "allow_via_rewrite"

.field public static final FIELD_ANDROID_GROUP:Ljava/lang/String; = "android_group"

.field public static final FIELD_CONTACT_PARAMS:Ljava/lang/String; = "contact_params"

.field public static final FIELD_CONTACT_REWRITE_METHOD:Ljava/lang/String; = "contact_rewrite_method"

.field public static final FIELD_CONTACT_URI_PARAMS:Ljava/lang/String; = "contact_uri_params"

.field public static final FIELD_DATA:Ljava/lang/String; = "data"

.field public static final FIELD_DATATYPE:Ljava/lang/String; = "datatype"

.field public static final FIELD_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final FIELD_FORCE_CONTACT:Ljava/lang/String; = "force_contact"

.field public static final FIELD_ICE_CFG_ENABLE:Ljava/lang/String; = "ice_cfg_enable"

.field public static final FIELD_ICE_CFG_USE:Ljava/lang/String; = "ice_cfg_use"

.field public static final FIELD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_KA_INTERVAL:Ljava/lang/String; = "ka_interval"

.field public static final FIELD_MEDIA_STUN_USE:Ljava/lang/String; = "media_stun_use"

.field public static final FIELD_MWI_ENABLED:Ljava/lang/String; = "mwi_enabled"

.field public static final FIELD_PIDF_TUPLE_ID:Ljava/lang/String; = "pidf_tuple_id"

.field public static final FIELD_PRIORITY:Ljava/lang/String; = "priority"

.field public static final FIELD_PROXY:Ljava/lang/String; = "proxy"

.field public static final FIELD_PUBLISH_ENABLED:Ljava/lang/String; = "publish_enabled"

.field public static final FIELD_REALM:Ljava/lang/String; = "realm"

.field public static final FIELD_REG_DELAY_BEFORE_REFRESH:Ljava/lang/String; = "reg_dbr"

.field public static final FIELD_REG_TIMEOUT:Ljava/lang/String; = "reg_timeout"

.field public static final FIELD_REG_URI:Ljava/lang/String; = "reg_uri"

.field public static final FIELD_REG_USE_PROXY:Ljava/lang/String; = "reg_use_proxy"

.field public static final FIELD_RFC5626_INSTANCE_ID:Ljava/lang/String; = "rfc5626_instance_id"

.field public static final FIELD_RFC5626_REG_ID:Ljava/lang/String; = "rfc5626_reg_id"

.field public static final FIELD_RTP_BOUND_ADDR:Ljava/lang/String; = "rtp_bound_addr"

.field public static final FIELD_RTP_ENABLE_QOS:Ljava/lang/String; = "rtp_enable_qos"

.field public static final FIELD_RTP_PORT:Ljava/lang/String; = "rtp_port"

.field public static final FIELD_RTP_PUBLIC_ADDR:Ljava/lang/String; = "rtp_public_addr"

.field public static final FIELD_RTP_QOS_DSCP:Ljava/lang/String; = "rtp_qos_dscp"

.field public static final FIELD_SCHEME:Ljava/lang/String; = "scheme"

.field public static final FIELD_SIP_STACK:Ljava/lang/String; = "sip_stack"

.field public static final FIELD_SIP_STUN_USE:Ljava/lang/String; = "sip_stun_use"

.field public static final FIELD_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final FIELD_TRY_CLEAN_REGISTERS:Ljava/lang/String; = "try_clean_reg"

.field public static final FIELD_TURN_CFG_ENABLE:Ljava/lang/String; = "turn_cfg_enable"

.field public static final FIELD_TURN_CFG_PASSWORD:Ljava/lang/String; = "turn_cfg_pwd"

.field public static final FIELD_TURN_CFG_SERVER:Ljava/lang/String; = "turn_cfg_server"

.field public static final FIELD_TURN_CFG_USE:Ljava/lang/String; = "turn_cfg_use"

.field public static final FIELD_TURN_CFG_USER:Ljava/lang/String; = "turn_cfg_user"

.field public static final FIELD_USERNAME:Ljava/lang/String; = "username"

.field public static final FIELD_USE_RFC5626:Ljava/lang/String; = "use_rfc5626"

.field public static final FIELD_USE_SRTP:Ljava/lang/String; = "use_srtp"

.field public static final FIELD_USE_ZRTP:Ljava/lang/String; = "use_zrtp"

.field public static final FIELD_VID_IN_AUTO_SHOW:Ljava/lang/String; = "vid_in_auto_show"

.field public static final FIELD_VID_OUT_AUTO_TRANSMIT:Ljava/lang/String; = "vid_out_auto_transmit"

.field public static final FIELD_VOICE_MAIL_NBR:Ljava/lang/String; = "vm_nbr"

.field public static final FIELD_WIZARD:Ljava/lang/String; = "wizard"

.field public static final GOOGLE_STACK:I = 0x1

.field public static final INVALID_ID:J = -0x1L

.field public static final LISTABLE_PROJECTION:[Ljava/lang/String;

.field public static final PJSIP_STACK:I = 0x0

.field public static final PROXIES_SEPARATOR:Ljava/lang/String; = "|"

.field private static final THIS_FILE:Ljava/lang/String; = "SipProfile"

.field public static final TRANSPORT_AUTO:I = 0x0

.field public static final TRANSPORT_TCP:I = 0x2

.field public static final TRANSPORT_TLS:I = 0x3

.field public static final TRANSPORT_UDP:I = 0x1


# instance fields
.field public acc_id:Ljava/lang/String;

.field public active:Z

.field public allow_contact_rewrite:Z

.field public allow_via_rewrite:Z

.field public android_group:Ljava/lang/String;

.field public contact_rewrite_method:I

.field public data:Ljava/lang/String;

.field public datatype:I

.field public display_name:Ljava/lang/String;

.field public force_contact:Ljava/lang/String;

.field public ice_cfg_enable:I

.field public ice_cfg_use:I

.field public icon:Landroid/graphics/Bitmap;

.field public id:J

.field public ka_interval:I

.field public media_stun_use:I

.field public mwi_enabled:Z

.field public pidf_tuple_id:Ljava/lang/String;

.field public primaryKey:I

.field public priority:I

.field public proxies:[Ljava/lang/String;

.field public publish_enabled:I

.field public realm:Ljava/lang/String;

.field public reg_delay_before_refresh:I

.field public reg_timeout:I

.field public reg_uri:Ljava/lang/String;

.field public reg_use_proxy:I

.field public rfc5626_instance_id:Ljava/lang/String;

.field public rfc5626_reg_id:Ljava/lang/String;

.field public rtp_bound_addr:Ljava/lang/String;

.field public rtp_enable_qos:I

.field public rtp_port:I

.field public rtp_public_addr:Ljava/lang/String;

.field public rtp_qos_dscp:I

.field public scheme:Ljava/lang/String;

.field public sip_stack:I

.field public sip_stun_use:I

.field public transport:Ljava/lang/Integer;

.field public try_clean_registers:I

.field public turn_cfg_enable:I

.field public turn_cfg_password:Ljava/lang/String;

.field public turn_cfg_server:Ljava/lang/String;

.field public turn_cfg_use:I

.field public turn_cfg_user:Ljava/lang/String;

.field public use_rfc5626:Z

.field public use_srtp:I

.field public use_zrtp:I

.field public username:Ljava/lang/String;

.field public vid_in_auto_show:I

.field public vid_out_auto_transmit:I

.field public vm_nbr:Ljava/lang/String;

.field public wizard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 161
    const-string v0, "content://com.csipsimple.db/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    .line 169
    const-string v0, "content://com.csipsimple.db/accounts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    .line 191
    const-string v0, "content://com.csipsimple.db/accounts_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 199
    const-string v0, "content://com.csipsimple.db/accounts_status/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_ID_URI_BASE:Landroid/net/Uri;

    .line 712
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 713
    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 714
    const-string v2, "acc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 715
    const-string v2, "active"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 716
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 717
    const-string v2, "wizard"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 718
    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 719
    const-string v2, "reg_uri"

    aput-object v2, v0, v1

    .line 712
    sput-object v0, Lcom/csipsimple/api/SipProfile;->LISTABLE_PROJECTION:[Ljava/lang/String;

    .line 1019
    new-instance v0, Lcom/csipsimple/api/SipProfile$1;

    invoke-direct {v0}, Lcom/csipsimple/api/SipProfile$1;-><init>()V

    sput-object v0, Lcom/csipsimple/api/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->primaryKey:I

    .line 730
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/csipsimple/api/SipProfile;->id:J

    .line 734
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 738
    const-string v0, "EXPERT"

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    .line 742
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 746
    iput-boolean v5, p0, Lcom/csipsimple/api/SipProfile;->active:Z

    .line 750
    const/16 v0, 0x64

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->priority:I

    .line 754
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 759
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 763
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    .line 767
    const/16 v0, 0x384

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 771
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->ka_interval:I

    .line 775
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 779
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 783
    iput-boolean v5, p0, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    .line 787
    const/4 v0, 0x2

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    .line 791
    iput-boolean v4, p0, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    .line 797
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 801
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 805
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 809
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    .line 813
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 817
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 821
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->use_srtp:I

    .line 825
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    .line 829
    const/4 v0, 0x3

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->reg_use_proxy:I

    .line 833
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->sip_stack:I

    .line 837
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 841
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->reg_delay_before_refresh:I

    .line 845
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->try_clean_registers:I

    .line 851
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 855
    iput-boolean v5, p0, Lcom/csipsimple/api/SipProfile;->use_rfc5626:Z

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 867
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->vid_in_auto_show:I

    .line 871
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->vid_out_auto_transmit:I

    .line 875
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->rtp_port:I

    .line 879
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 883
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 887
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->rtp_enable_qos:I

    .line 891
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->rtp_qos_dscp:I

    .line 895
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    .line 899
    iput-boolean v5, p0, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    .line 903
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->sip_stun_use:I

    .line 907
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->media_stun_use:I

    .line 911
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_use:I

    .line 915
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_enable:I

    .line 919
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_use:I

    .line 923
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_enable:I

    .line 927
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 931
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 935
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 938
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 939
    const-string v0, "EXPERT"

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    .line 940
    iput-boolean v5, p0, Lcom/csipsimple/api/SipProfile;->active:Z

    .line 941
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->primaryKey:I

    .line 730
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/csipsimple/api/SipProfile;->id:J

    .line 734
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 738
    const-string v0, "EXPERT"

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    .line 742
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 746
    iput-boolean v5, p0, Lcom/csipsimple/api/SipProfile;->active:Z

    .line 750
    const/16 v0, 0x64

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->priority:I

    .line 754
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 759
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 763
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    .line 767
    const/16 v0, 0x384

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 771
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->ka_interval:I

    .line 775
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 779
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 783
    iput-boolean v5, p0, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    .line 787
    const/4 v0, 0x2

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    .line 791
    iput-boolean v4, p0, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    .line 797
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 801
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 805
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 809
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    .line 813
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 817
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 821
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->use_srtp:I

    .line 825
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    .line 829
    const/4 v0, 0x3

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->reg_use_proxy:I

    .line 833
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->sip_stack:I

    .line 837
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 841
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->reg_delay_before_refresh:I

    .line 845
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->try_clean_registers:I

    .line 851
    iput-object v3, p0, Lcom/csipsimple/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 855
    iput-boolean v5, p0, Lcom/csipsimple/api/SipProfile;->use_rfc5626:Z

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 867
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->vid_in_auto_show:I

    .line 871
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->vid_out_auto_transmit:I

    .line 875
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->rtp_port:I

    .line 879
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 883
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 887
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->rtp_enable_qos:I

    .line 891
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->rtp_qos_dscp:I

    .line 895
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    .line 899
    iput-boolean v5, p0, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    .line 903
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->sip_stun_use:I

    .line 907
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->media_stun_use:I

    .line 911
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_use:I

    .line 915
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_enable:I

    .line 919
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_use:I

    .line 923
    iput v4, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_enable:I

    .line 927
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 931
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 935
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 951
    invoke-direct {p0, p1}, Lcom/csipsimple/api/SipProfile;->createFromDb(Landroid/database/Cursor;)V

    .line 952
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->primaryKey:I

    .line 730
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/csipsimple/api/SipProfile;->id:J

    .line 734
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 738
    const-string v0, "EXPERT"

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    .line 742
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 746
    iput-boolean v1, p0, Lcom/csipsimple/api/SipProfile;->active:Z

    .line 750
    const/16 v0, 0x64

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->priority:I

    .line 754
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 759
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 763
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    .line 767
    const/16 v0, 0x384

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 771
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->ka_interval:I

    .line 775
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 779
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 783
    iput-boolean v1, p0, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    .line 787
    const/4 v0, 0x2

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    .line 791
    iput-boolean v2, p0, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    .line 797
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 801
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 805
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 809
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    .line 813
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 817
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 821
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->use_srtp:I

    .line 825
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    .line 829
    const/4 v0, 0x3

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->reg_use_proxy:I

    .line 833
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->sip_stack:I

    .line 837
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 841
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->reg_delay_before_refresh:I

    .line 845
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->try_clean_registers:I

    .line 851
    iput-object v6, p0, Lcom/csipsimple/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 855
    iput-boolean v1, p0, Lcom/csipsimple/api/SipProfile;->use_rfc5626:Z

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 867
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->vid_in_auto_show:I

    .line 871
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->vid_out_auto_transmit:I

    .line 875
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->rtp_port:I

    .line 879
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 883
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 887
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->rtp_enable_qos:I

    .line 891
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->rtp_qos_dscp:I

    .line 895
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    .line 899
    iput-boolean v1, p0, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    .line 903
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->sip_stun_use:I

    .line 907
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->media_stun_use:I

    .line 911
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_use:I

    .line 915
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_enable:I

    .line 919
    iput v5, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_use:I

    .line 923
    iput v2, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_enable:I

    .line 927
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 931
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 935
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->primaryKey:I

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/csipsimple/api/SipProfile;->id:J

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/csipsimple/api/SipProfile;->active:Z

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->priority:I

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->ka_interval:I

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 976
    const-string v3, "|"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 975
    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->use_srtp:I

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    .line 983
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->sip_stack:I

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->reg_use_proxy:I

    .line 986
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    .line 987
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->reg_delay_before_refresh:I

    .line 989
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 990
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->try_clean_registers:I

    .line 991
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/csipsimple/api/SipProfile;->use_rfc5626:Z

    .line 992
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->vid_in_auto_show:I

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->vid_out_auto_transmit:I

    .line 996
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_port:I

    .line 997
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_enable_qos:I

    .line 1000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_qos_dscp:I

    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    .line 1002
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    .line 1003
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    .line 1004
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->sip_stun_use:I

    .line 1005
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->media_stun_use:I

    .line 1006
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_use:I

    .line 1007
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_enable:I

    .line 1008
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_use:I

    .line 1009
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_enable:I

    .line 1010
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 1011
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 1012
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 1013
    return-void

    :cond_0
    move v0, v2

    .line 966
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 982
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 991
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 1002
    goto :goto_3

    :cond_4
    move v1, v2

    .line 1003
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/csipsimple/api/SipProfile;)V
    .locals 0

    .prologue
    .line 960
    invoke-direct {p0, p1}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private final createFromContentValue(Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "args"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1130
    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1131
    .local v0, "tmp_i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v5, v2

    iput-wide v5, p0, Lcom/csipsimple/api/SipProfile;->id:J

    .line 1134
    :cond_0
    const-string v2, "display_name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1135
    .local v1, "tmp_s":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1136
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 1138
    :cond_1
    const-string v2, "wizard"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1139
    if-eqz v1, :cond_2

    .line 1140
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    .line 1142
    :cond_2
    const-string v2, "transport"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1143
    if-eqz v0, :cond_3

    .line 1144
    iput-object v0, p0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    .line 1147
    :cond_3
    const-string v2, "active"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1148
    if-eqz v0, :cond_32

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_31

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/csipsimple/api/SipProfile;->active:Z

    .line 1153
    :goto_1
    const-string v2, "android_group"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1154
    if-eqz v1, :cond_4

    .line 1155
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    .line 1159
    :cond_4
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1160
    if-eqz v0, :cond_5

    .line 1161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->priority:I

    .line 1163
    :cond_5
    const-string v2, "acc_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    if-eqz v1, :cond_6

    .line 1165
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    .line 1167
    :cond_6
    const-string v2, "reg_uri"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    if-eqz v1, :cond_7

    .line 1169
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    .line 1171
    :cond_7
    const-string v2, "publish_enabled"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1172
    if-eqz v0, :cond_8

    .line 1173
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    .line 1175
    :cond_8
    const-string v2, "reg_timeout"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1176
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_9

    .line 1177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    .line 1179
    :cond_9
    const-string v2, "reg_dbr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_a

    .line 1181
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->reg_delay_before_refresh:I

    .line 1184
    :cond_a
    const-string v2, "ka_interval"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_b

    .line 1186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->ka_interval:I

    .line 1188
    :cond_b
    const-string v2, "pidf_tuple_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1189
    if-eqz v1, :cond_c

    .line 1190
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    .line 1192
    :cond_c
    const-string v2, "force_contact"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1193
    if-eqz v1, :cond_d

    .line 1194
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->force_contact:Ljava/lang/String;

    .line 1196
    :cond_d
    const-string v2, "allow_contact_rewrite"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1197
    if-eqz v0, :cond_e

    .line 1198
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_33

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    .line 1200
    :cond_e
    const-string v2, "contact_rewrite_method"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1201
    if-eqz v0, :cond_f

    .line 1202
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    .line 1204
    :cond_f
    const-string v2, "allow_via_rewrite"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1205
    if-eqz v0, :cond_10

    .line 1206
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_34

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    .line 1209
    :cond_10
    const-string v2, "use_srtp"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1210
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_11

    .line 1211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->use_srtp:I

    .line 1213
    :cond_11
    const-string v2, "use_zrtp"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1214
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_12

    .line 1215
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    .line 1219
    :cond_12
    const-string v2, "proxy"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1220
    if-eqz v1, :cond_13

    .line 1221
    const-string v2, "|"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    .line 1223
    :cond_13
    const-string v2, "reg_use_proxy"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_14

    .line 1225
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->reg_use_proxy:I

    .line 1229
    :cond_14
    const-string v2, "realm"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1230
    if-eqz v1, :cond_15

    .line 1231
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    .line 1233
    :cond_15
    const-string v2, "scheme"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1234
    if-eqz v1, :cond_16

    .line 1235
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    .line 1237
    :cond_16
    const-string v2, "username"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1238
    if-eqz v1, :cond_17

    .line 1239
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    .line 1241
    :cond_17
    const-string v2, "datatype"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1242
    if-eqz v0, :cond_18

    .line 1243
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->datatype:I

    .line 1245
    :cond_18
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1246
    if-eqz v1, :cond_19

    .line 1247
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    .line 1250
    :cond_19
    const-string v2, "sip_stack"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1251
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1a

    .line 1252
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->sip_stack:I

    .line 1254
    :cond_1a
    const-string v2, "mwi_enabled"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1255
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1b

    .line 1256
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_35

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    .line 1258
    :cond_1b
    const-string v2, "vm_nbr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1259
    if-eqz v1, :cond_1c

    .line 1260
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    .line 1262
    :cond_1c
    const-string v2, "try_clean_reg"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1263
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1d

    .line 1264
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->try_clean_registers:I

    .line 1268
    :cond_1d
    const-string v2, "use_rfc5626"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1269
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1e

    .line 1270
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_36

    :goto_5
    iput-boolean v3, p0, Lcom/csipsimple/api/SipProfile;->use_rfc5626:Z

    .line 1272
    :cond_1e
    const-string v2, "rfc5626_instance_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1273
    if-eqz v1, :cond_1f

    .line 1274
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    .line 1276
    :cond_1f
    const-string v2, "rfc5626_reg_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1277
    if-eqz v1, :cond_20

    .line 1278
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    .line 1282
    :cond_20
    const-string v2, "vid_in_auto_show"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_21

    .line 1284
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->vid_in_auto_show:I

    .line 1286
    :cond_21
    const-string v2, "vid_out_auto_transmit"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1287
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_22

    .line 1288
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->vid_out_auto_transmit:I

    .line 1292
    :cond_22
    const-string v2, "rtp_port"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1293
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_23

    .line 1294
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->rtp_port:I

    .line 1296
    :cond_23
    const-string v2, "rtp_public_addr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1297
    if-eqz v1, :cond_24

    .line 1298
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    .line 1300
    :cond_24
    const-string v2, "rtp_bound_addr"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1301
    if-eqz v1, :cond_25

    .line 1302
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    .line 1304
    :cond_25
    const-string v2, "rtp_enable_qos"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1305
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_26

    .line 1306
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->rtp_enable_qos:I

    .line 1308
    :cond_26
    const-string v2, "rtp_qos_dscp"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1309
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_27

    .line 1310
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->rtp_qos_dscp:I

    .line 1314
    :cond_27
    const-string v2, "sip_stun_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1315
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_28

    .line 1316
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->sip_stun_use:I

    .line 1318
    :cond_28
    const-string v2, "media_stun_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1319
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_29

    .line 1320
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->media_stun_use:I

    .line 1322
    :cond_29
    const-string v2, "ice_cfg_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1323
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2a

    .line 1324
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_use:I

    .line 1326
    :cond_2a
    const-string v2, "ice_cfg_enable"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1327
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2b

    .line 1328
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_enable:I

    .line 1330
    :cond_2b
    const-string v2, "turn_cfg_use"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1331
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2c

    .line 1332
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_use:I

    .line 1334
    :cond_2c
    const-string v2, "ice_cfg_enable"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1335
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2d

    .line 1336
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_enable:I

    .line 1338
    :cond_2d
    const-string v2, "turn_cfg_server"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1339
    if-eqz v1, :cond_2e

    .line 1340
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    .line 1342
    :cond_2e
    const-string v2, "turn_cfg_user"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1343
    if-eqz v1, :cond_2f

    .line 1344
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    .line 1346
    :cond_2f
    const-string v2, "turn_cfg_pwd"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1347
    if-eqz v1, :cond_30

    .line 1348
    iput-object v1, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    .line 1351
    :cond_30
    return-void

    :cond_31
    move v2, v4

    .line 1149
    goto/16 :goto_0

    .line 1151
    :cond_32
    iput-boolean v3, p0, Lcom/csipsimple/api/SipProfile;->active:Z

    goto/16 :goto_1

    :cond_33
    move v2, v4

    .line 1198
    goto/16 :goto_2

    :cond_34
    move v2, v4

    .line 1206
    goto/16 :goto_3

    :cond_35
    move v2, v4

    .line 1256
    goto/16 :goto_4

    :cond_36
    move v3, v4

    .line 1270
    goto/16 :goto_5
.end method

.method private final createFromDb(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1116
    .local v0, "args":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1117
    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 1118
    return-void
.end method

.method public static getAllProfiles(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "onlyActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/csipsimple/api/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1615
    sget-object v0, Lcom/csipsimple/api/SipProfile;->LISTABLE_PROJECTION:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/csipsimple/api/SipProfile;->getAllProfiles(Landroid/content/Context;Z[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAllProfiles(Landroid/content/Context;Z[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "onlyActive"    # Z
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/csipsimple/api/SipProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1626
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1628
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    const/4 v3, 0x0

    .local v3, "selection":Ljava/lang/String;
    move-object v4, v5

    .line 1629
    check-cast v4, [Ljava/lang/String;

    .line 1630
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1631
    const-string v3, "active=?"

    .line 1632
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1633
    const-string v1, "1"

    aput-object v1, v4, v0

    .line 1636
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1638
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1640
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1642
    :cond_1
    new-instance v0, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v0, v6}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1641
    if-nez v0, :cond_1

    .line 1648
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1652
    :cond_3
    :goto_0
    return-object v8

    .line 1645
    :catch_0
    move-exception v7

    .line 1646
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SipProfile"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1648
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1647
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1648
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1649
    throw v0
.end method

.method public static getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/csipsimple/api/SipProfile;
    .locals 10
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1585
    new-instance v6, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v6}, Lcom/csipsimple/api/SipProfile;-><init>()V

    .line 1586
    .local v6, "account":Lcom/csipsimple/api/SipProfile;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 1587
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1588
    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    .line 1587
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1591
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1593
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1594
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1595
    new-instance v7, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v7, v8}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "account":Lcom/csipsimple/api/SipProfile;
    .local v7, "account":Lcom/csipsimple/api/SipProfile;
    move-object v6, v7

    .line 1600
    .end local v7    # "account":Lcom/csipsimple/api/SipProfile;
    .restart local v6    # "account":Lcom/csipsimple/api/SipProfile;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1604
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v6

    .line 1597
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1598
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SipProfile"

    const-string v1, "Something went wrong while retrieving the account"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1600
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1599
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1600
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1601
    throw v0
.end method

.method private getReadParcelableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1106
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1102
    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1034
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoRegistration()Z
    .locals 1

    .prologue
    .line 1483
    const/4 v0, 0x1

    return v0
.end method

.method public getDbContentValues()Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1366
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1368
    .local v0, "args":Landroid/content/ContentValues;
    iget-wide v4, p0, Lcom/csipsimple/api/SipProfile;->id:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 1369
    const-string v1, "id"

    iget-wide v4, p0, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1373
    :cond_0
    const-string v4, "active"

    iget-boolean v1, p0, Lcom/csipsimple/api/SipProfile;->active:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1374
    const-string v1, "wizard"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v1, "display_name"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v1, "transport"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1378
    const-string v1, "priority"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1379
    const-string v1, "acc_id"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string v1, "reg_uri"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v1, "publish_enabled"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1383
    const-string v1, "reg_timeout"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    const-string v1, "ka_interval"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->ka_interval:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1385
    const-string v1, "pidf_tuple_id"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v1, "force_contact"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->force_contact:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v4, "allow_contact_rewrite"

    iget-boolean v1, p0, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    const-string v4, "allow_via_rewrite"

    iget-boolean v1, p0, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1389
    const-string v1, "contact_rewrite_method"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1390
    const-string v1, "use_srtp"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->use_srtp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1391
    const-string v1, "use_zrtp"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1395
    iget-object v1, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1396
    const-string v1, "proxy"

    const-string v4, "|"

    iget-object v5, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    :goto_3
    const-string v1, "reg_use_proxy"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->reg_use_proxy:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1403
    const-string v1, "realm"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string v1, "scheme"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-string v1, "username"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const-string v1, "datatype"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->datatype:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1407
    iget-object v1, p0, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1408
    const-string v1, "data"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    :cond_1
    const-string v1, "sip_stack"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->sip_stack:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1412
    const-string v1, "mwi_enabled"

    iget-boolean v4, p0, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1413
    const-string v1, "vm_nbr"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string v1, "reg_dbr"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->reg_delay_before_refresh:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1415
    const-string v1, "try_clean_reg"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->try_clean_registers:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1418
    const-string v1, "rtp_bound_addr"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v1, "rtp_enable_qos"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->rtp_enable_qos:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1420
    const-string v1, "rtp_port"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->rtp_port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1421
    const-string v1, "rtp_public_addr"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v1, "rtp_qos_dscp"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->rtp_qos_dscp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1424
    const-string v1, "vid_in_auto_show"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->vid_in_auto_show:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1425
    const-string v1, "vid_out_auto_transmit"

    iget v4, p0, Lcom/csipsimple/api/SipProfile;->vid_out_auto_transmit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    const-string v1, "rfc5626_instance_id"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string v1, "rfc5626_reg_id"

    iget-object v4, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v1, "use_rfc5626"

    iget-boolean v4, p0, Lcom/csipsimple/api/SipProfile;->use_rfc5626:Z

    if-eqz v4, :cond_6

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    const-string v1, "android_group"

    iget-object v2, p0, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v1, "sip_stun_use"

    iget v2, p0, Lcom/csipsimple/api/SipProfile;->sip_stun_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1434
    const-string v1, "media_stun_use"

    iget v2, p0, Lcom/csipsimple/api/SipProfile;->media_stun_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1435
    const-string v1, "ice_cfg_use"

    iget v2, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1436
    const-string v1, "ice_cfg_enable"

    iget v2, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_enable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1437
    const-string v1, "turn_cfg_use"

    iget v2, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_use:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1438
    const-string v1, "turn_cfg_enable"

    iget v2, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_enable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1439
    const-string v1, "turn_cfg_server"

    iget-object v2, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    const-string v1, "turn_cfg_user"

    iget-object v2, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const-string v1, "turn_cfg_pwd"

    iget-object v2, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    return-object v0

    :cond_2
    move v1, v3

    .line 1373
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 1387
    goto/16 :goto_1

    :cond_4
    move v1, v3

    .line 1388
    goto/16 :goto_2

    .line 1398
    :cond_5
    const-string v1, "proxy"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    move v2, v3

    .line 1429
    goto :goto_4
.end method

.method public getDefaultDomain()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1452
    const/4 v1, 0x0

    .line 1453
    .local v1, "parsedInfo":Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;
    iget-object v2, p0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1454
    iget-object v2, p0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-static {v2}, Lcom/csipsimple/api/SipUri;->parseSipUri(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;

    move-result-object v1

    .line 1459
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1472
    :cond_1
    :goto_1
    return-object v0

    .line 1455
    :cond_2
    iget-object v2, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 1456
    iget-object v2, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/csipsimple/api/SipUri;->parseSipUri(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;

    move-result-object v1

    goto :goto_0

    .line 1463
    :cond_3
    iget-object v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1464
    iget-object v0, v1, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;->domain:Ljava/lang/String;

    .line 1465
    .local v0, "dom":Ljava/lang/String;
    iget v2, v1, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;->port:I

    const/16 v3, 0x13c4

    if-eq v2, v3, :cond_1

    .line 1466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/csipsimple/api/SipUri$ParsedSipUriInfos;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1470
    .end local v0    # "dom":Ljava/lang/String;
    :cond_4
    const-string v2, "SipProfile"

    const-string v3, "Domain not found for this account"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1492
    iget-object v1, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1493
    iget-object v1, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/csipsimple/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 1494
    .local v0, "parsed":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    iget-object v1, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1495
    iget-object v1, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    .line 1498
    .end local v0    # "parsed":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1529
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSipDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1538
    iget-object v1, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/csipsimple/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 1539
    .local v0, "parsed":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    iget-object v1, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1540
    iget-object v1, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 1542
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSipUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1562
    iget-object v1, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/csipsimple/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;

    move-result-object v0

    .line 1563
    .local v0, "parsed":Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;
    iget-object v1, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1564
    iget-object v1, v0, Lcom/csipsimple/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    .line 1566
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1042
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->primaryKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1043
    iget-wide v3, p0, Lcom/csipsimple/api/SipProfile;->id:J

    long-to-int v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    iget-boolean v0, p0, Lcom/csipsimple/api/SipProfile;->active:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1051
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->reg_timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1053
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->ka_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->pidf_tuple_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->force_contact:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1057
    const-string v0, "|"

    iget-object v3, p0, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1061
    :goto_1
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->realm:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1063
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->datatype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1065
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->use_srtp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    iget-boolean v0, p0, Lcom/csipsimple/api/SipProfile;->allow_contact_rewrite:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->contact_rewrite_method:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->sip_stack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->reg_use_proxy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->use_zrtp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1072
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->reg_delay_before_refresh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1074
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->try_clean_registers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    iget-boolean v0, p0, Lcom/csipsimple/api/SipProfile;->use_rfc5626:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_instance_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->rfc5626_reg_id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1078
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->vid_in_auto_show:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->vid_out_auto_transmit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_public_addr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_bound_addr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1083
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_enable_qos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->rtp_qos_dscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1086
    iget-boolean v0, p0, Lcom/csipsimple/api/SipProfile;->mwi_enabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1087
    iget-boolean v0, p0, Lcom/csipsimple/api/SipProfile;->allow_via_rewrite:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->sip_stun_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->media_stun_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->ice_cfg_enable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_use:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    iget v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_enable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_server:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_user:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/csipsimple/api/SipProfile;->turn_cfg_password:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/csipsimple/api/SipProfile;->getWriteParcelableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1097
    return-void

    :cond_0
    move v0, v2

    .line 1047
    goto/16 :goto_0

    .line 1059
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1066
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 1075
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 1086
    goto :goto_4

    :cond_5
    move v1, v2

    .line 1087
    goto :goto_5
.end method

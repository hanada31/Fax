.class public Lcom/csipsimple/db/DBProvider;
.super Landroid/content/ContentProvider;
.source "DBProvider.java"


# static fields
.field private static final ACCOUNTS:I = 0x1

.field private static final ACCOUNTS_ID:I = 0x2

.field private static final ACCOUNTS_STATUS:I = 0x3

.field private static final ACCOUNTS_STATUS_ID:I = 0x4

.field public static final ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_FULL_PROJECTION_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CALLLOGS:I = 0x5

.field private static final CALLLOGS_ID:I = 0x6

.field private static final FILTERS:I = 0x7

.field private static final FILTERS_ID:I = 0x8

.field private static final MESSAGES:I = 0x9

.field private static final MESSAGES_ID:I = 0xa

.field private static final MESSAGES_THREAD_SELECTION:Ljava/lang/String;

.field private static final THIS_FILE:Ljava/lang/String; = "DBProvider"

.field private static final THREADS:I = 0xb

.field private static final THREADS_ID:I = 0xc

.field private static final UNKNOWN_URI_LOG:Ljava/lang/String; = "Unknown URI "

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

.field private final profilesStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 72
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 74
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "accounts"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "accounts/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "accounts_status"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "accounts_status/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "calllogs"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "calllogs/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "outgoing_filters"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "outgoing_filters/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "messages"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "messages/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "thread"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.db"

    const-string v2, "thread/*"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 90
    const-string v2, "id"

    aput-object v2, v0, v1

    .line 92
    const-string v1, "active"

    aput-object v1, v0, v4

    const-string v1, "wizard"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 95
    const-string v2, "priority"

    aput-object v2, v0, v1

    const-string v1, "acc_id"

    aput-object v1, v0, v6

    const-string v1, "reg_uri"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    .line 96
    const-string v2, "mwi_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "publish_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reg_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ka_interval"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 97
    const-string v2, "pidf_tuple_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 98
    const-string v2, "force_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "allow_contact_rewrite"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "contact_rewrite_method"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 99
    const-string v2, "allow_via_rewrite"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 100
    const-string v2, "contact_params"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "contact_uri_params"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 101
    const-string v2, "transport"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "use_srtp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "use_zrtp"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 102
    const-string v2, "reg_dbr"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 105
    const-string v2, "rtp_port"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "rtp_public_addr"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "rtp_bound_addr"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 106
    const-string v2, "rtp_enable_qos"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "rtp_qos_dscp"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 109
    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "reg_use_proxy"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 113
    const-string v2, "realm"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "scheme"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "username"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "datatype"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 114
    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 117
    const-string v2, "sip_stack"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "vm_nbr"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 118
    const-string v2, "try_clean_reg"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "android_group"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 121
    const-string v2, "use_rfc5626"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "rfc5626_instance_id"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "rfc5626_reg_id"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 124
    const-string v2, "vid_in_auto_show"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "vid_out_auto_transmit"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 127
    const-string v2, "sip_stun_use"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "media_stun_use"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 128
    const-string v2, "ice_cfg_use"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ice_cfg_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 129
    const-string v2, "turn_cfg_use"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "turn_cfg_enable"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "turn_cfg_server"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "turn_cfg_user"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "turn_cfg_pwd"

    aput-object v2, v0, v1

    .line 89
    sput-object v0, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    .line 133
    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 134
    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    .line 136
    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    .line 138
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v7

    const/4 v1, 0x7

    .line 139
    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 140
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 141
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 142
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 143
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 144
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 145
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 149
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 150
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 153
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 156
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 157
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 160
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 161
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 164
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 167
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 170
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 171
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 172
    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 133
    sput-object v0, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION_TYPES:[Ljava/lang/Class;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(sender=? AND type IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "receiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    const-string v1, ") )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/db/DBProvider;->MESSAGES_THREAD_SELECTION:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private broadcastAccountChange(J)V
    .locals 2
    .param p1, "accountId"    # J

    .prologue
    .line 707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.csipsimple.service.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v0, "publishIntent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 709
    invoke-virtual {p0}, Lcom/csipsimple/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 710
    return-void
.end method

.method private broadcastRegistrationChange(J)V
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.csipsimple.service.REGISTRATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, "publishIntent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0}, Lcom/csipsimple/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method private getCursor([Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 12
    .param p1, "contentValues"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 676
    array-length v8, p1

    if-lez v8, :cond_3

    .line 677
    aget-object v8, p1, v9

    invoke-virtual {v8}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    .line 678
    .local v6, "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    .line 679
    .local v0, "colSize":I
    new-array v5, v0, [Ljava/lang/String;

    .line 681
    .local v5, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 682
    .local v4, "i":I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 687
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 688
    .local v1, "cursor":Landroid/database/MatrixCursor;
    array-length v10, p1

    move v8, v9

    :goto_1
    if-lt v8, v10, :cond_1

    .line 699
    .end local v0    # "colSize":I
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i":I
    .end local v5    # "keys":[Ljava/lang/String;
    .end local v6    # "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_2
    return-object v1

    .line 682
    .restart local v0    # "colSize":I
    .restart local v4    # "i":I
    .restart local v5    # "keys":[Ljava/lang/String;
    .restart local v6    # "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 683
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v4

    .line 684
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 688
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_1
    aget-object v2, p1, v8

    .line 689
    .local v2, "cv":Landroid/content/ContentValues;
    new-array v7, v0, [Ljava/lang/Object;

    .line 690
    .local v7, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 691
    invoke-virtual {v2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 695
    invoke-virtual {v1, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 688
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 691
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 692
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v7, v4

    .line 693
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 699
    .end local v0    # "colSize":I
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "i":I
    .end local v5    # "keys":[Ljava/lang/String;
    .end local v6    # "valueSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7    # "values":[Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/db/DBProvider;->mOpenHelper:Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v15}, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 239
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 240
    .local v4, "count":I
    sget-object v15, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 241
    .local v10, "matched":I
    move-object/from16 v12, p1

    .line 243
    .local v12, "regUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 245
    .local v11, "oldRegistrationsAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    packed-switch v10, :pswitch_data_0

    .line 301
    :pswitch_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Unknown URI "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 247
    :pswitch_1
    const-string v15, "accounts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 304
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 306
    const/4 v15, 0x2

    if-eq v10, v15, :cond_0

    const/4 v15, 0x4

    if-ne v10, v15, :cond_1

    .line 307
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 308
    .local v13, "rowId":J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-ltz v15, :cond_1

    .line 309
    const/4 v15, 0x2

    if-ne v10, v15, :cond_8

    .line 310
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/csipsimple/db/DBProvider;->broadcastAccountChange(J)V

    .line 316
    .end local v13    # "rowId":J
    :cond_1
    :goto_1
    const/4 v15, 0x7

    if-eq v10, v15, :cond_2

    const/16 v15, 0x8

    if-ne v10, v15, :cond_3

    .line 317
    :cond_2
    invoke-static {}, Lcom/csipsimple/models/Filter;->resetCache()V

    .line 319
    :cond_3
    const/4 v15, 0x3

    if-ne v10, v15, :cond_5

    if-eqz v11, :cond_5

    .line 320
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_9

    .line 327
    :cond_5
    return v4

    .line 250
    :pswitch_2
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "id = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, "finalWhere":Ljava/lang/String;
    const-string v15, "accounts"

    move-object/from16 v0, p3

    invoke-virtual {v5, v15, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 252
    goto :goto_0

    .line 254
    .end local v6    # "finalWhere":Ljava/lang/String;
    :pswitch_3
    const-string v15, "calllogs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 255
    goto :goto_0

    .line 257
    :pswitch_4
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "_id = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .restart local v6    # "finalWhere":Ljava/lang/String;
    const-string v15, "calllogs"

    move-object/from16 v0, p3

    invoke-virtual {v5, v15, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 259
    goto/16 :goto_0

    .line 261
    .end local v6    # "finalWhere":Ljava/lang/String;
    :pswitch_5
    const-string v15, "outgoing_filters"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 262
    goto/16 :goto_0

    .line 264
    :pswitch_6
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "_id = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    .restart local v6    # "finalWhere":Ljava/lang/String;
    const-string v15, "outgoing_filters"

    move-object/from16 v0, p3

    invoke-virtual {v5, v15, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 266
    goto/16 :goto_0

    .line 268
    .end local v6    # "finalWhere":Ljava/lang/String;
    :pswitch_7
    const-string v15, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 269
    goto/16 :goto_0

    .line 271
    :pswitch_8
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "id = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 272
    .restart local v6    # "finalWhere":Ljava/lang/String;
    const-string v15, "messages"

    move-object/from16 v0, p3

    invoke-virtual {v5, v15, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 273
    goto/16 :goto_0

    .line 275
    .end local v6    # "finalWhere":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "from":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 277
    const-string v15, "messages"

    sget-object v16, Lcom/csipsimple/db/DBProvider;->MESSAGES_THREAD_SELECTION:Ljava/lang/String;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 278
    aput-object v7, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    .line 277
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v15, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 283
    :goto_3
    sget-object v12, Lcom/csipsimple/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 284
    goto/16 :goto_0

    .line 281
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 286
    .end local v7    # "from":Ljava/lang/String;
    :pswitch_a
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "oldRegistrationsAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .restart local v11    # "oldRegistrationsAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 288
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_7

    .line 291
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 287
    monitor-exit v16

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 288
    :cond_7
    :try_start_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 289
    .local v3, "accId":Ljava/lang/Long;
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 295
    .end local v3    # "accId":Ljava/lang/Long;
    :pswitch_b
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 296
    .local v8, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 297
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    monitor-exit v16

    goto/16 :goto_0

    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v15

    .line 311
    .end local v8    # "id":J
    .restart local v13    # "rowId":J
    :cond_8
    const/4 v15, 0x4

    if-ne v10, v15, :cond_1

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/csipsimple/db/DBProvider;->broadcastRegistrationChange(J)V

    goto/16 :goto_1

    .line 320
    .end local v13    # "rowId":J
    :cond_9
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 321
    .restart local v3    # "accId":Ljava/lang/Long;
    if-eqz v3, :cond_4

    .line 322
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/db/DBProvider;->broadcastRegistrationChange(J)V

    goto/16 :goto_2

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 184
    sget-object v0, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.account"

    .line 208
    :goto_0
    return-object v0

    .line 188
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.account"

    goto :goto_0

    .line 190
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.account_status"

    goto :goto_0

    .line 192
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.account_status"

    goto :goto_0

    .line 194
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.calllog"

    goto :goto_0

    .line 196
    :pswitch_5
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.calllog"

    goto :goto_0

    .line 198
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.filter"

    goto :goto_0

    .line 200
    :pswitch_7
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.filter"

    goto :goto_0

    .line 202
    :pswitch_8
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.message"

    goto :goto_0

    .line 204
    :pswitch_9
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.message"

    goto :goto_0

    .line 206
    :pswitch_a
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.message"

    goto :goto_0

    .line 208
    :pswitch_b
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.message"

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 333
    sget-object v14, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 334
    .local v7, "matched":I
    const/4 v8, 0x0

    .line 335
    .local v8, "matchedTable":Ljava/lang/String;
    const/4 v1, 0x0

    .line 336
    .local v1, "baseInsertedUri":Landroid/net/Uri;
    packed-switch v7, :pswitch_data_0

    .line 377
    :goto_0
    :pswitch_0
    if-nez v8, :cond_1

    .line 378
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Unknown URI "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 339
    :pswitch_1
    const-string v8, "accounts"

    .line 340
    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    .line 341
    goto :goto_0

    .line 344
    :pswitch_2
    const-string v8, "calllogs"

    .line 345
    sget-object v1, Lcom/csipsimple/api/SipManager;->CALLLOG_ID_URI_BASE:Landroid/net/Uri;

    .line 346
    goto :goto_0

    .line 349
    :pswitch_3
    const-string v8, "outgoing_filters"

    .line 350
    sget-object v1, Lcom/csipsimple/api/SipManager;->FILTER_ID_URI_BASE:Landroid/net/Uri;

    .line 351
    goto :goto_0

    .line 354
    :pswitch_4
    const-string v8, "messages"

    .line 355
    sget-object v1, Lcom/csipsimple/api/SipMessage;->MESSAGE_ID_URI_BASE:Landroid/net/Uri;

    .line 356
    goto :goto_0

    .line 358
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 359
    .local v5, "id":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    monitor-enter v15

    .line 360
    :try_start_0
    new-instance v9, Lcom/csipsimple/api/SipProfileState;

    invoke-direct {v9}, Lcom/csipsimple/api/SipProfileState;-><init>()V

    .line 361
    .local v9, "ps":Lcom/csipsimple/api/SipProfileState;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 363
    .local v2, "currentValues":Landroid/content/ContentValues;
    invoke-virtual {v9, v2}, Lcom/csipsimple/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 365
    .end local v2    # "currentValues":Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/csipsimple/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 366
    invoke-virtual {v9}, Lcom/csipsimple/api/SipProfileState;->getAsContentValue()Landroid/content/ContentValues;

    move-result-object v3

    .line 367
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v14, "account_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v14, "DBProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Added "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 415
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "id":J
    .end local v9    # "ps":Lcom/csipsimple/api/SipProfileState;
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_1
    return-object p1

    .line 359
    .restart local v5    # "id":J
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 383
    .end local v5    # "id":J
    :cond_1
    if-eqz p2, :cond_a

    .line 384
    new-instance v13, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 389
    .local v13, "values":Landroid/content/ContentValues;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/db/DBProvider;->mOpenHelper:Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v14}, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 391
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v14, 0x0

    invoke-virtual {v4, v8, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 394
    .local v11, "rowId":J
    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    if-ltz v14, :cond_b

    .line 397
    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 398
    .local v10, "retUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v10, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 400
    const/4 v14, 0x1

    if-eq v7, v14, :cond_2

    const/4 v14, 0x2

    if-ne v7, v14, :cond_3

    .line 401
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/csipsimple/db/DBProvider;->broadcastAccountChange(J)V

    .line 403
    :cond_3
    const/4 v14, 0x5

    if-eq v7, v14, :cond_4

    const/4 v14, 0x6

    if-ne v7, v14, :cond_5

    .line 404
    :cond_4
    const-string v14, "calllogs"

    const-string v15, "_id IN (SELECT _id FROM calllogs ORDER BY date DESC LIMIT -1 OFFSET 500)"

    .line 406
    const/16 v16, 0x0

    .line 404
    move-object/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 408
    :cond_5
    const/4 v14, 0x3

    if-eq v7, v14, :cond_6

    const/4 v14, 0x4

    if-ne v7, v14, :cond_7

    .line 409
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/csipsimple/db/DBProvider;->broadcastRegistrationChange(J)V

    .line 411
    :cond_7
    const/4 v14, 0x7

    if-eq v7, v14, :cond_8

    const/16 v14, 0x8

    if-ne v7, v14, :cond_9

    .line 412
    :cond_8
    invoke-static {}, Lcom/csipsimple/models/Filter;->resetCache()V

    :cond_9
    move-object/from16 p1, v10

    .line 415
    goto :goto_1

    .line 386
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "retUri":Landroid/net/Uri;
    .end local v11    # "rowId":J
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_a
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .restart local v13    # "values":Landroid/content/ContentValues;
    goto :goto_2

    .line 418
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "rowId":J
    :cond_b
    new-instance v14, Landroid/database/SQLException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Failed to insert row into "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

    invoke-virtual {p0}, Lcom/csipsimple/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/db/DBProvider;->mOpenHelper:Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 427
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 428
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v9, p5

    .line 429
    .local v9, "finalSortOrder":Ljava/lang/String;
    move-object/from16 v6, p4

    .line 430
    .local v6, "finalSelectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 431
    .local v7, "finalGrouping":Ljava/lang/String;
    const/4 v8, 0x0

    .line 432
    .local v8, "finalHaving":Ljava/lang/String;
    sget-object v4, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 434
    .local v22, "type":I
    move-object/from16 v19, p1

    .line 436
    .local v19, "regUri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 437
    .local v20, "remoteUid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    .line 438
    .local v21, "selfUid":I
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 439
    const/4 v4, 0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_1

    .line 440
    :cond_0
    move-object/from16 v0, p2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_2

    .line 450
    :cond_1
    packed-switch v22, :pswitch_data_0

    .line 569
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v23, "Unknown URI "

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    :cond_2
    aget-object v17, p2, v4

    .line 441
    .local v17, "proj":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "data"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "*"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 442
    :cond_3
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Password not readable from external apps"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    .end local v17    # "proj":Ljava/lang/String;
    :pswitch_0
    const-string v4, "accounts"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 453
    if-nez p5, :cond_5

    .line 454
    const-string v9, "priority ASC"

    .line 572
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/db/DBProvider;->mOpenHelper:Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v4}, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 574
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 577
    .local v10, "c":Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v10, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 578
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_6
    :goto_2
    return-object v10

    .line 458
    :pswitch_1
    const-string v4, "accounts"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 459
    const-string v4, "id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 460
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 461
    goto :goto_1

    .line 463
    :pswitch_2
    const-string v4, "calllogs"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 464
    if-nez p5, :cond_5

    .line 465
    const-string v9, "date DESC"

    .line 467
    goto :goto_1

    .line 469
    :pswitch_3
    const-string v4, "calllogs"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 470
    const-string v4, "_id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 471
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 472
    goto :goto_1

    .line 474
    :pswitch_4
    const-string v4, "outgoing_filters"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 475
    if-nez p5, :cond_5

    .line 476
    const-string v9, "priority asc"

    .line 478
    goto :goto_1

    .line 480
    :pswitch_5
    const-string v4, "outgoing_filters"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 481
    const-string v4, "_id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 482
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 483
    goto/16 :goto_1

    .line 485
    :pswitch_6
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 486
    if-nez p5, :cond_5

    .line 487
    const-string v9, "date DESC"

    .line 489
    goto/16 :goto_1

    .line 491
    :pswitch_7
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 492
    const-string v4, "id=?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 493
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 494
    goto/16 :goto_1

    .line 496
    :pswitch_8
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 497
    if-nez p5, :cond_7

    .line 498
    const-string v9, "date DESC"

    .line 500
    :cond_7
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2    # "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 501
    const-string v5, "ROWID AS _id"

    aput-object v5, p2, v4

    const/4 v4, 0x1

    .line 502
    const-string v5, "sender"

    aput-object v5, p2, v4

    const/4 v4, 0x2

    .line 503
    const-string v5, "full_sender"

    aput-object v5, p2, v4

    const/4 v4, 0x3

    .line 504
    const-string v5, "receiver"

    aput-object v5, p2, v4

    const/4 v4, 0x4

    .line 505
    const-string v5, "CASE WHEN sender=\'SELF\' THEN receiver WHEN sender!=\'SELF\' THEN sender END AS message_ordering"

    aput-object v5, p2, v4

    const/4 v4, 0x5

    .line 511
    const-string v5, "body"

    aput-object v5, p2, v4

    const/4 v4, 0x6

    .line 512
    const-string v5, "MAX(date) AS date"

    aput-object v5, p2, v4

    const/4 v4, 0x7

    .line 513
    const-string v5, "MIN(read) AS read"

    aput-object v5, p2, v4

    const/16 v4, 0x8

    .line 515
    const-string v5, "COUNT(date) AS counter"

    aput-object v5, p2, v4

    .line 519
    .restart local p2    # "projection":[Ljava/lang/String;
    const-string v7, "message_ordering"

    .line 520
    sget-object v19, Lcom/csipsimple/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 521
    goto/16 :goto_1

    .line 523
    :pswitch_9
    const-string v4, "messages"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 524
    if-nez p5, :cond_8

    .line 525
    const-string v9, "date DESC"

    .line 527
    :cond_8
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2    # "projection":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 528
    const-string v5, "ROWID AS _id"

    aput-object v5, p2, v4

    const/4 v4, 0x1

    .line 529
    const-string v5, "sender"

    aput-object v5, p2, v4

    const/4 v4, 0x2

    .line 530
    const-string v5, "receiver"

    aput-object v5, p2, v4

    const/4 v4, 0x3

    .line 531
    const-string v5, "body"

    aput-object v5, p2, v4

    const/4 v4, 0x4

    .line 532
    const-string v5, "date"

    aput-object v5, p2, v4

    const/4 v4, 0x5

    .line 533
    const-string v5, "mime_type"

    aput-object v5, p2, v4

    const/4 v4, 0x6

    .line 534
    const-string v5, "type"

    aput-object v5, p2, v4

    const/4 v4, 0x7

    .line 535
    const-string v5, "status"

    aput-object v5, p2, v4

    const/16 v4, 0x8

    .line 536
    const-string v5, "full_sender"

    aput-object v5, p2, v4

    .line 538
    .restart local p2    # "projection":[Ljava/lang/String;
    sget-object v4, Lcom/csipsimple/db/DBProvider;->MESSAGES_THREAD_SELECTION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 540
    .local v13, "from":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    const/4 v5, 0x1

    aput-object v13, v4, v5

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Landroid/support/v4/database/DatabaseUtilsCompat;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 541
    sget-object v19, Lcom/csipsimple/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 542
    goto/16 :goto_1

    .line 544
    .end local v13    # "from":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    monitor-enter v5

    .line 545
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v12, v4, [Landroid/content/ContentValues;

    .line 546
    .local v12, "cvs":[Landroid/content/ContentValues;
    const/4 v14, 0x0

    .line 547
    .local v14, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_9

    .line 551
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/csipsimple/db/DBProvider;->getCursor([Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v10

    .line 544
    .restart local v10    # "c":Landroid/database/Cursor;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    if-eqz v10, :cond_6

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v10, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 547
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_9
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ContentValues;

    .line 548
    .local v18, "ps":Landroid/content/ContentValues;
    aput-object v18, v12, v14

    .line 549
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 544
    .end local v12    # "cvs":[Landroid/content/ContentValues;
    .end local v14    # "i":I
    .end local v18    # "ps":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 558
    :pswitch_b
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    .line 559
    .local v15, "id":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    monitor-enter v5

    .line 560
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 561
    .local v11, "cv":Landroid/content/ContentValues;
    if-nez v11, :cond_a

    .line 562
    monitor-exit v5

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 564
    :cond_a
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/ContentValues;

    const/16 v23, 0x0

    aput-object v11, v4, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/csipsimple/db/DBProvider;->getCursor([Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v10

    .line 559
    .restart local v10    # "c":Landroid/database/Cursor;
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v10, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 559
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "cv":Landroid/content/ContentValues;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 583
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/db/DBProvider;->mOpenHelper:Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v15}, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 586
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v15, Lcom/csipsimple/db/DBProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 588
    .local v11, "matched":I
    packed-switch v11, :pswitch_data_0

    .line 634
    :pswitch_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Unknown URI "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 590
    :pswitch_1
    const-string v15, "accounts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 637
    .local v3, "count":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/db/DBProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 639
    const-wide/16 v13, -0x1

    .line 640
    .local v13, "rowId":J
    const/4 v15, 0x2

    if-eq v11, v15, :cond_0

    const/4 v15, 0x4

    if-ne v11, v15, :cond_1

    .line 641
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 643
    :cond_1
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-ltz v15, :cond_3

    .line 644
    const/4 v15, 0x2

    if-ne v11, v15, :cond_8

    .line 646
    const/4 v7, 0x1

    .line 647
    .local v7, "doBroadcast":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 648
    const-string v15, "wizard"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 649
    const/4 v7, 0x0

    .line 654
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 655
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/csipsimple/db/DBProvider;->broadcastAccountChange(J)V

    .line 661
    .end local v7    # "doBroadcast":Z
    :cond_3
    :goto_2
    const/4 v15, 0x7

    if-eq v11, v15, :cond_4

    const/16 v15, 0x8

    if-ne v11, v15, :cond_5

    .line 662
    :cond_4
    invoke-static {}, Lcom/csipsimple/models/Filter;->resetCache()V

    .line 665
    :cond_5
    return v3

    .line 593
    .end local v3    # "count":I
    .end local v13    # "rowId":J
    :pswitch_2
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "id = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 594
    .local v8, "finalWhere":Ljava/lang/String;
    const-string v15, "accounts"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v6, v15, v0, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 595
    .restart local v3    # "count":I
    goto :goto_0

    .line 597
    .end local v3    # "count":I
    .end local v8    # "finalWhere":Ljava/lang/String;
    :pswitch_3
    const-string v15, "calllogs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 598
    .restart local v3    # "count":I
    goto :goto_0

    .line 600
    .end local v3    # "count":I
    :pswitch_4
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "_id = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 601
    .restart local v8    # "finalWhere":Ljava/lang/String;
    const-string v15, "calllogs"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v6, v15, v0, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 602
    .restart local v3    # "count":I
    goto/16 :goto_0

    .line 604
    .end local v3    # "count":I
    .end local v8    # "finalWhere":Ljava/lang/String;
    :pswitch_5
    const-string v15, "outgoing_filters"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 605
    .restart local v3    # "count":I
    goto/16 :goto_0

    .line 607
    .end local v3    # "count":I
    :pswitch_6
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "_id = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 608
    .restart local v8    # "finalWhere":Ljava/lang/String;
    const-string v15, "outgoing_filters"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v6, v15, v0, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 609
    .restart local v3    # "count":I
    goto/16 :goto_0

    .line 611
    .end local v3    # "count":I
    .end local v8    # "finalWhere":Ljava/lang/String;
    :pswitch_7
    const-string v15, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 612
    .restart local v3    # "count":I
    goto/16 :goto_0

    .line 614
    .end local v3    # "count":I
    :pswitch_8
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "id = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-static {v15, v0}, Landroid/support/v4/database/DatabaseUtilsCompat;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 615
    .restart local v8    # "finalWhere":Ljava/lang/String;
    const-string v15, "messages"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 616
    .restart local v3    # "count":I
    goto/16 :goto_0

    .line 618
    .end local v3    # "count":I
    .end local v8    # "finalWhere":Ljava/lang/String;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 619
    .local v9, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 620
    :try_start_0
    new-instance v12, Lcom/csipsimple/api/SipProfileState;

    invoke-direct {v12}, Lcom/csipsimple/api/SipProfileState;-><init>()V

    .line 621
    .local v12, "ps":Lcom/csipsimple/api/SipProfileState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 622
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 623
    .local v4, "currentValues":Landroid/content/ContentValues;
    invoke-virtual {v12, v4}, Lcom/csipsimple/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 625
    .end local v4    # "currentValues":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/csipsimple/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 626
    invoke-virtual {v12}, Lcom/csipsimple/api/SipProfileState;->getAsContentValue()Landroid/content/ContentValues;

    move-result-object v5

    .line 627
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v15, "account_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/db/DBProvider;->profilesStatus:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v15, "DBProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Updated "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    monitor-exit v16

    .line 631
    const/4 v3, 0x1

    .line 632
    .restart local v3    # "count":I
    goto/16 :goto_0

    .line 619
    .end local v3    # "count":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v12    # "ps":Lcom/csipsimple/api/SipProfileState;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 650
    .end local v9    # "id":J
    .restart local v3    # "count":I
    .restart local v7    # "doBroadcast":Z
    .restart local v13    # "rowId":J
    :cond_7
    const-string v15, "priority"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 651
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 657
    .end local v7    # "doBroadcast":Z
    :cond_8
    const/4 v15, 0x4

    if-ne v11, v15, :cond_3

    .line 658
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/csipsimple/db/DBProvider;->broadcastRegistrationChange(J)V

    goto/16 :goto_2

    .line 588
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

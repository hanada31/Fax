.class public Lcom/csipsimple/db/DBAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/db/DBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x22

.field private static final TABLE_ACCOUNT_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS accounts (id INTEGER PRIMARY KEY AUTOINCREMENT,active INTEGER,wizard TEXT,display_name TEXT,priority INTEGER,acc_id TEXT NOT NULL,reg_uri TEXT,mwi_enabled BOOLEAN,publish_enabled INTEGER,reg_timeout INTEGER,ka_interval INTEGER,pidf_tuple_id TEXT,force_contact TEXT,allow_contact_rewrite INTEGER,contact_rewrite_method INTEGER,contact_params TEXT,contact_uri_params TEXT,transport INTEGER,use_srtp INTEGER,use_zrtp INTEGER,proxy TEXT,reg_use_proxy INTEGER,realm TEXT,scheme TEXT,username TEXT,datatype INTEGER,data TEXT,sip_stack INTEGER,vm_nbr TEXT,reg_dbr INTEGER,try_clean_reg INTEGER,use_rfc5626 INTEGER DEFAULT 1,rfc5626_instance_id TEXT,rfc5626_reg_id TEXT,vid_in_auto_show INTEGER DEFAULT -1,vid_out_auto_transmit INTEGER DEFAULT -1,rtp_port INTEGER DEFAULT -1,rtp_enable_qos INTEGER DEFAULT -1,rtp_qos_dscp INTEGER DEFAULT -1,rtp_bound_addr TEXT,rtp_public_addr TEXT,android_group TEXT,allow_via_rewrite INTEGER DEFAULT 0,sip_stun_use INTEGER DEFAULT -1,media_stun_use INTEGER DEFAULT -1,ice_cfg_use INTEGER DEFAULT -1,ice_cfg_enable INTEGER DEFAULT 0,turn_cfg_use INTEGER DEFAULT -1,turn_cfg_enable INTEGER DEFAULT 0,turn_cfg_server TEXT,turn_cfg_user TEXT,turn_cfg_pwd TEXT);"

.field private static final TABLE_CALLLOGS_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS calllogs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,numberlabel TEXT,numbertype INTEGER,date INTEGER,duration INTEGER,new INTEGER,number TEXT,type INTEGER,account_id INTEGER,status_code INTEGER,status_text TEXT);"

.field private static final TABLE_FILTERS_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS outgoing_filters (_id INTEGER PRIMARY KEY AUTOINCREMENT,priority INTEGER,account INTEGER,matches TEXT,replace TEXT,action INTEGER);"

.field private static final TABLE_MESSAGES_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS messages (id INTEGER PRIMARY KEY AUTOINCREMENT,sender TEXT,receiver TEXT,contact TEXT,body TEXT,mime_type TEXT,type INTEGER,date INTEGER,status INTEGER,read BOOLEAN,full_sender TEXT);"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string v0, "com.csipsimple.db"

    const/4 v1, 0x0

    const/16 v2, 0x22

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 175
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 179
    const-string v0, "CREATE TABLE IF NOT EXISTS accounts (id INTEGER PRIMARY KEY AUTOINCREMENT,active INTEGER,wizard TEXT,display_name TEXT,priority INTEGER,acc_id TEXT NOT NULL,reg_uri TEXT,mwi_enabled BOOLEAN,publish_enabled INTEGER,reg_timeout INTEGER,ka_interval INTEGER,pidf_tuple_id TEXT,force_contact TEXT,allow_contact_rewrite INTEGER,contact_rewrite_method INTEGER,contact_params TEXT,contact_uri_params TEXT,transport INTEGER,use_srtp INTEGER,use_zrtp INTEGER,proxy TEXT,reg_use_proxy INTEGER,realm TEXT,scheme TEXT,username TEXT,datatype INTEGER,data TEXT,sip_stack INTEGER,vm_nbr TEXT,reg_dbr INTEGER,try_clean_reg INTEGER,use_rfc5626 INTEGER DEFAULT 1,rfc5626_instance_id TEXT,rfc5626_reg_id TEXT,vid_in_auto_show INTEGER DEFAULT -1,vid_out_auto_transmit INTEGER DEFAULT -1,rtp_port INTEGER DEFAULT -1,rtp_enable_qos INTEGER DEFAULT -1,rtp_qos_dscp INTEGER DEFAULT -1,rtp_bound_addr TEXT,rtp_public_addr TEXT,android_group TEXT,allow_via_rewrite INTEGER DEFAULT 0,sip_stun_use INTEGER DEFAULT -1,media_stun_use INTEGER DEFAULT -1,ice_cfg_use INTEGER DEFAULT -1,ice_cfg_enable INTEGER DEFAULT 0,turn_cfg_use INTEGER DEFAULT -1,turn_cfg_enable INTEGER DEFAULT 0,turn_cfg_server TEXT,turn_cfg_user TEXT,turn_cfg_pwd TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v0, "CREATE TABLE IF NOT EXISTS calllogs (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,numberlabel TEXT,numbertype INTEGER,date INTEGER,duration INTEGER,new INTEGER,number TEXT,type INTEGER,account_id INTEGER,status_code INTEGER,status_text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string v0, "CREATE TABLE IF NOT EXISTS outgoing_filters (_id INTEGER PRIMARY KEY AUTOINCREMENT,priority INTEGER,account INTEGER,matches TEXT,replace TEXT,action INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v0, "CREATE TABLE IF NOT EXISTS messages (id INTEGER PRIMARY KEY AUTOINCREMENT,sender TEXT,receiver TEXT,contact TEXT,body TEXT,mime_type TEXT,type INTEGER,date INTEGER,status INTEGER,read BOOLEAN,full_sender TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v4, 0x1e

    .line 187
    const-string v1, "SIP ACC_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upgrading database from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 190
    const-string v1, "DROP TABLE IF EXISTS accounts"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    :cond_0
    const/4 v1, 0x5

    if-ge p2, v1, :cond_1

    .line 194
    :try_start_0
    const-string v1, "ALTER TABLE accounts ADD ka_interval INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_1
    :goto_0
    const/4 v1, 0x6

    if-ge p2, v1, :cond_2

    .line 200
    const-string v1, "DROP TABLE IF EXISTS outgoing_filters"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    :cond_2
    const/16 v1, 0xa

    if-ge p2, v1, :cond_3

    .line 204
    :try_start_1
    const-string v1, "ALTER TABLE accounts ADD allow_contact_rewrite INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 206
    const-string v1, "ALTER TABLE accounts ADD contact_rewrite_method INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :cond_3
    :goto_1
    const/16 v1, 0xd

    if-ge p2, v1, :cond_4

    .line 214
    :try_start_2
    const-string v1, "ALTER TABLE accounts ADD transport INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    const-string v1, "UPDATE accounts SET transport=1 WHERE prevent_tcp=1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    const-string v1, "UPDATE accounts SET transport=2 WHERE use_tcp=1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    const-string v1, "UPDATE accounts SET transport=0 WHERE use_tcp=0 AND prevent_tcp=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 223
    :cond_4
    :goto_2
    const/16 v1, 0x11

    if-ge p2, v1, :cond_5

    .line 225
    :try_start_3
    const-string v1, "UPDATE accounts SET ka_interval=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 230
    :cond_5
    :goto_3
    const/16 v1, 0x12

    if-ge p2, v1, :cond_6

    .line 233
    :try_start_4
    const-string v1, "UPDATE accounts SET transport=1 WHERE transport=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 238
    :cond_6
    :goto_4
    const/16 v1, 0x16

    if-ge p2, v1, :cond_7

    .line 241
    :try_start_5
    const-string v1, "ALTER TABLE accounts ADD reg_use_proxy INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    const-string v1, "UPDATE accounts SET reg_use_proxy=3"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    const-string v1, "ALTER TABLE accounts ADD sip_stack INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    const-string v1, "UPDATE accounts SET sip_stack=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 253
    :cond_7
    :goto_5
    const/16 v1, 0x17

    if-ge p2, v1, :cond_8

    .line 256
    :try_start_6
    const-string v1, "ALTER TABLE accounts ADD use_zrtp INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    const-string v1, "UPDATE accounts SET use_zrtp=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 263
    :cond_8
    :goto_6
    const/16 v1, 0x18

    if-ge p2, v1, :cond_9

    .line 266
    :try_start_7
    const-string v1, "ALTER TABLE accounts ADD vm_nbr TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    const-string v1, "UPDATE accounts SET vm_nbr=\'\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 274
    :cond_9
    :goto_7
    const/16 v1, 0x19

    if-ge p2, v1, :cond_a

    .line 277
    :try_start_8
    const-string v1, "ALTER TABLE messages ADD full_sender TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    const-string v1, "UPDATE messages SET full_sender=sender"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 285
    :cond_a
    :goto_8
    const/16 v1, 0x1a

    if-ge p2, v1, :cond_b

    .line 288
    :try_start_9
    const-string v1, "accounts"

    const-string v2, "reg_dbr"

    const-string v3, "INTEGER DEFAULT -1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "UPDATE accounts SET reg_dbr=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 295
    :cond_b
    :goto_9
    const/16 v1, 0x1b

    if-ge p2, v1, :cond_c

    .line 298
    :try_start_a
    const-string v1, "accounts"

    const-string v2, "try_clean_reg"

    const-string v3, "INTEGER DEFAULT 0"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "UPDATE accounts SET try_clean_reg=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a

    .line 305
    :cond_c
    :goto_a
    const/16 v1, 0x1c

    if-ge p2, v1, :cond_d

    .line 308
    :try_start_b
    const-string v1, "calllogs"

    const-string v2, "account_id"

    const-string v3, "INTEGER"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "calllogs"

    const-string v2, "status_code"

    const-string v3, "INTEGER"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "UPDATE calllogs SET status_code=200"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    const-string v1, "calllogs"

    const-string v2, "status_text"

    const-string v3, "TEXT"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_b

    .line 319
    :cond_d
    :goto_b
    if-ge p2, v4, :cond_e

    .line 322
    :try_start_c
    const-string v1, "accounts"

    const-string v2, "use_rfc5626"

    const-string v3, "INTEGER DEFAULT 1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "accounts"

    const-string v2, "rfc5626_instance_id"

    const-string v3, "TEXT"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "accounts"

    const-string v2, "rfc5626_reg_id"

    const-string v3, "TEXT"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "accounts"

    const-string v2, "vid_in_auto_show"

    const-string v3, "INTEGER DEFAULT -1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "accounts"

    const-string v2, "vid_out_auto_transmit"

    const-string v3, "INTEGER DEFAULT -1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v1, "accounts"

    const-string v2, "rtp_port"

    const-string v3, "INTEGER DEFAULT -1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v1, "accounts"

    const-string v2, "rtp_enable_qos"

    const-string v3, "INTEGER DEFAULT -1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v1, "accounts"

    const-string v2, "rtp_qos_dscp"

    const-string v3, "INTEGER DEFAULT -1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "accounts"

    const-string v2, "rtp_public_addr"

    const-string v3, "TEXT"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "accounts"

    const-string v2, "rtp_bound_addr"

    const-string v3, "TEXT"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_c

    .line 342
    :cond_e
    :goto_c
    if-ne p2, v4, :cond_f

    .line 344
    :try_start_d
    const-string v1, "messages"

    const-string v2, "mime_type"

    const-string v3, "TEXT"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "UPDATE messages SET mime_type=\'text/plain\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_d

    .line 351
    :cond_f
    :goto_d
    const/16 v1, 0x20

    if-ge p2, v1, :cond_10

    .line 354
    :try_start_e
    const-string v1, "accounts"

    const-string v2, "android_group"

    const-string v3, "TEXT"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_e

    .line 360
    :cond_10
    :goto_e
    const/16 v1, 0x21

    if-ge p2, v1, :cond_11

    .line 362
    :try_start_f
    const-string v1, "accounts"

    const-string v2, "allow_via_rewrite"

    const-string v3, "INTEGER DEFAULT 0"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "UPDATE accounts SET allow_via_rewrite=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_f

    .line 369
    :cond_11
    :goto_f
    const/16 v1, 0x22

    if-ge p2, v1, :cond_12

    .line 371
    :try_start_10
    const-string v1, "accounts"

    const-string v2, "sip_stun_use"

    const-string v3, "INTEGER DEFAULT -1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v1, "accounts"

    const-string v2, "media_stun_use"

    const-string v3, "INTEGER DEFAULT -1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v1, "accounts"

    const-string v2, "ice_cfg_use"

    const-string v3, "INTEGER DEFAULT -1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v1, "accounts"

    const-string v2, "ice_cfg_enable"

    const-string v3, "INTEGER DEFAULT 0"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v1, "accounts"

    const-string v2, "turn_cfg_use"

    const-string v3, "INTEGER DEFAULT -1"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "accounts"

    const-string v2, "turn_cfg_enable"

    const-string v3, "INTEGER DEFAULT 0"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v1, "accounts"

    const-string v2, "turn_cfg_server"

    const-string v3, "TEXT"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "accounts"

    const-string v2, "turn_cfg_user"

    const-string v3, "TEXT"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "accounts"

    const-string v2, "turn_cfg_pwd"

    const-string v3, "TEXT"

    invoke-static {p1, v1, v2, v3}, Lcom/csipsimple/db/DBAdapter;->access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "UPDATE accounts SET sip_stun_use=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    const-string v1, "UPDATE accounts SET media_stun_use=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    const-string v1, "UPDATE accounts SET ice_cfg_use=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 384
    const-string v1, "UPDATE accounts SET ice_cfg_enable=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 385
    const-string v1, "UPDATE accounts SET turn_cfg_use=-1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 386
    const-string v1, "UPDATE accounts SET turn_cfg_enable=0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 388
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade done"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_10

    .line 393
    :cond_12
    :goto_10
    invoke-virtual {p0, p1}, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 394
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 208
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 209
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 218
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v0

    .line 219
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 226
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v0

    .line 227
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 234
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_4
    move-exception v0

    .line 235
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 249
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_5
    move-exception v0

    .line 250
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 259
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_6
    move-exception v0

    .line 260
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 270
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_7
    move-exception v0

    .line 271
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 281
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_8
    move-exception v0

    .line 282
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 291
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_9
    move-exception v0

    .line 292
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 301
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_a
    move-exception v0

    .line 302
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 315
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_b
    move-exception v0

    .line 316
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 337
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_c
    move-exception v0

    .line 338
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 346
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_d
    move-exception v0

    .line 347
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 356
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_e
    move-exception v0

    .line 357
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 365
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_f
    move-exception v0

    .line 366
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 389
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_10
    move-exception v0

    .line 390
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIP ACC_DB"

    const-string v2, "Upgrade fail... maybe a crappy rom..."

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10
.end method

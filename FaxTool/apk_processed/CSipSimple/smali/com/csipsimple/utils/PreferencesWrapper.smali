.class public Lcom/csipsimple/utils/PreferencesWrapper;
.super Ljava/lang/Object;
.source "PreferencesWrapper.java"


# static fields
.field public static final BACKUP_PREFIX:Ljava/lang/String; = "backup_"

.field private static final BOOLEAN_PREFS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODECS_LIST:Ljava/lang/String; = "codecs_list"

.field public static final CODECS_SEPARATOR:Ljava/lang/String; = "|"

.field public static final CODECS_VIDEO_LIST:Ljava/lang/String; = "codecs_video_list"

.field private static final CONFIG_FOLDER:Ljava/lang/String; = "configs"

.field private static final FLOAT_PREFS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final HAS_ALREADY_SETUP:Ljava/lang/String; = "has_already_setup"

.field public static final HAS_ALREADY_SETUP_SERVICE:Ljava/lang/String; = "has_already_setup_service"

.field public static final HAS_BEEN_QUIT:Ljava/lang/String; = "has_been_quit"

.field private static HAS_MANAGED_VERSION_UPGRADE:Z = false

.field public static final IS_ADVANCED_USER:Ljava/lang/String; = "is_advanced_user"

.field public static final LAST_KNOWN_ANDROID_VERSION_PREF:Ljava/lang/String; = "last_known_aos_version"

.field public static final LAST_KNOWN_VERSION_PREF:Ljava/lang/String; = "last_known_version"

.field public static final LIB_CAP_SRTP:Ljava/lang/String; = "cap_srtp"

.field public static final LIB_CAP_TLS:Ljava/lang/String; = "cap_tls"

.field private static final LOGS_FOLDER:Ljava/lang/String; = "logs"

.field private static final RECORDS_FOLDER:Ljava/lang/String; = "records"

.field public static final STRING_PREFS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final THIS_FILE:Ljava/lang/String; = "PreferencesWrapper"


# instance fields
.field private context:Landroid/content/Context;

.field private prefs:Landroid/content/SharedPreferences;

.field private resolver:Landroid/content/ContentResolver;

.field private sharedEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/csipsimple/utils/PreferencesWrapper$1;

    invoke-direct {v0}, Lcom/csipsimple/utils/PreferencesWrapper$1;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    .line 132
    new-instance v0, Lcom/csipsimple/utils/PreferencesWrapper$2;

    invoke-direct {v0}, Lcom/csipsimple/utils/PreferencesWrapper$2;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    .line 210
    new-instance v0, Lcom/csipsimple/utils/PreferencesWrapper$3;

    invoke-direct {v0}, Lcom/csipsimple/utils/PreferencesWrapper$3;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    .line 220
    const/4 v0, 0x0

    sput-boolean v0, Lcom/csipsimple/utils/PreferencesWrapper;->HAS_MANAGED_VERSION_UPGRADE:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->context:Landroid/content/Context;

    .line 224
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/utils/PreferencesWrapper;->resolver:Landroid/content/ContentResolver;

    .line 229
    sget-boolean v2, Lcom/csipsimple/utils/PreferencesWrapper;->HAS_MANAGED_VERSION_UPGRADE:Z

    if-nez v2, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->needUpgrade()Ljava/lang/Integer;

    move-result-object v1

    .line 231
    .local v1, "runningVersion":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 232
    iget-object v2, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_known_version"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/csipsimple/utils/PreferencesWrapper;->HAS_MANAGED_VERSION_UPGRADE:Z

    .line 238
    .end local v1    # "runningVersion":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public static cleanLogsFiles(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 715
    invoke-static {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->getLogsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 716
    .local v2, "logsFolder":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 718
    .local v1, "files":[Ljava/io/File;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 724
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    return-void

    .line 718
    .restart local v1    # "files":[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v3

    .line 719
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 720
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 718
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static gPrefBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "aPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 356
    if-nez p0, :cond_0

    .line 357
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 365
    :goto_0
    return-object v0

    .line 359
    :cond_0
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_1
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gPrefClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 383
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const-class v0, Ljava/lang/String;

    .line 390
    :goto_0
    return-object v0

    .line 385
    :cond_0
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    const-class v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 387
    :cond_1
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    const-class v0, Ljava/lang/Float;

    goto :goto_0

    .line 390
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static gPrefFloatValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "aPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 370
    if-nez p0, :cond_0

    .line 371
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 379
    :goto_0
    return-object v0

    .line 373
    :cond_0
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_1
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static gPrefStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aPrefs"    # Landroid/content/SharedPreferences;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 345
    if-nez p0, :cond_0

    .line 346
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    :goto_0
    return-object v0

    .line 348
    :cond_0
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    sget-object v0, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConfigFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 680
    const-string v0, "configs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLogsFile(Landroid/content/Context;Z)Ljava/io/File;
    .locals 6
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "isPjsip"    # Z

    .prologue
    .line 692
    invoke-static {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->getLogsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 693
    .local v1, "dir":Ljava/io/File;
    const/4 v3, 0x0

    .line 694
    .local v3, "outFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 695
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 696
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 697
    .local v2, "fileName":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 698
    const-string v4, "pjsip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    :cond_0
    const-string v4, "logs_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 701
    const-string v4, "yy-MM-dd_kkmmss"

    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 702
    const-string v4, ".txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 703
    new-instance v3, Ljava/io/File;

    .end local v3    # "outFile":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 706
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "fileName":Ljava/lang/StringBuffer;
    .restart local v3    # "outFile":Ljava/io/File;
    :cond_1
    return-object v3
.end method

.method public static getLogsFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 688
    const-string v0, "logs"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordsFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 684
    const-string v0, "records"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getStorageFolder(Landroid/content/Context;Z)Ljava/io/File;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "preferCache"    # Z

    .prologue
    .line 652
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 653
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 654
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 657
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 658
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CSipSimple"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 660
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 661
    const-string v2, "PreferencesWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Create directory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .end local v0    # "dir":Ljava/io/File;
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSubFolder(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .locals 4
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "subFolder"    # Ljava/lang/String;
    .param p2, "preferCache"    # Z

    .prologue
    .line 670
    invoke-static {p0, p2}, Lcom/csipsimple/utils/PreferencesWrapper;->getStorageFolder(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    .line 671
    .local v1, "root":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 672
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 673
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 676
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getZrtpFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private hasStunServer(Ljava/lang/String;)Z
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 547
    const-string v3, "stun_server"

    invoke-virtual {p0, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "servers":[Ljava/lang/String;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 554
    :goto_1
    return v2

    .line 548
    :cond_0
    aget-object v0, v1, v3

    .line 549
    .local v0, "server":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 550
    const/4 v2, 0x1

    goto :goto_1

    .line 548
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private needUpgrade()Ljava/lang/Integer;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 246
    const/4 v3, 0x0

    .line 248
    .local v3, "runningVersion":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/csipsimple/utils/PreferencesWrapper;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getCurrentPackageInfos(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 249
    .local v2, "pinfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 250
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 251
    iget-object v4, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "last_known_version"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 253
    .local v1, "lastSeenVersion":I
    const-string v4, "PreferencesWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Last known version is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 254
    const-string v6, " and currently we are running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 256
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v1, v4}, Lcom/csipsimple/utils/Compatibility;->updateVersion(Lcom/csipsimple/utils/PreferencesWrapper;II)V

    .line 263
    .end local v1    # "lastSeenVersion":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_1

    .line 264
    iget-object v4, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "last_known_aos_version"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 265
    .restart local v1    # "lastSeenVersion":I
    const-string v4, "PreferencesWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Last known android version "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getApiLevel()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 268
    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getApiLevel()I

    move-result v4

    .line 267
    invoke-static {p0, v1, v4}, Lcom/csipsimple/utils/Compatibility;->updateApiVersion(Lcom/csipsimple/utils/PreferencesWrapper;II)V

    .line 269
    iget-object v4, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "last_known_aos_version"

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getApiLevel()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 274
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "lastSeenVersion":I
    :cond_1
    return-object v3

    .line 258
    .restart local v1    # "lastSeenVersion":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addStunServer(Ljava/lang/String;)V
    .locals 5
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/csipsimple/utils/PreferencesWrapper;->hasStunServer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    const-string v1, "stun_server"

    invoke-virtual {p0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "oldStuns":Ljava/lang/String;
    const-string v2, "PreferencesWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Old stun > "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    const-string v4, "stun_server"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget-object v1, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    const-string v2, "stun_server"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    const-string v0, ""

    .line 567
    :goto_0
    const-string v1, "stun_server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .end local v0    # "oldStuns":Ljava/lang/String;
    :cond_0
    return-void

    .line 564
    .restart local v0    # "oldStuns":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dialPressTone()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 598
    const-string v3, "dial_press_tone_mode"

    invoke-virtual {p0, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 599
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 610
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 601
    :pswitch_1
    iget-object v3, p0, Lcom/csipsimple/utils/PreferencesWrapper;->resolver:Landroid/content/ContentResolver;

    .line 602
    const-string v4, "dtmf_tone"

    .line 601
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 606
    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dialPressVibrate()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 614
    const-string v3, "dial_press_vibrate_mode"

    invoke-virtual {p0, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 615
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 626
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 617
    :pswitch_1
    iget-object v3, p0, Lcom/csipsimple/utils/PreferencesWrapper;->resolver:Landroid/content/ContentResolver;

    .line 618
    const-string v4, "haptic_feedback_enabled"

    .line 617
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 622
    goto :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public endEditing()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    .line 294
    :cond_0
    return-void
.end method

.method public getCodecList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 766
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "codecs_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 4
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-static {p1, p2}, Lcom/csipsimple/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 577
    :try_start_0
    iget-object v2, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-short v2, v2

    .line 582
    :goto_0
    return v2

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "PreferencesWrapper"

    const-string v3, "Invalid codec priority"

    invoke-static {v2, v3, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGsmIntegrationType()I
    .locals 6

    .prologue
    .line 635
    const/4 v2, 0x1

    .line 636
    .local v2, "prefsValue":I
    const-string v3, "gsm_integration_type"

    invoke-virtual {p0, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "gsmType":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 642
    :goto_0
    return v2

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "PreferencesWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Gsm type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not well formated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLibCapability(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cap"    # Ljava/lang/String;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backup_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/csipsimple/utils/PreferencesWrapper;->gPrefBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/csipsimple/utils/PreferencesWrapper;->gPrefFloatValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceIntegerValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 427
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 435
    :goto_0
    return-object v2

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "PreferencesWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format : expect a int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v2, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 432
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 433
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 435
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/csipsimple/utils/PreferencesWrapper;->gPrefStringValue(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCodecList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "codecs_video_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdvancedUser()Z
    .locals 3

    .prologue
    .line 732
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "is_advanced_user"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetAllDefaultValues()V
    .locals 3

    .prologue
    .line 442
    sget-object v1, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    sget-object v1, Lcom/csipsimple/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 448
    sget-object v1, Lcom/csipsimple/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 451
    invoke-static {p0}, Lcom/csipsimple/utils/Compatibility;->setFirstRunParameters(Lcom/csipsimple/utils/PreferencesWrapper;)V

    .line 452
    const-string v1, "has_already_setup_service"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 453
    return-void

    .line 442
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 443
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    .restart local v0    # "key":Ljava/lang/String;
    sget-object v1, Lcom/csipsimple/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    goto :goto_1

    .line 448
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    .restart local v0    # "key":Ljava/lang/String;
    sget-object v1, Lcom/csipsimple/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    goto :goto_2
.end method

.method public restoreSipSettings(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jsonSipSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->startEditing()V

    .line 498
    sget-object v4, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 508
    sget-object v4, Lcom/csipsimple/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 518
    sget-object v4, Lcom/csipsimple/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 533
    :try_start_0
    const-string v4, "last_known_version"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 534
    .local v2, "lastSeenVersion":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 535
    iget-object v4, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "last_known_version"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 541
    .end local v2    # "lastSeenVersion":Ljava/lang/Integer;
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->endEditing()V

    .line 542
    return-void

    .line 498
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    .local v1, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "val":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 502
    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 504
    .end local v3    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to get preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 508
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 510
    .restart local v1    # "key":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 511
    .local v3, "val":Ljava/lang/Boolean;
    if-eqz v3, :cond_1

    .line 512
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 514
    .end local v3    # "val":Ljava/lang/Boolean;
    :catch_1
    move-exception v0

    .line 515
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to get preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 518
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 520
    .restart local v1    # "key":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 521
    .local v3, "val":Ljava/lang/Double;
    if-eqz v3, :cond_6

    .line 522
    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 528
    .end local v3    # "val":Ljava/lang/Double;
    :cond_6
    :goto_4
    invoke-virtual {p0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;

    goto/16 :goto_2

    .line 524
    :catch_2
    move-exception v0

    .line 525
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to get preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 537
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 538
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v4, "PreferencesWrapper"

    const-string v5, "Not able to add last known version pref"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public serializeSipSettings()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 457
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 458
    .local v1, "jsonSipSettings":Lorg/json/JSONObject;
    sget-object v4, Lcom/csipsimple/utils/PreferencesWrapper;->STRING_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 465
    sget-object v4, Lcom/csipsimple/utils/PreferencesWrapper;->BOOLEAN_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 472
    sget-object v4, Lcom/csipsimple/utils/PreferencesWrapper;->FLOAT_PREFS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 482
    iget-object v4, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "last_known_version"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 484
    .local v3, "lastSeenVersion":I
    :try_start_0
    const-string v4, "last_known_version"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 488
    :goto_3
    return-object v1

    .line 458
    .end local v3    # "lastSeenVersion":I
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 460
    .local v2, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to add preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 467
    .restart local v2    # "key":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 468
    :catch_1
    move-exception v0

    .line 469
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to add preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 472
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    .restart local v2    # "key":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 475
    :catch_2
    move-exception v0

    .line 476
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "PreferencesWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not able to add preference "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 485
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    .restart local v3    # "lastSeenVersion":I
    :catch_3
    move-exception v0

    .line 486
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v4, "PreferencesWrapper"

    const-string v5, "Not able to add last known version pref"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-static {p1, p2}, Lcom/csipsimple/api/SipConfigManager;->getCodecKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0, v0, p3}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_0
    return-void
.end method

.method public setPreferenceBooleanValue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 318
    iget-object v1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setPreferenceFloatValue(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 333
    iget-object v1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 335
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 340
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setQuit(Z)V
    .locals 1
    .param p1, "quit"    # Z

    .prologue
    .line 747
    const-string v0, "has_been_quit"

    invoke-virtual {p0, v0, p1}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 748
    return-void
.end method

.method public startEditing()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/utils/PreferencesWrapper;->sharedEditor:Landroid/content/SharedPreferences$Editor;

    .line 284
    return-void
.end method

.method public startIsDigit()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-object v1, p0, Lcom/csipsimple/utils/PreferencesWrapper;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "start_with_text_dialer"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toogleExpertMode()V
    .locals 2

    .prologue
    .line 739
    const-string v1, "is_advanced_user"

    invoke-virtual {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 740
    return-void

    .line 739
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

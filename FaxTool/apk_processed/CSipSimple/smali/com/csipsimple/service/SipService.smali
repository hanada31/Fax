.class public Lcom/csipsimple/service/SipService;
.super Landroid/app/Service;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/service/SipService$AccountStatusContentObserver;,
        Lcom/csipsimple/service/SipService$DestroyRunnable;,
        Lcom/csipsimple/service/SipService$FinalizeDestroyRunnable;,
        Lcom/csipsimple/service/SipService$RestartRunnable;,
        Lcom/csipsimple/service/SipService$ReturnRunnable;,
        Lcom/csipsimple/service/SipService$SameThreadException;,
        Lcom/csipsimple/service/SipService$ServiceHandler;,
        Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;,
        Lcom/csipsimple/service/SipService$SipRunnable;,
        Lcom/csipsimple/service/SipService$SipServiceExecutor;,
        Lcom/csipsimple/service/SipService$StartRunnable;,
        Lcom/csipsimple/service/SipService$StopRunnable;,
        Lcom/csipsimple/service/SipService$SyncRestartRunnable;,
        Lcom/csipsimple/service/SipService$SyncStartRunnable;,
        Lcom/csipsimple/service/SipService$SyncStopRunnable;,
        Lcom/csipsimple/service/SipService$ToCall;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "SIP SRV"

.field private static final TOAST_MESSAGE:I

.field private static executorThread:Landroid/os/HandlerThread;

.field private static pjService:Lcom/csipsimple/pjsip/PjSipService;

.field private static singleton:Lcom/csipsimple/service/SipService;


# instance fields
.field private activitiesForOutgoing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private autoAcceptCurrent:Z

.field private final binder:Lcom/csipsimple/api/ISipService$Stub;

.field private final binderConfiguration:Lcom/csipsimple/api/ISipConfiguration$Stub;

.field private deferedUnregisterForOutgoing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private deviceStateReceiver:Lcom/csipsimple/service/receiver/DynamicReceiver4;

.field private hasSomeActiveAccount:Z

.field private holdResources:Z

.field private mExecutor:Lcom/csipsimple/service/SipService$SipServiceExecutor;

.field public notificationManager:Lcom/csipsimple/service/SipNotifications;

.field private phoneConnectivityReceiver:Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;

.field private prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

.field private presence:Lcom/csipsimple/api/SipManager$PresenceStatus;

.field public presenceMgr:Lcom/csipsimple/service/PresenceManager;

.field private serviceHandler:Landroid/os/Handler;

.field private sipWakeLock:Lcom/csipsimple/service/SipWakeLock;

.field private statusObserver:Lcom/csipsimple/service/SipService$AccountStatusContentObserver;

.field public supportMultipleCalls:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/csipsimple/service/SipService;->singleton:Lcom/csipsimple/service/SipService;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    iput-boolean v1, p0, Lcom/csipsimple/service/SipService;->autoAcceptCurrent:Z

    .line 95
    iput-boolean v1, p0, Lcom/csipsimple/service/SipService;->supportMultipleCalls:Z

    .line 102
    new-instance v0, Lcom/csipsimple/service/SipService$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/service/SipService$1;-><init>(Lcom/csipsimple/service/SipService;)V

    iput-object v0, p0, Lcom/csipsimple/service/SipService;->binder:Lcom/csipsimple/api/ISipService$Stub;

    .line 820
    new-instance v0, Lcom/csipsimple/service/SipService$2;

    invoke-direct {v0, p0}, Lcom/csipsimple/service/SipService$2;-><init>(Lcom/csipsimple/service/SipService;)V

    iput-object v0, p0, Lcom/csipsimple/service/SipService;->binderConfiguration:Lcom/csipsimple/api/ISipConfiguration$Stub;

    .line 879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/service/SipService;->statusObserver:Lcom/csipsimple/service/SipService$AccountStatusContentObserver;

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    .line 1131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/service/SipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    .line 1296
    iput-boolean v1, p0, Lcom/csipsimple/service/SipService;->hasSomeActiveAccount:Z

    .line 1502
    iput-boolean v1, p0, Lcom/csipsimple/service/SipService;->holdResources:Z

    .line 1566
    new-instance v0, Lcom/csipsimple/service/SipService$ServiceHandler;

    invoke-direct {v0, p0}, Lcom/csipsimple/service/SipService$ServiceHandler;-><init>(Lcom/csipsimple/service/SipService;)V

    iput-object v0, p0, Lcom/csipsimple/service/SipService;->serviceHandler:Landroid/os/Handler;

    .line 1917
    sget-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->ONLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    iput-object v0, p0, Lcom/csipsimple/service/SipService;->presence:Lcom/csipsimple/api/SipManager$PresenceStatus;

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/service/SipService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->addAllAccounts()V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/service/SipService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1353
    invoke-direct {p0, p1}, Lcom/csipsimple/service/SipService;->unregisterAllAccounts(Z)V

    return-void
.end method

.method static synthetic access$10(Lcom/csipsimple/service/SipService;Lcom/csipsimple/service/SipService$SipServiceExecutor;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/csipsimple/service/SipService;->mExecutor:Lcom/csipsimple/service/SipService$SipServiceExecutor;

    return-void
.end method

.method static synthetic access$2(Lcom/csipsimple/service/SipService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1380
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->reAddAllAccounts()V

    return-void
.end method

.method static synthetic access$3()Lcom/csipsimple/pjsip/PjSipService;
    .locals 1

    .prologue
    .line 873
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/utils/PreferencesProviderWrapper;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/csipsimple/service/SipService;Lcom/csipsimple/api/SipManager$PresenceStatus;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/csipsimple/service/SipService;->presence:Lcom/csipsimple/api/SipManager$PresenceStatus;

    return-void
.end method

.method static synthetic access$6(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/api/SipManager$PresenceStatus;
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->presence:Lcom/csipsimple/api/SipManager$PresenceStatus;

    return-object v0
.end method

.method static synthetic access$7()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1696
    invoke-static {}, Lcom/csipsimple/service/SipService;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/csipsimple/service/SipService;)Lcom/csipsimple/service/SipWakeLock;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->sipWakeLock:Lcom/csipsimple/service/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$9(Lcom/csipsimple/service/SipService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1204
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->startSipStack()V

    return-void
.end method

.method private declared-synchronized acquireResources()V
    .locals 7

    .prologue
    .line 1508
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/csipsimple/service/SipService;->holdResources:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 1549
    :goto_0
    monitor-exit p0

    return-void

    .line 1513
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v6, "use_partial_wake_lock"

    invoke-virtual {v5, v6}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1514
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1515
    .local v2, "pman":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/csipsimple/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_1

    .line 1516
    const/4 v5, 0x1

    const-string v6, "com.csipsimple.SipService"

    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/csipsimple/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1517
    iget-object v5, p0, Lcom/csipsimple/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1520
    :cond_1
    iget-object v5, p0, Lcom/csipsimple/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1521
    iget-object v5, p0, Lcom/csipsimple/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1526
    .end local v2    # "pman":Landroid/os/PowerManager;
    :cond_2
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1527
    .local v4, "wman":Landroid/net/wifi/WifiManager;
    iget-object v5, p0, Lcom/csipsimple/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v5, :cond_4

    .line 1528
    const/4 v1, 0x1

    .line 1529
    .local v1, "mode":I
    const/16 v5, 0x9

    invoke-static {v5}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v6, "lock_wifi_perfs"

    invoke-virtual {v5, v6}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1530
    const/4 v1, 0x3

    .line 1532
    :cond_3
    const-string v5, "com.csipsimple.SipService"

    invoke-virtual {v4, v1, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v5

    iput-object v5, p0, Lcom/csipsimple/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 1533
    iget-object v5, p0, Lcom/csipsimple/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 1535
    .end local v1    # "mode":I
    :cond_4
    iget-object v5, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v6, "lock_wifi"

    invoke-virtual {v5, v6}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/csipsimple/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1536
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 1537
    .local v3, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_6

    .line 1538
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 1541
    .local v0, "dstate":Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v5, :cond_5

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v5, :cond_6

    .line 1542
    :cond_5
    iget-object v5, p0, Lcom/csipsimple/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1543
    iget-object v5, p0, Lcom/csipsimple/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1548
    .end local v0    # "dstate":Landroid/net/NetworkInfo$DetailedState;
    .end local v3    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/csipsimple/service/SipService;->holdResources:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1508
    .end local v4    # "wman":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private addAllAccounts()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1301
    const-string v0, "SIP SRV"

    const-string v1, "We are adding all accounts right now...."

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const/4 v9, 0x0

    .line 1304
    .local v9, "hasSomeSuccess":Z
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    .line 1305
    const-string v3, "active=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "1"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    .line 1304
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1306
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1308
    const/4 v10, 0x0

    .line 1309
    .local v10, "index":I
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1310
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1312
    :cond_0
    new-instance v6, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v6, v7}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 1313
    .local v6, "account":Lcom/csipsimple/api/SipProfile;
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v0, v6}, Lcom/csipsimple/pjsip/PjSipService;->addAccount(Lcom/csipsimple/api/SipProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1314
    const/4 v9, 0x1

    .line 1316
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 1317
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    if-lt v10, v0, :cond_0

    .line 1322
    .end local v6    # "account":Lcom/csipsimple/api/SipProfile;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1326
    .end local v10    # "index":I
    :cond_3
    :goto_0
    iput-boolean v9, p0, Lcom/csipsimple/service/SipService;->hasSomeActiveAccount:Z

    .line 1328
    if-eqz v9, :cond_5

    .line 1329
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->acquireResources()V

    .line 1337
    :cond_4
    :goto_1
    return-void

    .line 1319
    .restart local v10    # "index":I
    :catch_0
    move-exception v8

    .line 1320
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP SRV"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v8}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1321
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1323
    throw v0

    .line 1332
    .end local v10    # "index":I
    :cond_5
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->releaseResources()V

    .line 1333
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    if-eqz v0, :cond_4

    .line 1334
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipNotifications;->cancelRegisters()V

    goto :goto_1
.end method

.method private applyComponentEnablingState(Z)V
    .locals 5
    .param p1, "active"    # Z

    .prologue
    .line 992
    const/4 v1, 0x2

    .line 993
    .local v1, "enableState":I
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v4, "integrate_tel_privileged"

    invoke-virtual {v3, v4}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 996
    const/4 v1, 0x1

    .line 998
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1000
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.csipsimple.ui.PrivilegedOutgoingCallBroadcaster"

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1001
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 1002
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1004
    :cond_1
    return-void
.end method

.method private static createLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 1698
    sget-object v0, Lcom/csipsimple/service/SipService;->executorThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1699
    const-string v0, "SIP SRV"

    const-string v1, "Creating new handler thread"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/csipsimple/service/SipService;->executorThread:Landroid/os/HandlerThread;

    .line 1702
    sget-object v0, Lcom/csipsimple/service/SipService;->executorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1705
    :cond_0
    sget-object v0, Lcom/csipsimple/service/SipService;->executorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private loadStack()Z
    .locals 1

    .prologue
    .line 1174
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-nez v0, :cond_0

    .line 1175
    new-instance v0, Lcom/csipsimple/pjsip/PjSipService;

    invoke-direct {v0}, Lcom/csipsimple/pjsip/PjSipService;-><init>()V

    sput-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    .line 1177
    :cond_0
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v0, p0}, Lcom/csipsimple/pjsip/PjSipService;->setService(Lcom/csipsimple/service/SipService;)V

    .line 1179
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/csipsimple/pjsip/PjSipService;->tryToLoadStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    const/4 v0, 0x1

    .line 1182
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reAddAllAccounts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1381
    const-string v0, "SIP SRV"

    const-string v1, "RE REGISTER ALL ACCOUNTS"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/csipsimple/service/SipService;->unregisterAllAccounts(Z)V

    .line 1383
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->addAllAccounts()V

    .line 1384
    return-void
.end method

.method private registerBroadcasts()V
    .locals 5

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->deviceStateReceiver:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    if-nez v1, :cond_0

    .line 1012
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1013
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1014
    const-string v1, "com.csipsimple.service.ACTION_DEFER_OUTGOING_UNREGISTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    const-string v1, "com.csipsimple.service.ACTION_OUTGOING_UNREGISTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1016
    const-string v1, "com.csipsimple.service.ACCOUNT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1017
    const-string v1, "com.csipsimple.service.ACTION_SIP_CAN_BE_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1018
    const-string v1, "com.csipsimple.service.ACTION_SIP_REQUEST_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1019
    const-string v1, "vpn.connectivity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1020
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1021
    new-instance v1, Lcom/csipsimple/service/receiver/DynamicReceiver5;

    invoke-direct {v1, p0}, Lcom/csipsimple/service/receiver/DynamicReceiver5;-><init>(Lcom/csipsimple/service/SipService;)V

    iput-object v1, p0, Lcom/csipsimple/service/SipService;->deviceStateReceiver:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    .line 1025
    :goto_0
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->deviceStateReceiver:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    invoke-virtual {p0, v1, v0}, Lcom/csipsimple/service/SipService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1026
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->deviceStateReceiver:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    invoke-virtual {v1}, Lcom/csipsimple/service/receiver/DynamicReceiver4;->startMonitoring()V

    .line 1029
    .end local v0    # "intentfilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->phoneConnectivityReceiver:Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;

    if-nez v1, :cond_1

    .line 1030
    const-string v1, "SIP SRV"

    const-string v2, "Listen for phone state "

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    new-instance v1, Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;-><init>(Lcom/csipsimple/service/SipService;Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;)V

    iput-object v1, p0, Lcom/csipsimple/service/SipService;->phoneConnectivityReceiver:Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;

    .line 1033
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/csipsimple/service/SipService;->phoneConnectivityReceiver:Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;

    .line 1034
    const/16 v3, 0x20

    .line 1033
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1037
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->statusObserver:Lcom/csipsimple/service/SipService$AccountStatusContentObserver;

    if-nez v1, :cond_2

    .line 1038
    new-instance v1, Lcom/csipsimple/service/SipService$AccountStatusContentObserver;

    iget-object v2, p0, Lcom/csipsimple/service/SipService;->serviceHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/csipsimple/service/SipService$AccountStatusContentObserver;-><init>(Lcom/csipsimple/service/SipService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/csipsimple/service/SipService;->statusObserver:Lcom/csipsimple/service/SipService$AccountStatusContentObserver;

    .line 1039
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/csipsimple/service/SipService;->statusObserver:Lcom/csipsimple/service/SipService$AccountStatusContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1042
    :cond_2
    return-void

    .line 1023
    .restart local v0    # "intentfilter":Landroid/content/IntentFilter;
    :cond_3
    new-instance v1, Lcom/csipsimple/service/receiver/DynamicReceiver4;

    invoke-direct {v1, p0}, Lcom/csipsimple/service/receiver/DynamicReceiver4;-><init>(Lcom/csipsimple/service/SipService;)V

    iput-object v1, p0, Lcom/csipsimple/service/SipService;->deviceStateReceiver:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    goto :goto_0
.end method

.method private declared-synchronized releaseResources()V
    .locals 1

    .prologue
    .line 1552
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/csipsimple/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1556
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1558
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/service/SipService;->holdResources:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    monitor-exit p0

    return-void

    .line 1552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPrivateVideoWindow(ILjava/lang/Object;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "window"    # Ljava/lang/Object;

    .prologue
    .line 1909
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/csipsimple/service/SipService$3;-><init>(Lcom/csipsimple/service/SipService;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1915
    return-void
.end method

.method public static setVideoWindow(ILjava/lang/Object;)V
    .locals 1
    .param p0, "callId"    # I
    .param p1, "window"    # Ljava/lang/Object;

    .prologue
    .line 1903
    sget-object v0, Lcom/csipsimple/service/SipService;->singleton:Lcom/csipsimple/service/SipService;

    if-eqz v0, :cond_0

    .line 1904
    sget-object v0, Lcom/csipsimple/service/SipService;->singleton:Lcom/csipsimple/service/SipService;

    invoke-direct {v0, p0, p1}, Lcom/csipsimple/service/SipService;->setPrivateVideoWindow(ILjava/lang/Object;)V

    .line 1906
    :cond_0
    return-void
.end method

.method private startSipStack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v1, "support_multiple_calls"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/service/SipService;->supportMultipleCalls:Z

    .line 1208
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->isConnectivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1209
    const v0, 0x7f0b01c3

    invoke-virtual {p0, v0}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(I)V

    .line 1210
    const-string v0, "SIP SRV"

    const-string v1, "No need to start sip"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    const-string v0, "SIP SRV"

    const-string v1, "Start was asked and we should actually start now"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-nez v0, :cond_2

    .line 1215
    const-string v0, "SIP SRV"

    const-string v1, "Start was asked and pjService in not there"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->loadStack()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1217
    const-string v0, "SIP SRV"

    const-string v1, "Unable to load SIP stack !! "

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1221
    :cond_2
    const-string v0, "SIP SRV"

    const-string v1, "Ask pjservice to start itself"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->presenceMgr:Lcom/csipsimple/service/PresenceManager;

    invoke-virtual {v0, p0}, Lcom/csipsimple/service/PresenceManager;->startMonitoring(Lcom/csipsimple/service/SipService;)V

    .line 1225
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/csipsimple/pjsip/PjSipService;->sipStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/csipsimple/service/SipService;->applyComponentEnablingState(Z)V

    .line 1231
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->registerBroadcasts()V

    .line 1232
    const-string v0, "SIP SRV"

    const-string v1, "Add all accounts"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->addAllAccounts()V

    goto :goto_0
.end method

.method private unregisterAllAccounts(Z)V
    .locals 9
    .param p1, "cancelNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1355
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->releaseResources()V

    .line 1357
    const-string v0, "SIP SRV"

    const-string v1, "Remove all accounts"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1360
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1362
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1364
    :cond_0
    new-instance v6, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v6, v7}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 1365
    .local v6, "account":Lcom/csipsimple/api/SipProfile;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v6, v0, v1}, Lcom/csipsimple/service/SipService;->setAccountRegistration(Lcom/csipsimple/api/SipProfile;IZ)Z

    .line 1366
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1363
    if-nez v0, :cond_0

    .line 1370
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1375
    .end local v6    # "account":Lcom/csipsimple/api/SipProfile;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1376
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipNotifications;->cancelRegisters()V

    .line 1378
    :cond_2
    return-void

    .line 1367
    :catch_0
    move-exception v8

    .line 1368
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP SRV"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v8}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1370
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1369
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1370
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1371
    throw v0
.end method

.method private unregisterBroadcasts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1048
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->deviceStateReceiver:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    if-eqz v1, :cond_0

    .line 1050
    :try_start_0
    const-string v1, "SIP SRV"

    const-string v2, "Stop and unregister device receiver"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->deviceStateReceiver:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    invoke-virtual {v1}, Lcom/csipsimple/service/receiver/DynamicReceiver4;->stopMonitoring()V

    .line 1052
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->deviceStateReceiver:Lcom/csipsimple/service/receiver/DynamicReceiver4;

    invoke-virtual {p0, v1}, Lcom/csipsimple/service/SipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1053
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/csipsimple/service/SipService;->deviceStateReceiver:Lcom/csipsimple/service/receiver/DynamicReceiver4;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->phoneConnectivityReceiver:Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;

    if-eqz v1, :cond_1

    .line 1063
    const-string v1, "SIP SRV"

    const-string v2, "Unregister telephony receiver"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/csipsimple/service/SipService;->phoneConnectivityReceiver:Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1065
    iput-object v4, p0, Lcom/csipsimple/service/SipService;->phoneConnectivityReceiver:Lcom/csipsimple/service/SipService$ServicePhoneStateReceiver;

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->statusObserver:Lcom/csipsimple/service/SipService$AccountStatusContentObserver;

    if-eqz v1, :cond_2

    .line 1068
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/service/SipService;->statusObserver:Lcom/csipsimple/service/SipService$AccountStatusContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1069
    iput-object v4, p0, Lcom/csipsimple/service/SipService;->statusObserver:Lcom/csipsimple/service/SipService$AccountStatusContentObserver;

    .line 1072
    :cond_2
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SIP SRV"

    const-string v2, "Has not to unregister telephony receiver"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addBuddy(Ljava/lang/String;)I
    .locals 4
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1484
    const/4 v0, -0x1

    .line 1485
    .local v0, "retVal":I
    sget-object v1, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v1, :cond_0

    .line 1486
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to add buddy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    sget-object v1, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v1, p1}, Lcom/csipsimple/pjsip/PjSipService;->addBuddy(Ljava/lang/String;)I

    move-result v0

    .line 1489
    :cond_0
    return v0
.end method

.method public cleanStop()V
    .locals 2

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$DestroyRunnable;

    invoke-direct {v1, p0}, Lcom/csipsimple/service/SipService$DestroyRunnable;-><init>(Lcom/csipsimple/service/SipService;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 989
    return-void
.end method

.method public confAdjustRxLevel(F)V
    .locals 2
    .param p1, "speakVolume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1473
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 1474
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/csipsimple/pjsip/PjSipService;->confAdjustRxLevel(IF)V

    .line 1476
    :cond_0
    return-void
.end method

.method public confAdjustTxLevel(F)V
    .locals 2
    .param p1, "speakVolume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1464
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 1465
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/csipsimple/pjsip/PjSipService;->confAdjustTxLevel(IF)V

    .line 1467
    :cond_0
    return-void
.end method

.method public deferUnregisterForOutgoing(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activityKey"    # Landroid/content/ComponentName;

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    :cond_0
    return-void
.end method

.method public getAccount(J)Lcom/csipsimple/api/SipProfile;
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 1638
    sget-object v0, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/csipsimple/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->mExecutor:Lcom/csipsimple/service/SipService$SipServiceExecutor;

    if-nez v0, :cond_0

    .line 898
    new-instance v0, Lcom/csipsimple/service/SipService$SipServiceExecutor;

    invoke-direct {v0, p0}, Lcom/csipsimple/service/SipService$SipServiceExecutor;-><init>(Lcom/csipsimple/service/SipService;)V

    iput-object v0, p0, Lcom/csipsimple/service/SipService;->mExecutor:Lcom/csipsimple/service/SipService$SipServiceExecutor;

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->mExecutor:Lcom/csipsimple/service/SipService$SipServiceExecutor;

    return-object v0
.end method

.method public getGSMCallState()I
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    return-object v0
.end method

.method public getPresence()Lcom/csipsimple/api/SipManager$PresenceStatus;
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->presence:Lcom/csipsimple/api/SipManager$PresenceStatus;

    return-object v0
.end method

.method public getSipProfileState(I)Lcom/csipsimple/api/SipProfileState;
    .locals 3
    .param p1, "accountDbId"    # I

    .prologue
    .line 1390
    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/service/SipService;->getAccount(J)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 1391
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    sget-object v1, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1392
    sget-object v1, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v1, v0}, Lcom/csipsimple/pjsip/PjSipService;->getProfileState(Lcom/csipsimple/api/SipProfile;)Lcom/csipsimple/api/SipProfileState;

    move-result-object v1

    .line 1394
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUAStateReceiver()Lcom/csipsimple/pjsip/UAStateReceiver;
    .locals 1

    .prologue
    .line 1593
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    iget-object v0, v0, Lcom/csipsimple/pjsip/PjSipService;->userAgentReceiver:Lcom/csipsimple/pjsip/UAStateReceiver;

    return-object v0
.end method

.method public isConnectivityValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1160
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v2, "has_been_quit"

    invoke-virtual {v1, v2, v0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return v0

    .line 1163
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v0

    .line 1164
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1165
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public notifyUserOfMessage(I)V
    .locals 3
    .param p1, "resStringId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1293
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->serviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/csipsimple/service/SipService;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1294
    return-void
.end method

.method public notifyUserOfMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->serviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/csipsimple/service/SipService;->serviceHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1286
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1189
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "serviceName":Ljava/lang/String;
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Action is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    if-eqz v0, :cond_0

    const-string v1, "com.csipsimple.service.SipService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1192
    :cond_0
    const-string v1, "SIP SRV"

    const-string v2, "Service returned"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->binder:Lcom/csipsimple/api/ISipService$Stub;

    .line 1199
    :goto_0
    return-object v1

    .line 1194
    :cond_1
    const-string v1, "com.csipsimple.service.SipConfiguration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1195
    const-string v1, "SIP SRV"

    const-string v2, "Conf returned"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->binderConfiguration:Lcom/csipsimple/api/ISipConfiguration$Stub;

    goto :goto_0

    .line 1198
    :cond_2
    const-string v1, "SIP SRV"

    const-string v2, "Default service (SipService) returned"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->binder:Lcom/csipsimple/api/ISipService$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 950
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 951
    sput-object p0, Lcom/csipsimple/service/SipService;->singleton:Lcom/csipsimple/service/SipService;

    .line 953
    const-string v1, "SIP SRV"

    const-string v2, "Create SIP Service"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    new-instance v1, Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-direct {v1, p0}, Lcom/csipsimple/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    .line 955
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v1

    invoke-static {v1}, Lcom/csipsimple/utils/Log;->setLogLevel(I)V

    .line 957
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/csipsimple/service/SipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 959
    new-instance v1, Lcom/csipsimple/service/SipNotifications;

    invoke-direct {v1, p0}, Lcom/csipsimple/service/SipNotifications;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    .line 960
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipNotifications;->onServiceCreate()V

    .line 961
    new-instance v2, Lcom/csipsimple/service/SipWakeLock;

    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-direct {v2, v1}, Lcom/csipsimple/service/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v2, p0, Lcom/csipsimple/service/SipService;->sipWakeLock:Lcom/csipsimple/service/SipWakeLock;

    .line 963
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v2, "has_already_setup_service"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 964
    .local v0, "hasSetup":Z
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service has been setup ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    new-instance v1, Lcom/csipsimple/service/PresenceManager;

    invoke-direct {v1}, Lcom/csipsimple/service/PresenceManager;-><init>()V

    iput-object v1, p0, Lcom/csipsimple/service/SipService;->presenceMgr:Lcom/csipsimple/service/PresenceManager;

    .line 969
    if-nez v0, :cond_0

    .line 970
    const-string v1, "SIP SRV"

    const-string v2, "RESET SETTINGS !!!!"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->resetAllDefaultValues()V

    .line 976
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 980
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 981
    const-string v0, "SIP SRV"

    const-string v1, "Destroying SIP Service"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->unregisterBroadcasts()V

    .line 983
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipNotifications;->onServiceDestroy()V

    .line 984
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/SipService$FinalizeDestroyRunnable;

    invoke-direct {v1, p0}, Lcom/csipsimple/service/SipService$FinalizeDestroyRunnable;-><init>(Lcom/csipsimple/service/SipService;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 985
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 1080
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 1081
    if-eqz p1, :cond_0

    .line 1082
    const-string v2, "outgoing_activity"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1083
    .local v1, "p":Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1084
    check-cast v0, Landroid/content/ComponentName;

    .line 1085
    .local v0, "outActivity":Landroid/content/ComponentName;
    invoke-virtual {p0, v0}, Lcom/csipsimple/service/SipService;->registerForOutgoing(Landroid/content/ComponentName;)V

    .line 1090
    .end local v0    # "outActivity":Landroid/content/ComponentName;
    .end local v1    # "p":Landroid/os/Parcelable;
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->isConnectivityValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1091
    const v2, 0x7f0b01c3

    invoke-virtual {p0, v2}, Lcom/csipsimple/service/SipService;->notifyUserOfMessage(I)V

    .line 1092
    const-string v2, "SIP SRV"

    const-string v3, "Harakiri... we are not needed since no way to use self"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->cleanStop()V

    .line 1127
    :cond_1
    :goto_0
    return-void

    .line 1099
    :cond_2
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->loadStack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1105
    const-string v2, "SIP SRV"

    const-string v3, "Direct sip start"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v2

    new-instance v3, Lcom/csipsimple/service/SipService$StartRunnable;

    invoke-direct {v3, p0}, Lcom/csipsimple/service/SipService$StartRunnable;-><init>(Lcom/csipsimple/service/SipService;)V

    invoke-virtual {v2, v3}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerForOutgoing(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activityKey"    # Landroid/content/ComponentName;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_0
    return-void
.end method

.method public removeBuddy(Ljava/lang/String;)V
    .locals 1
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1497
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 1498
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v0, p1}, Lcom/csipsimple/pjsip/PjSipService;->removeBuddy(Ljava/lang/String;)V

    .line 1500
    :cond_0
    return-void
.end method

.method public restartSipStack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->stopSipStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->startSipStack()V

    .line 1277
    :goto_0
    return-void

    .line 1275
    :cond_0
    const-string v0, "SIP SRV"

    const-string v1, "Can\'t stop ... so do not restart ! "

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAccountRegistration(Lcom/csipsimple/api/SipProfile;IZ)Z
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;
    .param p2, "renew"    # I
    .param p3, "forceReAdd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, "status":Z
    sget-object v1, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v1, :cond_0

    .line 1344
    sget-object v1, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/csipsimple/pjsip/PjSipService;->setAccountRegistration(Lcom/csipsimple/api/SipProfile;IZ)Z

    move-result v0

    .line 1347
    :cond_0
    return v0
.end method

.method public setAutoAnswerNext(Z)V
    .locals 0
    .param p1, "auto_response"    # Z

    .prologue
    .line 1645
    iput-boolean p1, p0, Lcom/csipsimple/service/SipService;->autoAcceptCurrent:Z

    .line 1646
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
    .line 1684
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 1685
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/csipsimple/pjsip/PjSipService;->setNoSnd()V

    .line 1687
    :cond_0
    return-void
.end method

.method public setSnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1690
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 1691
    sget-object v0, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/csipsimple/pjsip/PjSipService;->setSnd()V

    .line 1693
    :cond_0
    return-void
.end method

.method public shouldAutoAnswer(Ljava/lang/String;Lcom/csipsimple/api/SipProfile;)I
    .locals 8
    .param p1, "remContact"    # Ljava/lang/String;
    .param p2, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v7, 0x2

    .line 1657
    const-string v4, "SIP SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Search if should I auto answer for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    const/4 v3, 0x0

    .line 1660
    .local v3, "shouldAutoAnswer":I
    iget-boolean v4, p0, Lcom/csipsimple/service/SipService;->autoAcceptCurrent:Z

    if-eqz v4, :cond_0

    .line 1661
    const-string v4, "SIP SRV"

    const-string v5, "I should auto answer this one !!! "

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/csipsimple/service/SipService;->autoAcceptCurrent:Z

    .line 1663
    const/16 v4, 0xc8

    .line 1679
    :goto_0
    return v4

    .line 1666
    :cond_0
    if-eqz p2, :cond_2

    .line 1667
    const-string v4, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?sip(?:s)?:([^@]*@[^>]*)(?:>)?"

    invoke-static {v4, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1668
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1669
    .local v0, "m":Ljava/util/regex/Matcher;
    move-object v1, p1

    .line 1670
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1671
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1673
    :cond_1
    iget-wide v4, p2, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {p0, v4, v5, v1}, Lcom/csipsimple/models/Filter;->isAutoAnswerNumber(Landroid/content/Context;JLjava/lang/String;)I

    move-result v3

    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :goto_1
    move v4, v3

    .line 1679
    goto :goto_0

    .line 1676
    :cond_2
    const-string v4, "SIP SRV"

    const-string v5, "Oupps... that come from an unknown account..."

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopSipStack()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1242
    const-string v1, "SIP SRV"

    const-string v2, "Stop sip stack"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const/4 v0, 0x1

    .line 1244
    .local v0, "canStop":Z
    sget-object v1, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    if-eqz v1, :cond_0

    .line 1245
    sget-object v1, Lcom/csipsimple/service/SipService;->pjService:Lcom/csipsimple/pjsip/PjSipService;

    invoke-virtual {v1}, Lcom/csipsimple/pjsip/PjSipService;->sipStop()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1252
    :cond_0
    if-eqz v0, :cond_3

    .line 1253
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->presenceMgr:Lcom/csipsimple/service/PresenceManager;

    if-eqz v1, :cond_1

    .line 1254
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->presenceMgr:Lcom/csipsimple/service/PresenceManager;

    invoke-virtual {v1}, Lcom/csipsimple/service/PresenceManager;->stopMonitoring()V

    .line 1259
    :cond_1
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1260
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/csipsimple/service/SipService;->applyComponentEnablingState(Z)V

    .line 1263
    :cond_2
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->unregisterBroadcasts()V

    .line 1264
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->releaseResources()V

    .line 1267
    :cond_3
    return v0
.end method

.method public treatDeferUnregistersForOutgoing()V
    .locals 3

    .prologue
    .line 1150
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1153
    iget-object v1, p0, Lcom/csipsimple/service/SipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1154
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->isConnectivityValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->cleanStop()V

    .line 1157
    :cond_0
    return-void

    .line 1150
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1151
    .local v0, "cmp":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/csipsimple/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterForOutgoing(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activityKey"    # Landroid/content/ComponentName;

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1140
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->isConnectivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->cleanStop()V

    .line 1143
    :cond_0
    return-void
.end method

.method public updateRegistrationsState()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1398
    const-string v0, "SIP SRV"

    const-string v1, "Update registration state"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    .local v6, "activeProfilesState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfileState;>;"
    invoke-virtual {p0}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1401
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1403
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1404
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1406
    :cond_0
    new-instance v9, Lcom/csipsimple/api/SipProfileState;

    invoke-direct {v9, v7}, Lcom/csipsimple/api/SipProfileState;-><init>(Landroid/database/Cursor;)V

    .line 1407
    .local v9, "ps":Lcom/csipsimple/api/SipProfileState;
    invoke-virtual {v9}, Lcom/csipsimple/api/SipProfileState;->isValidForCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1405
    if-nez v0, :cond_0

    .line 1415
    .end local v9    # "ps":Lcom/csipsimple/api/SipProfileState;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1419
    :cond_3
    :goto_0
    invoke-static {}, Lcom/csipsimple/api/SipProfileState;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1424
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1425
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v1, "icon_in_status_bar"

    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1429
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    iget-object v1, p0, Lcom/csipsimple/service/SipService;->prefsWrapper:Lcom/csipsimple/utils/PreferencesProviderWrapper;

    const-string v2, "icon_in_status_bar_nbr"

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/csipsimple/service/SipNotifications;->notifyRegisteredAccounts(Ljava/util/ArrayList;Z)V

    .line 1440
    :goto_1
    iget-boolean v0, p0, Lcom/csipsimple/service/SipService;->hasSomeActiveAccount:Z

    if-eqz v0, :cond_5

    .line 1441
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->acquireResources()V

    .line 1445
    :goto_2
    return-void

    .line 1412
    :catch_0
    move-exception v8

    .line 1413
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP SRV"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v8}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1415
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1414
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1415
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1416
    throw v0

    .line 1437
    :cond_4
    iget-object v0, p0, Lcom/csipsimple/service/SipService;->notificationManager:Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipNotifications;->cancelRegisters()V

    goto :goto_1

    .line 1443
    :cond_5
    invoke-direct {p0}, Lcom/csipsimple/service/SipService;->releaseResources()V

    goto :goto_2
.end method

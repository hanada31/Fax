.class public Lcom/csipsimple/service/receiver/DynamicReceiver4;
.super Landroid/content/BroadcastReceiver;
.source "DynamicReceiver4.java"


# static fields
.field public static final ACTION_VPN_CONNECTIVITY:Ljava/lang/String; = "vpn.connectivity"

.field public static final BROADCAST_CONNECTION_STATE:Ljava/lang/String; = "connection_state"

.field private static final PROC_NET_ROUTE:Ljava/lang/String; = "/proc/net/route"

.field private static final THIS_FILE:Ljava/lang/String; = "DynamicReceiver"


# instance fields
.field private hasStartedWifi:Z

.field private mConnected:Z

.field private mNetworkType:Ljava/lang/String;

.field private mRoutes:Ljava/lang/String;

.field private pollingTimer:Ljava/util/Timer;

.field private service:Lcom/csipsimple/service/SipService;


# direct methods
.method public constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 2
    .param p1, "aService"    # Lcom/csipsimple/service/SipService;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mConnected:Z

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->hasStartedWifi:Z

    .line 89
    iput-object p1, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/service/receiver/DynamicReceiver4;Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/csipsimple/service/receiver/DynamicReceiver4;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/service/receiver/DynamicReceiver4;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/csipsimple/service/receiver/DynamicReceiver4;->dumpRoutes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/service/receiver/DynamicReceiver4;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/csipsimple/service/receiver/DynamicReceiver4;)Lcom/csipsimple/service/SipService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/csipsimple/service/receiver/DynamicReceiver4;Landroid/net/NetworkInfo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/csipsimple/service/receiver/DynamicReceiver4;->onConnectivityChanged(Landroid/net/NetworkInfo;Z)V

    return-void
.end method

.method private dumpRoutes()Ljava/lang/String;
    .locals 10

    .prologue
    .line 144
    const-string v6, ""

    .line 145
    .local v6, "routes":Ljava/lang/String;
    const/4 v3, 0x0

    .line 147
    .local v3, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v7, "/proc/net/route"

    invoke-direct {v4, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v3    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    if-eqz v4, :cond_0

    .line 149
    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v1, "contentBuf":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    .local v0, "buf":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 163
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v1    # "contentBuf":Ljava/lang/StringBuffer;
    .end local v5    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v3, v4

    .line 169
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :goto_1
    return-object v6

    .line 153
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "contentBuf":Ljava/lang/StringBuffer;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 157
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v1    # "contentBuf":Ljava/lang/StringBuffer;
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 158
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :goto_2
    :try_start_4
    const-string v7, "DynamicReceiver"

    const-string v8, "No route file found routes"

    invoke-static {v7, v8, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 164
    :catch_1
    move-exception v2

    .line 165
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "DynamicReceiver"

    const-string v8, "Unable to close route file"

    invoke-static {v7, v8, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 159
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 160
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "DynamicReceiver"

    const-string v8, "Unable to read route file"

    invoke-static {v7, v8, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 164
    :catch_3
    move-exception v2

    .line 165
    const-string v7, "DynamicReceiver"

    const-string v8, "Unable to close route file"

    invoke-static {v7, v8, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 163
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 167
    :goto_5
    throw v7

    .line 164
    :catch_4
    move-exception v2

    .line 165
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "DynamicReceiver"

    const-string v9, "Unable to close route file"

    invoke-static {v8, v9, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 164
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 165
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "DynamicReceiver"

    const-string v8, "Unable to close route file"

    invoke-static {v7, v8, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 159
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 157
    :catch_7
    move-exception v2

    goto :goto_2
.end method

.method private onConnectivityChanged(Landroid/net/NetworkInfo;Z)V
    .locals 8
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isSticky"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 186
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 188
    :cond_0
    iget-object v5, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 192
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v5}, Lcom/csipsimple/service/SipService;->isConnectivityValid()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 193
    .local v1, "connected":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "networkType":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/csipsimple/service/receiver/DynamicReceiver4;->dumpRoutes()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "currentRoutes":Ljava/lang/String;
    iget-object v6, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    monitor-enter v6

    .line 197
    :try_start_0
    iget-object v4, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    .line 196
    .local v4, "oldRoutes":Ljava/lang/String;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-boolean v5, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mConnected:Z

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 229
    :cond_2
    :goto_2
    return-void

    .line 192
    .end local v1    # "connected":Z
    .end local v2    # "currentRoutes":Ljava/lang/String;
    .end local v3    # "networkType":Ljava/lang/String;
    .end local v4    # "oldRoutes":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 193
    .restart local v1    # "connected":Z
    :cond_4
    const-string v3, "null"

    goto :goto_1

    .line 196
    .restart local v2    # "currentRoutes":Ljava/lang/String;
    .restart local v3    # "networkType":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 204
    .restart local v4    # "oldRoutes":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/csipsimple/utils/Log;->getLogLevel()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_6

    .line 205
    iget-object v5, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 206
    const-string v5, "DynamicReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onConnectivityChanged(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 207
    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    monitor-enter v6

    .line 214
    :try_start_2
    iput-object v2, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    .line 213
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    iput-boolean v1, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mConnected:Z

    .line 217
    iput-object v3, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mNetworkType:Ljava/lang/String;

    .line 219
    if-nez p2, :cond_2

    .line 220
    if-eqz v1, :cond_8

    .line 221
    iget-object v5, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v5}, Lcom/csipsimple/service/SipService;->restartSipStack()V

    goto :goto_2

    .line 209
    :cond_7
    const-string v5, "DynamicReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Route changed : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 213
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 223
    :cond_8
    const-string v5, "DynamicReceiver"

    const-string v6, "We are not connected, stop"

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v5, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v5}, Lcom/csipsimple/service/SipService;->stopSipStack()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    iget-object v5, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v5}, Lcom/csipsimple/service/SipService;->stopSelf()V

    goto/16 :goto_2
.end method

.method private onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "isSticky"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/csipsimple/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v7, 0x1

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "action":Ljava/lang/String;
    const-string v6, "DynamicReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Internal receive "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 116
    .local v5, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 117
    .local v4, "activeNetwork":Landroid/net/NetworkInfo;
    invoke-direct {p0, v4, p3}, Lcom/csipsimple/service/receiver/DynamicReceiver4;->onConnectivityChanged(Landroid/net/NetworkInfo;Z)V

    .line 139
    .end local v4    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v6, "com.csipsimple.service.ACCOUNT_CHANGED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    const-string v6, "id"

    invoke-virtual {p2, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 121
    .local v1, "accountId":J
    cmp-long v6, v1, v10

    if-eqz v6, :cond_0

    .line 122
    iget-object v6, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v6, v1, v2}, Lcom/csipsimple/service/SipService;->getAccount(J)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 123
    .local v0, "account":Lcom/csipsimple/api/SipProfile;
    if-eqz v0, :cond_0

    .line 124
    const-string v6, "DynamicReceiver"

    const-string v8, "Enqueue set account registration"

    invoke-static {v6, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v8, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    iget-boolean v6, v0, Lcom/csipsimple/api/SipProfile;->active:Z

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v8, v0, v6, v7}, Lcom/csipsimple/service/SipService;->setAccountRegistration(Lcom/csipsimple/api/SipProfile;IZ)Z

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 128
    .end local v0    # "account":Lcom/csipsimple/api/SipProfile;
    .end local v1    # "accountId":J
    :cond_3
    const-string v6, "com.csipsimple.service.ACTION_OUTGOING_UNREGISTER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 129
    iget-object v7, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    const-string v6, "outgoing_activity"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v7, v6}, Lcom/csipsimple/service/SipService;->unregisterForOutgoing(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 130
    :cond_4
    const-string v6, "com.csipsimple.service.ACTION_DEFER_OUTGOING_UNREGISTER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 131
    iget-object v7, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    const-string v6, "outgoing_activity"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v7, v6}, Lcom/csipsimple/service/SipService;->deferUnregisterForOutgoing(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 132
    :cond_5
    const-string v6, "com.csipsimple.service.ACTION_SIP_CAN_BE_STOPPED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 133
    iget-object v6, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v6}, Lcom/csipsimple/service/SipService;->cleanStop()V

    goto :goto_0

    .line 134
    :cond_6
    const-string v6, "com.csipsimple.service.ACTION_SIP_REQUEST_RESTART"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 135
    iget-object v6, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v6}, Lcom/csipsimple/service/SipService;->restartSipStack()V

    goto :goto_0

    .line 136
    :cond_7
    const-string v6, "vpn.connectivity"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    const/4 v6, 0x0

    invoke-direct {p0, v6, p3}, Lcom/csipsimple/service/receiver/DynamicReceiver4;->onConnectivityChanged(Landroid/net/NetworkInfo;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public compatIsInitialStickyBroadcast(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 79
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-boolean v1, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->hasStartedWifi:Z

    if-nez v1, :cond_0

    .line 81
    iput-boolean v0, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->hasStartedWifi:Z

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/csipsimple/service/receiver/DynamicReceiver4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/csipsimple/service/receiver/DynamicReceiver4$1;-><init>(Lcom/csipsimple/service/receiver/DynamicReceiver4;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public startMonitoring()V
    .locals 6

    .prologue
    .line 234
    iget-object v1, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getPrefs()Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v1

    const-string v2, "network_route_polling"

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    .line 236
    .local v0, "pollingIntervalMin":I
    const-string v1, "DynamicReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start monitoring of route file ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-lez v0, :cond_0

    .line 238
    new-instance v1, Ljava/util/Timer;

    const-string v2, "RouteChangeMonitor"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    .line 239
    iget-object v1, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    new-instance v2, Lcom/csipsimple/service/receiver/DynamicReceiver4$2;

    invoke-direct {v2, p0}, Lcom/csipsimple/service/receiver/DynamicReceiver4$2;-><init>(Lcom/csipsimple/service/receiver/DynamicReceiver4;)V

    .line 257
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    mul-int/lit8 v4, v0, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 239
    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 259
    :cond_0
    return-void
.end method

.method public stopMonitoring()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 264
    iget-object v0, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/service/receiver/DynamicReceiver4;->pollingTimer:Ljava/util/Timer;

    .line 267
    :cond_0
    return-void
.end method

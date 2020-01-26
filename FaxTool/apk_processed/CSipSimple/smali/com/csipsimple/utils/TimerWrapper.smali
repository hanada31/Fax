.class public Lcom/csipsimple/utils/TimerWrapper;
.super Landroid/content/BroadcastReceiver;
.source "TimerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/TimerWrapper$TimerJob;
    }
.end annotation


# static fields
.field private static final EXTRA_TIMER_ENTRY:Ljava/lang/String; = "entry"

.field private static final EXTRA_TIMER_SCHEME:Ljava/lang/String; = "timer"

.field private static final THIS_FILE:Ljava/lang/String; = "Timer wrap"

.field private static final TIMER_ACTION:Ljava/lang/String; = "com.csipsimple.PJ_TIMER"

.field private static singleton:Lcom/csipsimple/utils/TimerWrapper;

.field private static final singletonLock:Ljava/lang/Object;


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private final scheduleEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/csipsimple/service/SipService;

.field private serviceRegistered:Z

.field private wakeLock:Lcom/csipsimple/service/SipWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/TimerWrapper;->singletonLock:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/csipsimple/service/SipService;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/csipsimple/service/SipService;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/utils/TimerWrapper;->serviceRegistered:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    .line 62
    invoke-direct {p0, p1}, Lcom/csipsimple/utils/TimerWrapper;->setContext(Lcom/csipsimple/service/SipService;)V

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/utils/TimerWrapper;)Lcom/csipsimple/service/SipWakeLock;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/csipsimple/utils/TimerWrapper;->wakeLock:Lcom/csipsimple/service/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/utils/TimerWrapper;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/csipsimple/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    return-object v0
.end method

.method public static cancel(II)I
    .locals 1
    .param p0, "entry"    # I
    .param p1, "entryId"    # I

    .prologue
    .line 231
    sget-object v0, Lcom/csipsimple/utils/TimerWrapper;->singleton:Lcom/csipsimple/utils/TimerWrapper;

    invoke-direct {v0, p1}, Lcom/csipsimple/utils/TimerWrapper;->doCancel(I)I

    move-result v0

    return v0
.end method

.method public static create(Lcom/csipsimple/service/SipService;)V
    .locals 2
    .param p0, "ctxt"    # Lcom/csipsimple/service/SipService;

    .prologue
    .line 203
    sget-object v1, Lcom/csipsimple/utils/TimerWrapper;->singletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    sget-object v0, Lcom/csipsimple/utils/TimerWrapper;->singleton:Lcom/csipsimple/utils/TimerWrapper;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/csipsimple/utils/TimerWrapper;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/TimerWrapper;-><init>(Lcom/csipsimple/service/SipService;)V

    sput-object v0, Lcom/csipsimple/utils/TimerWrapper;->singleton:Lcom/csipsimple/utils/TimerWrapper;

    .line 203
    :goto_0
    monitor-exit v1

    .line 210
    return-void

    .line 207
    :cond_0
    sget-object v0, Lcom/csipsimple/utils/TimerWrapper;->singleton:Lcom/csipsimple/utils/TimerWrapper;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/TimerWrapper;->setContext(Lcom/csipsimple/service/SipService;)V

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static destroy()V
    .locals 2

    .prologue
    .line 214
    sget-object v1, Lcom/csipsimple/utils/TimerWrapper;->singletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    sget-object v0, Lcom/csipsimple/utils/TimerWrapper;->singleton:Lcom/csipsimple/utils/TimerWrapper;

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Lcom/csipsimple/utils/TimerWrapper;->singleton:Lcom/csipsimple/utils/TimerWrapper;

    invoke-direct {v0}, Lcom/csipsimple/utils/TimerWrapper;->quit()V

    .line 214
    :cond_0
    monitor-exit v1

    .line 219
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized doCancel(I)I
    .locals 3
    .param p1, "entryId"    # I

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    const-string v0, "Timer wrap"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/csipsimple/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/csipsimple/utils/TimerWrapper;->getPendingIntentForTimer(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 169
    iget-object v0, p0, Lcom/csipsimple/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized doSchedule(II)I
    .locals 7
    .param p1, "entryId"    # I
    .param p2, "intervalMs"    # I

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/csipsimple/utils/TimerWrapper;->getPendingIntentForTimer(I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 144
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v0, 0x2

    .line 147
    .local v0, "alarmType":I
    iget-object v4, p0, Lcom/csipsimple/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 148
    iget-object v4, p0, Lcom/csipsimple/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 153
    .local v1, "firstTime":J
    const/16 v4, 0xa

    if-ge p2, v4, :cond_0

    .line 154
    const-wide/16 v4, 0xa

    add-long/2addr v1, v4

    .line 160
    :goto_0
    const-string v4, "Timer wrap"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Schedule "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/csipsimple/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 162
    iget-object v4, p0, Lcom/csipsimple/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 156
    :cond_0
    int-to-long v4, p2

    add-long/2addr v1, v4

    goto :goto_0

    .line 140
    .end local v0    # "alarmType":I
    .end local v1    # "firstTime":J
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getPendingIntentForTimer(I)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "entryId"    # I

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.csipsimple.PJ_TIMER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timer://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "toSend":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    const-string v2, "entry"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object v2, p0, Lcom/csipsimple/utils/TimerWrapper;->service:Lcom/csipsimple/service/SipService;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized quit()V
    .locals 5

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    const-string v2, "Timer wrap"

    const-string v3, "Quit this wrapper"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-boolean v2, p0, Lcom/csipsimple/utils/TimerWrapper;->serviceRegistered:Z

    if-eqz v2, :cond_0

    .line 87
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/csipsimple/utils/TimerWrapper;->serviceRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    iget-object v2, p0, Lcom/csipsimple/utils/TimerWrapper;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v2, p0}, Lcom/csipsimple/service/SipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/csipsimple/utils/TimerWrapper;->wakeLock:Lcom/csipsimple/service/SipWakeLock;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/csipsimple/utils/TimerWrapper;->wakeLock:Lcom/csipsimple/service/SipWakeLock;

    invoke-virtual {v2}, Lcom/csipsimple/service/SipWakeLock;->reset()V

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/csipsimple/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/csipsimple/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v2, "Timer wrap"

    const-string v3, "Impossible to destroy timer wrapper"

    invoke-static {v2, v3, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 110
    :cond_3
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 111
    .local v1, "entryId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/csipsimple/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/csipsimple/utils/TimerWrapper;->getPendingIntentForTimer(I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static schedule(III)I
    .locals 2
    .param p0, "entry"    # I
    .param p1, "entryId"    # I
    .param p2, "time"    # I

    .prologue
    .line 223
    sget-object v0, Lcom/csipsimple/utils/TimerWrapper;->singleton:Lcom/csipsimple/utils/TimerWrapper;

    if-nez v0, :cond_0

    .line 224
    const-string v0, "Timer wrap"

    const-string v1, "Timer NOT initialized"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v0, -0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/csipsimple/utils/TimerWrapper;->singleton:Lcom/csipsimple/utils/TimerWrapper;

    invoke-direct {v0, p1, p2}, Lcom/csipsimple/utils/TimerWrapper;->doSchedule(II)I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized setContext(Lcom/csipsimple/service/SipService;)V
    .locals 3
    .param p1, "ctxt"    # Lcom/csipsimple/service/SipService;

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/utils/TimerWrapper;->service:Lcom/csipsimple/service/SipService;

    if-eq v1, p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/csipsimple/utils/TimerWrapper;->quit()V

    .line 71
    iput-object p1, p0, Lcom/csipsimple/utils/TimerWrapper;->service:Lcom/csipsimple/service/SipService;

    .line 72
    iget-object v1, p0, Lcom/csipsimple/utils/TimerWrapper;->service:Lcom/csipsimple/service/SipService;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/csipsimple/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    .line 73
    new-instance v2, Lcom/csipsimple/service/SipWakeLock;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/csipsimple/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-direct {v2, v1}, Lcom/csipsimple/service/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v2, p0, Lcom/csipsimple/utils/TimerWrapper;->wakeLock:Lcom/csipsimple/service/SipWakeLock;

    .line 75
    :cond_0
    iget-boolean v1, p0, Lcom/csipsimple/utils/TimerWrapper;->serviceRegistered:Z

    if-nez v1, :cond_1

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.csipsimple.PJ_TIMER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "timer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/csipsimple/utils/TimerWrapper;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1, p0, v0}, Lcom/csipsimple/service/SipService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/csipsimple/utils/TimerWrapper;->serviceRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    const-string v1, "com.csipsimple.PJ_TIMER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "Timer wrap"

    const-string v2, "FIRE Received..."

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v1, Lcom/csipsimple/utils/TimerWrapper;->singleton:Lcom/csipsimple/utils/TimerWrapper;

    if-nez v1, :cond_1

    .line 182
    const-string v1, "Timer wrap"

    const-string v2, "Not found singleton"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v1, "entry"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, "timerEntry":I
    const-string v1, "Timer wrap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Treat "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/csipsimple/utils/TimerWrapper;->singleton:Lcom/csipsimple/utils/TimerWrapper;

    invoke-virtual {v1, v0}, Lcom/csipsimple/utils/TimerWrapper;->treatAlarm(I)V

    goto :goto_0
.end method

.method public treatAlarm(I)V
    .locals 1
    .param p1, "entry"    # I

    .prologue
    .line 193
    new-instance v0, Lcom/csipsimple/utils/TimerWrapper$TimerJob;

    invoke-direct {v0, p0, p1}, Lcom/csipsimple/utils/TimerWrapper$TimerJob;-><init>(Lcom/csipsimple/utils/TimerWrapper;I)V

    .line 194
    .local v0, "t":Lcom/csipsimple/utils/TimerWrapper$TimerJob;
    invoke-virtual {v0}, Lcom/csipsimple/utils/TimerWrapper$TimerJob;->start()V

    .line 195
    return-void
.end method

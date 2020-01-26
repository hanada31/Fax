.class public Lcom/csipsimple/ui/incall/CallProximityManager;
.super Ljava/lang/Object;
.source "CallProximityManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;
    }
.end annotation


# static fields
.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final SCREEN_LOCKER_ACQUIRE_DELAY:I

.field private static final THIS_FILE:Ljava/lang/String; = "CallProximityManager"

.field private static powerLockReleaseIntMethod:Ljava/lang/reflect/Method;


# instance fields
.field private WAIT_FOR_PROXIMITY_NEGATIVE:I

.field private accelerometerEnabled:Z

.field private accelerometerManager:Lcom/csipsimple/ui/incall/AccelerometerListener;

.field private invertProximitySensor:Z

.field private isFirstRun:Z

.field private isProximityWakeHeld:Z

.field private mContext:Landroid/content/Context;

.field private mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

.field private mOrientation:I

.field private mScreenLocker:Lcom/csipsimple/widgets/ScreenLocker;

.field private powerManager:Landroid/os/PowerManager;

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximitySensorTracked:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private useTimeoutOverlay:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "google_sdk"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    sput v0, Lcom/csipsimple/ui/incall/CallProximityManager;->SCREEN_LOCKER_ACQUIRE_DELAY:I

    .line 48
    return-void

    .line 80
    :cond_0
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;Lcom/csipsimple/widgets/ScreenLocker;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "director"    # Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;
    .param p3, "screenLocker"    # Lcom/csipsimple/widgets/ScreenLocker;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v9, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    .line 65
    iput-boolean v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->invertProximitySensor:Z

    .line 66
    iput-boolean v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    .line 67
    iput-boolean v8, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->isFirstRun:Z

    .line 68
    iput-object v9, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    .line 76
    iput-boolean v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->accelerometerEnabled:Z

    .line 78
    iput v8, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->WAIT_FOR_PROXIMITY_NEGATIVE:I

    .line 213
    iput-boolean v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->isProximityWakeHeld:Z

    .line 90
    iput-object p1, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    .line 92
    iput-object p3, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mScreenLocker:Lcom/csipsimple/widgets/ScreenLocker;

    .line 94
    const-string v7, "sensor"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    iput-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 95
    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    .line 96
    new-instance v7, Lcom/csipsimple/ui/incall/AccelerometerListener;

    invoke-direct {v7, p1, p0}, Lcom/csipsimple/ui/incall/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;)V

    iput-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->accelerometerManager:Lcom/csipsimple/ui/incall/AccelerometerListener;

    .line 99
    iget-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    if-eqz v7, :cond_2

    .line 100
    const-string v7, "wifi"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 101
    .local v6, "wman":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 102
    .local v5, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_0

    .line 103
    const-string v7, "keep_awake_incall"

    invoke-static {p1, v7}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 106
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 107
    const-string v8, "getSupportedWakeLockFlags"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    .line 106
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 108
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 109
    .local v4, "supportedFlags":I
    const-string v7, "CallProximityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ">>> Flags supported : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-class v7, Landroid/os/PowerManager;

    const-string v8, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 111
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 112
    .local v3, "proximityScreenOffWakeLock":I
    and-int v7, v4, v3

    if-eqz v7, :cond_1

    .line 113
    const-string v7, "CallProximityManager"

    const-string v8, ">>> We can use native screen locker !!"

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->powerManager:Landroid/os/PowerManager;

    .line 115
    const-string v8, "com.csipsimple.CallProximity"

    .line 114
    invoke-virtual {v7, v3, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 116
    iget-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "proximityScreenOffWakeLock":I
    .end local v4    # "supportedFlags":I
    :cond_1
    :goto_0
    sget-object v7, Lcom/csipsimple/ui/incall/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;

    if-nez v7, :cond_2

    .line 124
    :try_start_1
    iget-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 125
    const-string v8, "release"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    .line 124
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/csipsimple/ui/incall/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .end local v5    # "winfo":Landroid/net/wifi/WifiInfo;
    .end local v6    # "wman":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v7, :cond_3

    .line 136
    iget-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    iput-object v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    .line 137
    const-string v7, "invert_proximity_sensor"

    invoke-static {p1, v7}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->invertProximitySensor:Z

    .line 140
    :cond_3
    return-void

    .line 119
    .restart local v5    # "winfo":Landroid/net/wifi/WifiInfo;
    .restart local v6    # "wman":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "CallProximityManager"

    const-string v8, "Impossible to get power manager supported wake lock flags"

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "CallProximityManager"

    const-string v8, "Impossible to get power manager release with it"

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private shouldUseTimeoutOverlay()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isTabletScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 297
    iput-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->useTimeoutOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 2

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->isProximityWakeHeld:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->isProximityWakeHeld:Z

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/CallProximityManager;->shouldUseTimeoutOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mScreenLocker:Lcom/csipsimple/widgets/ScreenLocker;

    sget v1, Lcom/csipsimple/ui/incall/CallProximityManager;->SCREEN_LOCKER_ACQUIRE_DELAY:I

    invoke-virtual {v0, v1}, Lcom/csipsimple/widgets/ScreenLocker;->delayedLock(I)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_2
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    iget-boolean v5, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->isFirstRun:Z

    if-nez v5, :cond_2

    .line 182
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v5, v4

    .line 183
    .local v1, "distance":F
    float-to-double v5, v1

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 184
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    move v0, v3

    .line 185
    .local v0, "active":Z
    :goto_0
    iget-boolean v5, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->invertProximitySensor:Z

    if-eqz v5, :cond_0

    .line 186
    if-eqz v0, :cond_5

    move v0, v4

    .line 188
    :cond_0
    :goto_1
    const-string v5, "CallProximityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Distance is now "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "isValidCallState":Z
    iget-object v5, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v5, :cond_1

    .line 192
    iget-object v5, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    invoke-interface {v5}, Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;->shouldActivateProximity()Z

    move-result v2

    .line 195
    :cond_1
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 196
    iget-object v5, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mScreenLocker:Lcom/csipsimple/widgets/ScreenLocker;

    invoke-virtual {v5}, Lcom/csipsimple/widgets/ScreenLocker;->show()V

    .line 197
    iget-object v5, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v5, :cond_2

    .line 198
    iget-object v5, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    invoke-interface {v5, v3}, Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V

    .line 208
    .end local v0    # "active":Z
    .end local v1    # "distance":F
    .end local v2    # "isValidCallState":Z
    :cond_2
    :goto_2
    iget-boolean v3, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->isFirstRun:Z

    if-eqz v3, :cond_3

    .line 209
    iput-boolean v4, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->isFirstRun:Z

    .line 211
    :cond_3
    return-void

    .restart local v1    # "distance":F
    :cond_4
    move v0, v4

    .line 184
    goto :goto_0

    .restart local v0    # "active":Z
    :cond_5
    move v0, v3

    .line 186
    goto :goto_1

    .line 201
    .restart local v2    # "isValidCallState":Z
    :cond_6
    iget-object v3, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mScreenLocker:Lcom/csipsimple/widgets/ScreenLocker;

    invoke-virtual {v3}, Lcom/csipsimple/widgets/ScreenLocker;->hide()V

    .line 202
    iget-object v3, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    invoke-interface {v3, v4}, Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V

    goto :goto_2
.end method

.method public orientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mOrientation:I

    .line 313
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/CallProximityManager;->updateProximitySensorMode()V

    .line 314
    return-void
.end method

.method public declared-synchronized release(I)V
    .locals 7
    .param p1, "flag"    # I

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->isProximityWakeHeld:Z

    if-eqz v2, :cond_2

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "usedNewRelease":Z
    sget-object v2, Lcom/csipsimple/ui/incall/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 222
    :try_start_1
    sget-object v2, Lcom/csipsimple/ui/incall/CallProximityManager;->powerLockReleaseIntMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    const/4 v1, 0x1

    .line 229
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 230
    :try_start_2
    iget-object v2, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 232
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->isProximityWakeHeld:Z

    .line 235
    .end local v1    # "usedNewRelease":Z
    :cond_2
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/CallProximityManager;->shouldUseTimeoutOverlay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    iget-object v2, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mScreenLocker:Lcom/csipsimple/widgets/ScreenLocker;

    invoke-virtual {v2}, Lcom/csipsimple/widgets/ScreenLocker;->hide()V

    .line 239
    :cond_3
    iget-object v2, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v2, :cond_4

    .line 240
    iget-object v2, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;->onProximityTrackingChanged(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :cond_4
    monitor-exit p0

    return-void

    .line 225
    .restart local v1    # "usedNewRelease":Z
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "CallProximityManager"

    const-string v3, "Error calling new release method "

    invoke-static {v2, v3, v0}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "usedNewRelease":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public restartTimer()V
    .locals 2

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/CallProximityManager;->shouldUseTimeoutOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mScreenLocker:Lcom/csipsimple/widgets/ScreenLocker;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/csipsimple/widgets/ScreenLocker;->delayedLock(I)V

    .line 308
    :cond_0
    return-void
.end method

.method public declared-synchronized startTracking()V
    .locals 3

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->isFirstRun:Z

    .line 147
    const-string v0, "CallProximityManager"

    const-string v1, "Register sensor"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 149
    iget-object v1, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    .line 150
    const/4 v2, 0x3

    .line 148
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->accelerometerEnabled:Z

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->accelerometerManager:Lcom/csipsimple/ui/incall/AccelerometerListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/incall/AccelerometerListener;->enable(Z)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->accelerometerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_1
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopTracking()V
    .locals 2

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->proximitySensorTracked:Z

    .line 163
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 164
    const-string v0, "CallProximityManager"

    const-string v1, "Unregister to sensor is done !!!"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->accelerometerEnabled:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->accelerometerManager:Lcom/csipsimple/ui/incall/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/incall/AccelerometerListener;->enable(Z)V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->accelerometerEnabled:Z

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mScreenLocker:Lcom/csipsimple/widgets/ScreenLocker;

    invoke-virtual {v0}, Lcom/csipsimple/widgets/ScreenLocker;->tearDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProximitySensorMode()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 269
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 271
    .local v2, "horizontal":Z
    :goto_0
    const/4 v0, 0x0

    .line 272
    .local v0, "activeRegardingCalls":Z
    iget-object v3, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->mDirector:Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;

    invoke-interface {v3}, Lcom/csipsimple/ui/incall/CallProximityManager$ProximityDirector;->shouldActivateProximity()Z

    move-result v0

    .line 276
    :cond_0
    const-string v3, "CallProximityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Horizontal : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and activate for calls "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/CallProximityManager;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :goto_1
    monitor-exit p0

    return-void

    .end local v0    # "activeRegardingCalls":Z
    .end local v2    # "horizontal":Z
    :cond_1
    move v2, v1

    .line 269
    goto :goto_0

    .line 285
    .restart local v0    # "activeRegardingCalls":Z
    .restart local v2    # "horizontal":Z
    :cond_2
    if-nez v2, :cond_3

    .line 286
    .local v1, "flags":I
    :goto_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/incall/CallProximityManager;->release(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 269
    .end local v0    # "activeRegardingCalls":Z
    .end local v1    # "flags":I
    .end local v2    # "horizontal":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 285
    .restart local v0    # "activeRegardingCalls":Z
    .restart local v2    # "horizontal":Z
    :cond_3
    :try_start_2
    iget v1, p0, Lcom/csipsimple/ui/incall/CallProximityManager;->WAIT_FOR_PROXIMITY_NEGATIVE:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

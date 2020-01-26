.class public final Lcom/csipsimple/ui/incall/AccelerometerListener;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/incall/AccelerometerListener$AccelerometerHandler;,
        Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HORIZONTAL_DEBOUNCE:I = 0x1f4

.field private static final ORIENTATION_CHANGED:I = 0x4d2

.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_UNKNOWN:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccelerometerListener"

.field private static final VDEBUG:Z = false

.field private static final VERTICAL_ANGLE:D = 50.0

.field private static final VERTICAL_DEBOUNCE:I = 0x64


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;

.field private mOrientation:I

.field private mPendingOrientation:I

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/csipsimple/ui/incall/AccelerometerListener$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/incall/AccelerometerListener$1;-><init>(Lcom/csipsimple/ui/incall/AccelerometerListener;)V

    iput-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 146
    new-instance v0, Lcom/csipsimple/ui/incall/AccelerometerListener$AccelerometerHandler;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/incall/AccelerometerListener$AccelerometerHandler;-><init>(Lcom/csipsimple/ui/incall/AccelerometerListener;)V

    iput-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p2, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mListener:Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;

    .line 71
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 72
    iget-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/incall/AccelerometerListener;DDD)V
    .locals 0

    .prologue
    .line 118
    invoke-direct/range {p0 .. p6}, Lcom/csipsimple/ui/incall/AccelerometerListener;->onSensorEvent(DDD)V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/incall/AccelerometerListener;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mPendingOrientation:I

    return v0
.end method

.method static synthetic access$2(Lcom/csipsimple/ui/incall/AccelerometerListener;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mOrientation:I

    return-void
.end method

.method static synthetic access$3(Lcom/csipsimple/ui/incall/AccelerometerListener;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mOrientation:I

    return v0
.end method

.method static synthetic access$4(Lcom/csipsimple/ui/incall/AccelerometerListener;)Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mListener:Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;

    return-object v0
.end method

.method private onSensorEvent(DDD)V
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 123
    cmpl-double v5, p1, v6

    if-eqz v5, :cond_0

    cmpl-double v5, p3, v6

    if-eqz v5, :cond_0

    cmpl-double v5, p5, v6

    if-nez v5, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    mul-double v5, p1, p1

    mul-double v7, p3, p3

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 128
    .local v3, "xy":D
    invoke-static {v3, v4, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 130
    .local v0, "angle":D
    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v0

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    div-double v0, v5, v7

    .line 131
    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    cmpl-double v5, v0, v5

    if-lez v5, :cond_2

    const/4 v2, 0x1

    .line 133
    .local v2, "orientation":I
    :goto_1
    invoke-direct {p0, v2}, Lcom/csipsimple/ui/incall/AccelerometerListener;->setOrientation(I)V

    goto :goto_0

    .line 131
    .end local v2    # "orientation":I
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private setOrientation(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget v2, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mPendingOrientation:I

    if-ne v2, p1, :cond_0

    .line 94
    monitor-exit p0

    .line 116
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget v2, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mOrientation:I

    if-eq v2, p1, :cond_2

    .line 105
    iput p1, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mPendingOrientation:I

    .line 106
    iget-object v2, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 108
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/16 v0, 0x64

    .line 110
    .local v0, "delay":I
    :goto_1
    iget-object v2, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mHandler:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 91
    .end local v0    # "delay":I
    .end local v1    # "m":Landroid/os/Message;
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 109
    .restart local v1    # "m":Landroid/os/Message;
    :cond_1
    const/16 v0, 0x1f4

    goto :goto_1

    .line 113
    .end local v1    # "m":Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mPendingOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public enable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 76
    const-string v0, "AccelerometerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enable("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    monitor-enter p0

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mOrientation:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mPendingOrientation:I

    .line 81
    iget-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    .line 82
    const/4 v3, 0x3

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 77
    :goto_0
    monitor-exit p0

    .line 88
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 85
    iget-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

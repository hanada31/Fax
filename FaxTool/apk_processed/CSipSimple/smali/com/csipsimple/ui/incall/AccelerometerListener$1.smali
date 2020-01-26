.class Lcom/csipsimple/ui/incall/AccelerometerListener$1;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/AccelerometerListener;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/AccelerometerListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/incall/AccelerometerListener$1;->this$0:Lcom/csipsimple/ui/incall/AccelerometerListener;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 143
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener$1;->this$0:Lcom/csipsimple/ui/incall/AccelerometerListener;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-double v1, v1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v3, v3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    float-to-double v5, v5

    invoke-static/range {v0 .. v6}, Lcom/csipsimple/ui/incall/AccelerometerListener;->access$0(Lcom/csipsimple/ui/incall/AccelerometerListener;DDD)V

    .line 139
    return-void
.end method

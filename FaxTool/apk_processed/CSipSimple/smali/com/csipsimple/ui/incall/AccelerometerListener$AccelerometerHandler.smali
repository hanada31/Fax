.class Lcom/csipsimple/ui/incall/AccelerometerListener$AccelerometerHandler;
.super Landroid/os/Handler;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccelerometerHandler"
.end annotation


# instance fields
.field l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/csipsimple/ui/incall/AccelerometerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/AccelerometerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/csipsimple/ui/incall/AccelerometerListener;

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/csipsimple/ui/incall/AccelerometerListener$AccelerometerHandler;->l:Ljava/lang/ref/WeakReference;

    .line 152
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/csipsimple/ui/incall/AccelerometerListener$AccelerometerHandler;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/ui/incall/AccelerometerListener;

    .line 156
    .local v0, "listener":Lcom/csipsimple/ui/incall/AccelerometerListener;
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 159
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    monitor-enter v0

    .line 162
    :try_start_0
    invoke-static {v0}, Lcom/csipsimple/ui/incall/AccelerometerListener;->access$1(Lcom/csipsimple/ui/incall/AccelerometerListener;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/csipsimple/ui/incall/AccelerometerListener;->access$2(Lcom/csipsimple/ui/incall/AccelerometerListener;I)V

    .line 164
    const-string v2, "AccelerometerListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "orientation: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-static {v0}, Lcom/csipsimple/ui/incall/AccelerometerListener;->access$3(Lcom/csipsimple/ui/incall/AccelerometerListener;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const-string v1, "horizontal"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v2, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {v0}, Lcom/csipsimple/ui/incall/AccelerometerListener;->access$4(Lcom/csipsimple/ui/incall/AccelerometerListener;)Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;

    move-result-object v1

    invoke-static {v0}, Lcom/csipsimple/ui/incall/AccelerometerListener;->access$3(Lcom/csipsimple/ui/incall/AccelerometerListener;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/csipsimple/ui/incall/AccelerometerListener$OrientationListener;->orientationChanged(I)V

    .line 161
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 166
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/csipsimple/ui/incall/AccelerometerListener;->access$3(Lcom/csipsimple/ui/incall/AccelerometerListener;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    const-string v1, "vertical"

    goto :goto_1

    .line 167
    :cond_2
    const-string v1, "unknown"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x4d2
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;
.super Ljava/lang/Object;
.source "CameraUtilsWrapper.java"


# static fields
.field private static instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static getInstance()Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;
    .locals 5

    .prologue
    .line 28
    sget-object v3, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    if-nez v3, :cond_0

    .line 29
    const-string v0, "org.webrtc.videoengine.camera.CameraUtils"

    .line 30
    .local v0, "className":Ljava/lang/String;
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 39
    const-class v4, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 40
    .local v2, "wrappedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    sput-object v3, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    sget-object v3, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->instance:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    return-object v3

    .line 32
    .end local v2    # "wrappedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;>;"
    :cond_1
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public abstract Init(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public abstract addCallbackBuffer(Landroid/hardware/Camera;[B)V
.end method

.method public abstract openCamera(I)Landroid/hardware/Camera;
.end method

.method public abstract setCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid;IILandroid/hardware/Camera;)V
.end method

.method public abstract setDisplayOrientation(Landroid/hardware/Camera;I)V
.end method

.method public abstract unsetCallback(Landroid/hardware/Camera;)V
.end method

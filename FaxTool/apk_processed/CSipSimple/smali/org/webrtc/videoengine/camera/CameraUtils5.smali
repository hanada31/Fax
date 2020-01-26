.class public Lorg/webrtc/videoengine/camera/CameraUtils5;
.super Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;
.source "CameraUtils5.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Init(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;Ljava/util/List;)V
    .locals 4
    .param p1, "deviceInfoAndroid"    # Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
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

    .prologue
    .line 32
    .local p2, "listToPopulate":Ljava/util/List;, "Ljava/util/List<Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;>;"
    const/4 v0, 0x0

    .line 37
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;)V

    .line 38
    .local v1, "newDevice":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 40
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v3, "Camera 1, Facing back"

    iput-object v3, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 41
    const/16 v3, 0x5a

    iput v3, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 42
    invoke-virtual {p1, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 44
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 46
    const/4 v0, 0x0

    .line 48
    new-instance v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .end local v1    # "newDevice":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;)V

    .line 49
    .restart local v1    # "newDevice":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    const-string v3, "Camera 2, Facing front"

    iput-object v3, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->SearchOldFrontFacingCameras(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p1, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 53
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public addCallbackBuffer(Landroid/hardware/Camera;[B)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "data"    # [B

    .prologue
    .line 72
    return-void
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid;IILandroid/hardware/Camera;)V
    .locals 0
    .param p1, "captureAndroid"    # Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .param p2, "numCaptureBuffers"    # I
    .param p3, "bufSize"    # I
    .param p4, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 61
    invoke-virtual {p4, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 62
    return-void
.end method

.method public setDisplayOrientation(Landroid/hardware/Camera;I)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "resultRotation"    # I

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 80
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 82
    return-void
.end method

.method public unsetCallback(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 67
    return-void
.end method

.class public Lorg/webrtc/videoengine/VideoCaptureAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "WEBRTC-JC"


# instance fields
.field private PIXEL_FORMAT:I

.field private camera:Landroid/hardware/Camera;

.field private cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

.field private captureLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private context:J

.field private currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

.field private expectedFrameSize:I

.field private id:I

.field private isCaptureRunning:Z

.field private isCaptureStarted:Z

.field private isSurfaceReady:Z

.field private localPreview:Landroid/view/SurfaceHolder;

.field private mCaptureFPS:I

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private final numCaptureBuffers:I

.field private orientation:I

.field private ownsBuffers:Z

.field pixelFormat:Landroid/graphics/PixelFormat;

.field public previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(IJLandroid/hardware/Camera;Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .locals 5
    .param p1, "in_id"    # I
    .param p2, "in_context"    # J
    .param p4, "in_camera"    # Landroid/hardware/Camera;
    .param p5, "in_device"    # Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    const/16 v0, 0x11

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    .line 39
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 41
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 42
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 43
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 44
    iput-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->numCaptureBuffers:I

    .line 47
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 48
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->orientation:I

    .line 49
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 52
    iput-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 54
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 56
    iput v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 57
    iput v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 58
    iput v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 72
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    .line 73
    iput-wide p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 74
    iput-object p4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 75
    iput-object p5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 76
    invoke-static {}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->getInstance()Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    .line 77
    return-void
.end method

.method public static DeleteVideoCaptureAndroid(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 2
    .param p0, "captureAndroid"    # Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .prologue
    .line 62
    const-string v0, "WEBRTC-JC"

    const-string v1, "DeleteVideoCaptureAndroid"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 65
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 68
    return-void
.end method

.method private tryStartCapture(III)I
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x1

    .line 81
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v6, :cond_0

    .line 82
    const-string v5, "WEBRTC-JC"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Camera not initialized %d"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return v4

    .line 86
    :cond_0
    const-string v6, "WEBRTC-JC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tryStartCapture "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 87
    const-string v8, " height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " frame rate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 88
    const-string v8, " isCaptureRunning "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 89
    const-string v8, " isSurfaceReady "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 90
    const-string v8, " isCaptureStarted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-static {v6, v7}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    if-nez v6, :cond_2

    :cond_1
    move v4, v5

    .line 93
    goto :goto_0

    .line 97
    :cond_2
    :try_start_0
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    iget-object v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 100
    new-instance v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v1}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 101
    .local v1, "currentCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    iput p1, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 102
    iput p2, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 103
    iput p3, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 104
    iget v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    iget-object v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v6, v7}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 106
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 107
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    iget v6, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 108
    iget v7, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 107
    invoke-virtual {v3, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 109
    iget v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 110
    iget v6, v1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 111
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 113
    mul-int v6, p1, p2

    iget-object v7, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v7, v7, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x8

    .line 114
    .local v0, "bufSize":I
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6, p0, v7, v0, v8}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->setCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid;IILandroid/hardware/Camera;)V

    .line 115
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 117
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    .line 118
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 119
    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 120
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 121
    iget-object v6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    iput-boolean v9, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    move v4, v5

    .line 130
    goto/16 :goto_0

    .line 124
    .end local v0    # "bufSize":I
    .end local v1    # "currentCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v2

    .line 125
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "WEBRTC-JC"

    const-string v6, "Failed to start camera"

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method native ProvideCameraFrame([BIJ)V
.end method

.method public SetPreviewRotation(I)V
    .locals 7
    .param p1, "rotation"    # I

    .prologue
    .line 197
    const-string v4, "WEBRTC-JC"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SetPreviewRotation:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_2

    .line 200
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "width":I
    const/4 v1, 0x0

    .line 203
    .local v1, "height":I
    const/4 v0, 0x0

    .line 205
    .local v0, "framerate":I
    iget-boolean v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-eqz v4, :cond_0

    .line 206
    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 207
    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 208
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 209
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 212
    :cond_0
    const/4 v2, 0x0

    .line 213
    .local v2, "resultRotation":I
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v4, v4, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 214
    sget-object v5, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 213
    if-ne v4, v5, :cond_3

    .line 218
    rsub-int v4, p1, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 224
    :goto_0
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v5, v2}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->setDisplayOrientation(Landroid/hardware/Camera;I)V

    .line 226
    iget-boolean v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-eqz v4, :cond_1

    .line 227
    invoke-virtual {p0, v3, v1, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StartCapture(III)I

    .line 229
    :cond_1
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 231
    .end local v0    # "framerate":I
    .end local v1    # "height":I
    .end local v2    # "resultRotation":I
    .end local v3    # "width":I
    :cond_2
    return-void

    .line 222
    .restart local v0    # "framerate":I
    .restart local v1    # "height":I
    .restart local v2    # "resultRotation":I
    .restart local v3    # "width":I
    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method public StartCapture(III)I
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 134
    const-string v1, "WEBRTC-JC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StartCapture width "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    const-string v3, " height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frame rate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lorg/webrtc/videoengine/ViERenderer;->GetLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 138
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 142
    :cond_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 144
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 145
    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 146
    iput p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 148
    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    iget v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    invoke-direct {p0, v1, v2, v3}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->tryStartCapture(III)I

    move-result v0

    .line 150
    .local v0, "res":I
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    return v0
.end method

.method public StopCapture()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 155
    const-string v2, "WEBRTC-JC"

    const-string v3, "StopCapture"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 158
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    .line 159
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 160
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 161
    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->unsetCallback(Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    iput-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 169
    :goto_0
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "WEBRTC-JC"

    const-string v2, "Failed to stop camera"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 175
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 180
    iget-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Z

    if-eqz v0, :cond_0

    .line 183
    array-length v0, p1

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    if-ne v0, v1, :cond_0

    .line 184
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    iget-wide v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ProvideCameraFrame([BIJ)V

    .line 185
    iget-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    invoke-virtual {v0, p2, p1}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->addCallbackBuffer(Landroid/hardware/Camera;[B)V

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 192
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 235
    const-string v0, "WEBRTC-JC"

    const-string v1, "VideoCaptureAndroid::surfaceChanged"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 239
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 241
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    invoke-direct {p0, v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->tryStartCapture(III)I

    .line 242
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 243
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 247
    const-string v0, "WEBRTC-JC"

    const-string v1, "VideoCaptureAndroid::surfaceCreated"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 251
    const-string v0, "WEBRTC-JC"

    const-string v1, "VideoCaptureAndroid::surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 254
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 255
    return-void
.end method

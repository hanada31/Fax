.class public Lorg/webrtc/videoengine/camera/CameraUtils8;
.super Lorg/webrtc/videoengine/camera/CameraUtils5;
.source "CameraUtils8.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field private ownsBuffers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/webrtc/videoengine/camera/CameraUtils5;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/camera/CameraUtils8;->ownsBuffers:Z

    .line 19
    return-void
.end method


# virtual methods
.method public addCallbackBuffer(Landroid/hardware/Camera;[B)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "data"    # [B

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/webrtc/videoengine/camera/CameraUtils8;->ownsBuffers:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 52
    :cond_0
    return-void
.end method

.method public setCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid;IILandroid/hardware/Camera;)V
    .locals 3
    .param p1, "captureAndroid"    # Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .param p2, "numCaptureBuffers"    # I
    .param p3, "bufSize"    # I
    .param p4, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 30
    const/4 v0, 0x0

    check-cast v0, [B

    .line 31
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 36
    invoke-virtual {p4, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 38
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/webrtc/videoengine/camera/CameraUtils8;->ownsBuffers:Z

    .line 39
    return-void

    .line 32
    :cond_0
    new-array v0, p3, [B

    .line 33
    invoke-virtual {p4, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDisplayOrientation(Landroid/hardware/Camera;I)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "resultRotation"    # I

    .prologue
    .line 56
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 57
    return-void
.end method

.method public unsetCallback(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 44
    return-void
.end method

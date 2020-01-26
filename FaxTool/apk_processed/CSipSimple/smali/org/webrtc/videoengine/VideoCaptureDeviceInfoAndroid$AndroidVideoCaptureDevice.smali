.class public Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidVideoCaptureDevice"
.end annotation


# instance fields
.field public captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

.field public deviceUniqueName:Ljava/lang/String;

.field public frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public index:I

.field public orientation:I

.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;


# direct methods
.method public constructor <init>(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->this$0:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 46
    return-void
.end method

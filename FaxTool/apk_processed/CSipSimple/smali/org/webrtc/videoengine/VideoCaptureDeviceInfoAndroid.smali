.class public Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;,
        Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$webrtc$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I = null

.field private static final TAG:Ljava/lang/String; = "WEBRTC"


# instance fields
.field private cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

.field context:Landroid/content/Context;

.field currentDeviceUniqueId:Ljava/lang/String;

.field deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;"
        }
    .end annotation
.end field

.field id:I


# direct methods
.method static synthetic $SWITCH_TABLE$org$webrtc$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->$SWITCH_TABLE$org$webrtc$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->values()[Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->$SWITCH_TABLE$org$webrtc$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "in_id"    # I
    .param p2, "in_context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->id:I

    .line 91
    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 93
    invoke-static {}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->getInstance()Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    .line 94
    return-void
.end method

.method private AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V
    .locals 12
    .param p1, "specificCapability"    # Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .prologue
    const/4 v6, 0x0

    .line 186
    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 215
    return-void

    .line 186
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 187
    .local v1, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    const/4 v2, 0x0

    .line 188
    .local v2, "foundCapability":Z
    iget-object v8, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v9, v8

    move v5, v6

    :goto_1
    if-lt v5, v9, :cond_4

    .line 197
    :goto_2
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v8, "GT-I9000"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 198
    iget-object v5, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v8, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-eq v5, v8, :cond_2

    .line 199
    iget-object v5, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v8, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-ne v5, v8, :cond_3

    .line 200
    :cond_2
    iget v5, p1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    const/16 v8, 0x160

    if-ne v5, v8, :cond_3

    iget v5, p1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    const/16 v8, 0x120

    if-ne v5, v8, :cond_3

    .line 202
    const/4 v2, 0x1

    .line 205
    :cond_3
    if-nez v2, :cond_0

    .line 207
    iget-object v5, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 208
    .local v4, "newCaptureCapabilies":[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-object v5, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v5, v5

    if-lt v3, v5, :cond_6

    .line 211
    aput-object p1, v4, v6

    .line 212
    iput-object v4, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    goto :goto_0

    .line 188
    .end local v3    # "i":I
    .end local v4    # "newCaptureCapabilies":[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    :cond_4
    aget-object v0, v8, v5

    .line 189
    .local v0, "capability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    iget v10, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    iget v11, p1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    if-ne v10, v11, :cond_5

    .line 190
    iget v10, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    iget v11, p1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    if-ne v10, v11, :cond_5

    .line 191
    const/4 v2, 0x1

    .line 192
    goto :goto_2

    .line 188
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 209
    .end local v0    # "capability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .restart local v3    # "i":I
    .restart local v4    # "newCaptureCapabilies":[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    :cond_6
    add-int/lit8 v5, v3, 0x1

    iget-object v8, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v8, v8, v3

    aput-object v8, v4, v5

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 345
    const/4 v1, 0x0

    .line 347
    .local v1, "classPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v8, "/system/framework/com.htc.hardware.twinCamDevice.jar"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v4, "file":Ljava/io/File;
    const-string v1, "com.htc.hardware.twinCamDevice.FrontFacingCamera"

    .line 349
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 350
    .local v3, "exists":Z
    if-nez v3, :cond_0

    .line 352
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    const-string v8, "/system/framework/com.sprint.hardware.twinCamDevice.jar"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .restart local v4    # "file":Ljava/io/File;
    const-string v1, "com.sprint.hardware.twinCamDevice.FrontFacingCamera"

    .line 354
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 356
    :cond_0
    if-nez v3, :cond_1

    .line 381
    :goto_0
    return-object v0

    .line 360
    :cond_1
    const-string v2, ""

    .line 361
    .local v2, "dexOutputDir":Ljava/lang/String;
    iget-object v8, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    if-eqz v8, :cond_2

    .line 362
    iget-object v8, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 363
    new-instance v6, Ljava/io/File;

    const-string v8, "dexfiles"

    invoke-direct {v6, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .local v6, "mFilesDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 366
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 372
    .end local v6    # "mFilesDir":Ljava/io/File;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/dexfiles"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    new-instance v5, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 376
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 375
    invoke-direct {v5, v8, v2, v0, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 378
    .local v5, "loader":Ldalvik/system/DexClassLoader;
    invoke-virtual {v5, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 379
    const-string v9, "getFrontFacingCamera"

    .line 378
    invoke-virtual {v8, v9, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 380
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v7, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 381
    .local v0, "camera":Landroid/hardware/Camera;
    goto :goto_0
.end method

.method private AllocateGalaxySFrontCamera()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 387
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 388
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 389
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v2, "camera-id"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 390
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 391
    return-object v0
.end method

.method public static CreateVideoCaptureDeviceInfoAndroid(ILandroid/content/Context;)Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    .locals 5
    .param p0, "in_id"    # I
    .param p1, "in_context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-string v1, "WEBRTC"

    .line 75
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "VideoCaptureDeviceInfoAndroid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;-><init>(ILandroid/content/Context;)V

    .line 79
    .local v0, "self":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    if-eqz v0, :cond_0

    invoke-direct {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->Init()I

    move-result v1

    if-nez v1, :cond_0

    .line 85
    .end local v0    # "self":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    :goto_0
    return-object v0

    .line 83
    .restart local v0    # "self":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    :cond_0
    const-string v1, "WEBRTC"

    const-string v2, "Failed to create VideoCaptureDeviceInfoAndroid."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Init()I
    .locals 4

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-virtual {v1, p0, v2}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->Init(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->VerifyCapabilities()V

    .line 107
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "WEBRTC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to init VideoCaptureDeviceInfo ex"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private VerifyCapabilities()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    .line 151
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "GT-I9000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "crespo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    :cond_0
    new-instance v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v2}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 155
    .local v2, "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    const/16 v3, 0x160

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 156
    const/16 v3, 0x120

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 157
    iput v7, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 158
    invoke-direct {p0, v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V

    .line 160
    new-instance v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .end local v2    # "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    invoke-direct {v2}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 161
    .restart local v2    # "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    const/16 v3, 0xb0

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 162
    const/16 v3, 0x90

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 163
    iput v7, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 164
    invoke-direct {p0, v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V

    .line 166
    new-instance v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .end local v2    # "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    invoke-direct {v2}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 167
    .restart local v2    # "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    const/16 v3, 0x140

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 168
    const/16 v3, 0xf0

    iput v3, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 169
    iput v7, v2, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 170
    invoke-direct {p0, v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V

    .line 174
    .end local v2    # "specificCapability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    :cond_1
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "motorola"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "umts_sholes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 182
    :cond_3
    return-void

    .line 176
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 177
    .local v1, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v5, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v6, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v0, v5, v3

    .line 178
    .local v0, "capability":Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    iput v7, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public AddDeviceInfo(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    .locals 9
    .param p1, "newDevice"    # Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 115
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, "frameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 117
    .local v3, "maxFPS":I
    if-nez v5, :cond_1

    .line 118
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iput-object v6, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 142
    :cond_0
    return-void

    .line 121
    :cond_1
    if-eqz v1, :cond_4

    .line 122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 131
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iput-object v6, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 132
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 133
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 134
    .local v4, "s":Landroid/hardware/Camera$Size;
    iget-object v6, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    new-instance v7, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v7}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    aput-object v7, v6, v2

    .line 135
    iget-object v6, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v6, v6, v2

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    iput v7, v6, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 136
    iget-object v6, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v6, v6, v2

    iget v7, v4, Landroid/hardware/Camera$Size;->width:I

    iput v7, v6, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 137
    iget-object v6, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v6, v6, v2

    iput v3, v6, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 138
    const-string v6, "WEBRTC"

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "VideoCaptureDeviceInfo maxFPS:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 140
    const-string v8, " width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 139
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 138
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 122
    .end local v2    # "i":I
    .end local v4    # "s":Landroid/hardware/Camera$Size;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    .local v0, "frameRate":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v3, :cond_2

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 128
    .end local v0    # "frameRate":Ljava/lang/Integer;
    :cond_4
    const/16 v3, 0xf

    goto :goto_1
.end method

.method public AllocateCamera(IJLjava/lang/String;)Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .locals 9
    .param p1, "id"    # I
    .param p2, "context"    # J
    .param p4, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 254
    :try_start_0
    const-string v0, "WEBRTC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AllocateCamera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v4, 0x0

    .line 257
    .local v4, "camera":Landroid/hardware/Camera;
    const/4 v5, 0x0

    .line 258
    .local v5, "deviceToUse":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    if-nez v4, :cond_2

    move-object v0, v8

    .line 286
    .end local v4    # "camera":Landroid/hardware/Camera;
    .end local v5    # "deviceToUse":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :goto_1
    return-object v0

    .line 258
    .restart local v4    # "camera":Landroid/hardware/Camera;
    .restart local v5    # "deviceToUse":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 259
    .local v6, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v1, v6, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    move-object v5, v6

    .line 262
    invoke-static {}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->$SWITCH_TABLE$org$webrtc$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType()[I

    move-result-object v1

    iget-object v2, v6, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 270
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->cameraUtils:Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;

    iget v2, v6, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-virtual {v1, v2}, Lorg/webrtc/videoengine/camera/CameraUtilsWrapper;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v4

    goto :goto_0

    .line 264
    :pswitch_0
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateGalaxySFrontCamera()Landroid/hardware/Camera;

    move-result-object v4

    .line 265
    goto :goto_0

    .line 267
    :pswitch_1
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;

    move-result-object v4

    .line 268
    goto :goto_0

    .line 278
    .end local v6    # "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_2
    const-string v0, "WEBRTC"

    const-string v1, "AllocateCamera - creating VideoCaptureAndroid"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/webrtc/videoengine/VideoCaptureAndroid;-><init>(IJLandroid/hardware/Camera;Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 282
    .end local v4    # "camera":Landroid/hardware/Camera;
    .end local v5    # "deviceToUse":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :catch_0
    move-exception v7

    .line 283
    .local v7, "ex":Ljava/lang/Exception;
    const-string v0, "WEBRTC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AllocateCamera Failed to open camera- ex "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 286
    goto :goto_1

    .line 262
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public GetCapabilityArray(Ljava/lang/String;)[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .locals 3
    .param p1, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 231
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 232
    .local v0, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v1, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    goto :goto_0
.end method

.method public GetDeviceUniqueName(I)Ljava/lang/String;
    .locals 1
    .param p1, "deviceNumber"    # I

    .prologue
    .line 223
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    goto :goto_0
.end method

.method public GetOrientation(Ljava/lang/String;)I
    .locals 3
    .param p1, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 242
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 243
    .local v0, "device":Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget v1, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    goto :goto_0
.end method

.method public NumberOfDevices()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public SearchOldFrontFacingCameras(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)Landroid/hardware/Camera$Parameters;
    .locals 11
    .param p1, "newDevice"    # Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
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
    const/4 v10, 0x0

    .line 297
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 298
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 299
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v7, "camera-id"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "cameraId":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 303
    :try_start_0
    const-string v7, "camera-id"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 304
    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 305
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 306
    sget-object v7, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v7, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 307
    const/4 v7, 0x0

    iput v7, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 308
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v6

    .line 336
    :goto_0
    return-object v7

    .line 311
    :catch_0
    move-exception v3

    .line 313
    .local v3, "ex":Ljava/lang/Exception;
    const-string v7, "WEBRTC"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Init Failed to open front camera camera - ex "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 313
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 321
    new-instance v5, Ljava/io/File;

    const-string v7, "/system/framework/com.htc.hardware.twinCamDevice.jar"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 323
    .local v4, "exists":Z
    if-nez v4, :cond_1

    .line 325
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    const-string v7, "/system/framework/com.sprint.hardware.twinCamDevice.jar"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 328
    :cond_1
    if-eqz v4, :cond_2

    .line 329
    sget-object v7, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v7, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 330
    iput v10, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 331
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;

    move-result-object v2

    .line 332
    .local v2, "evCamera":Landroid/hardware/Camera;
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 333
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    move-object v7, v6

    .line 334
    goto :goto_0

    .line 336
    .end local v2    # "evCamera":Landroid/hardware/Camera;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

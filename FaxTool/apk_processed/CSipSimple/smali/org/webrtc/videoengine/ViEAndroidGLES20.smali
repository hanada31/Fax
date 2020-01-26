.class public Lorg/webrtc/videoengine/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;,
        Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private nativeObject:J

.field private openGLCreated:Z

.field private surfaceCreated:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "WEBRTC-JR"

    sput-object v0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    .line 36
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 38
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    .line 42
    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewWidth:I

    .line 43
    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewHeight:I

    .line 51
    invoke-direct {p0, v2, v2, v2}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->init(ZII)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z
    .param p3, "depth"    # I
    .param p4, "stencil"    # I

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    .line 36
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 38
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    .line 42
    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewWidth:I

    .line 43
    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewHeight:I

    .line 57
    invoke-direct {p0, p2, p3, p4}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->init(ZII)V

    .line 58
    return-void
.end method

.method private native CreateOpenGLNative(JII)I
.end method

.method private native DrawNative(J)V
.end method

.method public static IsSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 305
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 306
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    .line 308
    const/4 v2, 0x1

    .line 310
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static UseOpenGL2(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "renderWindow"    # Ljava/lang/Object;

    .prologue
    .line 46
    const-class v0, Lorg/webrtc/videoengine/ViEAndroidGLES20;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    .prologue
    .line 104
    invoke-static {p0, p1}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 106
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    sget-object v1, Lorg/webrtc/videoengine/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init(ZII)V
    .locals 8
    .param p1, "translucent"    # Z
    .param p2, "depth"    # I
    .param p3, "stencil"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x0

    const/16 v1, 0x8

    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 72
    :cond_0
    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;-><init>(Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;)V

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 78
    if-eqz p1, :cond_1

    .line 79
    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    .line 78
    :goto_0
    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 83
    invoke-virtual {p0, p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 84
    invoke-virtual {p0, v7}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->setRenderMode(I)V

    .line 85
    return-void

    .line 80
    :cond_1
    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;

    const/4 v2, 0x6

    move v1, v4

    move v3, v4

    move v4, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0
.end method


# virtual methods
.method public DeRegisterNativeObject()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 355
    iput-boolean v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 356
    iput-boolean v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 357
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    .line 358
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 359
    return-void
.end method

.method public ReDraw()V
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->requestRender()V

    .line 366
    :cond_0
    return-void
.end method

.method public RegisterNativeObject(J)V
    .locals 1
    .param p1, "nativeObject"    # J

    .prologue
    .line 347
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 348
    iput-wide p1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 350
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 314
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 315
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-nez v0, :cond_2

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 320
    :cond_2
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    if-nez v0, :cond_3

    .line 321
    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    iget v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewWidth:I

    iget v3, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_1

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 326
    :cond_3
    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v0, v1}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->DrawNative(J)V

    .line 327
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 331
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    .line 332
    iput p2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewWidth:I

    .line 333
    iput p3, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->viewHeight:I

    .line 335
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 336
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_0

    .line 337
    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 341
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 344
    return-void
.end method

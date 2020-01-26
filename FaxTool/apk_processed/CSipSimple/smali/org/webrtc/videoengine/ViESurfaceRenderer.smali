.class public Lorg/webrtc/videoengine/ViESurfaceRenderer;
.super Ljava/lang/Object;
.source "ViESurfaceRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "WEBRTC"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private dstBottomScale:F

.field private dstLeftScale:F

.field private dstRect:Landroid/graphics/Rect;

.field private dstRightScale:F

.field private dstTopScale:F

.field private srcRect:Landroid/graphics/Rect;

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 3
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    .line 41
    iput v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstTopScale:F

    .line 42
    iput v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    .line 43
    iput v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    .line 44
    iput v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRightScale:F

    .line 47
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 48
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method private changeDestRect(II)V
    .locals 4
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRightScale:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 56
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 57
    return-void
.end method

.method private saveBitmapToJPEG(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 146
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v0, "byteOutStream":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 150
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 151
    const-string v2, "/sdcard/render_%d.jpg"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 150
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "output":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 153
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 154
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1    # "output":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v2

    goto :goto_0

    .line 156
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public CreateBitmap(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 108
    const-string v0, "WEBRTC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateByteBitmap "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, -0x4

    .line 111
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 118
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 119
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 120
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 121
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 122
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public CreateByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 126
    const-string v0, "WEBRTC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateByteBuffer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0, p1, p2}, Lorg/webrtc/videoengine/ViESurfaceRenderer;->CreateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 129
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public DrawBitmap()V
    .locals 5

    .prologue
    .line 171
    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 175
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 180
    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public DrawByteBuffer()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 166
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 167
    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViESurfaceRenderer;->DrawBitmap()V

    goto :goto_0
.end method

.method public SetCoordinates(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 136
    const-string v0, "WEBRTC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetCoordinates "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput p1, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    .line 139
    iput p2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstTopScale:F

    .line 140
    iput p3, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRightScale:F

    .line 141
    iput p4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    .line 142
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "in_width"    # I
    .param p4, "in_height"    # I

    .prologue
    .line 61
    const-string v0, "WEBRTC"

    const-string v1, "ViESurfaceRender::surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-direct {p0, p3, p4}, Lorg/webrtc/videoengine/ViESurfaceRenderer;->changeDestRect(II)V

    .line 65
    const-string v0, "WEBRTC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViESurfaceRender::surfaceChanged in_width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in_height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    const-string v2, " srcRect.left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    const-string v2, " srcRect.top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    const-string v2, " srcRect.right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    const-string v2, " srcRect.bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    const-string v2, " dstRect.left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string v2, " dstRect.top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    const-string v2, " dstRect.right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    const-string v2, " dstRect.bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 78
    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 79
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_1

    .line 80
    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 81
    .local v1, "dst":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 82
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lorg/webrtc/videoengine/ViESurfaceRenderer;->changeDestRect(II)V

    .line 83
    const-string v2, "WEBRTC"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ViESurfaceRender::surfaceCreated dst.left:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 85
    const-string v4, " dst.top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    const-string v4, " dst.right:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    const-string v4, " dst.bottom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    const-string v4, " srcRect.left:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    const-string v4, " srcRect.top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    const-string v4, " srcRect.right:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    const-string v4, " srcRect.bottom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    const-string v4, " dstRect.left:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    const-string v4, " dstRect.top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 94
    const-string v4, " dstRect.right:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    const-string v4, " dstRect.bottom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 99
    .end local v1    # "dst":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 102
    const-string v0, "WEBRTC"

    const-string v1, "ViESurfaceRenderer::surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 104
    iput-object v2, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 105
    return-void
.end method

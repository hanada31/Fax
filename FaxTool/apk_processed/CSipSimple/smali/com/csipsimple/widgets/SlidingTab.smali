.class public Lcom/csipsimple/widgets/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SlidingTab.java"

# interfaces
.implements Lcom/csipsimple/widgets/IOnLeftRightChoice$IOnLeftRightProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/widgets/SlidingTab$Slider;
    }
.end annotation


# static fields
.field private static final TARGET_ZONE:F = 0.6666667f

.field private static final THIS_FILE:Ljava/lang/String; = "SlidingTab"

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL


# instance fields
.field private currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

.field private density:F

.field private leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

.field private mVibrator:Landroid/os/Vibrator;

.field private onTriggerListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

.field private rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

.field private targetZone:F

.field private tracking:Z

.field private triggered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/widgets/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/widgets/SlidingTab;->triggered:Z

    .line 271
    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/csipsimple/widgets/SlidingTab;->density:F

    .line 272
    new-instance v0, Lcom/csipsimple/widgets/SlidingTab$Slider;

    const v2, 0x7f0200b2

    const v3, 0x7f02015f

    const v4, 0x7f02014f

    const v5, 0x7f020157

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/csipsimple/widgets/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIII)V

    iput-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    .line 273
    new-instance v0, Lcom/csipsimple/widgets/SlidingTab$Slider;

    const v2, 0x7f0200b3

    const v3, 0x7f020160

    const v4, 0x7f020153

    const v5, 0x7f02015c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/csipsimple/widgets/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIII)V

    iput-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    .line 274
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 491
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/csipsimple/widgets/SlidingTab;->vibrate(J)V

    .line 492
    const-string v0, "SlidingTab"

    const-string v1, "We take the call...."

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->onTriggerListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "SlidingTab"

    const-string v1, "We transmit to the parent...."

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->onTriggerListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

    invoke-interface {v0, p1}, Lcom/csipsimple/widgets/IOnLeftRightChoice;->onLeftRightChoice(I)V

    .line 497
    :cond_0
    return-void
.end method

.method private moveHandle(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 399
    iget-object v3, p0, Lcom/csipsimple/widgets/SlidingTab;->currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v3}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$0(Lcom/csipsimple/widgets/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v2

    .line 400
    .local v2, "handle":Landroid/view/View;
    iget-object v3, p0, Lcom/csipsimple/widgets/SlidingTab;->currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v3}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$6(Lcom/csipsimple/widgets/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    .line 402
    .local v0, "content":Landroid/view/View;
    float-to-int v3, p1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 403
    .local v1, "deltaX":I
    invoke-virtual {v2, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 404
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 406
    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingTab;->invalidate()V

    .line 407
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .param p1, "duration"    # J

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 303
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 304
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 305
    .local v7, "y":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 307
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v10}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$0(Lcom/csipsimple/widgets/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v2

    .line 308
    .local v2, "leftHandle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 309
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    .line 311
    .local v3, "leftHit":Z
    iget-object v10, p0, Lcom/csipsimple/widgets/SlidingTab;->rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v10}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$0(Lcom/csipsimple/widgets/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v4

    .line 312
    .local v4, "rightHandle":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 313
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    .line 315
    .local v5, "rightHit":Z
    iget-boolean v10, p0, Lcom/csipsimple/widgets/SlidingTab;->tracking:Z

    if-nez v10, :cond_0

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    .line 336
    :goto_0
    return v8

    .line 319
    :cond_0
    if-nez v0, :cond_1

    .line 320
    iput-boolean v9, p0, Lcom/csipsimple/widgets/SlidingTab;->tracking:Z

    .line 321
    iput-boolean v8, p0, Lcom/csipsimple/widgets/SlidingTab;->triggered:Z

    .line 322
    const-wide/16 v10, 0x1e

    invoke-direct {p0, v10, v11}, Lcom/csipsimple/widgets/SlidingTab;->vibrate(J)V

    .line 323
    if-eqz v3, :cond_2

    .line 324
    iget-object v8, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    iput-object v8, p0, Lcom/csipsimple/widgets/SlidingTab;->currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    .line 325
    const v8, 0x3f2aaaab

    iput v8, p0, Lcom/csipsimple/widgets/SlidingTab;->targetZone:F

    .line 326
    iget-object v8, p0, Lcom/csipsimple/widgets/SlidingTab;->rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v8}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$1(Lcom/csipsimple/widgets/SlidingTab$Slider;)V

    .line 332
    :goto_1
    iget-object v8, p0, Lcom/csipsimple/widgets/SlidingTab;->currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v8, v9}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$2(Lcom/csipsimple/widgets/SlidingTab$Slider;I)V

    .line 333
    iget-object v8, p0, Lcom/csipsimple/widgets/SlidingTab;->currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v8}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$3(Lcom/csipsimple/widgets/SlidingTab$Slider;)V

    :cond_1
    move v8, v9

    .line 336
    goto :goto_0

    .line 328
    :cond_2
    iget-object v8, p0, Lcom/csipsimple/widgets/SlidingTab;->rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    iput-object v8, p0, Lcom/csipsimple/widgets/SlidingTab;->currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    .line 329
    const v8, 0x3eaaaaaa

    iput v8, p0, Lcom/csipsimple/widgets/SlidingTab;->targetZone:F

    .line 330
    iget-object v8, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v8}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$1(Lcom/csipsimple/widgets/SlidingTab$Slider;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$5(Lcom/csipsimple/widgets/SlidingTab$Slider;IIIII)V

    .line 394
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    const/4 v5, 0x1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$5(Lcom/csipsimple/widgets/SlidingTab$Slider;IIIII)V

    .line 395
    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingTab;->invalidate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 279
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 292
    .local v3, "widthSpecSize":I
    iget v4, p0, Lcom/csipsimple/widgets/SlidingTab;->density:F

    iget-object v5, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-virtual {v5}, Lcom/csipsimple/widgets/SlidingTab$Slider;->getTabHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 293
    .local v1, "leftTabHeight":I
    iget v4, p0, Lcom/csipsimple/widgets/SlidingTab;->density:F

    iget-object v5, p0, Lcom/csipsimple/widgets/SlidingTab;->rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-virtual {v5}, Lcom/csipsimple/widgets/SlidingTab$Slider;->getTabHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 295
    .local v2, "rightTabHeight":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 297
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lcom/csipsimple/widgets/SlidingTab;->setMeasuredDimension(II)V

    .line 298
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 342
    iget-boolean v9, p0, Lcom/csipsimple/widgets/SlidingTab;->tracking:Z

    if-eqz v9, :cond_0

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 344
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 345
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 346
    .local v6, "y":F
    iget-object v9, p0, Lcom/csipsimple/widgets/SlidingTab;->currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v9}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$0(Lcom/csipsimple/widgets/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    .line 347
    .local v1, "handle":Landroid/view/View;
    packed-switch v0, :pswitch_data_0

    .line 376
    .end local v0    # "action":I
    .end local v1    # "handle":Landroid/view/View;
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/csipsimple/widgets/SlidingTab;->tracking:Z

    if-nez v9, :cond_7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_7

    :goto_1
    return v8

    .line 349
    .restart local v0    # "action":I
    .restart local v1    # "handle":Landroid/view/View;
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :pswitch_0
    invoke-direct {p0, v5, v6}, Lcom/csipsimple/widgets/SlidingTab;->moveHandle(FF)V

    .line 350
    move v2, v5

    .line 351
    .local v2, "position":F
    iget v9, p0, Lcom/csipsimple/widgets/SlidingTab;->targetZone:F

    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingTab;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v3, v9, v10

    .line 352
    .local v3, "target":F
    iget-object v9, p0, Lcom/csipsimple/widgets/SlidingTab;->currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    iget-object v10, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    cmpl-float v9, v2, v3

    if-lez v9, :cond_3

    move v4, v7

    .line 354
    .local v4, "targetZoneReached":Z
    :goto_2
    iget-boolean v9, p0, Lcom/csipsimple/widgets/SlidingTab;->triggered:Z

    if-nez v9, :cond_1

    if-eqz v4, :cond_1

    .line 355
    iput-boolean v7, p0, Lcom/csipsimple/widgets/SlidingTab;->triggered:Z

    .line 356
    iput-boolean v8, p0, Lcom/csipsimple/widgets/SlidingTab;->tracking:Z

    .line 357
    iget-object v9, p0, Lcom/csipsimple/widgets/SlidingTab;->currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$2(Lcom/csipsimple/widgets/SlidingTab$Slider;I)V

    .line 358
    iget-object v9, p0, Lcom/csipsimple/widgets/SlidingTab;->currentSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    iget-object v10, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v8

    :goto_3
    invoke-direct {p0, v9}, Lcom/csipsimple/widgets/SlidingTab;->dispatchTriggerEvent(I)V

    .line 361
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-gez v9, :cond_0

    .line 367
    .end local v2    # "position":F
    .end local v3    # "target":F
    .end local v4    # "targetZoneReached":Z
    :cond_2
    :pswitch_1
    iput-boolean v8, p0, Lcom/csipsimple/widgets/SlidingTab;->tracking:Z

    .line 368
    iput-boolean v8, p0, Lcom/csipsimple/widgets/SlidingTab;->triggered:Z

    .line 369
    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingTab;->resetView()V

    goto :goto_0

    .restart local v2    # "position":F
    .restart local v3    # "target":F
    :cond_3
    move v4, v8

    .line 352
    goto :goto_2

    :cond_4
    cmpg-float v9, v2, v3

    if-gez v9, :cond_5

    move v4, v7

    goto :goto_2

    :cond_5
    move v4, v8

    goto :goto_2

    .restart local v4    # "targetZoneReached":Z
    :cond_6
    move v9, v7

    .line 358
    goto :goto_3

    .end local v0    # "action":I
    .end local v1    # "handle":Landroid/view/View;
    .end local v2    # "position":F
    .end local v3    # "target":F
    .end local v4    # "targetZoneReached":Z
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_7
    move v8, v7

    .line 376
    goto :goto_1

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetView()V
    .locals 6

    .prologue
    .line 382
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v0}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$4(Lcom/csipsimple/widgets/SlidingTab$Slider;)V

    .line 383
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v0}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$4(Lcom/csipsimple/widgets/SlidingTab$Slider;)V

    .line 384
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingTab;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingTab;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingTab;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingTab;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/csipsimple/widgets/SlidingTab;->onLayout(ZIIII)V

    .line 385
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v0, p1}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$9(Lcom/csipsimple/widgets/SlidingTab$Slider;I)V

    .line 439
    return-void
.end method

.method public setLeftTabDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "iconD"    # Landroid/graphics/drawable/Drawable;
    .param p2, "targetD"    # Landroid/graphics/drawable/Drawable;
    .param p3, "barD"    # Landroid/graphics/drawable/Drawable;
    .param p4, "tabD"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$8(Lcom/csipsimple/widgets/SlidingTab$Slider;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 430
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->leftSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$7(Lcom/csipsimple/widgets/SlidingTab$Slider;IIII)V

    .line 426
    return-void
.end method

.method public setOnLeftRightListener(Lcom/csipsimple/widgets/IOnLeftRightChoice;)V
    .locals 0
    .param p1, "l"    # Lcom/csipsimple/widgets/IOnLeftRightChoice;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/csipsimple/widgets/SlidingTab;->onTriggerListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

    .line 508
    return-void
.end method

.method public setRightHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v0, p1}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$9(Lcom/csipsimple/widgets/SlidingTab$Slider;I)V

    .line 470
    return-void
.end method

.method public setRightTabDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "iconD"    # Landroid/graphics/drawable/Drawable;
    .param p2, "targetD"    # Landroid/graphics/drawable/Drawable;
    .param p3, "barD"    # Landroid/graphics/drawable/Drawable;
    .param p4, "tabD"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$8(Lcom/csipsimple/widgets/SlidingTab$Slider;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 462
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab;->rightSlider:Lcom/csipsimple/widgets/SlidingTab$Slider;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/csipsimple/widgets/SlidingTab$Slider;->access$7(Lcom/csipsimple/widgets/SlidingTab$Slider;IIII)V

    .line 458
    return-void
.end method

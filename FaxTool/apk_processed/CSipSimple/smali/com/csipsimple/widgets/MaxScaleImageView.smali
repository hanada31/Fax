.class public Lcom/csipsimple/widgets/MaxScaleImageView;
.super Landroid/widget/ImageView;
.source "MaxScaleImageView.java"


# instance fields
.field private mMaxScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/widgets/MaxScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/csipsimple/widgets/MaxScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/csipsimple/widgets/MaxScaleImageView;->mMaxScale:F

    .line 45
    return-void
.end method

.method private updateScale()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 73
    invoke-virtual {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 75
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 78
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/csipsimple/widgets/MaxScaleImageView;->mMaxScale:F

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/csipsimple/widgets/MaxScaleImageView;->mMaxScale:F

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 80
    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v5}, Lcom/csipsimple/widgets/MaxScaleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 82
    .local v4, "trans":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 83
    .local v3, "scale":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/csipsimple/widgets/MaxScaleImageView;->mMaxScale:F

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    div-float/2addr v5, v9

    invoke-virtual {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/csipsimple/widgets/MaxScaleImageView;->mMaxScale:F

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 84
    iget v5, p0, Lcom/csipsimple/widgets/MaxScaleImageView;->mMaxScale:F

    iget v6, p0, Lcom/csipsimple/widgets/MaxScaleImageView;->mMaxScale:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 85
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 87
    .local v2, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 93
    :goto_0
    invoke-virtual {p0, v2}, Lcom/csipsimple/widgets/MaxScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 98
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "m":Landroid/graphics/Matrix;
    .end local v3    # "scale":Landroid/graphics/Matrix;
    .end local v4    # "trans":Landroid/graphics/Matrix;
    :cond_0
    :goto_1
    return-void

    .line 91
    .restart local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "m":Landroid/graphics/Matrix;
    .restart local v3    # "scale":Landroid/graphics/Matrix;
    .restart local v4    # "trans":Landroid/graphics/Matrix;
    :cond_1
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 95
    .end local v2    # "m":Landroid/graphics/Matrix;
    .end local v3    # "scale":Landroid/graphics/Matrix;
    .end local v4    # "trans":Landroid/graphics/Matrix;
    :cond_2
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v5}, Lcom/csipsimple/widgets/MaxScaleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 102
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->updateScale()V

    .line 106
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-direct {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->updateScale()V

    .line 64
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-direct {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->updateScale()V

    .line 58
    return-void
.end method

.method public setImageMaxScale(F)V
    .locals 0
    .param p1, "maxScale"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/csipsimple/widgets/MaxScaleImageView;->mMaxScale:F

    .line 51
    invoke-direct {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->updateScale()V

    .line 52
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    invoke-direct {p0}, Lcom/csipsimple/widgets/MaxScaleImageView;->updateScale()V

    .line 70
    return-void
.end method

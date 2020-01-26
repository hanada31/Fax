.class public Lcom/csipsimple/widgets/FitTextView;
.super Landroid/widget/TextView;
.source "FitTextView.java"


# instance fields
.field private maxTextSize:F

.field private minTextSize:F

.field private testPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/csipsimple/widgets/FitTextView;->initialise()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lcom/csipsimple/widgets/FitTextView;->initialise()V

    .line 40
    return-void
.end method

.method private initialise()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/widgets/FitTextView;->testPaint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/csipsimple/widgets/FitTextView;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/csipsimple/widgets/FitTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 46
    invoke-virtual {p0}, Lcom/csipsimple/widgets/FitTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/csipsimple/widgets/FitTextView;->maxTextSize:F

    .line 47
    iget v0, p0, Lcom/csipsimple/widgets/FitTextView;->maxTextSize:F

    const/high16 v1, 0x41100000    # 9.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 48
    const/high16 v0, 0x41b80000    # 23.0f

    iput v0, p0, Lcom/csipsimple/widgets/FitTextView;->maxTextSize:F

    .line 50
    :cond_0
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/csipsimple/widgets/FitTextView;->minTextSize:F

    .line 51
    return-void
.end method

.method private refitText(Ljava/lang/String;I)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textWidth"    # I

    .prologue
    .line 57
    if-lez p2, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/csipsimple/widgets/FitTextView;->getPaddingLeft()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0}, Lcom/csipsimple/widgets/FitTextView;->getPaddingRight()I

    move-result v4

    sub-int v0, v3, v4

    .line 59
    .local v0, "availableWidth":I
    iget v3, p0, Lcom/csipsimple/widgets/FitTextView;->maxTextSize:F

    float-to-int v2, v3

    .line 60
    .local v2, "trySize":I
    iget v3, p0, Lcom/csipsimple/widgets/FitTextView;->minTextSize:F

    float-to-int v3, v3

    sub-int v3, v2, v3

    xor-int/lit8 v3, v3, -0x1

    div-int/lit8 v1, v3, 0x2

    .line 62
    .local v1, "increment":I
    iget-object v3, p0, Lcom/csipsimple/widgets/FitTextView;->testPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 63
    :goto_0
    int-to-float v3, v2

    iget v4, p0, Lcom/csipsimple/widgets/FitTextView;->minTextSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/csipsimple/widgets/FitTextView;->testPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 73
    :cond_0
    :goto_1
    const/4 v3, 0x0

    int-to-float v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/csipsimple/widgets/FitTextView;->setTextSize(IF)V

    .line 75
    .end local v0    # "availableWidth":I
    .end local v1    # "increment":I
    .end local v2    # "trySize":I
    :cond_1
    return-void

    .line 64
    .restart local v0    # "availableWidth":I
    .restart local v1    # "increment":I
    .restart local v2    # "trySize":I
    :cond_2
    add-int/2addr v2, v1

    .line 65
    if-nez v1, :cond_3

    const/4 v1, -0x1

    .line 66
    :goto_2
    int-to-float v3, v2

    iget v4, p0, Lcom/csipsimple/widgets/FitTextView;->minTextSize:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    .line 67
    iget v3, p0, Lcom/csipsimple/widgets/FitTextView;->minTextSize:F

    float-to-int v2, v3

    .line 68
    goto :goto_1

    .line 65
    :cond_3
    xor-int/lit8 v3, v1, -0x1

    div-int/lit8 v1, v3, 0x2

    goto :goto_2

    .line 70
    :cond_4
    iget-object v3, p0, Lcom/csipsimple/widgets/FitTextView;->testPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method


# virtual methods
.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/csipsimple/widgets/FitTextView;->maxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/csipsimple/widgets/FitTextView;->minTextSize:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 81
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 83
    .local v0, "parentWidth":I
    invoke-virtual {p0}, Lcom/csipsimple/widgets/FitTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/csipsimple/widgets/FitTextView;->refitText(Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 96
    if-eq p1, p3, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/csipsimple/widgets/FitTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/csipsimple/widgets/FitTextView;->refitText(Ljava/lang/String;I)V

    .line 99
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/csipsimple/widgets/FitTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/csipsimple/widgets/FitTextView;->refitText(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public setMaxTextSize(I)V
    .locals 1
    .param p1, "minTextSize"    # I

    .prologue
    .line 115
    int-to-float v0, p1

    iput v0, p0, Lcom/csipsimple/widgets/FitTextView;->maxTextSize:F

    .line 116
    return-void
.end method

.method public setMinTextSize(I)V
    .locals 1
    .param p1, "minTextSize"    # I

    .prologue
    .line 107
    int-to-float v0, p1

    iput v0, p0, Lcom/csipsimple/widgets/FitTextView;->minTextSize:F

    .line 108
    return-void
.end method

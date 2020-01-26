.class public Lcom/csipsimple/widgets/SlidingPanel;
.super Landroid/widget/SlidingDrawer;
.source "SlidingPanel.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 39
    invoke-super/range {p0 .. p5}, Landroid/widget/SlidingDrawer;->onLayout(ZIIII)V

    .line 41
    sub-int v7, p4, p2

    .line 42
    .local v7, "width":I
    sub-int v6, p5, p3

    .line 45
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingPanel;->getHandle()Landroid/view/View;

    move-result-object v5

    .line 47
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 48
    .local v3, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 54
    .local v0, "childHeight":I
    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingPanel;->getContent()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v4, v8, Landroid/util/DisplayMetrics;->density:F

    .line 56
    .local v4, "density":F
    invoke-virtual {p0}, Lcom/csipsimple/widgets/SlidingPanel;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v1, 0x0

    .line 57
    .local v1, "childLeft":I
    :goto_0
    sub-int v8, v6, v0

    const/high16 v9, 0x41400000    # 12.0f

    mul-float/2addr v9, v4

    float-to-int v9, v9

    sub-int v2, v8, v9

    .line 59
    .local v2, "childTop":I
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 62
    return-void

    .line 56
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_0
    sub-int v1, v7, v3

    goto :goto_0
.end method

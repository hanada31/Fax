.class public Lcom/csipsimple/ui/dialpad/DialerLayout;
.super Landroid/widget/LinearLayout;
.source "DialerLayout.java"


# static fields
.field private static final LIST_BTNS_HEIGHT:I = 0x64

.field private static final LIST_DIALPAD_HEIGHT:I = 0x154

.field private static final LIST_DIGITS_HEIGHT:I = 0x64

.field private static final LIST_MIN_HEIGHT:I = 0xa0

.field private static final MIN_BTNS_HEIGHT:I = 0x2b

.field private static final THIS_FILE:Ljava/lang/String; = "DialerLayout"


# instance fields
.field private canShowList:Z

.field private expectedBtnHeightFactor:F

.field private forceNoList:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->forceNoList:Z

    .line 45
    iput-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->canShowList:Z

    .line 51
    invoke-direct {p0}, Lcom/csipsimple/ui/dialpad/DialerLayout;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->forceNoList:Z

    .line 45
    iput-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->canShowList:Z

    .line 56
    invoke-direct {p0}, Lcom/csipsimple/ui/dialpad/DialerLayout;->init()V

    .line 57
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 61
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 62
    .local v0, "btnsWeight":I
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 63
    .local v2, "padWeight":I
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 65
    .local v1, "digitsWeight":I
    int-to-float v3, v0

    mul-float/2addr v3, v5

    add-int v4, v0, v2

    add-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->expectedBtnHeightFactor:F

    .line 66
    return-void
.end method


# virtual methods
.method public canShowList()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->canShowList:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 70
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 71
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 72
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 75
    .local v0, "density":F
    const v9, 0x7f060082

    invoke-virtual {p0, v9}, Lcom/csipsimple/ui/dialpad/DialerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, "dialerCallBar":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v9, v3

    iget v10, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->expectedBtnHeightFactor:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x422c0000    # 43.0f

    mul-float/2addr v10, v0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 79
    const/high16 v9, 0x422c0000    # 43.0f

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 80
    const/4 v9, 0x0

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-boolean v9, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->forceNoList:Z

    if-nez v9, :cond_9

    .line 98
    int-to-float v9, v3

    const/high16 v10, 0x442f0000    # 700.0f

    mul-float/2addr v10, v0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    .line 99
    const-string v9, "DialerLayout"

    const-string v10, "We force height to show list"

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->canShowList:Z

    .line 101
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerLayout;->getChildCount()I

    move-result v9

    if-lt v4, v9, :cond_4

    .line 126
    .end local v4    # "i":I
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 127
    return-void

    .line 82
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v7, 0x0

    .line 83
    .local v7, "orientation":I
    instance-of v9, v1, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_2

    move-object v9, v1

    .line 84
    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v7

    .line 86
    :cond_2
    if-nez v7, :cond_3

    .line 87
    const/4 v9, 0x0

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 91
    :goto_3
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 89
    :cond_3
    const/4 v9, 0x0

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_3

    .line 102
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "orientation":I
    .restart local v4    # "i":I
    :cond_4
    invoke-virtual {p0, v4}, Lcom/csipsimple/ui/dialpad/DialerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 103
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v5

    .line 104
    .local v5, "id":I
    const v9, 0x7f060082

    if-ne v5, v9, :cond_6

    .line 105
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 107
    const/4 v9, 0x0

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 108
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    :cond_6
    const v9, 0x7f060081

    if-ne v5, v9, :cond_7

    .line 110
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 111
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x43aa0000    # 340.0f

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 112
    const/4 v9, 0x0

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 113
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 114
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    const v9, 0x7f06006d

    if-ne v5, v9, :cond_8

    .line 115
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 117
    const/4 v9, 0x0

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 118
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 119
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    const v9, 0x7f06006f

    if-ne v5, v9, :cond_5

    .line 120
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 124
    .end local v4    # "i":I
    .end local v5    # "id":I
    .end local v8    # "v":Landroid/view/View;
    :cond_9
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->canShowList:Z

    goto/16 :goto_2
.end method

.method public setForceNoList(Z)V
    .locals 0
    .param p1, "noList"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/csipsimple/ui/dialpad/DialerLayout;->forceNoList:Z

    .line 131
    return-void
.end method

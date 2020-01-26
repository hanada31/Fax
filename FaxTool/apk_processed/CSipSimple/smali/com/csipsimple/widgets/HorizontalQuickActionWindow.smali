.class public Lcom/csipsimple/widgets/HorizontalQuickActionWindow;
.super Landroid/widget/PopupWindow;
.source "HorizontalQuickActionWindow.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "HorizontalQuickActionWindow"


# instance fields
.field private anchorRect:Landroid/graphics/Rect;

.field private anchorView:Landroid/view/View;

.field private arrowDown:Landroid/widget/ImageView;

.field private arrowUp:Landroid/widget/ImageView;

.field contentView:Landroid/view/View;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final resources:Landroid/content/res/Resources;

.field private screenWidth:I

.field private shadowWidth:I

.field private track:Landroid/view/ViewGroup;

.field private trackAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aView"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 85
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 86
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->screenWidth:I

    .line 87
    iput-object p2, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->anchorView:Landroid/view/View;

    .line 89
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->setWindowLayoutMode(II)V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->resources:Landroid/content/res/Resources;

    .line 91
    iget-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->resources:Landroid/content/res/Resources;

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->shadowWidth:I

    .line 92
    iget v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->screenWidth:I

    iget v2, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->shadowWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->shadowWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->setWidth(I)V

    .line 93
    invoke-virtual {p0, v4}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->setHeight(I)V

    .line 95
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p0, v3}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->setFocusable(Z)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->setTouchable(Z)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->setOutsideTouchable(Z)V

    move-object v1, p1

    .line 101
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->inflater:Landroid/view/LayoutInflater;

    .line 102
    const v1, 0x7f030049

    invoke-direct {p0, v1}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->setContentView(I)V

    .line 105
    iget-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->contentView:Landroid/view/View;

    const v2, 0x7f0600e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->arrowUp:Landroid/widget/ImageView;

    .line 106
    iget-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->contentView:Landroid/view/View;

    const v2, 0x7f0600e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->arrowDown:Landroid/widget/ImageView;

    .line 107
    iget-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->contentView:Landroid/view/View;

    const v2, 0x7f0600e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->track:Landroid/view/ViewGroup;

    .line 110
    const v1, 0x7f040001

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->trackAnim:Landroid/view/animation/Animation;

    .line 111
    iget-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->trackAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/csipsimple/widgets/HorizontalQuickActionWindow$1;

    invoke-direct {v2, p0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow$1;-><init>(Lcom/csipsimple/widgets/HorizontalQuickActionWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 119
    return-void
.end method

.method private onBackPressed()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->dismiss()V

    .line 185
    return-void
.end method

.method private setContentView(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->contentView:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->contentView:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method private showArrow(II)V
    .locals 5
    .param p1, "whichArrow"    # I
    .param p2, "requestedX"    # I

    .prologue
    const v4, 0x7f0600e6

    .line 134
    if-ne p1, v4, :cond_0

    iget-object v3, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->arrowUp:Landroid/widget/ImageView;

    .line 135
    .local v3, "showArrow":Landroid/view/View;
    :goto_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->arrowDown:Landroid/widget/ImageView;

    .line 137
    .local v1, "hideArrow":Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->arrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 139
    .local v0, "arrowWidth":I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 140
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 142
    .local v2, "param":Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 144
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    return-void

    .line 134
    .end local v0    # "arrowWidth":I
    .end local v1    # "hideArrow":Landroid/view/View;
    .end local v2    # "param":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "showArrow":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->arrowDown:Landroid/widget/ImageView;

    goto :goto_0

    .line 135
    .restart local v3    # "showArrow":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->arrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method


# virtual methods
.method public addItem(IILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "drawable"    # I
    .param p2, "resid"    # I
    .param p3, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method public addItem(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "drawable"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method public addItem(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/Bitmap;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 160
    return-void
.end method

.method public addItem(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resid"    # I
    .param p3, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method public addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 148
    iget-object v2, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03004a

    iget-object v4, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->track:Landroid/view/ViewGroup;

    .line 149
    const/4 v5, 0x0

    .line 148
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/widgets/QuickActionItem;

    .line 150
    .local v1, "view":Lcom/csipsimple/widgets/QuickActionItem;
    invoke-virtual {v1, p1}, Lcom/csipsimple/widgets/QuickActionItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {v1, p2}, Lcom/csipsimple/widgets/QuickActionItem;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v1, p3}, Lcom/csipsimple/widgets/QuickActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v2, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->track:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 155
    .local v0, "index":I
    iget-object v2, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->track:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 156
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 175
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->onBackPressed()V

    .line 177
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllItems()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->track:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->track:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 256
    return-void
.end method

.method public setAnchor(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->anchorRect:Landroid/graphics/Rect;

    .line 128
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->show(I)V

    .line 197
    return-void
.end method

.method public show(I)V
    .locals 7
    .param p1, "requestedX"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 204
    iget-object v4, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->anchorRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 205
    const-string v4, "HorizontalQuickActionWindow"

    const-string v5, "Anchor not defined : Impossible to show the window"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v4, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->anchorView:Landroid/view/View;

    invoke-super {p0, v4, v5, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 212
    invoke-virtual {p0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    .line 215
    const/4 v5, -0x2

    .line 214
    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    .line 216
    invoke-virtual {p0}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 218
    .local v0, "blockHeight":I
    iget v4, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->shadowWidth:I

    neg-int v2, v4

    .line 223
    .local v2, "x":I
    iget-object v4, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->anchorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v4, v0, :cond_2

    .line 227
    const v4, 0x7f0600e7

    invoke-direct {p0, v4, p1}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->showArrow(II)V

    .line 228
    iget-object v4, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->anchorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v0

    .line 229
    .local v3, "y":I
    const v1, 0x7f0c0066

    .line 243
    .local v1, "windowAnimations":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->setAnimationStyle(I)V

    .line 244
    iget-object v4, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->track:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->trackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    invoke-virtual {p0, v2, v3, v6, v6}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->update(IIII)V

    goto :goto_0

    .line 235
    .end local v1    # "windowAnimations":I
    .end local v3    # "y":I
    :cond_2
    const v4, 0x7f0600e6

    invoke-direct {p0, v4, p1}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->showArrow(II)V

    .line 236
    iget-object v4, p0, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->anchorRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 237
    .restart local v3    # "y":I
    const v1, 0x7f0c0067

    .restart local v1    # "windowAnimations":I
    goto :goto_1
.end method

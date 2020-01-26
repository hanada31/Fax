.class public Lcom/csipsimple/widgets/DragnDropListView;
.super Landroid/widget/ListView;
.source "DragnDropListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/widgets/DragnDropListView$DragListener;,
        Lcom/csipsimple/widgets/DragnDropListView$DropListener;,
        Lcom/csipsimple/widgets/DragnDropListView$RemoveListener;
    }
.end annotation


# instance fields
.field private grabberId:I

.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/csipsimple/widgets/DragnDropListView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/csipsimple/widgets/DragnDropListView$DropListener;

.field private mFirstDragPos:I

.field private mHeight:I

.field private final mItemHeightExpanded:I

.field private final mItemHeightNormal:I

.field private mLowerBound:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mTempRect:Landroid/graphics/Rect;

    .line 70
    const v1, 0x7f06005b

    iput v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->grabberId:I

    .line 74
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mTouchSlop:I

    .line 75
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mItemHeightNormal:I

    .line 77
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mItemHeightExpanded:I

    .line 78
    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 175
    iget v0, p0, Lcom/csipsimple/widgets/DragnDropListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 176
    iget v0, p0, Lcom/csipsimple/widgets/DragnDropListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/csipsimple/widgets/DragnDropListView;->mUpperBound:I

    .line 178
    :cond_0
    iget v0, p0, Lcom/csipsimple/widgets/DragnDropListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 179
    iget v0, p0, Lcom/csipsimple/widgets/DragnDropListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/csipsimple/widgets/DragnDropListView;->mLowerBound:I

    .line 181
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 9

    .prologue
    .line 221
    iget v7, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 222
    .local v0, "childnum":I
    iget v7, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    iget v8, p0, Lcom/csipsimple/widgets/DragnDropListView;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 223
    add-int/lit8 v0, v0, 0x1

    .line 226
    :cond_0
    iget v7, p0, Lcom/csipsimple/widgets/DragnDropListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/csipsimple/widgets/DragnDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 228
    .local v1, "first":Landroid/view/View;
    const/4 v3, 0x0

    .line 229
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/csipsimple/widgets/DragnDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 230
    .local v6, "vv":Landroid/view/View;
    if-nez v6, :cond_1

    .line 253
    return-void

    .line 233
    :cond_1
    iget v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mItemHeightNormal:I

    .line 234
    .local v2, "height":I
    const/4 v5, 0x0

    .line 235
    .local v5, "visibility":I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 237
    iget v7, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    iget v8, p0, Lcom/csipsimple/widgets/DragnDropListView;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 239
    const/4 v5, 0x4

    .line 248
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 249
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 250
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 244
    :cond_4
    if-ne v3, v0, :cond_2

    .line 245
    iget v7, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_2

    .line 246
    iget v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPoint:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 346
    iget-object v0, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    return-void
.end method

.method private getItemForPosition(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 158
    iget v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPoint:I

    sub-int v2, p1, v2

    add-int/lit8 v0, v2, -0x20

    .line 159
    .local v0, "adjustedy":I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/csipsimple/widgets/DragnDropListView;->myPointToPosition(II)I

    move-result v1

    .line 160
    .local v1, "pos":I
    if-ltz v1, :cond_1

    .line 161
    iget v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 162
    add-int/lit8 v1, v1, 0x1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    if-gez v0, :cond_0

    .line 165
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 140
    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mTempRect:Landroid/graphics/Rect;

    .line 141
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getChildCount()I

    move-result v1

    .line 142
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_0

    .line 149
    const/4 v4, -0x1

    :goto_1
    return v4

    .line 143
    :cond_0
    invoke-virtual {p0, v3}, Lcom/csipsimple/widgets/DragnDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 145
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_1

    .line 142
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 319
    invoke-direct {p0}, Lcom/csipsimple/widgets/DragnDropListView;->stopDragging()V

    .line 321
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 322
    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x30

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 323
    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 324
    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/csipsimple/widgets/DragnDropListView;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 326
    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 327
    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 328
    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x198

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 330
    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 331
    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 333
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 334
    .local v1, "v":Landroid/widget/ImageView;
    const-string v2, "#e0103010"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, "backGroundColor":I
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 336
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 337
    iput-object p1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 339
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowManager:Landroid/view/WindowManager;

    .line 340
    iget-object v2, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/csipsimple/widgets/DragnDropListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iput-object v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragView:Landroid/widget/ImageView;

    .line 342
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-object v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 353
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 354
    iget-object v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    iput-object v3, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragView:Landroid/widget/ImageView;

    .line 357
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 359
    iput-object v3, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 361
    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .param p1, "deletion"    # Z

    .prologue
    const/4 v6, 0x0

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/DragnDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 189
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_1

    .line 190
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getFirstVisiblePosition()I

    move-result v2

    .line 193
    .local v2, "position":I
    invoke-virtual {p0, v6}, Lcom/csipsimple/widgets/DragnDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 194
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/csipsimple/widgets/DragnDropListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    invoke-virtual {p0, v2, v4}, Lcom/csipsimple/widgets/DragnDropListView;->setSelectionFromTop(II)V

    .line 198
    .end local v2    # "position":I
    .end local v4    # "y":I
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->layoutChildren()V

    .line 199
    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/DragnDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 200
    if-nez v3, :cond_1

    .line 209
    return-void

    .line 204
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 205
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/csipsimple/widgets/DragnDropListView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 91
    iget-object v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragListener:Lcom/csipsimple/widgets/DragnDropListView$DragListener;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDropListener:Lcom/csipsimple/widgets/DragnDropListView$DropListener;

    if-eqz v9, :cond_4

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_4

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    .line 94
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 95
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Lcom/csipsimple/widgets/DragnDropListView;->pointToPosition(II)I

    move-result v3

    .line 96
    .local v3, "itemnum":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {p0, v9}, Lcom/csipsimple/widgets/DragnDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 99
    .local v2, "item":Landroid/view/ViewGroup;
    const-string v9, "DnD view"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Start dragging at "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " # "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getFirstVisiblePosition()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    sub-int v9, v7, v9

    iput v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPoint:I

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v7

    iput v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mCoordOffset:I

    .line 102
    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->grabberId:I

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "dragger":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    .line 104
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 132
    .end local v1    # "dragger":Landroid/view/View;
    .end local v2    # "item":Landroid/view/ViewGroup;
    .end local v3    # "itemnum":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :goto_0
    return v8

    .line 106
    .restart local v1    # "dragger":Landroid/view/View;
    .restart local v2    # "item":Landroid/view/ViewGroup;
    .restart local v3    # "itemnum":I
    .restart local v6    # "x":I
    .restart local v7    # "y":I
    :cond_2
    iget-object v4, p0, Lcom/csipsimple/widgets/DragnDropListView;->mTempRect:Landroid/graphics/Rect;

    .line 107
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 112
    iget v9, v4, Landroid/graphics/Rect;->left:I

    if-ge v9, v6, :cond_3

    iget v9, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v9, :cond_3

    .line 113
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 118
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v7}, Lcom/csipsimple/widgets/DragnDropListView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 120
    iput v3, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    .line 121
    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    iput v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mFirstDragPos:I

    .line 122
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mHeight:I

    .line 123
    iget v5, p0, Lcom/csipsimple/widgets/DragnDropListView;->mTouchSlop:I

    .line 124
    .local v5, "touchSlop":I
    sub-int v9, v7, v5

    iget v10, p0, Lcom/csipsimple/widgets/DragnDropListView;->mHeight:I

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mUpperBound:I

    .line 125
    add-int v9, v7, v5

    iget v10, p0, Lcom/csipsimple/widgets/DragnDropListView;->mHeight:I

    mul-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mLowerBound:I

    .line 126
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    goto :goto_0

    .line 129
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "touchSlop":I
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragView:Landroid/widget/ImageView;

    .line 132
    .end local v1    # "dragger":Landroid/view/View;
    .end local v2    # "item":Landroid/view/ViewGroup;
    .end local v3    # "itemnum":I
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    .line 257
    iget-object v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragListener:Lcom/csipsimple/widgets/DragnDropListView$DragListener;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDropListener:Lcom/csipsimple/widgets/DragnDropListView$DropListener;

    if-eqz v9, :cond_b

    :cond_0
    iget-object v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_b

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 259
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 313
    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 315
    .end local v0    # "action":I
    :goto_1
    return v9

    .line 262
    .restart local v0    # "action":I
    :pswitch_0
    iget-object v3, p0, Lcom/csipsimple/widgets/DragnDropListView;->mTempRect:Landroid/graphics/Rect;

    .line 263
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 264
    invoke-direct {p0}, Lcom/csipsimple/widgets/DragnDropListView;->stopDragging()V

    .line 266
    iget-object v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDropListener:Lcom/csipsimple/widgets/DragnDropListView$DropListener;

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 267
    iget-object v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDropListener:Lcom/csipsimple/widgets/DragnDropListView$DropListener;

    iget v10, p0, Lcom/csipsimple/widgets/DragnDropListView;->mFirstDragPos:I

    iget v11, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/csipsimple/widgets/DragnDropListView$DropListener;->drop(II)V

    .line 269
    :cond_2
    invoke-direct {p0, v12}, Lcom/csipsimple/widgets/DragnDropListView;->unExpandViews(Z)V

    goto :goto_0

    .line 274
    .end local v3    # "r":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 275
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 276
    .local v8, "y":I
    invoke-direct {p0, v7, v8}, Lcom/csipsimple/widgets/DragnDropListView;->dragView(II)V

    .line 277
    invoke-direct {p0, v8}, Lcom/csipsimple/widgets/DragnDropListView;->getItemForPosition(I)I

    move-result v1

    .line 278
    .local v1, "itemnum":I
    if-ltz v1, :cond_1

    .line 279
    if-eqz v0, :cond_3

    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    if-eq v1, v9, :cond_5

    .line 280
    :cond_3
    iget-object v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragListener:Lcom/csipsimple/widgets/DragnDropListView$DragListener;

    if-eqz v9, :cond_4

    .line 281
    iget-object v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragListener:Lcom/csipsimple/widgets/DragnDropListView$DragListener;

    iget v10, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/csipsimple/widgets/DragnDropListView$DragListener;->drag(II)V

    .line 283
    :cond_4
    iput v1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragPos:I

    .line 284
    invoke-direct {p0}, Lcom/csipsimple/widgets/DragnDropListView;->doExpansion()V

    .line 286
    :cond_5
    const/4 v5, 0x0

    .line 287
    .local v5, "speed":I
    invoke-direct {p0, v8}, Lcom/csipsimple/widgets/DragnDropListView;->adjustScrollBounds(I)V

    .line 288
    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mLowerBound:I

    if-le v8, v9, :cond_9

    .line 290
    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mHeight:I

    iget v10, p0, Lcom/csipsimple/widgets/DragnDropListView;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_8

    const/16 v5, 0x10

    .line 295
    :cond_6
    :goto_2
    if-eqz v5, :cond_1

    .line 296
    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v12, v9}, Lcom/csipsimple/widgets/DragnDropListView;->pointToPosition(II)I

    move-result v4

    .line 297
    .local v4, "ref":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    .line 300
    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-virtual {p0, v12, v9}, Lcom/csipsimple/widgets/DragnDropListView;->pointToPosition(II)I

    move-result v4

    .line 302
    :cond_7
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DragnDropListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/csipsimple/widgets/DragnDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 303
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 304
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 305
    .local v2, "pos":I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/csipsimple/widgets/DragnDropListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 290
    .end local v2    # "pos":I
    .end local v4    # "ref":I
    .end local v6    # "v":Landroid/view/View;
    :cond_8
    const/4 v5, 0x4

    goto :goto_2

    .line 291
    :cond_9
    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mUpperBound:I

    if-ge v8, v9, :cond_6

    .line 293
    iget v9, p0, Lcom/csipsimple/widgets/DragnDropListView;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_a

    const/16 v5, -0x10

    :goto_3
    goto :goto_2

    :cond_a
    const/4 v5, -0x4

    goto :goto_3

    .line 315
    .end local v0    # "action":I
    .end local v1    # "itemnum":I
    .end local v5    # "speed":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setGrabberId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/csipsimple/widgets/DragnDropListView;->grabberId:I

    .line 86
    return-void
.end method

.method public setOnDragListener(Lcom/csipsimple/widgets/DragnDropListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/csipsimple/widgets/DragnDropListView$DragListener;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDragListener:Lcom/csipsimple/widgets/DragnDropListView$DragListener;

    .line 365
    return-void
.end method

.method public setOnDropListener(Lcom/csipsimple/widgets/DragnDropListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/csipsimple/widgets/DragnDropListView$DropListener;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/csipsimple/widgets/DragnDropListView;->mDropListener:Lcom/csipsimple/widgets/DragnDropListView$DropListener;

    .line 369
    return-void
.end method

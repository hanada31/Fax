.class Lcom/csipsimple/widgets/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/widgets/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# static fields
.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x1

.field private static final STATE_ACTIVE:I = 0x2

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_PRESSED:I = 0x1


# instance fields
.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;IIII)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "iconId"    # I
    .param p3, "targetId"    # I
    .param p4, "barId"    # I
    .param p5, "tabId"    # I

    .prologue
    const/4 v3, -0x2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 119
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0060

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 132
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/widgets/SlidingTab$Slider;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/widgets/SlidingTab$Slider;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/csipsimple/widgets/SlidingTab$Slider;->hide()V

    return-void
.end method

.method static synthetic access$2(Lcom/csipsimple/widgets/SlidingTab$Slider;I)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/csipsimple/widgets/SlidingTab$Slider;->setState(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/csipsimple/widgets/SlidingTab$Slider;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/csipsimple/widgets/SlidingTab$Slider;->showTarget()V

    return-void
.end method

.method static synthetic access$4(Lcom/csipsimple/widgets/SlidingTab$Slider;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/csipsimple/widgets/SlidingTab$Slider;->reset()V

    return-void
.end method

.method static synthetic access$5(Lcom/csipsimple/widgets/SlidingTab$Slider;IIIII)V
    .locals 0

    .prologue
    .line 222
    invoke-direct/range {p0 .. p5}, Lcom/csipsimple/widgets/SlidingTab$Slider;->layout(IIIII)V

    return-void
.end method

.method static synthetic access$6(Lcom/csipsimple/widgets/SlidingTab$Slider;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/csipsimple/widgets/SlidingTab$Slider;IIII)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/csipsimple/widgets/SlidingTab$Slider;->setResources(IIII)V

    return-void
.end method

.method static synthetic access$8(Lcom/csipsimple/widgets/SlidingTab$Slider;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/csipsimple/widgets/SlidingTab$Slider;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$9(Lcom/csipsimple/widgets/SlidingTab$Slider;I)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/csipsimple/widgets/SlidingTab$Slider;->setHintText(I)V

    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 173
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    return-void
.end method

.method private layout(IIIII)V
    .locals 15
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I
    .param p5, "alignment"    # I

    .prologue
    .line 223
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 224
    .local v2, "handleWidth":I
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 225
    .local v1, "handleHeight":I
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 226
    .local v10, "targetWidth":I
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 227
    .local v8, "targetHeight":I
    sub-int v5, p3, p1

    .line 228
    .local v5, "parentWidth":I
    sub-int v4, p4, p2

    .line 230
    .local v4, "parentHeight":I
    const v12, 0x3f2aaaab

    int-to-float v13, v5

    mul-float/2addr v12, v13

    float-to-int v12, v12

    sub-int/2addr v12, v10

    div-int/lit8 v13, v2, 0x2

    add-int v3, v12, v13

    .line 231
    .local v3, "leftTarget":I
    const v12, 0x3eaaaaaa

    int-to-float v13, v5

    mul-float/2addr v12, v13

    float-to-int v12, v12

    div-int/lit8 v13, v2, 0x2

    sub-int v6, v12, v13

    .line 233
    .local v6, "rightTarget":I
    sub-int v12, v4, v8

    div-int/lit8 v9, v12, 0x2

    .line 234
    .local v9, "targetTop":I
    add-int v7, v9, v8

    .line 235
    .local v7, "targetBottom":I
    sub-int v12, v4, v1

    div-int/lit8 v11, v12, 0x2

    .line 236
    .local v11, "top":I
    add-int v12, v4, v1

    div-int/lit8 v0, v12, 0x2

    .line 237
    .local v0, "bottom":I
    if-nez p5, :cond_0

    .line 238
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 239
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    rsub-int/lit8 v13, v5, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v11, v14, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 240
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 241
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v13, v3, v10

    invoke-virtual {v12, v3, v9, v13, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 249
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sub-int v13, v5, v2

    invoke-virtual {v12, v13, v11, v5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 244
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    add-int v13, v5, v5

    invoke-virtual {v12, v5, v11, v13, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 245
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    add-int v13, v6, v10

    invoke-virtual {v12, v6, v9, v13, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 246
    iget-object v12, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-direct {p0, v3}, Lcom/csipsimple/widgets/SlidingTab$Slider;->setState(I)V

    .line 201
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0060

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 203
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    return-void
.end method

.method private setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "iconD"    # Landroid/graphics/drawable/Drawable;
    .param p2, "targetD"    # Landroid/graphics/drawable/Drawable;
    .param p3, "barD"    # Landroid/graphics/drawable/Drawable;
    .param p4, "tabD"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_0
    if-eqz p4, :cond_1

    .line 157
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p4}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_1
    if-eqz p3, :cond_2

    .line 160
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p3}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_2
    if-eqz p4, :cond_3

    .line 163
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_3
    return-void
.end method

.method private setHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    return-void
.end method

.method private setResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 148
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 149
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    return-void
.end method

.method private setState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 179
    iget-object v4, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 180
    iget-object v4, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 181
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 182
    new-array v0, v2, [I

    const v1, 0x10100a2

    aput v1, v0, v3

    .line 183
    .local v0, "activeState":[I
    iget-object v1, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c005e

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 193
    .end local v0    # "activeState":[I
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 179
    goto :goto_0

    :cond_3
    move v1, v3

    .line 180
    goto :goto_1

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0060

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private showTarget()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    return-void
.end method


# virtual methods
.method public getTabHeight()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/csipsimple/widgets/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.class public Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;
.super Landroid/widget/FrameLayout;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "QuickContactBadgeCompat"


# instance fields
.field private arrowPos:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

.field private badge:Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, -0x1

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    sget-object v6, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->NONE:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    iput-object v6, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->arrowPos:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    .line 56
    const-string v0, "com.csipsimple.widgets.contactbadge.ContactBadge"

    .line 57
    .local v0, "className":Ljava/lang/String;
    const/4 v6, 0x5

    invoke-static {v6}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 65
    const-class v7, Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 66
    .local v5, "wrappedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;>;"
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 67
    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/util/AttributeSet;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    aput-object v8, v6, v7

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 68
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;>;"
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p0, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;

    iput-object v6, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->badge:Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;>;"
    .end local v5    # "wrappedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;>;"
    :goto_1
    iget-object v6, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->badge:Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;

    if-eqz v6, :cond_0

    .line 73
    iget-object v6, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->badge:Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;

    invoke-virtual {v6}, Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 74
    .local v3, "imageView":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v3, v4}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->setDrawable()V

    .line 80
    return-void

    .line 60
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "QuickContactBadgeCompat"

    const-string v7, "Problem when trying to load for compat mode"

    invoke-static {v6, v7}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setDrawable()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->arrowPos:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    sget-object v1, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->NONE:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->setWillNotDraw(Z)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public assignContactUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->badge:Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->badge:Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;

    invoke-virtual {v0, p1}, Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;->assignContactUri(Landroid/net/Uri;)V

    .line 94
    :cond_0
    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->badge:Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->badge:Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;

    invoke-virtual {v0}, Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overlay(Landroid/graphics/Canvas;Landroid/widget/ImageView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "img"    # Landroid/widget/ImageView;

    .prologue
    const v9, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x1

    .line 117
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    iget-object v6, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->arrowPos:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    sget-object v8, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->NONE:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-eq v6, v8, :cond_0

    .line 120
    iget-object v6, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->arrowPos:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    sget-object v8, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne v6, v8, :cond_1

    const/4 v2, 0x0

    .line 121
    .local v2, "x_border":I
    :goto_0
    iget-object v6, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->arrowPos:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    sget-object v8, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne v6, v8, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    mul-int/2addr v6, v8

    add-int v3, v2, v6

    .line 122
    .local v3, "x_inside":I
    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v5, v6

    .line 123
    .local v5, "y_top":I
    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v8

    float-to-int v4, v6

    .line 124
    .local v4, "y_bottom":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 126
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 127
    .local v1, "path":Landroid/graphics/Path;
    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 128
    int-to-float v6, v2

    int-to-float v8, v5

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    int-to-float v6, v3

    add-int v8, v5, v4

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    int-to-float v6, v2

    int-to-float v8, v4

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    int-to-float v6, v2

    int-to-float v8, v5

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 135
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    const/high16 v6, -0x1000000

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 144
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v1    # "path":Landroid/graphics/Path;
    .end local v2    # "x_border":I
    .end local v3    # "x_inside":I
    .end local v4    # "y_bottom":I
    .end local v5    # "y_top":I
    :cond_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    goto :goto_0

    .line 121
    .restart local v2    # "x_border":I
    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public setPosition(Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;)V
    .locals 0
    .param p1, "position"    # Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->arrowPos:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    .line 106
    invoke-direct {p0}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->setDrawable()V

    .line 107
    invoke-virtual {p0}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->invalidate()V

    .line 108
    return-void
.end method

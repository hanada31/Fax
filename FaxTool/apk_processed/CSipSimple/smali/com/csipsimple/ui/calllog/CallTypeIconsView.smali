.class public Lcom/csipsimple/ui/calllog/CallTypeIconsView;
.super Landroid/view/View;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;
    }
.end annotation


# instance fields
.field private final mCallTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private final mResources:Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;

    invoke-direct {v0, p1}, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mResources:Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    .line 61
    return-void
.end method

.method private getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid call type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mResources:Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 94
    :goto_0
    return-object v0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mResources:Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mResources:Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "callType"    # I

    .prologue
    .line 71
    iget-object v1, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mResources:Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;

    iget-object v3, v3, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->iconMargin:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mWidth:I

    .line 75
    iget v1, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mHeight:I

    .line 76
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->invalidate()V

    .line 77
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iput v1, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mWidth:I

    .line 66
    iput v1, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mHeight:I

    .line 67
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->invalidate()V

    .line 68
    return-void
.end method

.method public getCallType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, "left":I
    iget-object v4, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mCallTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    return-void

    .line 108
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 109
    .local v0, "callType":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->getCallTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 110
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v3, v2, v5

    .line 111
    .local v3, "right":I
    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v5, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mResources:Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;

    iget-object v5, v5, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->iconMargin:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v2, v3, v5

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mWidth:I

    iget v1, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;->setMeasuredDimension(II)V

    .line 103
    return-void
.end method

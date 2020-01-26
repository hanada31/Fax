.class public Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;
.super Landroid/widget/ImageView;
.source "OverlayedImageView.java"


# instance fields
.field private topBadge:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "topBadge"    # Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-object p4, p0, Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;->topBadge:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .line 49
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v0, p0, Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;->topBadge:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v0, p1, p0}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->overlay(Landroid/graphics/Canvas;Landroid/widget/ImageView;)V

    .line 55
    return-void
.end method

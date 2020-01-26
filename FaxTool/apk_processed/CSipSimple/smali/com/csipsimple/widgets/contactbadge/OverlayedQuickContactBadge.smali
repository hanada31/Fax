.class public Lcom/csipsimple/widgets/contactbadge/OverlayedQuickContactBadge;
.super Landroid/widget/QuickContactBadge;
.source "OverlayedQuickContactBadge.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field private topBadge:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "topBadge"    # Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-object p4, p0, Lcom/csipsimple/widgets/contactbadge/OverlayedQuickContactBadge;->topBadge:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .line 50
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcom/csipsimple/widgets/contactbadge/OverlayedQuickContactBadge;->topBadge:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v0, p1, p0}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->overlay(Landroid/graphics/Canvas;Landroid/widget/ImageView;)V

    .line 56
    return-void
.end method

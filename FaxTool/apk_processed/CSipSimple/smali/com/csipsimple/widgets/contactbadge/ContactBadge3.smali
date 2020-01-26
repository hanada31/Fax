.class public Lcom/csipsimple/widgets/contactbadge/ContactBadge3;
.super Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;
.source "ContactBadge3.java"


# instance fields
.field private imageView:Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "topBadge"    # Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V

    .line 36
    new-instance v0, Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V

    iput-object v0, p0, Lcom/csipsimple/widgets/contactbadge/ContactBadge3;->imageView:Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;

    .line 38
    return-void
.end method


# virtual methods
.method public assignContactUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 48
    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/csipsimple/widgets/contactbadge/ContactBadge3;->imageView:Lcom/csipsimple/widgets/contactbadge/OverlayedImageView;

    return-object v0
.end method

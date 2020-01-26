.class public Lcom/csipsimple/widgets/contactbadge/ContactBadge5;
.super Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;
.source "ContactBadge5.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field badge:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "topBadge"    # Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V

    .line 38
    new-instance v0, Lcom/csipsimple/widgets/contactbadge/OverlayedQuickContactBadge;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/csipsimple/widgets/contactbadge/OverlayedQuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V

    iput-object v0, p0, Lcom/csipsimple/widgets/contactbadge/ContactBadge5;->badge:Landroid/widget/QuickContactBadge;

    .line 39
    return-void
.end method


# virtual methods
.method public assignContactUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/csipsimple/widgets/contactbadge/ContactBadge5;->badge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 50
    return-void
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/csipsimple/widgets/contactbadge/ContactBadge5;->badge:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

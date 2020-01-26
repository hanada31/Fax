.class public abstract Lcom/csipsimple/widgets/contactbadge/ContactBadgeContract;
.super Ljava/lang/Object;
.source "ContactBadgeContract.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/csipsimple/widgets/contactbadge/QuickContactBadge;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "topBadge"    # Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public abstract assignContactUri(Landroid/net/Uri;)V
.end method

.method public abstract getImageView()Landroid/widget/ImageView;
.end method

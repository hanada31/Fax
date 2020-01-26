.class Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;
.super Ljava/lang/Object;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/calllog/CallTypeIconsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resources"
.end annotation


# instance fields
.field public iconMargin:Ljava/lang/Integer;

.field public incoming:Landroid/graphics/drawable/Drawable;

.field public missed:Landroid/graphics/drawable/Drawable;

.field public outgoing:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 119
    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    .line 120
    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    .line 121
    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->iconMargin:Ljava/lang/Integer;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, "r":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/csipsimple/utils/Theme;->getCurrentTheme(Landroid/content/Context;)Lcom/csipsimple/utils/Theme;

    move-result-object v1

    .line 126
    .local v1, "t":Lcom/csipsimple/utils/Theme;
    if-eqz v1, :cond_0

    .line 127
    const-string v2, "ic_call_incoming"

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 128
    const-string v2, "ic_call_outgoing"

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    .line 129
    const-string v2, "ic_call_missed"

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    .line 130
    const-string v2, "call_log_icon_margin"

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/Theme;->getDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->iconMargin:Ljava/lang/Integer;

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 133
    const v2, 0x7f02009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 136
    const v2, 0x7f0200a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 139
    const v2, 0x7f02009f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->iconMargin:Ljava/lang/Integer;

    if-nez v2, :cond_4

    .line 142
    const v2, 0x7f090014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallTypeIconsView$Resources;->iconMargin:Ljava/lang/Integer;

    .line 144
    :cond_4
    return-void
.end method

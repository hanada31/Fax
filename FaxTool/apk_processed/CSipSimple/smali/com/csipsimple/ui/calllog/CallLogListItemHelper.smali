.class Lcom/csipsimple/ui/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# instance fields
.field private final mPhoneCallDetailsHelper:Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;

.field private final mResources:Landroid/content/res/Resources;

.field private final mTheme:Lcom/csipsimple/utils/Theme;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;Landroid/content/Context;)V
    .locals 1
    .param p1, "phoneCallDetailsHelper"    # Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;
    .param p2, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;

    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 56
    invoke-static {p2}, Lcom/csipsimple/utils/Theme;->getCurrentTheme(Landroid/content/Context;)Lcom/csipsimple/utils/Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->mTheme:Lcom/csipsimple/utils/Theme;

    .line 57
    return-void
.end method

.method private configureCallSecondaryAction(Lcom/csipsimple/ui/calllog/CallLogListItemViews;Lcom/csipsimple/ui/calllog/PhoneCallDetails;)V
    .locals 3
    .param p1, "views"    # Lcom/csipsimple/ui/calllog/CallLogListItemViews;
    .param p2, "details"    # Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .prologue
    .line 80
    iget-object v1, p1, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->mTheme:Lcom/csipsimple/utils/Theme;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->mTheme:Lcom/csipsimple/utils/Theme;

    const-string v2, "badge_action_call"

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    :cond_0
    if-nez v0, :cond_1

    .line 86
    iget-object v1, p1, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const v2, 0x7f020095

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    :goto_0
    iget-object v1, p1, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->getCallActionDescription(Lcom/csipsimple/ui/calllog/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    return-void

    .line 88
    :cond_1
    iget-object v1, p1, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private getCallActionDescription(Lcom/csipsimple/ui/calllog/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "details"    # Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .prologue
    .line 96
    iget-object v1, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 101
    .local v0, "recipient":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b02bb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 99
    .end local v0    # "recipient":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .restart local v0    # "recipient":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public setPhoneCallDetails(Lcom/csipsimple/ui/calllog/CallLogListItemViews;Lcom/csipsimple/ui/calllog/PhoneCallDetails;)V
    .locals 3
    .param p1, "views"    # Lcom/csipsimple/ui/calllog/CallLogListItemViews;
    .param p2, "details"    # Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;

    iget-object v1, p1, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;

    invoke-virtual {v0, v1, p2}, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;->setPhoneCallDetails(Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;Lcom/csipsimple/ui/calllog/PhoneCallDetails;)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->configureCallSecondaryAction(Lcom/csipsimple/ui/calllog/CallLogListItemViews;Lcom/csipsimple/ui/calllog/PhoneCallDetails;)V

    .line 71
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->dividerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->mTheme:Lcom/csipsimple/utils/Theme;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->mTheme:Lcom/csipsimple/utils/Theme;

    iget-object v1, p1, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->dividerView:Landroid/view/View;

    const-string v2, "ic_vertical_divider"

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

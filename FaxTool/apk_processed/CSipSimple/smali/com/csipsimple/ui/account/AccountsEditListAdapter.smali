.class public Lcom/csipsimple/ui/account/AccountsEditListAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "AccountsEditListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;,
        Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountRowTag;,
        Lcom/csipsimple/ui/account/AccountsEditListAdapter$OnCheckedRowListener;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "AccEditListAd"


# instance fields
.field private checkListener:Lcom/csipsimple/ui/account/AccountsEditListAdapter$OnCheckedRowListener;

.field private draggable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 68
    .line 69
    const v2, 0x7f03001a

    .line 70
    new-array v4, v1, [Ljava/lang/String;

    .line 71
    const-string v0, "display_name"

    aput-object v0, v4, v6

    .line 73
    new-array v5, v1, [I

    .line 74
    const v0, 0x7f06002c

    aput v0, v5, v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 75
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 52
    iput-boolean v6, p0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->draggable:Z

    .line 76
    return-void
.end method

.method private tagRowView(Landroid/view/View;)Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    new-instance v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;

    invoke-direct {v0}, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;-><init>()V

    .line 84
    .local v0, "tagView":Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;
    const v1, 0x7f06002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->labelView:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f06002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->indicator:Landroid/view/View;

    .line 86
    const v1, 0x7f060031

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->grabber:Landroid/view/View;

    .line 87
    const v1, 0x7f06002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->activeCheckbox:Landroid/widget/CheckBox;

    .line 88
    const v1, 0x7f060032

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->statusView:Landroid/widget/TextView;

    .line 89
    iget-object v1, v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->indicator:Landroid/view/View;

    const v2, 0x7f060030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->barOnOff:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v1, v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->indicator:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 100
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;

    .line 103
    .local v3, "tagView":Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;
    if-nez v3, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->tagRowView(Landroid/view/View;)Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;

    move-result-object v3

    .line 108
    :cond_0
    new-instance v0, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v0, p3}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 109
    .local v0, "account":Lcom/csipsimple/api/SipProfile;
    new-instance v2, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountRowTag;

    invoke-direct {v2}, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountRowTag;-><init>()V

    .line 110
    .local v2, "tagIndicator":Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountRowTag;
    iget-wide v8, v0, Lcom/csipsimple/api/SipProfile;->id:J

    iput-wide v8, v2, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountRowTag;->accountId:J

    .line 111
    iget-boolean v5, v0, Lcom/csipsimple/api/SipProfile;->active:Z

    iput-boolean v5, v2, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountRowTag;->activated:Z

    .line 112
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->indicator:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v8, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->indicator:Landroid/view/View;

    iget-boolean v5, p0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->draggable:Z

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->grabber:Landroid/view/View;

    iget-boolean v8, p0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->draggable:Z

    if-eqz v8, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->labelView:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-boolean v5, v0, Lcom/csipsimple/api/SipProfile;->active:Z

    if-eqz v5, :cond_4

    .line 124
    iget-wide v5, v0, Lcom/csipsimple/api/SipProfile;->id:J

    .line 123
    invoke-static {p2, v5, v6}, Lcom/csipsimple/utils/AccountListUtils;->getAccountDisplay(Landroid/content/Context;J)Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;

    move-result-object v1

    .line 125
    .local v1, "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->statusView:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->labelView:Landroid/widget/TextView;

    iget v6, v1, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->activeCheckbox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->barOnOff:Landroid/widget/ImageView;

    iget v6, v1, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->checkBoxIndicator:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    .end local v1    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :goto_1
    iget-object v5, v0, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-static {v5}, Lcom/csipsimple/wizards/WizardUtils;->getWizardClass(Ljava/lang/String;)Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    move-result-object v4

    .line 145
    .local v4, "wizardInfos":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    if-eqz v4, :cond_2

    .line 146
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->activeCheckbox:Landroid/widget/CheckBox;

    iget v6, v4, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->icon:I

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 148
    :cond_2
    return-void

    .end local v4    # "wizardInfos":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    :cond_3
    move v5, v7

    .line 114
    goto :goto_0

    .line 133
    :cond_4
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->statusView:Landroid/widget/TextView;

    const v6, 0x7f0b000a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->labelView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 135
    const v8, 0x7f080009

    .line 134
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->activeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 139
    iget-object v5, v3, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;->barOnOff:Landroid/widget/ImageView;

    const v6, 0x7f0200ae

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->draggable:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "tag":Ljava/lang/Object;
    const-string v1, "AccEditListAd"

    const-string v2, "Clicked on ..."

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->checkListener:Lcom/csipsimple/ui/account/AccountsEditListAdapter$OnCheckedRowListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->checkListener:Lcom/csipsimple/ui/account/AccountsEditListAdapter$OnCheckedRowListener;

    check-cast v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountRowTag;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-interface {v1, v0}, Lcom/csipsimple/ui/account/AccountsEditListAdapter$OnCheckedRowListener;->onToggleRow(Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountRowTag;)V

    .line 157
    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "aDraggable"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->draggable:Z

    .line 166
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->notifyDataSetChanged()V

    .line 167
    return-void
.end method

.method public setOnCheckedRowListener(Lcom/csipsimple/ui/account/AccountsEditListAdapter$OnCheckedRowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/csipsimple/ui/account/AccountsEditListAdapter$OnCheckedRowListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->checkListener:Lcom/csipsimple/ui/account/AccountsEditListAdapter$OnCheckedRowListener;

    .line 80
    return-void
.end method

.method public toggleDraggable()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->draggable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->setDraggable(Z)V

    .line 176
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

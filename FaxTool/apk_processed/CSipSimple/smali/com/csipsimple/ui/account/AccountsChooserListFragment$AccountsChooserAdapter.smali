.class Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "AccountsChooserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/account/AccountsChooserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsChooserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;
    }
.end annotation


# instance fields
.field private INDEX_DISPLAY_NAME:Ljava/lang/Integer;

.field private INDEX_ID:Ljava/lang/Integer;

.field private INDEX_WIZARD:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/csipsimple/ui/account/AccountsChooserListFragment;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/account/AccountsChooserListFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 116
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->this$0:Lcom/csipsimple/ui/account/AccountsChooserListFragment;

    .line 117
    const v0, 0x7f030017

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p3, v1}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 140
    iput-object v2, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    .line 141
    iput-object v2, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->INDEX_WIZARD:Ljava/lang/Integer;

    .line 142
    iput-object v2, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->INDEX_ID:Ljava/lang/Integer;

    .line 118
    return-void
.end method

.method private initIndexes(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 173
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->INDEX_ID:Ljava/lang/Integer;

    .line 174
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    .line 175
    const-string v0, "wizard"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->INDEX_WIZARD:Ljava/lang/Integer;

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;

    .line 147
    .local v4, "tag":Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;
    if-eqz v4, :cond_1

    .line 148
    invoke-direct {p0, p3}, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->initIndexes(Landroid/database/Cursor;)V

    .line 149
    iget-object v6, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->INDEX_ID:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 150
    .local v0, "accId":Ljava/lang/Long;
    iget-object v6, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->INDEX_WIZARD:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "wizard":Ljava/lang/String;
    iget-object v6, v4, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;->name:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "iconSet":Z
    iget-object v6, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->this$0:Lcom/csipsimple/ui/account/AccountsChooserListFragment;

    invoke-static {v6}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->access$0(Lcom/csipsimple/ui/account/AccountsChooserListFragment;)Lcom/csipsimple/ui/account/AccountsLoader;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 157
    iget-object v6, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->this$0:Lcom/csipsimple/ui/account/AccountsChooserListFragment;

    invoke-static {v6}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->access$0(Lcom/csipsimple/ui/account/AccountsChooserListFragment;)Lcom/csipsimple/ui/account/AccountsLoader;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/csipsimple/ui/account/AccountsLoader;->getCallHandlerWithAccountId(J)Lcom/csipsimple/utils/CallHandlerPlugin;

    move-result-object v1

    .line 158
    .local v1, "ch":Lcom/csipsimple/utils/CallHandlerPlugin;
    if-eqz v1, :cond_0

    .line 159
    iget-object v6, v4, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/csipsimple/utils/CallHandlerPlugin;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    const/4 v2, 0x1

    .line 164
    .end local v1    # "ch":Lcom/csipsimple/utils/CallHandlerPlugin;
    :cond_0
    if-nez v2, :cond_1

    .line 165
    iget-object v6, v4, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;->icon:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/csipsimple/wizards/WizardUtils;->getWizardIconRes(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    .end local v0    # "accId":Ljava/lang/Long;
    .end local v2    # "iconSet":Z
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "wizard":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 126
    new-instance v0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;-><init>(Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;)V

    .line 127
    .local v0, "tag":Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;
    const v2, 0x7f06002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;->name:Landroid/widget/TextView;

    .line 128
    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;->icon:Landroid/widget/ImageView;

    .line 129
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    .end local v0    # "tag":Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;
    :cond_0
    return-object v1
.end method

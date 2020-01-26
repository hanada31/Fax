.class Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;
.super Ljava/lang/Object;
.source "CallLogListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/calllog/CallLogListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogActionMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;


# direct methods
.method private constructor <init>(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/ui/calllog/CallLogListFragment;Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;-><init>(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 335
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 336
    .local v0, "itemId":I
    const v2, 0x7f060109

    if-ne v0, v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-static {v2}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->access$0(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V

    .line 346
    :goto_0
    return v1

    .line 339
    :cond_0
    const v2, 0x7f06010b

    if-ne v0, v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-static {v2}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->access$1(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V

    goto :goto_0

    .line 342
    :cond_1
    const v2, 0x7f06010a

    if-ne v0, v2, :cond_2

    .line 343
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-static {v2}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->access$2(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V

    goto :goto_0

    .line 346
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 312
    const-string v0, "CallLogFragment"

    const-string v1, "onCreateActionMode"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-virtual {v0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 351
    const-string v3, "CallLogFragment"

    const-string v4, "onDestroyActionMode"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-virtual {v3}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 355
    .local v2, "lv":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 356
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 359
    iget-object v3, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->access$3(Lcom/csipsimple/ui/calllog/CallLogListFragment;Lcom/actionbarsherlock/view/ActionMode;)V

    .line 360
    return-void

    .line 357
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 7
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 319
    const-string v3, "CallLogFragment"

    const-string v6, "onPrepareActionMode"

    invoke-static {v3, v6}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v3, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-virtual {v3}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 321
    .local v1, "lv":Landroid/widget/ListView;
    const/4 v2, 0x0

    .line 323
    .local v2, "nbrCheckedItem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 328
    const v3, 0x7f060109

    invoke-interface {p2, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v6

    if-lez v2, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 329
    const v3, 0x7f06010a

    invoke-interface {p2, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    if-ne v2, v4, :cond_3

    :goto_2
    invoke-interface {v3, v4}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 330
    return v5

    .line 324
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    add-int/lit8 v2, v2, 0x1

    .line 323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 328
    goto :goto_1

    :cond_3
    move v4, v5

    .line 329
    goto :goto_2
.end method

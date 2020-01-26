.class Lcom/csipsimple/ui/messages/ConversationsListFragment$5;
.super Ljava/lang/Thread;
.source "ConversationsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/messages/ConversationsListFragment;->onVisibilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

.field private final synthetic val$checkedPos:I


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/messages/ConversationsListFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;->this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    iput p2, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;->val$checkedPos:I

    .line 362
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/messages/ConversationsListFragment$5;)Lcom/csipsimple/ui/messages/ConversationsListFragment;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;->this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 364
    iget-object v6, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;->this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    invoke-static {v6}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->access$2(Lcom/csipsimple/ui/messages/ConversationsListFragment;)Lcom/csipsimple/ui/messages/ConverstationsAdapter;

    move-result-object v6

    iget v7, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;->val$checkedPos:I

    iget-object v8, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;->this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    invoke-virtual {v8}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/csipsimple/ui/messages/ConverstationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 365
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 366
    const-string v6, "sender"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "from":Ljava/lang/String;
    const-string v6, "receiver"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "to":Ljava/lang/String;
    const-string v6, "full_sender"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "fromFull":Ljava/lang/String;
    move-object v4, v1

    .line 370
    .local v4, "number":Ljava/lang/String;
    const-string v6, "SELF"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 371
    move-object v4, v5

    .line 373
    :cond_0
    move-object v3, v4

    .line 374
    .local v3, "nbr":Ljava/lang/String;
    iget-object v6, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;->this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    invoke-virtual {v6}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;

    iget v8, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;->val$checkedPos:I

    invoke-direct {v7, p0, v8, v3, v2}, Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;-><init>(Lcom/csipsimple/ui/messages/ConversationsListFragment$5;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 381
    .end local v1    # "from":Ljava/lang/String;
    .end local v2    # "fromFull":Ljava/lang/String;
    .end local v3    # "nbr":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "to":Ljava/lang/String;
    :cond_1
    return-void
.end method

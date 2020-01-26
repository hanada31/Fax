.class Lcom/csipsimple/ui/account/AccountsEditListFragment$2;
.super Ljava/lang/Object;
.source "AccountsEditListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/account/AccountsEditListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/account/AccountsEditListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$2;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$2;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    invoke-virtual {v1}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/ui/account/AccountsEditListAdapter;

    .line 187
    .local v0, "ad":Lcom/csipsimple/ui/account/AccountsEditListAdapter;
    invoke-virtual {v0}, Lcom/csipsimple/ui/account/AccountsEditListAdapter;->toggleDraggable()V

    .line 188
    const/4 v1, 0x1

    return v1
.end method

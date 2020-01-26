.class public Lcom/csipsimple/ui/account/AccountsChooserListFragment;
.super Lcom/csipsimple/widgets/CSSListFragment;
.source "AccountsChooserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;,
        Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;
    }
.end annotation


# instance fields
.field private accListener:Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;

.field private accLoader:Lcom/csipsimple/ui/account/AccountsLoader;

.field private mAdapter:Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

.field private showExternal:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/csipsimple/widgets/CSSListFragment;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->accListener:Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/account/AccountsChooserListFragment;)Lcom/csipsimple/ui/account/AccountsLoader;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->accLoader:Lcom/csipsimple/ui/account/AccountsLoader;

    return-object v0
.end method

.method private attachAdapter()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;-><init>(Lcom/csipsimple/ui/account/AccountsChooserListFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    :cond_1
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    invoke-virtual {v0, p1}, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->setHasOptionsMenu(Z)V

    .line 50
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 4
    .param p1, "loader"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/csipsimple/ui/account/AccountsLoader;

    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->showExternal:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/csipsimple/ui/account/AccountsLoader;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->accLoader:Lcom/csipsimple/ui/account/AccountsLoader;

    .line 83
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->accLoader:Lcom/csipsimple/ui/account/AccountsLoader;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const v0, 0x7f030016

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 99
    iget-object v3, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->accListener:Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    invoke-virtual {v3, p3}, Lcom/csipsimple/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 101
    .local v2, "c":Landroid/database/Cursor;
    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 102
    .local v0, "accId":J
    iget-object v3, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->accListener:Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;

    invoke-interface {v3, v0, v1}, Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;->onAccountClicked(J)V

    .line 104
    .end local v0    # "accId":J
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/csipsimple/widgets/CSSListFragment;->onResume()V

    .line 55
    invoke-direct {p0}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->attachAdapter()V

    .line 56
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 57
    return-void
.end method

.method public setOnAccountClickListener(Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->accListener:Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;

    .line 112
    return-void
.end method

.method public setShowCallHandlerPlugins(Z)V
    .locals 0
    .param p1, "showInternalAccounts"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->showExternal:Z

    .line 186
    return-void
.end method

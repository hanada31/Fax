.class public Lcom/csipsimple/ui/favorites/FavListFragment;
.super Lcom/csipsimple/widgets/CSSListFragment;
.source "FavListFragment.java"

# interfaces
.implements Lcom/csipsimple/ui/SipHome$ViewPagerVisibilityListener;


# instance fields
.field alreadyLoaded:Z

.field private mAdapter:Lcom/csipsimple/ui/favorites/FavAdapter;

.field private mDualPane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/csipsimple/widgets/CSSListFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/favorites/FavListFragment;->alreadyLoaded:Z

    .line 34
    return-void
.end method

.method private attachAdapter()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavListFragment;->mAdapter:Lcom/csipsimple/ui/favorites/FavAdapter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/csipsimple/ui/favorites/FavAdapter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/ui/favorites/FavAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/csipsimple/ui/favorites/FavListFragment;->mAdapter:Lcom/csipsimple/ui/favorites/FavAdapter;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavListFragment;->mAdapter:Lcom/csipsimple/ui/favorites/FavAdapter;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/favorites/FavListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavListFragment;->mAdapter:Lcom/csipsimple/ui/favorites/FavAdapter;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavListFragment;->mAdapter:Lcom/csipsimple/ui/favorites/FavAdapter;

    invoke-virtual {v0, p1}, Lcom/csipsimple/ui/favorites/FavAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/favorites/FavListFragment;->setHasOptionsMenu(Z)V

    .line 44
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "id"    # I
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
    new-instance v0, Lcom/csipsimple/ui/favorites/FavLoader;

    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/csipsimple/ui/favorites/FavLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 62
    invoke-super {p0, p1, p2}, Lcom/csipsimple/widgets/CSSListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/csipsimple/ui/favorites/FavListFragment;->mDualPane:Z

    .line 68
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 69
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 71
    iget-boolean v1, p0, Lcom/csipsimple/ui/favorites/FavListFragment;->mDualPane:Z

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 73
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 76
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/csipsimple/ui/favorites/FavListFragment;->attachAdapter()V

    .line 93
    iget-boolean v0, p0, Lcom/csipsimple/ui/favorites/FavListFragment;->alreadyLoaded:Z

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/ui/favorites/FavListFragment;->alreadyLoaded:Z

    .line 98
    :cond_0
    return-void
.end method

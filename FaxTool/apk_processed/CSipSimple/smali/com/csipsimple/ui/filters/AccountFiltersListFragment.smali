.class public Lcom/csipsimple/ui/filters/AccountFiltersListFragment;
.super Lcom/csipsimple/widgets/CSSListFragment;
.source "AccountFiltersListFragment.java"


# static fields
.field private static final CURRENT_CHOICE:Ljava/lang/String; = "curChoice"

.field public static final MENU_ITEM_DELETE:I = 0x2

.field public static final MENU_ITEM_MODIFY:I = 0x1

.field private static final THIS_FILE:Ljava/lang/String; = "AccountFiltersListFragment"


# instance fields
.field private accountId:J

.field private curCheckFilterId:Ljava/lang/Long;

.field private dualPane:Z

.field private mAdapter:Lcom/csipsimple/ui/filters/AccountFiltersListAdapter;

.field private mHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/csipsimple/widgets/CSSListFragment;-><init>()V

    .line 66
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->curCheckFilterId:Ljava/lang/Long;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/filters/AccountFiltersListFragment;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->onClickAddFilter()V

    return-void
.end method

.method private filterIdFromContextMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)J
    .locals 5
    .param p1, "cmi"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 334
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-wide v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .end local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_0
    return-wide v3

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "AccountFiltersListFragment"

    const-string v4, "bad menuInfo"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method private onClickAddFilter()V
    .locals 2

    .prologue
    .line 378
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->showDetails(J)V

    .line 379
    return-void
.end method

.method private showDetails(J)V
    .locals 4
    .param p1, "filterId"    # J

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/csipsimple/ui/filters/EditFilter;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 290
    const-string v1, "account"

    iget-wide v2, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->accountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->startActivity(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method private updateCheckedItem()V
    .locals 7

    .prologue
    .line 223
    iget-object v3, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->curCheckFilterId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 235
    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 226
    .local v1, "profId":J
    iget-object v3, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->curCheckFilterId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 224
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "i":I
    .end local v1    # "profId":J
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->mAdapter:Lcom/csipsimple/ui/filters/AccountFiltersListAdapter;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->mAdapter:Lcom/csipsimple/ui/filters/AccountFiltersListAdapter;

    invoke-virtual {v0, p1}, Lcom/csipsimple/ui/filters/AccountFiltersListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 386
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 91
    .local v1, "lv":Landroid/widget/ListView;
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 95
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0600ea

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "detailsFrame":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->dualPane:Z

    .line 99
    if-eqz p1, :cond_0

    .line 101
    const-string v2, "curChoice"

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->curCheckFilterId:Ljava/lang/Long;

    .line 104
    :cond_0
    invoke-virtual {p0, v4}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->setListShown(Z)V

    .line 105
    iget-object v2, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->mAdapter:Lcom/csipsimple/ui/filters/AccountFiltersListAdapter;

    if-nez v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->mHeaderView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2, v7, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 109
    :cond_1
    new-instance v2, Lcom/csipsimple/ui/filters/AccountFiltersListAdapter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5, v7}, Lcom/csipsimple/ui/filters/AccountFiltersListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->mAdapter:Lcom/csipsimple/ui/filters/AccountFiltersListAdapter;

    .line 112
    iget-object v2, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->mAdapter:Lcom/csipsimple/ui/filters/AccountFiltersListAdapter;

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 116
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 119
    :cond_2
    iget-boolean v2, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->dualPane:Z

    if-eqz v2, :cond_4

    .line 121
    const-string v2, "lp"

    const-string v5, "dual pane mode"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 124
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 125
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 127
    invoke-direct {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->updateCheckedItem()V

    .line 135
    :goto_1
    return-void

    :cond_3
    move v2, v4

    .line 96
    goto :goto_0

    .line 132
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 133
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->filterIdFromContextMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)J

    move-result-wide v0

    .line 358
    .local v0, "filterId":J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 360
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 373
    :goto_0
    return v2

    .line 363
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 373
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 365
    :pswitch_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/csipsimple/api/SipManager;->FILTER_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->showDetails(J)V

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->setHasOptionsMenu(Z)V

    .line 79
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 344
    invoke-super {p0, p1, p2, p3}, Lcom/csipsimple/widgets/CSSListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 345
    invoke-direct {p0, p3}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->filterIdFromContextMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)J

    move-result-wide v0

    .line 346
    .local v0, "filterId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 353
    :goto_0
    return-void

    .line 350
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f0b007e

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 351
    const/4 v2, 0x2

    const v3, 0x7f0b01d8

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
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
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 300
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/csipsimple/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    .line 301
    const-string v4, "_id"

    aput-object v4, v3, v8

    .line 302
    const-string v4, "account"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    .line 303
    const-string v5, "action"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 304
    const-string v5, "matches"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 305
    const-string v5, "priority"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 306
    const-string v5, "replace"

    aput-object v5, v3, v4

    .line 307
    const-string v4, "account=?"

    new-array v5, v6, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->accountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "priority asc"

    .line 300
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 145
    const v0, 0x7f0b01d7

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 146
    const v1, 0x1080033

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/csipsimple/ui/filters/AccountFiltersListFragment$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment$1;-><init>(Lcom/csipsimple/ui/filters/AccountFiltersListFragment;)V

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 155
    const/4 v1, 0x1

    .line 154
    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 158
    invoke-super {p0, p1, p2}, Lcom/csipsimple/widgets/CSSListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0b01d7

    const/4 v5, 0x0

    .line 166
    const v4, 0x7f030019

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 169
    .local v3, "v":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/widgets/DragnDropListView;

    .line 171
    .local v2, "lv":Lcom/csipsimple/widgets/DragnDropListView;
    const v4, 0x7f060031

    invoke-virtual {v2, v4}, Lcom/csipsimple/widgets/DragnDropListView;->setGrabberId(I)V

    .line 173
    new-instance v4, Lcom/csipsimple/ui/filters/AccountFiltersListFragment$2;

    invoke-direct {v4, p0, v2}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment$2;-><init>(Lcom/csipsimple/ui/filters/AccountFiltersListFragment;Lcom/csipsimple/widgets/DragnDropListView;)V

    invoke-virtual {v2, v4}, Lcom/csipsimple/widgets/DragnDropListView;->setOnDropListener(Lcom/csipsimple/widgets/DragnDropListView$DropListener;)V

    .line 203
    new-instance v0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment$3;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment$3;-><init>(Lcom/csipsimple/ui/filters/AccountFiltersListFragment;)V

    .line 210
    .local v0, "addClickButtonListener":Landroid/view/View$OnClickListener;
    const v4, 0x7f030037

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->mHeaderView:Landroid/view/View;

    .line 211
    iget-object v4, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v4, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0600ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 215
    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 216
    .local v1, "bt":Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 217
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    return-object v3
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 249
    const-string v1, "AccountFiltersListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checked "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " et "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 252
    .local v0, "lv":Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 254
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->curCheckFilterId:Ljava/lang/Long;

    .line 255
    invoke-direct {p0, p4, p5}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->showDetails(J)V

    .line 256
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/csipsimple/widgets/CSSListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 315
    invoke-direct {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->updateCheckedItem()V

    .line 316
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/csipsimple/widgets/CSSListFragment;->onResume()V

    .line 139
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 140
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    const-string v0, "curChoice"

    iget-object v1, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->curCheckFilterId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 242
    return-void
.end method

.method public setAccountId(J)V
    .locals 0
    .param p1, "accId"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->accountId:J

    .line 83
    return-void
.end method

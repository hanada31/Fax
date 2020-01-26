.class public Lcom/csipsimple/ui/messages/ConversationsListFragment;
.super Lcom/csipsimple/widgets/CSSListFragment;
.source "ConversationsListFragment.java"

# interfaces
.implements Lcom/csipsimple/ui/SipHome$ViewPagerVisibilityListener;


# static fields
.field public static final MENU_COMPOSE_NEW:I = 0x0

.field public static final MENU_DELETE:I = 0x0

.field public static final MENU_DELETE_ALL:I = 0x1

.field public static final MENU_VIEW:I = 0x1


# instance fields
.field alreadyLoaded:Z

.field private mAdapter:Lcom/csipsimple/ui/messages/ConverstationsAdapter;

.field private mDualPane:Z

.field private mHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/csipsimple/widgets/CSSListFragment;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->alreadyLoaded:Z

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/messages/ConversationsListFragment;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->onClickAddMessage()V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/messages/ConversationsListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->confirmDeleteThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/csipsimple/ui/messages/ConversationsListFragment;)Lcom/csipsimple/ui/messages/ConverstationsAdapter;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mAdapter:Lcom/csipsimple/ui/messages/ConverstationsAdapter;

    return-object v0
.end method

.method private attachAdapter()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mAdapter:Lcom/csipsimple/ui/messages/ConverstationsAdapter;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/csipsimple/ui/messages/ConverstationsAdapter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/ui/messages/ConverstationsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mAdapter:Lcom/csipsimple/ui/messages/ConverstationsAdapter;

    .line 95
    iget-object v0, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mAdapter:Lcom/csipsimple/ui/messages/ConverstationsAdapter;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    :cond_0
    return-void
.end method

.method private confirmDeleteThread(Ljava/lang/String;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0080

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 321
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 322
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 323
    const v2, 0x7f0b0086

    new-instance v3, Lcom/csipsimple/ui/messages/ConversationsListFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/csipsimple/ui/messages/ConversationsListFragment$4;-><init>(Lcom/csipsimple/ui/messages/ConversationsListFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 335
    const v2, 0x7f0b007d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const v1, 0x7f0b0082

    .line 336
    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 340
    return-void

    .line 338
    :cond_0
    const v1, 0x7f0b0081

    goto :goto_0
.end method

.method private onClickAddMessage()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->viewDetails(ILcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;)V

    .line 129
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mAdapter:Lcom/csipsimple/ui/messages/ConverstationsAdapter;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mAdapter:Lcom/csipsimple/ui/messages/ConverstationsAdapter;

    invoke-virtual {v0, p1}, Lcom/csipsimple/ui/messages/ConverstationsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 394
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 79
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0, v3}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->setHasOptionsMenu(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 83
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 87
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 88
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 247
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-lez v2, :cond_0

    .line 248
    iget-object v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;

    .line 250
    .local v0, "cri":Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 265
    .end local v0    # "cri":Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 253
    .restart local v0    # "cri":Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;
    :pswitch_0
    invoke-virtual {v0}, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->getRemoteNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->confirmDeleteThread(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v2, v0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->viewDetails(ILcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;)V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x0

    .line 235
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 236
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-lez v1, :cond_0

    .line 237
    const/4 v1, 0x1

    const v2, 0x7f0b0062

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 238
    const v1, 0x7f0b0061

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 240
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
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
    const/4 v3, 0x0

    .line 229
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/csipsimple/api/SipMessage;->THREAD_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Lcom/csipsimple/widgets/CSSListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 201
    const v2, 0x7f0b005e

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 202
    .local v1, "writeMenu":Lcom/actionbarsherlock/view/MenuItem;
    const v2, 0x7f0200be

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 203
    new-instance v2, Lcom/csipsimple/ui/messages/ConversationsListFragment$2;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment$2;-><init>(Lcom/csipsimple/ui/messages/ConversationsListFragment;)V

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 211
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 213
    const v2, 0x7f0b0060

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 214
    .local v0, "deleteAllMenu":Lcom/actionbarsherlock/view/MenuItem;
    const v2, 0x108003c

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 215
    new-instance v2, Lcom/csipsimple/ui/messages/ConversationsListFragment$3;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment$3;-><init>(Lcom/csipsimple/ui/messages/ConversationsListFragment;)V

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 223
    .end local v0    # "deleteAllMenu":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 102
    const v4, 0x7f030043

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, "v":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 106
    .local v2, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/csipsimple/ui/messages/ConversationsListFragment$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment$1;-><init>(Lcom/csipsimple/ui/messages/ConversationsListFragment;)V

    .line 116
    .local v0, "addClickButtonListener":Landroid/view/View$OnClickListener;
    const v4, 0x7f030029

    invoke-virtual {p1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 115
    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    .line 117
    iget-object v4, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f060069

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b005c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v4, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f06005f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b005d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v4, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f060051

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v4, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 123
    .local v1, "bt":Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-object v3
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;

    .line 271
    .local v0, "cri":Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;
    invoke-virtual {p0, p3, v0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->viewDetails(ILcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;)V

    .line 272
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/csipsimple/widgets/CSSListFragment;->onResume()V

    .line 155
    new-instance v0, Lcom/csipsimple/service/SipNotifications;

    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/csipsimple/service/SipNotifications;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "nManager":Lcom/csipsimple/service/SipNotifications;
    invoke-virtual {v0}, Lcom/csipsimple/service/SipNotifications;->cancelMessages()V

    .line 157
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 133
    invoke-super {p0, p1, p2}, Lcom/csipsimple/widgets/CSSListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mDualPane:Z

    .line 139
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 140
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 142
    iget-boolean v1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mDualPane:Z

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 144
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 147
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 347
    if-eqz p1, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->attachAdapter()V

    .line 350
    iget-boolean v3, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->alreadyLoaded:Z

    if-nez v3, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 352
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->alreadyLoaded:Z

    .line 356
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 358
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mAdapter:Lcom/csipsimple/ui/messages/ConverstationsAdapter;

    if-eqz v3, :cond_1

    .line 359
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 360
    .local v0, "checkedPos":I
    if-ltz v0, :cond_1

    .line 362
    new-instance v2, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;-><init>(Lcom/csipsimple/ui/messages/ConversationsListFragment;I)V

    .line 383
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 387
    .end local v0    # "checkedPos":I
    .end local v1    # "lv":Landroid/widget/ListView;
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public viewDetails(ILcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "cri"    # Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "number":Ljava/lang/String;
    const/4 v0, 0x0

    .line 162
    .local v0, "fromFull":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p2}, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->getRemoteNumber()Ljava/lang/String;

    move-result-object v1

    .line 164
    iget-object v0, p2, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->fromFull:Ljava/lang/String;

    .line 166
    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->viewDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public viewDetails(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "fromFull"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p2, p3}, Lcom/csipsimple/ui/messages/MessageFragment;->getArguments(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 174
    .local v0, "b":Landroid/os/Bundle;
    iget-boolean v4, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment;->mDualPane:Z

    if-eqz v4, :cond_0

    .line 177
    new-instance v1, Lcom/csipsimple/ui/messages/MessageFragment;

    invoke-direct {v1}, Lcom/csipsimple/ui/messages/MessageFragment;-><init>()V

    .line 178
    .local v1, "df":Lcom/csipsimple/ui/messages/MessageFragment;
    invoke-virtual {v1, v0}, Lcom/csipsimple/ui/messages/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 182
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v4, 0x7f0600ea

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 183
    const/16 v4, 0x1003

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 184
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 186
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 192
    .end local v1    # "df":Lcom/csipsimple/ui/messages/MessageFragment;
    .end local v2    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/csipsimple/ui/messages/MessageActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v3, "it":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v3}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

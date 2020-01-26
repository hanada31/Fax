.class public Lcom/csipsimple/ui/calllog/CallLogListFragment;
.super Lcom/csipsimple/widgets/CSSListFragment;
.source "CallLogListFragment.java"

# interfaces
.implements Lcom/csipsimple/ui/SipHome$ViewPagerVisibilityListener;
.implements Lcom/csipsimple/ui/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/csipsimple/ui/calllog/CallLogAdapter$OnCallLogAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "CallLogFragment"


# instance fields
.field alreadyLoaded:Z

.field private mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

.field private mDualPane:Z

.field private mMode:Lcom/actionbarsherlock/view/ActionMode;

.field private mShowOptionsMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/csipsimple/widgets/CSSListFragment;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->alreadyLoaded:Z

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->actionModeDelete()V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->actionModeInvertSelection()V

    return-void
.end method

.method static synthetic access$2(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->actionModeDialpad()V

    return-void
.end method

.method static synthetic access$3(Lcom/csipsimple/ui/calllog/CallLogListFragment;Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    return-void
.end method

.method static synthetic access$4(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->turnOnActionMode()V

    return-void
.end method

.method static synthetic access$5(Lcom/csipsimple/ui/calllog/CallLogListFragment;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$6(Lcom/csipsimple/ui/calllog/CallLogListFragment;)Lcom/csipsimple/ui/calllog/CallLogAdapter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->deleteAllCalls()V

    return-void
.end method

.method private actionModeDelete()V
    .locals 11

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 367
    .local v4, "lv":Landroid/widget/ListView;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v0, "checkedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v7

    if-lt v1, v7, :cond_1

    .line 379
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 380
    const-string v7, ", "

    invoke-static {v7, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "strCheckedIds":Ljava/lang/String;
    const-string v7, "CallLogFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Checked positions ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/csipsimple/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_id IN ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 383
    iget-object v7, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v7}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 385
    .end local v6    # "strCheckedIds":Ljava/lang/String;
    :cond_0
    return-void

    .line 370
    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 371
    iget-object v7, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

    invoke-virtual {v7, v1}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->getCallIdsAtPosition(I)[J

    move-result-object v5

    .line 373
    .local v5, "selectedIds":[J
    array-length v8, v5

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v8, :cond_3

    .line 369
    .end local v5    # "selectedIds":[J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .restart local v5    # "selectedIds":[J
    :cond_3
    aget-wide v2, v5, v7

    .line 374
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private actionModeDialpad()V
    .locals 5

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 400
    .local v2, "lv":Landroid/widget/ListView;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 412
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v4}, Lcom/actionbarsherlock/view/ActionMode;->invalidate()V

    .line 414
    return-void

    .line 401
    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    iget-object v4, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

    invoke-virtual {v4, v0}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    .line 403
    iget-object v4, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

    invoke-virtual {v4, v0}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->getCallRemoteAtPostion(I)Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v1, "it":Landroid/content/Intent;
    const-string v4, "sip"

    invoke-static {v4, v3}, Lcom/csipsimple/api/SipUri;->forgeSipUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 400
    .end local v1    # "it":Landroid/content/Intent;
    .end local v3    # "number":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private actionModeInvertSelection()V
    .locals 3

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 390
    .local v1, "lv":Landroid/widget/ListView;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v2}, Lcom/actionbarsherlock/view/ActionMode;->invalidate()V

    .line 394
    return-void

    .line 391
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private attachAdapter()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "CallLogFragment"

    const-string v1, "Attach call log adapter now"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/csipsimple/ui/calllog/CallLogAdapter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/csipsimple/ui/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/csipsimple/ui/calllog/CallLogAdapter$CallFetcher;)V

    iput-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

    .line 86
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

    invoke-virtual {v0, p0}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->setOnCallLogActionListener(Lcom/csipsimple/ui/calllog/CallLogAdapter$OnCallLogAction;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    :cond_1
    return-void
.end method

.method private deleteAllCalls()V
    .locals 5

    .prologue
    .line 219
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 220
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v2, 0x7f0b01db

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 221
    const v2, 0x7f0b01dc

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 222
    const/4 v2, -0x1

    const v3, 0x7f0b01dd

    invoke-virtual {p0, v3}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    new-instance v4, Lcom/csipsimple/ui/calllog/CallLogListFragment$4;

    invoke-direct {v4, p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment$4;-><init>(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V

    .line 222
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 229
    const/4 v2, -0x2

    const v3, 0x7f0b01de

    invoke-virtual {p0, v3}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 230
    const/4 v4, 0x0

    .line 229
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 232
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CallLogFragment"

    const-string v3, "error while trying to show deletion yes/no dialog"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private turnOnActionMode()V
    .locals 4

    .prologue
    .line 301
    const-string v1, "CallLogFragment"

    const-string v2, "Long press"

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;-><init>(Lcom/csipsimple/ui/calllog/CallLogListFragment;Lcom/csipsimple/ui/calllog/CallLogListFragment$CallLogActionMode;)V

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 303
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 304
    .local v0, "lv":Landroid/widget/ListView;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 306
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 419
    return-void
.end method

.method public fetchCalls()V
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->attachAdapter()V

    .line 142
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 145
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->setHasOptionsMenu(Z)V

    .line 78
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
    const/4 v4, 0x0

    .line 241
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/csipsimple/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 242
    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "numberlabel"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    .line 243
    const-string v6, "numbertype"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "duration"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "date"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    .line 244
    const-string v6, "new"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "number"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "type"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    .line 245
    const-string v6, "account_id"

    aput-object v6, v3, v5

    .line 248
    const-string v6, "date DESC"

    move-object v5, v4

    .line 241
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/csipsimple/widgets/CSSListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 206
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 207
    .local v0, "actionRoom":I
    :goto_0
    const v2, 0x7f0b01da

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 208
    .local v1, "delMenu":Lcom/actionbarsherlock/view/MenuItem;
    const v2, 0x7f02009a

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 209
    new-instance v2, Lcom/csipsimple/ui/calllog/CallLogListFragment$3;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment$3;-><init>(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 216
    return-void

    .line 206
    .end local v0    # "actionRoom":I
    .end local v1    # "delMenu":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const v0, 0x7f030022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 99
    invoke-super {p0, p1, p2}, Lcom/csipsimple/widgets/CSSListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mDualPane:Z

    .line 106
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 107
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 109
    iget-boolean v1, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mDualPane:Z

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 111
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 118
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 119
    new-instance v1, Lcom/csipsimple/ui/calllog/CallLogListFragment$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment$1;-><init>(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 129
    return-void

    .line 113
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .prologue
    .line 151
    iget-boolean v4, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mShowOptionsMenu:Z

    if-eq v4, p1, :cond_0

    .line 152
    iput-boolean p1, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mShowOptionsMenu:Z

    .line 155
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    .line 156
    .local v0, "activity":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 162
    .end local v0    # "activity":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    :cond_0
    if-eqz p1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->attachAdapter()V

    .line 165
    iget-boolean v4, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->alreadyLoaded:Z

    if-nez v4, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 167
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->alreadyLoaded:Z

    .line 172
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 175
    .local v2, "lv":Landroid/widget/ListView;
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mAdapter:Lcom/csipsimple/ui/calllog/CallLogAdapter;

    if-eqz v4, :cond_2

    .line 176
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 177
    .local v1, "checkedPos":I
    if-ltz v1, :cond_2

    .line 179
    new-instance v3, Lcom/csipsimple/ui/calllog/CallLogListFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/csipsimple/ui/calllog/CallLogListFragment$2;-><init>(Lcom/csipsimple/ui/calllog/CallLogListFragment;I)V

    .line 190
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 196
    .end local v1    # "checkedPos":I
    .end local v2    # "lv":Landroid/widget/ListView;
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_2
    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v4, :cond_3

    .line 197
    iget-object v4, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v4}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 199
    :cond_3
    return-void
.end method

.method public placeCall(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "accId"    # Ljava/lang/Long;

    .prologue
    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "csip"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/csipsimple/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/api/SipUri;->forgeSipUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 289
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    if-eqz p2, :cond_0

    .line 291
    const-string v1, "acc_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 295
    .end local v0    # "it":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public viewDetails(I[J)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "callIds"    # [J

    .prologue
    const/4 v5, 0x1

    .line 254
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 255
    .local v4, "lv":Landroid/widget/ListView;
    iget-object v6, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v6, :cond_1

    .line 256
    invoke-virtual {v4, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    invoke-virtual {v4, p1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 257
    iget-object v5, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v5}, Lcom/actionbarsherlock/view/ActionMode;->invalidate()V

    .line 282
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-boolean v6, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment;->mDualPane:Z

    if-eqz v6, :cond_2

    .line 265
    new-instance v1, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;

    invoke-direct {v1}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;-><init>()V

    .line 266
    .local v1, "df":Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 267
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 268
    invoke-virtual {v1, v0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 272
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v6, 0x7f0600ea

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v1, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 273
    const/16 v6, 0x1003

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 274
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 276
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 278
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "df":Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;
    .end local v2    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/csipsimple/ui/calllog/CallLogDetailsActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v3, "it":Landroid/content/Intent;
    const-string v5, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

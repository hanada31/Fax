.class public Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;
.super Lcom/csipsimple/widgets/CSSListFragment;
.source "OutgoingCallListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "OutgoingCallListFragment"


# instance fields
.field final MOBILE_CALL_DELAY_MS:J

.field private accLoader:Lcom/csipsimple/ui/account/AccountsLoader;

.field private mAdapter:Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;

.field private startDate:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/csipsimple/widgets/CSSListFragment;-><init>()V

    .line 84
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->MOBILE_CALL_DELAY_MS:J

    .line 40
    return-void
.end method

.method private attachAdapter()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;-><init>(Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    :cond_1
    return-void
.end method

.method private placeCall(Landroid/database/Cursor;)Z
    .locals 20
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    check-cast v12, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;

    .line 94
    .local v12, "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    invoke-virtual {v12}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getConnectedService()Lcom/csipsimple/api/ISipService;

    move-result-object v11

    .line 95
    .local v11, "service":Lcom/csipsimple/api/ISipService;
    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 96
    .local v2, "accountId":J
    const-wide/16 v14, -0x1

    cmp-long v14, v2, v14

    if-lez v14, :cond_4

    .line 98
    if-nez v11, :cond_0

    .line 99
    const/4 v14, 0x0

    .line 140
    :goto_0
    return v14

    .line 101
    :cond_0
    const-string v14, "status_for_outgoing"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    const/4 v4, 0x1

    .line 102
    .local v4, "canCall":Z
    :goto_1
    if-nez v4, :cond_2

    .line 103
    const/4 v14, 0x0

    goto :goto_0

    .line 101
    .end local v4    # "canCall":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 106
    .restart local v4    # "canCall":Z
    :cond_2
    :try_start_0
    const-string v14, "nbr_to_call"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 107
    .local v13, "toCall":Ljava/lang/String;
    long-to-int v14, v2

    invoke-interface {v11, v13, v14}, Lcom/csipsimple/api/ISipService;->makeCall(Ljava/lang/String;I)V

    .line 108
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->finishServiceIfNeeded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v14, 0x1

    goto :goto_0

    .line 110
    .end local v13    # "toCall":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 111
    .local v8, "e":Landroid/os/RemoteException;
    const-string v14, "OutgoingCallListFragment"

    const-string v15, "Unable to make the call"

    invoke-static {v14, v15, v8}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .end local v4    # "canCall":Z
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 113
    :cond_4
    const-wide/16 v14, -0x1

    cmp-long v14, v2, v14

    if-gez v14, :cond_3

    .line 115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->accLoader:Lcom/csipsimple/ui/account/AccountsLoader;

    if-eqz v14, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->accLoader:Lcom/csipsimple/ui/account/AccountsLoader;

    invoke-virtual {v14, v2, v3}, Lcom/csipsimple/ui/account/AccountsLoader;->getCallHandlerWithAccountId(J)Lcom/csipsimple/utils/CallHandlerPlugin;

    move-result-object v5

    .line 117
    .local v5, "ch":Lcom/csipsimple/utils/CallHandlerPlugin;
    if-nez v5, :cond_5

    .line 118
    const-string v14, "OutgoingCallListFragment"

    const-string v15, "Call handler not anymore available in loader... something gone wrong"

    invoke-static {v14, v15}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v14, 0x0

    goto :goto_0

    .line 121
    :cond_5
    invoke-virtual {v5}, Lcom/csipsimple/utils/CallHandlerPlugin;->getNextExcludeTelNumber()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "nextExclude":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 123
    .local v6, "delay":J
    if-eqz v9, :cond_6

    if-eqz v11, :cond_6

    .line 125
    :try_start_1
    invoke-interface {v11, v9}, Lcom/csipsimple/api/ISipService;->ignoreNextOutgoingCallFor(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_2
    const-wide/16 v14, 0x258

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->startDate:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    sub-long v6, v14, v16

    .line 132
    :cond_6
    invoke-virtual {v5}, Lcom/csipsimple/utils/CallHandlerPlugin;->getIntent()Landroid/app/PendingIntent;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 133
    new-instance v10, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;

    invoke-virtual {v5}, Lcom/csipsimple/utils/CallHandlerPlugin;->getIntent()Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14, v6, v7}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;-><init>(Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;Landroid/app/PendingIntent;J)V

    .line 134
    .local v10, "pendingTask":Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;
    const-string v14, "OutgoingCallListFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Deferring call task of "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v10}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->start()V

    .line 137
    .end local v10    # "pendingTask":Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v8

    .line 127
    .restart local v8    # "e":Landroid/os/RemoteException;
    const-string v14, "OutgoingCallListFragment"

    const-string v15, "Ignore next outgoing number failed"

    invoke-static {v14, v15}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized changeCursor(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    .line 172
    monitor-enter p0

    if-eqz p1, :cond_4

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;

    .line 174
    .local v1, "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    invoke-virtual {v1}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getAccountToCallTo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 176
    .local v0, "accountToCall":Ljava/lang/Long;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 178
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 179
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->placeCall(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local v0    # "accountToCall":Ljava/lang/Long;
    .end local v1    # "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 186
    .restart local v0    # "accountToCall":Ljava/lang/Long;
    .restart local v1    # "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    :cond_1
    :try_start_1
    const-string v2, "force_call"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 187
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->placeCall(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    .end local v0    # "accountToCall":Ljava/lang/Long;
    .end local v1    # "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 192
    .restart local v0    # "accountToCall":Ljava/lang/Long;
    .restart local v1    # "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 193
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 194
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->placeCall(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 200
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 185
    if-nez v2, :cond_1

    .line 206
    .end local v0    # "accountToCall":Ljava/lang/Long;
    .end local v1    # "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    :cond_4
    iget-object v2, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;

    invoke-virtual {v2, p1}, Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getAccountLoader()Lcom/csipsimple/ui/account/AccountsLoader;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->accLoader:Lcom/csipsimple/ui/account/AccountsLoader;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/csipsimple/widgets/CSSListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->setHasOptionsMenu(Z)V

    .line 51
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
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
    .line 78
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;

    .line 79
    .local v0, "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    new-instance v1, Lcom/csipsimple/ui/account/AccountsLoader;

    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->shouldIgnoreRewritingRules()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/csipsimple/ui/account/AccountsLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->accLoader:Lcom/csipsimple/ui/account/AccountsLoader;

    .line 80
    iget-object v1, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->accLoader:Lcom/csipsimple/ui/account/AccountsLoader;

    return-object v1
.end method

.method public declared-synchronized onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;

    invoke-virtual {v0, p3}, Lcom/csipsimple/ui/outgoingcall/OutgoingAccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->placeCall(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/csipsimple/widgets/CSSListFragment;->onResume()V

    .line 56
    invoke-direct {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->attachAdapter()V

    .line 57
    invoke-virtual {p0}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->startDate:J

    .line 59
    return-void
.end method

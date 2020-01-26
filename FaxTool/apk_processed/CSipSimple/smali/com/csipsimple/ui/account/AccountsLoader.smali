.class public Lcom/csipsimple/ui/account/AccountsLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "AccountsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static COLUMN_HEADERS:[Ljava/lang/String; = null

.field public static final FIELD_FORCE_CALL:Ljava/lang/String; = "force_call"

.field public static final FIELD_NBR_TO_CALL:Ljava/lang/String; = "nbr_to_call"

.field public static final FIELD_STATUS_COLOR:Ljava/lang/String; = "status_color"

.field public static final FIELD_STATUS_OUTGOING:Ljava/lang/String; = "status_for_outgoing"

.field private static final THIS_FILE:Ljava/lang/String; = "OutgoingAccountsLoader"


# instance fields
.field private currentResult:Landroid/database/Cursor;

.field private finalAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreRewritting:Z

.field private final loadCallHandlerPlugins:Z

.field private final loadStatus:Z

.field private loaderObserver:Landroid/database/ContentObserver;

.field private final numberToCall:Ljava/lang/String;

.field private final onlyActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 399
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 400
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 401
    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 402
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 403
    const-string v2, "wizard"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 404
    const-string v2, "force_call"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 405
    const-string v2, "nbr_to_call"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 406
    const-string v2, "status_for_outgoing"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 407
    const-string v2, "status_color"

    aput-object v2, v0, v1

    .line 399
    sput-object v0, Lcom/csipsimple/ui/account/AccountsLoader;->COLUMN_HEADERS:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "ignoreRewrittingRules"    # Z

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 77
    iput-object p2, p0, Lcom/csipsimple/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;

    .line 78
    iput-boolean p3, p0, Lcom/csipsimple/ui/account/AccountsLoader;->ignoreRewritting:Z

    .line 79
    iput-boolean v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->loadStatus:Z

    .line 80
    iput-boolean v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->onlyActive:Z

    .line 81
    iput-boolean v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->loadCallHandlerPlugins:Z

    .line 82
    invoke-direct {p0}, Lcom/csipsimple/ui/account/AccountsLoader;->initHandlers()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlyActiveAccounts"    # Z
    .param p3, "withCallHandlerPlugins"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->ignoreRewritting:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->loadStatus:Z

    .line 91
    iput-boolean p2, p0, Lcom/csipsimple/ui/account/AccountsLoader;->onlyActive:Z

    .line 92
    iput-boolean p3, p0, Lcom/csipsimple/ui/account/AccountsLoader;->loadCallHandlerPlugins:Z

    .line 93
    invoke-direct {p0}, Lcom/csipsimple/ui/account/AccountsLoader;->initHandlers()V

    .line 94
    return-void
.end method

.method static synthetic access$3(Lcom/csipsimple/ui/account/AccountsLoader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/csipsimple/ui/account/AccountsLoader;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->ignoreRewritting:Z

    return v0
.end method

.method private createCursorForAccount(Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;)Landroid/database/Cursor;
    .locals 7
    .param p1, "fa"    # Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 415
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/csipsimple/ui/account/AccountsLoader;->COLUMN_HEADERS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 418
    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    const/16 v1, 0x8

    new-array v4, v1, [Ljava/lang/Object;

    .line 419
    iget-object v1, p1, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v5, v1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v3

    .line 420
    iget-object v1, p1, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v5, v1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    .line 421
    iget-object v5, p1, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    iget-object v5, v5, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v1, 0x3

    .line 422
    iget-object v5, p1, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    iget-object v5, v5, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v5, 0x4

    .line 423
    iget-boolean v1, p1, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->isForceCall:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x5

    .line 424
    iget-object v5, p0, Lcom/csipsimple/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->rewriteNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x6

    .line 425
    invoke-virtual {p1}, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->getStatusForOutgoing()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x7

    .line 426
    invoke-virtual {p1}, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->getStatusColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 418
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 428
    return-object v0

    :cond_0
    move v1, v3

    .line 423
    goto :goto_0

    :cond_1
    move v2, v3

    .line 425
    goto :goto_1
.end method

.method private initHandlers()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/csipsimple/utils/CallHandlerPlugin;->initHandler()V

    .line 98
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->loaderObserver:Landroid/database/ContentObserver;

    .line 99
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->currentResult:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->currentResult:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/account/AccountsLoader;->onReleaseResources(Landroid/database/Cursor;)V

    .line 321
    :cond_0
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsLoader;->currentResult:Landroid/database/Cursor;

    .line 323
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 328
    :cond_1
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/account/AccountsLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public getCallHandlerWithAccountId(J)Lcom/csipsimple/utils/CallHandlerPlugin;
    .locals 4
    .param p1, "accId"    # J

    .prologue
    .line 437
    iget-object v1, p0, Lcom/csipsimple/ui/account/AccountsLoader;->finalAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 441
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 437
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;

    .line 438
    .local v0, "filteredAcc":Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;
    iget-object v2, v0, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/csipsimple/api/SipProfile;

    iget-wide v2, v2, Lcom/csipsimple/api/SipProfile;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;->getCallHandlerPlugin()Lcom/csipsimple/utils/CallHandlerPlugin;

    move-result-object v1

    goto :goto_0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 22

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->loadStatus:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 110
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->loaderObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    .line 109
    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v15, "prefinalAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;>;"
    new-instance v16, Lcom/csipsimple/utils/PreferencesProviderWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/csipsimple/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    .line 117
    .local v16, "prefsWrapper":Lcom/csipsimple/utils/PreferencesProviderWrapper;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->onlyActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v17

    if-nez v17, :cond_2

    .line 118
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v7, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->loadCallHandlerPlugins:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v10

    .line 136
    .local v10, "externalHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 138
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_4

    .line 141
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_5

    .line 174
    :cond_1
    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v8, v0, [Landroid/database/Cursor;

    .line 175
    .local v8, "cursorsToMerge":[Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 176
    .local v12, "i":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_a

    .line 181
    array-length v0, v8

    move/from16 v17, v0

    if-lez v17, :cond_b

    .line 182
    new-instance v14, Landroid/database/MergeCursor;

    invoke-direct {v14, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 183
    .local v14, "mg":Landroid/database/MergeCursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->loaderObserver:Landroid/database/ContentObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/database/MergeCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 184
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/csipsimple/ui/account/AccountsLoader;->finalAccounts:Ljava/util/ArrayList;

    .line 188
    .end local v14    # "mg":Landroid/database/MergeCursor;
    :goto_6
    return-object v14

    .line 120
    .end local v7    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    .end local v8    # "cursorsToMerge":[Landroid/database/Cursor;
    .end local v10    # "externalHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "i":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->onlyActive:Z

    move/from16 v18, v0

    .line 121
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 122
    const-string v21, "id"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    .line 123
    const-string v21, "acc_id"

    aput-object v21, v19, v20

    const/16 v20, 0x2

    .line 124
    const-string v21, "active"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    .line 125
    const-string v21, "display_name"

    aput-object v21, v19, v20

    const/16 v20, 0x4

    .line 126
    const-string v21, "wizard"

    aput-object v21, v19, v20

    .line 120
    invoke-static/range {v17 .. v19}, Lcom/csipsimple/api/SipProfile;->getAllProfiles(Landroid/content/Context;Z[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .restart local v7    # "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    goto/16 :goto_0

    .line 134
    :cond_3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .restart local v10    # "externalHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 138
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csipsimple/api/SipProfile;

    .line 139
    .local v4, "acc":Lcom/csipsimple/api/SipProfile;
    new-instance v18, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v4, v2}, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;-><init>(Lcom/csipsimple/ui/account/AccountsLoader;Lcom/csipsimple/api/SipProfile;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 141
    .end local v4    # "acc":Lcom/csipsimple/api/SipProfile;
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 142
    .local v9, "extEnt":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v19, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;-><init>(Lcom/csipsimple/ui/account/AccountsLoader;Ljava/lang/String;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 150
    .end local v9    # "extEnt":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_9

    .line 159
    :goto_7
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 160
    .restart local v9    # "extEnt":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 161
    .local v5, "accId":J
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v5, v6, v1}, Lcom/csipsimple/models/Filter;->isCallableNumber(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v5, v6, v1}, Lcom/csipsimple/models/Filter;->isMustCallNumber(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v11

    .line 163
    .local v11, "forceCall":Z
    new-instance v19, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v11}, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;-><init>(Lcom/csipsimple/ui/account/AccountsLoader;Ljava/lang/String;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    if-eqz v11, :cond_8

    goto/16 :goto_4

    .line 150
    .end local v5    # "accId":J
    .end local v9    # "extEnt":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "forceCall":Z
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csipsimple/api/SipProfile;

    .line 151
    .restart local v4    # "acc":Lcom/csipsimple/api/SipProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v18

    iget-wide v0, v4, Lcom/csipsimple/api/SipProfile;->id:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v18 .. v21}, Lcom/csipsimple/models/Filter;->isCallableNumber(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v18

    iget-wide v0, v4, Lcom/csipsimple/api/SipProfile;->id:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v18 .. v21}, Lcom/csipsimple/models/Filter;->isMustCallNumber(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v11

    .line 153
    .restart local v11    # "forceCall":Z
    new-instance v18, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v11}, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;-><init>(Lcom/csipsimple/ui/account/AccountsLoader;Lcom/csipsimple/api/SipProfile;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    if-eqz v11, :cond_7

    goto/16 :goto_7

    .line 176
    .end local v4    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v11    # "forceCall":Z
    .restart local v8    # "cursorsToMerge":[Landroid/database/Cursor;
    .restart local v12    # "i":I
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;

    .line 177
    .local v4, "acc":Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i":I
    .local v13, "i":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/csipsimple/ui/account/AccountsLoader;->createCursorForAccount(Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;)Landroid/database/Cursor;

    move-result-object v18

    aput-object v18, v8, v12

    move v12, v13

    .end local v13    # "i":I
    .restart local v12    # "i":I
    goto/16 :goto_5

    .line 187
    .end local v4    # "acc":Lcom/csipsimple/ui/account/AccountsLoader$FilteredProfile;
    :cond_b
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/csipsimple/ui/account/AccountsLoader;->finalAccounts:Ljava/util/ArrayList;

    .line 188
    const/4 v14, 0x0

    goto/16 :goto_6
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/account/AccountsLoader;->onReleaseResources(Landroid/database/Cursor;)V

    .line 364
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/account/AccountsLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReleaseResources(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->loaderObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 391
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_0
    iget-boolean v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->loadStatus:Z

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/ui/account/AccountsLoader;->loaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 396
    :cond_1
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 374
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsLoader;->onStopLoading()V

    .line 378
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->currentResult:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->currentResult:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/account/AccountsLoader;->onReleaseResources(Landroid/database/Cursor;)V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->currentResult:Landroid/database/Cursor;

    .line 382
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->currentResult:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsLoader;->currentResult:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/account/AccountsLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsLoader;->forceLoad()V

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsLoader;->cancelLoad()Z

    .line 351
    return-void
.end method

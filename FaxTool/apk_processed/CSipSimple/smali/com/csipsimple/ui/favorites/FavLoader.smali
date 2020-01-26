.class public Lcom/csipsimple/ui/favorites/FavLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "FavLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private currentResult:Landroid/database/Cursor;

.field private loaderObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v0, p0, Lcom/csipsimple/ui/favorites/FavLoader;->loaderObserver:Landroid/database/ContentObserver;

    .line 44
    return-void
.end method

.method private createContentCursorFor(Lcom/csipsimple/api/SipProfile;)Landroid/database/Cursor;
    .locals 8
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "c":Landroid/database/Cursor;
    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 221
    :cond_0
    if-eqz v0, :cond_1

    .line 229
    .end local v0    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 224
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v2, v5, [Ljava/lang/String;

    .line 225
    const-string v3, "_id"

    aput-object v3, v2, v6

    .line 226
    const-string v3, "wrapped_type"

    aput-object v3, v2, v7

    .line 224
    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 228
    .local v1, "mc":Landroid/database/MatrixCursor;
    new-array v2, v5, [Ljava/lang/Object;

    iget-wide v3, p1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v1

    .line 229
    goto :goto_0
.end method

.method private createHeaderCursorFor(Lcom/csipsimple/api/SipProfile;)Landroid/database/Cursor;
    .locals 10
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 183
    new-instance v0, Landroid/database/MatrixCursor;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    .line 184
    const-string v3, "_id"

    aput-object v3, v2, v5

    .line 185
    const-string v3, "wrapped_type"

    aput-object v3, v2, v6

    .line 186
    const-string v3, "display_name"

    aput-object v3, v2, v7

    .line 187
    const-string v3, "wizard"

    aput-object v3, v2, v8

    .line 188
    const-string v3, "android_group"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 189
    const-string v4, "publish_enabled"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 190
    const-string v4, "reg_uri"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 191
    const-string v4, "proxy"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 192
    const-string v4, "acc_id"

    aput-object v4, v2, v3

    .line 183
    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 194
    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    const-string v1, ""

    .line 195
    .local v1, "proxies":Ljava/lang/String;
    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 196
    const-string v2, "|"

    iget-object v3, p1, Lcom/csipsimple/api/SipProfile;->proxies:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 198
    :cond_0
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    .line 199
    iget-wide v3, p1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 201
    iget-object v3, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    aput-object v3, v2, v7

    .line 202
    iget-object v3, p1, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    aput-object v3, v2, v8

    .line 203
    iget-object v3, p1, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 204
    iget v4, p1, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 205
    iget-object v4, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 206
    aput-object v1, v2, v3

    const/16 v3, 0x8

    .line 207
    iget-object v4, p1, Lcom/csipsimple/api/SipProfile;->acc_id:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 198
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 209
    return-object v0
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavLoader;->currentResult:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavLoader;->currentResult:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/favorites/FavLoader;->onReleaseResources(Landroid/database/Cursor;)V

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/csipsimple/ui/favorites/FavLoader;->currentResult:Landroid/database/Cursor;

    .line 103
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 108
    :cond_1
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/favorites/FavLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 53
    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 54
    const-string v9, "id"

    aput-object v9, v7, v8

    .line 55
    const-string v8, "acc_id"

    aput-object v8, v7, v10

    const/4 v8, 0x2

    .line 56
    const-string v9, "active"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 57
    const-string v9, "display_name"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 58
    const-string v9, "wizard"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    .line 59
    const-string v9, "priority"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    .line 60
    const-string v9, "android_group"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    .line 61
    const-string v9, "publish_enabled"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    .line 62
    const-string v9, "reg_uri"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    .line 63
    const-string v9, "proxy"

    aput-object v9, v7, v8

    .line 52
    invoke-static {v6, v10, v7}, Lcom/csipsimple/api/SipProfile;->getAllProfiles(Landroid/content/Context;Z[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    .local v1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    new-array v2, v6, [Landroid/database/Cursor;

    .line 67
    .local v2, "cursorsToMerge":[Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 68
    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 75
    iget-object v8, p0, Lcom/csipsimple/ui/favorites/FavLoader;->loaderObserver:Landroid/database/ContentObserver;

    .line 74
    invoke-virtual {v6, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    array-length v6, v2

    if-lez v6, :cond_1

    .line 78
    new-instance v5, Landroid/database/MergeCursor;

    invoke-direct {v5, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 79
    .local v5, "mg":Landroid/database/MergeCursor;
    iget-object v6, p0, Lcom/csipsimple/ui/favorites/FavLoader;->loaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/database/MergeCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    .end local v5    # "mg":Landroid/database/MergeCursor;
    :goto_1
    return-object v5

    .line 68
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/api/SipProfile;

    .line 69
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-direct {p0, v0}, Lcom/csipsimple/ui/favorites/FavLoader;->createHeaderCursorFor(Lcom/csipsimple/api/SipProfile;)Landroid/database/Cursor;

    move-result-object v7

    aput-object v7, v2, v3

    .line 70
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-direct {p0, v0}, Lcom/csipsimple/ui/favorites/FavLoader;->createContentCursorFor(Lcom/csipsimple/api/SipProfile;)Landroid/database/Cursor;

    move-result-object v7

    aput-object v7, v2, v4

    goto :goto_0

    .line 82
    .end local v0    # "acc":Lcom/csipsimple/api/SipProfile;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/favorites/FavLoader;->onReleaseResources(Landroid/database/Cursor;)V

    .line 144
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/favorites/FavLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReleaseResources(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavLoader;->loaderObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/ui/favorites/FavLoader;->loaderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 154
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->onStopLoading()V

    .line 158
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavLoader;->currentResult:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavLoader;->currentResult:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/favorites/FavLoader;->onReleaseResources(Landroid/database/Cursor;)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/ui/favorites/FavLoader;->currentResult:Landroid/database/Cursor;

    .line 162
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavLoader;->currentResult:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavLoader;->currentResult:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/favorites/FavLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->forceLoad()V

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/FavLoader;->cancelLoad()Z

    .line 131
    return-void
.end method

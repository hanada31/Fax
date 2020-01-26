.class public Lcom/csipsimple/service/PresenceManager;
.super Ljava/lang/Object;
.source "PresenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/service/PresenceManager$AccountStatusContentObserver;
    }
.end annotation


# static fields
.field private static final ACC_PROJECTION:[Ljava/lang/String;

.field private static final THIS_FILE:Ljava/lang/String; = "PresenceManager"


# instance fields
.field private addedAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/csipsimple/api/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private service:Lcom/csipsimple/service/SipService;

.field private statusObserver:Lcom/csipsimple/service/PresenceManager$AccountStatusContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 45
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 46
    const-string v2, "wizard"

    aput-object v2, v0, v1

    .line 43
    sput-object v0, Lcom/csipsimple/service/PresenceManager;->ACC_PROJECTION:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/service/PresenceManager;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/service/PresenceManager;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/csipsimple/service/PresenceManager;->updateRegistrations()V

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/service/PresenceManager;)Lcom/csipsimple/service/SipService;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    return-object v0
.end method

.method private declared-synchronized addBuddiesForAccount(Lcom/csipsimple/api/SipProfile;)V
    .locals 3
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/csipsimple/service/PresenceManager;->getBuddiesForAccount(Lcom/csipsimple/api/SipProfile;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "toAdd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v1}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v1

    new-instance v2, Lcom/csipsimple/service/PresenceManager$1;

    invoke-direct {v2, p0, v0}, Lcom/csipsimple/service/PresenceManager$1;-><init>(Lcom/csipsimple/service/PresenceManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 95
    .end local v0    # "toAdd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized deleteBuddiesForAccount(Lcom/csipsimple/api/SipProfile;)V
    .locals 10
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/csipsimple/service/PresenceManager;->getBuddiesForAccount(Lcom/csipsimple/api/SipProfile;)Ljava/util/List;

    move-result-object v3

    .line 121
    .local v3, "toDel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    if-eqz v5, :cond_0

    .line 122
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 126
    iget-object v5, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v5}, Lcom/csipsimple/service/SipService;->getExecutor()Lcom/csipsimple/service/SipService$SipServiceExecutor;

    move-result-object v5

    new-instance v6, Lcom/csipsimple/service/PresenceManager$2;

    invoke-direct {v6, p0, v3}, Lcom/csipsimple/service/PresenceManager$2;-><init>(Lcom/csipsimple/service/PresenceManager;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lcom/csipsimple/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    const/4 v4, -0x1

    .line 140
    .local v4, "toRemoveIndex":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    iget-object v5, p0, Lcom/csipsimple/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_3

    .line 148
    :goto_2
    if-ltz v4, :cond_1

    .line 149
    iget-object v5, p0, Lcom/csipsimple/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_1
    monitor-exit p0

    return-void

    .line 122
    .end local v2    # "idx":I
    .end local v4    # "toRemoveIndex":I
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "csipUri":Ljava/lang/String;
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v6

    iget-object v7, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    sget-object v8, Lcom/csipsimple/api/SipManager$PresenceStatus;->UNKNOWN:Lcom/csipsimple/api/SipManager$PresenceStatus;

    const-string v9, ""

    invoke-virtual {v6, v7, v0, v8, v9}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->updateCSipPresence(Landroid/content/Context;Ljava/lang/String;Lcom/csipsimple/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    .end local v0    # "csipUri":Ljava/lang/String;
    .end local v3    # "toDel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 141
    .restart local v2    # "idx":I
    .restart local v3    # "toDel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "toRemoveIndex":I
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/csipsimple/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/api/SipProfile;

    .line 142
    .local v1, "existingAcc":Lcom/csipsimple/api/SipProfile;
    iget-wide v5, v1, Lcom/csipsimple/api/SipProfile;->id:J

    iget-wide v7, p1, Lcom/csipsimple/api/SipProfile;->id:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 143
    move v4, v2

    .line 144
    goto :goto_2

    .line 140
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private declared-synchronized getBuddiesForAccount(Lcom/csipsimple/api/SipProfile;)Ljava/util/List;
    .locals 3
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/csipsimple/api/SipProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    .line 83
    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getCSipPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 85
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateRegistrations()V
    .locals 15

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/csipsimple/service/PresenceManager;->ACC_PROJECTION:[Ljava/lang/String;

    .line 165
    const-string v3, "active=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 166
    const-string v14, "1"

    aput-object v14, v4, v5

    .line 167
    const/4 v5, 0x0

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 169
    .local v12, "c":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v7, "accToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v8, "accToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v11, "alreadyAddedAcc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->addedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 176
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_8

    .line 178
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    :cond_2
    new-instance v6, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v6, v12}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 183
    .local v6, "acc":Lcom/csipsimple/api/SipProfile;
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    iget-wide v1, v6, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v0, v1, v2}, Lcom/csipsimple/utils/AccountListUtils;->getAccountDisplay(Landroid/content/Context;J)Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;

    move-result-object v9

    .line 184
    .local v9, "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    iget-boolean v0, v9, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    if-eqz v0, :cond_7

    .line 185
    iget-wide v0, v6, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 179
    if-nez v0, :cond_2

    .line 198
    .end local v6    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v9    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :cond_4
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_5
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 208
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/csipsimple/api/SipProfile;

    .line 209
    .restart local v6    # "acc":Lcom/csipsimple/api/SipProfile;
    invoke-direct {p0, v6}, Lcom/csipsimple/service/PresenceManager;->addBuddiesForAccount(Lcom/csipsimple/api/SipProfile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 160
    .end local v6    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v7    # "accToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    .end local v8    # "accToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    .end local v11    # "alreadyAddedAcc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 172
    .restart local v7    # "accToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    .restart local v8    # "accToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfile;>;"
    .restart local v11    # "alreadyAddedAcc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v12    # "c":Landroid/database/Cursor;
    :cond_6
    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/api/SipProfile;

    .line 173
    .local v10, "addedAcc":Lcom/csipsimple/api/SipProfile;
    iget-wide v1, v10, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 189
    .end local v10    # "addedAcc":Lcom/csipsimple/api/SipProfile;
    .restart local v6    # "acc":Lcom/csipsimple/api/SipProfile;
    .restart local v9    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :cond_7
    :try_start_5
    iget-wide v0, v6, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 195
    .end local v6    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v9    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :catch_0
    move-exception v13

    .line 196
    .local v13, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v0, "PresenceManager"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v13}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 198
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 197
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    .line 198
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 199
    throw v0

    .line 200
    :cond_8
    if-eqz v12, :cond_5

    .line 201
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 204
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/csipsimple/api/SipProfile;

    .line 205
    .restart local v6    # "acc":Lcom/csipsimple/api/SipProfile;
    invoke-direct {p0, v6}, Lcom/csipsimple/service/PresenceManager;->deleteBuddiesForAccount(Lcom/csipsimple/api/SipProfile;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public changeBuddyState(Ljava/lang/String;ILcom/csipsimple/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    .locals 4
    .param p1, "buddyUri"    # Ljava/lang/String;
    .param p2, "monitorPres"    # I
    .param p3, "presStatus"    # Lcom/csipsimple/api/SipManager$PresenceStatus;
    .param p4, "statusText"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    const-string v2, "sip:"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->updateCSipPresence(Landroid/content/Context;Ljava/lang/String;Lcom/csipsimple/api/SipManager$PresenceStatus;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method public declared-synchronized startMonitoring(Lcom/csipsimple/service/SipService;)V
    .locals 4
    .param p1, "srv"    # Lcom/csipsimple/service/SipService;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    .line 59
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->statusObserver:Lcom/csipsimple/service/PresenceManager$AccountStatusContentObserver;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/csipsimple/service/PresenceManager$AccountStatusContentObserver;

    iget-object v1, p0, Lcom/csipsimple/service/PresenceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/csipsimple/service/PresenceManager$AccountStatusContentObserver;-><init>(Lcom/csipsimple/service/PresenceManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/csipsimple/service/PresenceManager;->statusObserver:Lcom/csipsimple/service/PresenceManager$AccountStatusContentObserver;

    .line 61
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 62
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/csipsimple/service/PresenceManager;->statusObserver:Lcom/csipsimple/service/PresenceManager$AccountStatusContentObserver;

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMonitoring()V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->statusObserver:Lcom/csipsimple/service/PresenceManager$AccountStatusContentObserver;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;

    invoke-virtual {v0}, Lcom/csipsimple/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/service/PresenceManager;->statusObserver:Lcom/csipsimple/service/PresenceManager$AccountStatusContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/service/PresenceManager;->statusObserver:Lcom/csipsimple/service/PresenceManager$AccountStatusContentObserver;

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/service/PresenceManager;->service:Lcom/csipsimple/service/SipService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

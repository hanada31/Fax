.class public Lcom/csipsimple/models/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/models/Filter$RegExpRepresentation;
    }
.end annotation


# static fields
.field public static final ACTION_AUTO_ANSWER:I = 0x4

.field public static final ACTION_CANT_CALL:I = 0x1

.field public static final ACTION_CAN_CALL:I = 0x0

.field public static final ACTION_DIRECTLY_CALL:I = 0x3

.field public static final ACTION_REPLACE:I = 0x2

.field private static final BLUETOOTH_MATCHER_KEY:Ljava/lang/String; = "###BLUETOOTH###"

.field public static final DEFAULT_ORDER:Ljava/lang/String; = "priority asc"

.field public static final FIELD_ACCOUNT:Ljava/lang/String; = "account"

.field public static final FIELD_ACTION:Ljava/lang/String; = "action"

.field public static final FIELD_MATCHES:Ljava/lang/String; = "matches"

.field public static final FIELD_PRIORITY:Ljava/lang/String; = "priority"

.field public static final FIELD_REPLACE:Ljava/lang/String; = "replace"

.field private static FILTERS_PER_ACCOUNT:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/csipsimple/models/Filter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final FILTER_ACTION_POS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FULL_PROJ:[Ljava/lang/String;

.field public static final FULL_PROJ_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final MATCHER_ALL:I = 0x6

.field public static final MATCHER_BLUETOOTH:I = 0x8

.field public static final MATCHER_CONTAINS:I = 0x7

.field public static final MATCHER_ENDS:I = 0x5

.field public static final MATCHER_HAS_MORE_N_DIGIT:I = 0x2

.field public static final MATCHER_HAS_N_DIGIT:I = 0x1

.field public static final MATCHER_IS_EXACTLY:I = 0x3

.field public static final MATCHER_REGEXP:I = 0x4

.field public static final MATCHER_STARTS:I = 0x0

.field private static final MATCHER_TYPE_POS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPLACE_ALL_BY:I = 0x2

.field public static final REPLACE_MATCH_BY:I = 0x1

.field public static final REPLACE_PREFIX:I = 0x0

.field public static final REPLACE_REGEXP:I = 0x3

.field public static final REPLACE_SUFFIX:I = 0x4

.field private static final REPLACE_TYPE_POS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final THIS_FILE:Ljava/lang/String; = "Filter"

.field public static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field public account:Ljava/lang/Integer;

.field public action:Ljava/lang/Integer;

.field public id:Ljava/lang/Integer;

.field public matchPattern:Ljava/lang/String;

.field public matchType:Ljava/lang/Integer;

.field public priority:Ljava/lang/Integer;

.field public replacePattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 76
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 77
    const-string v1, "priority"

    aput-object v1, v0, v4

    .line 78
    const-string v1, "matches"

    aput-object v1, v0, v5

    .line 79
    const-string v1, "replace"

    aput-object v1, v0, v6

    .line 80
    const-string v1, "action"

    aput-object v1, v0, v7

    .line 75
    sput-object v0, Lcom/csipsimple/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    .line 84
    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v3

    .line 85
    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    .line 86
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    .line 87
    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v6

    .line 88
    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v7

    .line 83
    sput-object v0, Lcom/csipsimple/models/Filter;->FULL_PROJ_TYPES:[Ljava/lang/Class;

    .line 284
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/csipsimple/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    .line 286
    sget-object v0, Lcom/csipsimple/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    sget-object v0, Lcom/csipsimple/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    sget-object v0, Lcom/csipsimple/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    sget-object v0, Lcom/csipsimple/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    sget-object v0, Lcom/csipsimple/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    .line 307
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/csipsimple/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    .line 328
    sget-object v0, Lcom/csipsimple/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    sget-object v0, Lcom/csipsimple/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    sget-object v0, Lcom/csipsimple/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    sget-object v0, Lcom/csipsimple/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    sget-object v0, Lcom/csipsimple/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 680
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/csipsimple/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Lcom/csipsimple/models/Filter;->createFromDb(Landroid/database/Cursor;)V

    .line 113
    return-void
.end method

.method public static getActionForPosition(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedItemPosition"    # Ljava/lang/Integer;

    .prologue
    .line 294
    sget-object v0, Lcom/csipsimple/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/csipsimple/models/Filter;->getForPosition(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getFilterFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/csipsimple/models/Filter;
    .locals 10
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "filterId"    # J
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 659
    new-instance v8, Lcom/csipsimple/models/Filter;

    invoke-direct {v8}, Lcom/csipsimple/models/Filter;-><init>()V

    .line 660
    .local v8, "filter":Lcom/csipsimple/models/Filter;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipManager;->FILTER_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 664
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 666
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 667
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 668
    new-instance v9, Lcom/csipsimple/models/Filter;

    invoke-direct {v9, v6}, Lcom/csipsimple/models/Filter;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "filter":Lcom/csipsimple/models/Filter;
    .local v9, "filter":Lcom/csipsimple/models/Filter;
    move-object v8, v9

    .line 673
    .end local v9    # "filter":Lcom/csipsimple/models/Filter;
    .restart local v8    # "filter":Lcom/csipsimple/models/Filter;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 677
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 670
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 671
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Filter"

    const-string v1, "Something went wrong while retrieving the account"

    invoke-static {v0, v1, v7}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 672
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 673
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 674
    throw v0
.end method

.method public static getFiltersCursorForAccount(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 709
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/csipsimple/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    const-string v3, "account=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "priority asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/csipsimple/models/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    sget-object v3, Lcom/csipsimple/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v0, "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/models/Filter;>;"
    invoke-static {p0, p1, p2}, Lcom/csipsimple/models/Filter;->getFiltersCursorForAccount(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v1

    .line 686
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 688
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    :cond_0
    new-instance v3, Lcom/csipsimple/models/Filter;

    invoke-direct {v3, v1}, Lcom/csipsimple/models/Filter;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 689
    if-nez v3, :cond_0

    .line 696
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 699
    :cond_2
    :goto_0
    sget-object v3, Lcom/csipsimple/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    .end local v0    # "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/models/Filter;>;"
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_3
    sget-object v3, Lcom/csipsimple/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    return-object v3

    .line 693
    .restart local v0    # "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/models/Filter;>;"
    .restart local v1    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 694
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Filter"

    const-string v4, "Error on looping over sip profiles"

    invoke-static {v3, v4, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 695
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 696
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 697
    throw v3
.end method

.method private static getForPosition(Landroid/util/SparseArray;Ljava/lang/Integer;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "positions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMatcherForPosition(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedItemPosition"    # Ljava/lang/Integer;

    .prologue
    .line 319
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/csipsimple/models/Filter;->getForPosition(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private static getPositionFor(Landroid/util/SparseArray;Ljava/lang/Integer;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "positions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 273
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 277
    .end local v0    # "pos":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPositionForAction(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedAction"    # Ljava/lang/Integer;

    .prologue
    .line 298
    sget-object v0, Lcom/csipsimple/models/Filter;->FILTER_ACTION_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/csipsimple/models/Filter;->getPositionFor(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getPositionForMatcher(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedAction"    # Ljava/lang/Integer;

    .prologue
    .line 323
    sget-object v0, Lcom/csipsimple/models/Filter;->MATCHER_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/csipsimple/models/Filter;->getPositionFor(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getPositionForReplace(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedAction"    # Ljava/lang/Integer;

    .prologue
    .line 340
    sget-object v0, Lcom/csipsimple/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/csipsimple/models/Filter;->getPositionFor(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static getReplaceForPosition(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "selectedItemPosition"    # Ljava/lang/Integer;

    .prologue
    .line 336
    sget-object v0, Lcom/csipsimple/models/Filter;->REPLACE_TYPE_POS:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Lcom/csipsimple/models/Filter;->getForPosition(Landroid/util/SparseArray;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static isAutoAnswerNumber(Landroid/content/Context;JLjava/lang/String;)I
    .locals 7
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xc8

    const/4 v4, 0x0

    .line 633
    invoke-static {p0, p1, p2}, Lcom/csipsimple/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v2

    .line 634
    .local v2, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/models/Filter;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    .line 652
    :cond_0
    :goto_1
    return v3

    .line 634
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/models/Filter;

    .line 635
    .local v1, "f":Lcom/csipsimple/models/Filter;
    invoke-virtual {v1, p3}, Lcom/csipsimple/models/Filter;->autoAnswer(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 636
    iget-object v4, v1, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 640
    :try_start_0
    iget-object v4, v1, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Filter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid autoanswer code : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 647
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v1, p3}, Lcom/csipsimple/models/Filter;->stopProcessing(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 648
    goto :goto_1

    .line 650
    :cond_3
    invoke-virtual {v1, p3}, Lcom/csipsimple/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public static isCallableNumber(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 8
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 582
    const/4 v0, 0x1

    .line 583
    .local v0, "canCall":Z
    invoke-static {p0, p1, p2}, Lcom/csipsimple/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v3

    .line 584
    .local v3, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/models/Filter;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .line 594
    .end local v0    # "canCall":Z
    .local v1, "canCall":I
    :goto_1
    return v1

    .line 584
    .end local v1    # "canCall":I
    .restart local v0    # "canCall":Z
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/models/Filter;

    .line 585
    .local v2, "f":Lcom/csipsimple/models/Filter;
    const-string v5, "Filter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Test filter "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v2, p3}, Lcom/csipsimple/models/Filter;->canCall(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 589
    invoke-virtual {v2, p3}, Lcom/csipsimple/models/Filter;->stopProcessing(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v0

    .line 590
    .restart local v1    # "canCall":I
    goto :goto_1

    .line 592
    .end local v1    # "canCall":I
    :cond_1
    invoke-virtual {v2, p3}, Lcom/csipsimple/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public static isMustCallNumber(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 598
    invoke-static {p0, p1, p2}, Lcom/csipsimple/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    .line 599
    .local v1, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/models/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 609
    :cond_0
    :goto_1
    return v2

    .line 599
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/models/Filter;

    .line 600
    .local v0, "f":Lcom/csipsimple/models/Filter;
    invoke-virtual {v0, p0, p3}, Lcom/csipsimple/models/Filter;->mustCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 601
    const/4 v2, 0x1

    goto :goto_1

    .line 604
    :cond_2
    invoke-virtual {v0, p3}, Lcom/csipsimple/models/Filter;->stopProcessing(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 607
    invoke-virtual {v0, p3}, Lcom/csipsimple/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V
    .locals 2
    .param p1, "e"    # Ljava/util/regex/PatternSyntaxException;

    .prologue
    .line 192
    const-string v0, "Filter"

    const-string v1, "Invalid pattern "

    invoke-static {v0, v1, p1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    return-void
.end method

.method public static resetCache()V
    .locals 1

    .prologue
    .line 705
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/csipsimple/models/Filter;->FILTERS_PER_ACCOUNT:Ljava/util/Map;

    .line 706
    return-void
.end method

.method public static rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {p0, p1, p2}, Lcom/csipsimple/models/Filter;->getFiltersForAccount(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    .line 622
    .local v1, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/models/Filter;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, p3

    .line 629
    .end local p3    # "number":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 622
    .end local v2    # "number":Ljava/lang/String;
    .restart local p3    # "number":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/models/Filter;

    .line 624
    .local v0, "f":Lcom/csipsimple/models/Filter;
    invoke-virtual {v0, p3}, Lcom/csipsimple/models/Filter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 625
    invoke-virtual {v0, p3}, Lcom/csipsimple/models/Filter;->stopProcessing(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, p3

    .line 626
    .end local p3    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public autoAnswer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 261
    :goto_0
    return v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lcom/csipsimple/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    .line 261
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canCall(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 197
    iget-object v2, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lcom/csipsimple/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    goto :goto_0
.end method

.method public createFromContentValue(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "args"    # Landroid/content/ContentValues;

    .prologue
    .line 126
    const-string v2, "_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 127
    .local v0, "tmp_i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 128
    iput-object v0, p0, Lcom/csipsimple/models/Filter;->id:Ljava/lang/Integer;

    .line 130
    :cond_0
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    iput-object v0, p0, Lcom/csipsimple/models/Filter;->priority:Ljava/lang/Integer;

    .line 134
    :cond_1
    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_2

    .line 136
    iput-object v0, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    .line 140
    :cond_2
    const-string v2, "matches"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "tmp_s":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 142
    iput-object v1, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    .line 144
    :cond_3
    const-string v2, "replace"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_4

    .line 146
    iput-object v1, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    .line 149
    :cond_4
    const-string v2, "account"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_5

    .line 151
    iput-object v0, p0, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    .line 153
    :cond_5
    return-void
.end method

.method public createFromDb(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 116
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v0, "args":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/csipsimple/models/Filter;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 120
    return-void
.end method

.method public getDbContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v0, "args":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/csipsimple/models/Filter;->id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "_id"

    iget-object v2, p0, Lcom/csipsimple/models/Filter;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    :cond_0
    const-string v1, "account"

    iget-object v2, p0, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v1, "matches"

    iget-object v2, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "replace"

    iget-object v2, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "action"

    iget-object v2, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v1, "priority"

    iget-object v2, p0, Lcom/csipsimple/models/Filter;->priority:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    return-object v0
.end method

.method public getRepresentation(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x20

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "matches_array":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "replace_array":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/csipsimple/models/Filter;->getRepresentationForMatcher()Lcom/csipsimple/models/Filter$RegExpRepresentation;

    move-result-object v0

    .line 175
    .local v0, "m":Lcom/csipsimple/models/Filter$RegExpRepresentation;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    .local v3, "reprBuf":Ljava/lang/StringBuffer;
    iget-object v4, v0, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/csipsimple/models/Filter;->getPositionForMatcher(Ljava/lang/Integer;)I

    move-result v4

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v4, v0, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget-object v4, v0, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    .line 178
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 179
    iget-object v4, v0, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_0
    iget-object v4, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/csipsimple/models/Filter;->getRepresentationForReplace()Lcom/csipsimple/models/Filter$RegExpRepresentation;

    move-result-object v0

    .line 183
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 184
    iget-object v4, v0, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/csipsimple/models/Filter;->getPositionForReplace(Ljava/lang/Integer;)I

    move-result v4

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 186
    iget-object v4, v0, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getRepresentationForMatcher()Lcom/csipsimple/models/Filter$RegExpRepresentation;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 402
    new-instance v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;

    invoke-direct {v1}, Lcom/csipsimple/models/Filter$RegExpRepresentation;-><init>()V

    .line 403
    .local v1, "repr":Lcom/csipsimple/models/Filter$RegExpRepresentation;
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 404
    iget-object v2, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 405
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 406
    const-string v2, ""

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 469
    :cond_0
    :goto_0
    return-object v1

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 410
    iget-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 416
    :cond_2
    iget-object v2, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    const-string v3, "###BLUETOOTH###"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 417
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 420
    :cond_3
    const/4 v0, 0x0

    .line 423
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v2, "^\\^\\\\Q(.+)\\\\E\\(\\.\\*\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 425
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 426
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 429
    :cond_4
    const-string v2, "^\\^\\(\\.\\*\\)\\\\Q(.+)\\\\E\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 431
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 432
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 435
    :cond_5
    const-string v2, "^\\^\\(\\.\\*\\)\\\\Q(.+)\\\\E\\(\\.\\*\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 437
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 438
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 442
    :cond_6
    const-string v2, "^\\^\\(\\.\\*\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 444
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 445
    const-string v2, ""

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 449
    :cond_7
    const-string v2, "^\\^\\(\\\\d\\{([0-9]+)\\}\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 451
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 452
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 455
    :cond_8
    const-string v2, "^\\^\\(\\\\d\\{([0-9]+),\\}\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 457
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 458
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 461
    :cond_9
    const-string v2, "^\\^\\(\\\\Q(.+)\\\\E\\)\\$$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 464
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getRepresentationForReplace()Lcom/csipsimple/models/Filter$RegExpRepresentation;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 512
    new-instance v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;

    invoke-direct {v1}, Lcom/csipsimple/models/Filter$RegExpRepresentation;-><init>()V

    .line 513
    .local v1, "repr":Lcom/csipsimple/models/Filter$RegExpRepresentation;
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 514
    iget-object v2, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 515
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 516
    const-string v2, ""

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 517
    iget-object v2, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 518
    iget-object v2, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 575
    :cond_0
    :goto_0
    return-object v1

    .line 522
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 523
    iget-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 529
    :cond_2
    const/4 v0, 0x0

    .line 532
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v2, "^(.+)\\$0$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 534
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 535
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 539
    :cond_3
    const-string v2, "^\\$0(.+)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 541
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 542
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 546
    :cond_4
    iget-object v2, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 559
    const-string v2, "^(.*)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 562
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 563
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 564
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto :goto_0

    .line 549
    :sswitch_0
    const-string v2, "^(.*)\\$1$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 550
    goto :goto_1

    .line 552
    :sswitch_1
    const-string v2, "^\\$1(.*)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 553
    goto :goto_1

    .line 555
    :sswitch_2
    const-string v2, "^\\$1(.*)\\$2$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 556
    goto :goto_1

    .line 568
    :cond_5
    const-string v2, "^([^\\$]+)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 571
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 546
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public mustCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 210
    const-string v1, "###BLUETOOTH###"

    iget-object v2, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-static {p1}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->getInstance(Landroid/content/Context;)Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/csipsimple/utils/bluetooth/BluetoothWrapper;->isBTHeadsetConnected()Z

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 214
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lcom/csipsimple/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    .line 221
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rewrite(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v3, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 240
    :try_start_0
    iget-object v3, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 241
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 242
    .local v1, "matcher":Ljava/util/regex/Matcher;
    iget-object v3, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 249
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 243
    .restart local p1    # "number":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lcom/csipsimple/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "Filter"

    const-string v4, "Out of bounds "

    invoke-static {v3, v4, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMatcherRepresentation(Lcom/csipsimple/models/Filter$RegExpRepresentation;)V
    .locals 2
    .param p1, "representation"    # Lcom/csipsimple/models/Filter$RegExpRepresentation;

    .prologue
    .line 360
    iget-object v0, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    .line 361
    iget-object v0, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 390
    :pswitch_0
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    .line 391
    iget-object v0, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    .line 394
    :goto_0
    return-void

    .line 363
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(.*)$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 366
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^(.*)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 369
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^(.*)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(.*)$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 372
    :pswitch_4
    const-string v0, "^(.*)$"

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 376
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^(\\d{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    goto :goto_0

    .line 380
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^(\\d{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",})$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 383
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "^("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 386
    :pswitch_8
    const-string v0, "###BLUETOOTH###"

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public setReplaceRepresentation(Lcom/csipsimple/models/Filter$RegExpRepresentation;)V
    .locals 2
    .param p1, "representation"    # Lcom/csipsimple/models/Filter$RegExpRepresentation;

    .prologue
    .line 474
    iget-object v0, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 505
    :pswitch_0
    iget-object v0, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    .line 508
    :goto_0
    return-void

    .line 476
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "$0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 479
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 482
    :pswitch_3
    iget-object v0, p0, Lcom/csipsimple/models/Filter;->matchType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 495
    iget-object v0, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 485
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 488
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 491
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 501
    :pswitch_4
    iget-object v0, p1, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    goto/16 :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 482
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public stopProcessing(Ljava/lang/String;)Z
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 228
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/models/Filter;->matchPattern:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 234
    :goto_0
    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-direct {p0, v0}, Lcom/csipsimple/models/Filter;->logInvalidPattern(Ljava/util/regex/PatternSyntaxException;)V

    .line 234
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

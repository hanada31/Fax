.class public Lcom/csipsimple/utils/contacts/ContactsUtils14;
.super Lcom/csipsimple/utils/contacts/ContactsUtils5;
.source "ContactsUtils14.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "ContactsUtils14"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/csipsimple/utils/contacts/ContactsUtils5;-><init>()V

    return-void
.end method


# virtual methods
.method public findSelfInfo(Landroid/content/Context;)Lcom/csipsimple/models/CallerInfo;
    .locals 10
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v6, Lcom/csipsimple/models/CallerInfo;

    invoke-direct {v6}, Lcom/csipsimple/models/CallerInfo;-><init>()V

    .line 71
    .local v6, "callerInfo":Lcom/csipsimple/models/CallerInfo;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 73
    const-string v0, "display_name"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    .line 74
    const-string v1, "photo_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 75
    const-string v1, "photo_uri"

    aput-object v1, v2, v0

    .line 77
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 78
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 80
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 81
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/csipsimple/models/CallerInfo;->contactExists:Z

    .line 86
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    .line 91
    :cond_0
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/csipsimple/models/CallerInfo;->personId:J

    .line 93
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v6, Lcom/csipsimple/models/CallerInfo;->personId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 96
    :cond_1
    const-string v0, "photo_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "photo_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/csipsimple/models/CallerInfo;->photoId:J

    .line 100
    :cond_2
    const-string v0, "photo_uri"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const-string v0, "photo_uri"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->photoUri:Landroid/net/Uri;

    .line 104
    :cond_3
    iget-object v0, v6, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 105
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_5
    :goto_0
    return-object v6

    .line 109
    :catch_0
    move-exception v9

    .line 110
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils14"

    const-string v1, "Exception while retrieving cursor infos"

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 111
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 112
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 113
    throw v0
.end method

.method public getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "hiRes"    # Z
    .param p4, "defaultResource"    # Ljava/lang/Integer;

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "img":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 51
    invoke-static {v3, p2, p3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v2

    .line 53
    .local v2, "s":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 57
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 56
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 58
    .local v0, "drawableBitmap":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 62
    .end local v0    # "drawableBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v1
.end method

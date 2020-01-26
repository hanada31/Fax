.class public Lcom/csipsimple/utils/contacts/ContactsUtils3;
.super Lcom/csipsimple/utils/contacts/ContactsWrapper;
.source "ContactsUtils3.java"


# static fields
.field public static final CONTACT_ID_INDEX:I = 0x1

.field public static final LABEL_INDEX:I = 0x4

.field public static final NAME_INDEX:I = 0x5

.field public static final NUMBER_INDEX:I = 0x3

.field protected static final PROJECTION_CONTACTS:[Ljava/lang/String;

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final SORT_ORDER:Ljava/lang/String; = "display_name ASC,type"

.field private static final THIS_FILE:Ljava/lang/String; = "ContactsUtils3"

.field public static final TYPE_INDEX:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-array v0, v4, [Ljava/lang/String;

    .line 64
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 65
    const-string v1, "display_name"

    aput-object v1, v0, v3

    .line 63
    sput-object v0, Lcom/csipsimple/utils/contacts/ContactsUtils3;->PROJECTION_CONTACTS:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 70
    const-string v1, "person"

    aput-object v1, v0, v3

    .line 71
    const-string v1, "type"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    .line 72
    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 73
    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 74
    const-string v2, "display_name"

    aput-object v2, v0, v1

    .line 68
    sput-object v0, Lcom/csipsimple/utils/contacts/ContactsUtils3;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/csipsimple/utils/contacts/ContactsWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public bindAutoCompleteView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    .line 199
    const v5, 0x7f060053

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 200
    .local v2, "name":Landroid/widget/TextView;
    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v5, 0x7f0600e9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    .local v0, "label":Landroid/widget/TextView;
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 205
    .local v4, "type":I
    const/4 v5, 0x4

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-static {p2, v4, v5}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 210
    .local v1, "labelText":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa0

    if-ne v5, v6, :cond_1

    .line 211
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :goto_0
    const v5, 0x7f060054

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 218
    .local v3, "number":Landroid/widget/TextView;
    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void

    .line 213
    .end local v3    # "number":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 316
    const-string v8, "number"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "value":Ljava/lang/String;
    const-string v8, "display_name"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "displayName":Ljava/lang/String;
    const-string v8, "person"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 319
    .local v3, "peopleId":Ljava/lang/Long;
    sget-object v8, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 320
    .local v6, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    const v9, 0x7f0200a3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, p2, v6, v8, v9}, Lcom/csipsimple/utils/contacts/ContactsUtils3;->getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const v8, 0x7f060068

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 324
    .local v5, "tv":Landroid/widget/TextView;
    const v8, 0x7f06005f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 325
    .local v4, "sub":Landroid/widget/TextView;
    const v8, 0x7f060067

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 328
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    return-void
.end method

.method public findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;
    .locals 11
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 224
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 226
    .local v1, "searchUri":Landroid/net/Uri;
    new-instance v6, Lcom/csipsimple/models/CallerInfo;

    invoke-direct {v6}, Lcom/csipsimple/models/CallerInfo;-><init>()V

    .line 228
    .local v6, "callerInfo":Lcom/csipsimple/models/CallerInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 229
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 231
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 232
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 233
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/csipsimple/models/CallerInfo;->contactExists:Z

    .line 236
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    .line 240
    :cond_0
    const-string v0, "number"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 242
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "label"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/csipsimple/models/CallerInfo;->numberType:I

    .line 245
    const-string v0, "label"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 247
    iget v0, v6, Lcom/csipsimple/models/CallerInfo;->numberType:I

    iget-object v2, v6, Lcom/csipsimple/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 246
    invoke-static {p1, v0, v2}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 251
    :cond_1
    const-string v0, "person"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    const-string v0, "person"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/csipsimple/models/CallerInfo;->personId:J

    .line 254
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v6, Lcom/csipsimple/models/CallerInfo;->personId:J

    .line 253
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 257
    :cond_2
    const-string v0, "custom_ringtone"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    const-string v0, "custom_ringtone"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, "ringtoneUriString":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 260
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 264
    .end local v10    # "ringtoneUriString":Ljava/lang/String;
    :cond_3
    iget-object v0, v6, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 265
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 280
    :cond_5
    :goto_0
    iget-object v0, v6, Lcom/csipsimple/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 281
    iput-object p2, v6, Lcom/csipsimple/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 284
    :cond_6
    return-object v6

    .line 270
    :catch_0
    move-exception v9

    .line 271
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils3"

    const-string v2, "Exception while retrieving cursor infos"

    invoke-static {v0, v2, v9}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 272
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 274
    throw v0
.end method

.method public findCallerInfoForUri(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v0, Lcom/csipsimple/models/CallerInfo;

    invoke-direct {v0}, Lcom/csipsimple/models/CallerInfo;-><init>()V

    .line 292
    .local v0, "callerInfo":Lcom/csipsimple/models/CallerInfo;
    iput-object p2, v0, Lcom/csipsimple/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 294
    return-object v0
.end method

.method public findSelfInfo(Landroid/content/Context;)Lcom/csipsimple/models/CallerInfo;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 299
    new-instance v0, Lcom/csipsimple/models/CallerInfo;

    invoke-direct {v0}, Lcom/csipsimple/models/CallerInfo;-><init>()V

    .line 300
    .local v0, "callerInfo":Lcom/csipsimple/models/CallerInfo;
    return-object v0
.end method

.method public getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "csipUri"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    :cond_0
    const-string v1, "im_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v1, "im_protocol"

    const-string v2, "csip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    return-object v0
.end method

.method public getCSipPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCSipPhonesContact(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getContactIndexableColumnIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 336
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContactInfo(Landroid/content/Context;Landroid/database/Cursor;)Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 349
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;-><init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;)V

    .line 351
    .local v0, "ci":Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;
    return-object v0
.end method

.method public getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "hiRes"    # Z
    .param p4, "defaultResource"    # Ljava/lang/Integer;

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "img":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3}, Landroid/provider/Contacts$People;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Contact3"

    const-string v3, "Failed to find contact photo"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactsPhones(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 306
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 307
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/csipsimple/utils/contacts/ContactsUtils3;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 308
    const-string v5, "display_name ASC"

    move-object v4, v3

    .line 307
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 309
    .local v6, "resCursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public getGroups(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 391
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 392
    .local v1, "searchUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 393
    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    .line 394
    const-string v4, "name AS \'title\'"

    aput-object v4, v2, v0

    .line 397
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 398
    const-string v5, "name ASC"

    move-object v4, v3

    .line 397
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers(Landroid/content/Context;JI)Ljava/util/List;
    .locals 9
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v7, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;>;"
    sget v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_NBR:I

    and-int/2addr v0, p4

    if-lez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 98
    const-string v3, "person = ?"

    .line 99
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 100
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    move-object v5, v2

    .line 95
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    .local v6, "pCur":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 110
    .end local v6    # "pCur":Landroid/database/Cursor;
    :cond_0
    return-object v7

    .line 103
    .restart local v6    # "pCur":Landroid/database/Cursor;
    :cond_1
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;

    .line 104
    const-string v1, "number"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;-><init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPresenceIconResourceId(I)I
    .locals 1
    .param p1, "presence"    # I

    .prologue
    .line 355
    const v0, 0x7f02008c

    return v0
.end method

.method public getViewContactIntent(Ljava/lang/Long;)Landroid/content/Intent;
    .locals 4
    .param p1, "contactId"    # Ljava/lang/Long;

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 386
    return-object v0
.end method

.method public insertOrUpdateCSipUri(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public searchContact(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 13
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 115
    const-string v7, ""

    .line 116
    .local v7, "phone":Ljava/lang/String;
    const-string v6, ""

    .line 118
    .local v6, "cons":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 119
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-virtual {p0, v6}, Lcom/csipsimple/utils/contacts/ContactsUtils3;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const-string v7, ""

    .line 131
    :cond_0
    :goto_0
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 138
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "%s LIKE ? OR %s LIKE ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "number"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 139
    const-string v5, "display_name"

    aput-object v5, v2, v4

    .line 138
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    sget-object v2, Lcom/csipsimple/utils/contacts/ContactsUtils3;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 144
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 145
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "%"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    .line 147
    const-string v5, "display_name ASC,type"

    .line 141
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 149
    .local v8, "phoneCursor":Landroid/database/Cursor;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 151
    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/csipsimple/utils/contacts/ContactsUtils3;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v10, v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 153
    .local v10, "translated":Landroid/database/MatrixCursor;
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    .line 154
    .local v9, "result":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 155
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 156
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 157
    invoke-virtual {v9, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 159
    const-string v0, "\u00a0"

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 160
    invoke-virtual {v9, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 179
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v4, 0x0

    .line 180
    aput-object v10, v2, v4

    const/4 v4, 0x1

    aput-object v8, v2, v4

    .line 179
    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v8, v0

    .line 183
    .end local v8    # "phoneCursor":Landroid/database/Cursor;
    .end local v9    # "result":Landroid/database/MatrixCursor$RowBuilder;
    .end local v10    # "translated":Landroid/database/MatrixCursor;
    :cond_1
    return-object v8

    .line 126
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 189
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 191
    const-string v1, ""

    .line 194
    :goto_0
    return-object v1

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 194
    goto :goto_0
.end method

.method public updateCSipPresence(Landroid/content/Context;Ljava/lang/String;Lcom/csipsimple/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "buddyUri"    # Ljava/lang/String;
    .param p3, "presStatus"    # Lcom/csipsimple/api/SipManager$PresenceStatus;
    .param p4, "statusText"    # Ljava/lang/String;

    .prologue
    .line 367
    return-void
.end method

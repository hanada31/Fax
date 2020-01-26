.class public Lcom/csipsimple/utils/contacts/ContactsUtils5;
.super Lcom/csipsimple/utils/contacts/ContactsWrapper;
.source "ContactsUtils5.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$csipsimple$api$SipManager$PresenceStatus:[I = null

.field public static final CONTACT_ID_INDEX:I = 0x1

.field public static final LABEL_INDEX:I = 0x4

.field public static final NAME_INDEX:I = 0x5

.field public static final NUMBER_INDEX:I = 0x3

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final SORT_ORDER:Ljava/lang/String; = "times_contacted DESC,display_name,data2"

.field private static final THIS_FILE:Ljava/lang/String; = "ContactsUtils5"

.field public static final TYPE_INDEX:I = 0x2


# direct methods
.method static synthetic $SWITCH_TABLE$com$csipsimple$api$SipManager$PresenceStatus()[I
    .locals 3

    .prologue
    .line 69
    sget-object v0, Lcom/csipsimple/utils/contacts/ContactsUtils5;->$SWITCH_TABLE$com$csipsimple$api$SipManager$PresenceStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/csipsimple/api/SipManager$PresenceStatus;->values()[Lcom/csipsimple/api/SipManager$PresenceStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/csipsimple/api/SipManager$PresenceStatus;->AWAY:Lcom/csipsimple/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/csipsimple/api/SipManager$PresenceStatus;->BUSY:Lcom/csipsimple/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/csipsimple/api/SipManager$PresenceStatus;->OFFLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/csipsimple/api/SipManager$PresenceStatus;->ONLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/csipsimple/api/SipManager$PresenceStatus;->UNKNOWN:Lcom/csipsimple/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lcom/csipsimple/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/csipsimple/utils/contacts/ContactsUtils5;->$SWITCH_TABLE$com$csipsimple$api$SipManager$PresenceStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 78
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 79
    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 80
    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 81
    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 82
    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 83
    const-string v2, "display_name"

    aput-object v2, v0, v1

    .line 77
    sput-object v0, Lcom/csipsimple/utils/contacts/ContactsUtils5;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
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

    .line 262
    const v5, 0x7f060053

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 263
    .local v2, "name":Landroid/widget/TextView;
    const v5, 0x7f0600e9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, "label":Landroid/widget/TextView;
    const v5, 0x7f060054

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 266
    .local v3, "number":Landroid/widget/TextView;
    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 270
    .local v4, "type":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 275
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

    .line 276
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :goto_0
    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-void

    .line 278
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 565
    const-string v8, "data1"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 566
    .local v7, "value":Ljava/lang/String;
    const-string v8, "display_name"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "displayName":Ljava/lang/String;
    const-string v8, "contact_id"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 568
    .local v1, "contactId":Ljava/lang/Long;
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 569
    .local v6, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    const v9, 0x7f0200a3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, p2, v6, v8, v9}, Lcom/csipsimple/utils/contacts/ContactsUtils5;->getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 572
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const v8, 0x7f060068

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 573
    .local v5, "tv":Landroid/widget/TextView;
    const v8, 0x7f06005f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 574
    .local v4, "sub":Landroid/widget/TextView;
    const v8, 0x7f060067

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 577
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 578
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 581
    return-void
.end method

.method public findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;
    .locals 12
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 289
    .local v1, "searchUri":Landroid/net/Uri;
    new-instance v8, Lcom/csipsimple/models/CallerInfo;

    invoke-direct {v8}, Lcom/csipsimple/models/CallerInfo;-><init>()V

    .line 292
    .local v8, "callerInfo":Lcom/csipsimple/models/CallerInfo;
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 293
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 294
    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 295
    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 296
    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 297
    const-string v3, "label"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 298
    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 299
    const-string v3, "photo_id"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 300
    const-string v3, "lookup"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    .line 301
    const-string v3, "custom_ringtone"

    aput-object v3, v2, v0

    const/16 v0, 0x8

    .line 302
    const-string v3, "photo_uri"

    aput-object v3, v2, v0

    .line 316
    .local v2, "projection":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 317
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 319
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 320
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 322
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v10, "cv":Landroid/content/ContentValues;
    invoke-static {v9, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/csipsimple/models/CallerInfo;->contactExists:Z

    .line 325
    const-string v0, "display_name"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "display_name"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    .line 329
    :cond_0
    const-string v0, "number"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 331
    const-string v0, "type"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "label"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const-string v0, "type"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v8, Lcom/csipsimple/models/CallerInfo;->numberType:I

    .line 333
    const-string v0, "label"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v8, Lcom/csipsimple/models/CallerInfo;->numberType:I

    .line 336
    iget-object v4, v8, Lcom/csipsimple/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 335
    invoke-static {v0, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 334
    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 339
    :cond_1
    const-string v0, "_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    const-string v0, "_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v8, Lcom/csipsimple/models/CallerInfo;->personId:J

    .line 342
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v8, Lcom/csipsimple/models/CallerInfo;->personId:J

    .line 341
    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 345
    :cond_2
    const-string v0, "custom_ringtone"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    const-string v0, "custom_ringtone"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 347
    .local v7, "cRt":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 352
    .end local v7    # "cRt":Ljava/lang/String;
    :cond_3
    const-string v0, "photo_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "photo_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 353
    const-string v0, "photo_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v8, Lcom/csipsimple/models/CallerInfo;->photoId:J

    .line 356
    :cond_4
    const-string v0, "photo_uri"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 357
    const-string v0, "photo_uri"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, "cPu":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 359
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->photoUri:Landroid/net/Uri;

    .line 363
    .end local v6    # "cPu":Ljava/lang/String;
    :cond_5
    iget-object v0, v8, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 364
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    .end local v10    # "cv":Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_7
    :goto_1
    iget-object v0, v8, Lcom/csipsimple/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 379
    iput-object p2, v8, Lcom/csipsimple/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 382
    :cond_8
    return-object v8

    .line 305
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_9
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 306
    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 307
    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 308
    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 309
    const-string v3, "label"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 310
    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 311
    const-string v3, "custom_ringtone"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 312
    const-string v3, "lookup"

    aput-object v3, v2, v0

    .line 305
    .restart local v2    # "projection":[Ljava/lang/String;
    goto/16 :goto_0

    .line 368
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 369
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils5"

    const-string v3, "Exception while retrieving cursor infos"

    invoke-static {v0, v3, v11}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 370
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 371
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 372
    throw v0
.end method

.method public findCallerInfoForUri(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;
    .locals 13
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v8, Lcom/csipsimple/models/CallerInfo;

    invoke-direct {v8}, Lcom/csipsimple/models/CallerInfo;-><init>()V

    .line 390
    .local v8, "callerInfo":Lcom/csipsimple/models/CallerInfo;
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 391
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 392
    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    .line 393
    const-string v4, "contact_id"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    .line 394
    const-string v4, "data1"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    .line 395
    const-string v4, "display_name"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    .line 396
    const-string v4, "photo_id"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    .line 397
    const-string v4, "custom_ringtone"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    .line 398
    const-string v4, "lookup"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    .line 399
    const-string v4, "photo_uri"

    aput-object v4, v2, v0

    .line 414
    .local v2, "projection":[Ljava/lang/String;
    :goto_0
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 417
    .local v1, "uri":Landroid/net/Uri;
    const-string v12, "(mimetype=\'vnd.android.cursor.item/im\'  AND data5=-1 AND data6=\'sip\')"

    .line 422
    .local v12, "whereSipUriClause":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " OR (mimetype=\'vnd.android.cursor.item/im\'  AND data5=-1 AND data6=\'csip\')"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 427
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " OR mimetype=\'vnd.android.cursor.item/sip_address\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "display_name IS NOT NULL  AND ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "data1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "query":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 438
    const/4 v4, 0x0

    const-string v5, "display_name ASC"

    .line 436
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 441
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 443
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 444
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 446
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 447
    .local v10, "cv":Landroid/content/ContentValues;
    invoke-static {v9, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/csipsimple/models/CallerInfo;->contactExists:Z

    .line 449
    const-string v0, "display_name"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    const-string v0, "display_name"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    .line 453
    :cond_1
    iput-object p2, v8, Lcom/csipsimple/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 455
    const-string v0, "sip"

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 456
    const-string v0, "sip"

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 458
    const-string v0, "contact_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    const-string v0, "contact_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v8, Lcom/csipsimple/models/CallerInfo;->personId:J

    .line 462
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v8, Lcom/csipsimple/models/CallerInfo;->personId:J

    .line 461
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 465
    :cond_2
    const-string v0, "custom_ringtone"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    const-string v0, "custom_ringtone"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 467
    .local v7, "cRt":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 468
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 472
    .end local v7    # "cRt":Ljava/lang/String;
    :cond_3
    const-string v0, "photo_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "photo_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 473
    const-string v0, "photo_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v8, Lcom/csipsimple/models/CallerInfo;->photoId:J

    .line 476
    :cond_4
    const-string v0, "photo_uri"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    const-string v0, "photo_uri"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, "cPu":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 479
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->photoUri:Landroid/net/Uri;

    .line 483
    .end local v6    # "cPu":Ljava/lang/String;
    :cond_5
    iget-object v0, v8, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 484
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .end local v10    # "cv":Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_7
    :goto_1
    return-object v8

    .line 402
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "query":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "whereSipUriClause":Ljava/lang/String;
    :cond_8
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 403
    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    .line 404
    const-string v4, "contact_id"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    .line 405
    const-string v4, "data1"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    .line 406
    const-string v4, "display_name"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    .line 407
    const-string v4, "photo_id"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    .line 408
    const-string v4, "custom_ringtone"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    .line 409
    const-string v4, "lookup"

    aput-object v4, v2, v0

    .line 402
    .restart local v2    # "projection":[Ljava/lang/String;
    goto/16 :goto_0

    .line 488
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v3    # "query":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "whereSipUriClause":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 489
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils5"

    const-string v4, "Exception while retrieving cursor infos"

    invoke-static {v0, v4, v11}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 490
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 491
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 492
    throw v0
.end method

.method public findSelfInfo(Landroid/content/Context;)Lcom/csipsimple/models/CallerInfo;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 501
    new-instance v0, Lcom/csipsimple/models/CallerInfo;

    invoke-direct {v0}, Lcom/csipsimple/models/CallerInfo;-><init>()V

    .line 502
    .local v0, "callerInfo":Lcom/csipsimple/models/CallerInfo;
    return-object v0
.end method

.method public getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "csipUri"    # Ljava/lang/String;

    .prologue
    .line 805
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 806
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 809
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 815
    .local v0, "csipProto":Landroid/content/ContentValues;
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v3, "data5"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 817
    const-string v3, "data6"

    const-string v4, "csip"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v3, "data1"

    const/4 v4, 0x0

    invoke-static {p2, v4}, Lcom/csipsimple/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 824
    .end local v0    # "csipProto":Landroid/content/ContentValues;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    return-object v2
.end method

.method public getCSipPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
    .line 632
    invoke-virtual {p0, p1, p2}, Lcom/csipsimple/utils/contacts/ContactsUtils5;->getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 633
    .local v0, "contacts":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 636
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 644
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 647
    :cond_0
    :goto_1
    return-object v3

    .line 638
    :cond_1
    :try_start_1
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 637
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/csipsimple/utils/contacts/ContactsUtils5;->getCSipPhonesContact(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 639
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 641
    .end local v2    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ContactsUtils5"

    const-string v5, "Error while looping on contacts"

    invoke-static {v4, v5, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 644
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 643
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 644
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 645
    throw v4
.end method

.method public getCSipPhonesContact(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/List;
    .locals 13
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
    .line 652
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v9, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 654
    .local v1, "dataUri":Landroid/net/Uri;
    const-string v7, "mimetype=\'vnd.android.cursor.item/im\'  AND data5=-1 AND  LOWER(data6)=\'csip\'"

    .line 660
    .local v7, "dataQuery":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 662
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 663
    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 664
    const-string v4, "data1"

    aput-object v4, v2, v3

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 667
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 668
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    .line 669
    const/4 v5, 0x0

    .line 661
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 672
    .local v6, "dataCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 673
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 675
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 674
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 676
    .local v10, "val":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    .end local v10    # "val":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 686
    :goto_0
    return-object v9

    .line 680
    :catch_0
    move-exception v8

    .line 681
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils5"

    const-string v2, "Error while looping on data"

    invoke-static {v0, v2, v8}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 682
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 683
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 684
    throw v0
.end method

.method public getContactIndexableColumnIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 585
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContactInfo(Landroid/content/Context;Landroid/database/Cursor;)Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 779
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;-><init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;)V

    .line 781
    .local v0, "ci":Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;
    const-string v3, "display_name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->displayName:Ljava/lang/String;

    .line 782
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->contactId:Ljava/lang/Long;

    .line 783
    iget-object v3, v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->contactId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 784
    iget-object v3, v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    const-string v4, "photo_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/csipsimple/models/CallerInfo;->photoId:J

    .line 785
    const-string v3, "photo_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 786
    .local v2, "photoUriColIndex":I
    const-string v3, "contact_status"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->status:Ljava/lang/String;

    .line 787
    const-string v3, "contact_presence"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->presence:I

    .line 789
    if-ltz v2, :cond_0

    .line 790
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "photoUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 792
    iget-object v3, v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/csipsimple/models/CallerInfo;->photoUri:Landroid/net/Uri;

    .line 795
    .end local v1    # "photoUri":Ljava/lang/String;
    :cond_0
    iget-object v3, v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->status:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->hasPresence:Z

    .line 796
    return-object v0

    .line 795
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "hiRes"    # Z
    .param p4, "defaultResource"    # Ljava/lang/Integer;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "img":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 92
    invoke-static {v3, p2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 94
    .local v2, "s":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 96
    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 98
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 97
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 99
    .local v0, "drawableBitmap":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 103
    .end local v0    # "drawableBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v1
.end method

.method public getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 591
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    :goto_0
    return-object v6

    .line 596
    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    .line 598
    const-string v0, "_id"

    aput-object v0, v2, v3

    .line 599
    const-string v0, "display_name"

    aput-object v0, v2, v4

    .line 600
    const-string v0, "photo_id"

    aput-object v0, v2, v5

    .line 601
    const-string v0, "contact_status_icon"

    aput-object v0, v2, v8

    const/4 v0, 0x4

    .line 602
    const-string v3, "contact_status"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 603
    const-string v3, "contact_presence"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 604
    const-string v3, "photo_uri"

    aput-object v3, v2, v0

    .line 616
    .local v2, "projection":[Ljava/lang/String;
    :goto_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 619
    .local v1, "searchUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 621
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 622
    const-string v5, "display_name ASC"

    .line 621
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 607
    .end local v1    # "searchUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    .line 608
    const-string v0, "_id"

    aput-object v0, v2, v3

    .line 609
    const-string v0, "display_name"

    aput-object v0, v2, v4

    .line 610
    const-string v0, "photo_id"

    aput-object v0, v2, v5

    .line 611
    const-string v0, "contact_status"

    aput-object v0, v2, v8

    const/4 v0, 0x4

    .line 612
    const-string v3, "contact_presence"

    aput-object v3, v2, v0

    .line 607
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_1

    .line 623
    .restart local v1    # "searchUri":Landroid/net/Uri;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 624
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ContactsUtils5"

    const-string v3, "Error while retrieving group"

    invoke-static {v0, v3, v7}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getContactsPhones(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 12
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 508
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 511
    .local v1, "uri":Landroid/net/Uri;
    const-string v6, "(mimetype=\'vnd.android.cursor.item/phone_v2\' AND data1 IS NOT NULL ) "

    .line 515
    .local v6, "isPhoneType":Ljava/lang/String;
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " OR mimetype=\'vnd.android.cursor.item/sip_address\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 520
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " OR (mimetype=\'vnd.android.cursor.item/im\'  AND data5=-1 AND data6=\'sip\')"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " OR (mimetype=\'vnd.android.cursor.item/im\'  AND data5=-1 AND data6=\'csip\')"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "display_name IS NOT NULL  AND ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "query":Ljava/lang/String;
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    .line 535
    const-string v0, "_id"

    aput-object v0, v2, v5

    .line 536
    const-string v0, "contact_id"

    aput-object v0, v2, v8

    .line 537
    const-string v0, "data1"

    aput-object v0, v2, v9

    .line 538
    const-string v0, "display_name"

    aput-object v0, v2, v10

    .line 539
    const-string v0, "photo_id"

    aput-object v0, v2, v11

    const/4 v0, 0x5

    .line 540
    const-string v4, "lookup"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    .line 541
    const-string v4, "photo_uri"

    aput-object v4, v2, v0

    .line 554
    .local v2, "projection":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 556
    const/4 v4, 0x0

    const-string v5, "display_name ASC"

    .line 554
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 558
    .local v7, "resCursor":Landroid/database/Cursor;
    return-object v7

    .line 544
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "resCursor":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    .line 545
    const-string v0, "_id"

    aput-object v0, v2, v5

    .line 546
    const-string v0, "contact_id"

    aput-object v0, v2, v8

    .line 547
    const-string v0, "data1"

    aput-object v0, v2, v9

    .line 548
    const-string v0, "display_name"

    aput-object v0, v2, v10

    .line 549
    const-string v0, "photo_id"

    aput-object v0, v2, v11

    const/4 v0, 0x5

    .line 550
    const-string v4, "lookup"

    aput-object v4, v2, v0

    .line 544
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getGroups(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 836
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 837
    .local v1, "searchUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 838
    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    .line 839
    const-string v4, "title"

    aput-object v4, v2, v0

    .line 842
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 843
    const-string v5, "title ASC"

    move-object v4, v3

    .line 842
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers(Landroid/content/Context;JI)Ljava/util/List;
    .locals 11
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "flag"    # I
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
    .line 107
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "id":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v8, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;>;"
    sget v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_NBR:I

    and-int/2addr v0, p4

    if-lez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 114
    const/4 v2, 0x0

    .line 115
    const-string v3, "contact_id = ?"

    .line 116
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 117
    aput-object v6, v4, v5

    .line 118
    const/4 v5, 0x0

    .line 112
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 119
    .local v7, "pCur":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 131
    .end local v7    # "pCur":Landroid/database/Cursor;
    :cond_0
    sget v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_IM:I

    and-int/2addr v0, p4

    if-lez v0, :cond_2

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 134
    const/4 v2, 0x0

    .line 135
    const-string v3, "contact_id = ? AND mimetype = ?"

    .line 137
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 138
    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v10, "vnd.android.cursor.item/im"

    aput-object v10, v4, v5

    .line 139
    const/4 v5, 0x0

    .line 132
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 140
    .restart local v7    # "pCur":Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 153
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 157
    .end local v7    # "pCur":Landroid/database/Cursor;
    :cond_2
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_SIP:I

    and-int/2addr v0, p4

    if-lez v0, :cond_3

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 160
    const/4 v2, 0x0

    .line 161
    const-string v3, "contact_id = ? AND mimetype = ?"

    .line 163
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 164
    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v10, "vnd.android.cursor.item/sip_address"

    aput-object v10, v4, v5

    .line 165
    const/4 v5, 0x0

    .line 158
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 166
    .restart local v7    # "pCur":Landroid/database/Cursor;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 175
    .end local v7    # "pCur":Landroid/database/Cursor;
    :cond_3
    return-object v8

    .line 120
    .restart local v7    # "pCur":Landroid/database/Cursor;
    :cond_4
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;

    .line 122
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 121
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    const-string v2, "data2"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;-><init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_5
    const-string v0, "data5"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 145
    const-string v0, "data6"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 144
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "proto":Ljava/lang/String;
    const-string v0, "sip"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "csip"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_6
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;

    .line 148
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 147
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    const-string v2, "sip"

    invoke-direct {v0, p0, v1, v2}, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;-><init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 169
    .end local v9    # "proto":Ljava/lang/String;
    :cond_7
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;

    .line 170
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 169
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, "sip"

    invoke-direct {v0, p0, v1, v2}, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;-><init>(Lcom/csipsimple/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getPresenceIconResourceId(I)I
    .locals 1
    .param p1, "presence"    # I

    .prologue
    .line 800
    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    return v0
.end method

.method public getViewContactIntent(Ljava/lang/Long;)Landroid/content/Intent;
    .locals 4
    .param p1, "contactId"    # Ljava/lang/Long;

    .prologue
    .line 829
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 831
    return-object v0
.end method

.method public insertOrUpdateCSipUri(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 18
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 849
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 850
    .local v1, "cr":Landroid/content/ContentResolver;
    const-wide/16 v14, -0x1

    .line 851
    .local v14, "rawContactId":J
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 852
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    .line 853
    const-string v4, "contact_id=?"

    .line 854
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    const/4 v6, 0x0

    .line 851
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 856
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 862
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 865
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_3

    .line 866
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/csipsimple/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 868
    .local v10, "csipUri":Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 869
    .local v11, "cv":Landroid/content/ContentValues;
    const-string v2, "data1"

    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    .line 871
    const-string v4, "mimetype=? AND data5=? AND data6=? AND raw_contact_id=?"

    .line 874
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 875
    const-string v17, "vnd.android.cursor.item/im"

    aput-object v17, v5, v6

    const/4 v6, 0x1

    .line 876
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    const/4 v6, 0x2

    .line 877
    const-string v17, "csip"

    aput-object v17, v5, v6

    const/4 v6, 0x3

    .line 878
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    .line 879
    const/4 v6, 0x0

    .line 870
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 880
    .local v9, "cs":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 881
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 882
    .local v8, "count":I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 885
    if-lez v8, :cond_1

    .line 886
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 887
    const-string v3, "mimetype=? AND data5=? AND data6=? AND raw_contact_id=?"

    .line 890
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 891
    const-string v6, "vnd.android.cursor.item/im"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 892
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 893
    const-string v6, "csip"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 894
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 886
    invoke-virtual {v1, v2, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 896
    .local v16, "updated":I
    const-string v2, "ContactsUtils5"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Updated : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    .end local v16    # "updated":I
    :goto_1
    const/4 v2, 0x1

    .line 912
    .end local v8    # "count":I
    .end local v9    # "cs":Landroid/database/Cursor;
    .end local v10    # "csipUri":Ljava/lang/String;
    .end local v11    # "cv":Landroid/content/ContentValues;
    :goto_2
    return v2

    .line 859
    :catch_0
    move-exception v12

    .line 860
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ContactsUtils5"

    const-string v3, "Error while looping on contacts"

    invoke-static {v2, v3, v12}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 861
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 862
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 863
    throw v2

    .line 898
    .restart local v8    # "count":I
    .restart local v9    # "cs":Landroid/database/Cursor;
    .restart local v10    # "csipUri":Ljava/lang/String;
    .restart local v11    # "cv":Landroid/content/ContentValues;
    :cond_1
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/im"

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v2, "data5"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    const-string v2, "data6"

    const-string v3, "csip"

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v2, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 902
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 903
    .local v13, "insertedUri":Landroid/net/Uri;
    if-nez v13, :cond_2

    .line 904
    const/4 v2, 0x0

    goto :goto_2

    .line 906
    :cond_2
    const-string v2, "ContactsUtils5"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inserted : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 912
    .end local v8    # "count":I
    .end local v9    # "cs":Landroid/database/Cursor;
    .end local v10    # "csipUri":Ljava/lang/String;
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v13    # "insertedUri":Landroid/net/Uri;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public searchContact(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 11
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 180
    const-string v7, ""

    .line 181
    .local v7, "phone":Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .local v6, "cons":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 184
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {p0, v6}, Lcom/csipsimple/utils/contacts/ContactsUtils5;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    const-string v7, ""

    .line 197
    :cond_0
    :goto_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 198
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    sget-object v2, Lcom/csipsimple/utils/contacts/ContactsUtils5;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 210
    const-string v5, "times_contacted DESC,display_name,data2"

    move-object v4, v3

    .line 206
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 212
    .local v8, "phoneCursor":Landroid/database/Cursor;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 214
    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/csipsimple/utils/contacts/ContactsUtils5;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v10, v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 216
    .local v10, "translated":Landroid/database/MatrixCursor;
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    .line 217
    .local v9, "result":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 218
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 219
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 220
    invoke-virtual {v9, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 222
    const-string v0, "\u00a0"

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 223
    invoke-virtual {v9, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 245
    .end local v9    # "result":Landroid/database/MatrixCursor$RowBuilder;
    .end local v10    # "translated":Landroid/database/MatrixCursor;
    :cond_1
    return-object v8

    .line 191
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "phoneCursor":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 251
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 253
    const-string v1, ""

    .line 256
    :goto_0
    return-object v1

    .line 255
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 256
    goto :goto_0
.end method

.method public updateCSipPresence(Landroid/content/Context;Ljava/lang/String;Lcom/csipsimple/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    .locals 9
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "buddyUri"    # Ljava/lang/String;
    .param p3, "presStatus"    # Lcom/csipsimple/api/SipManager$PresenceStatus;
    .param p4, "statusText"    # Ljava/lang/String;

    .prologue
    .line 693
    const/16 v6, 0x8

    invoke-static {v6}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 696
    const/4 v5, 0x0

    .line 697
    .local v5, "presence":I
    const-string v1, ""

    .line 698
    .local v1, "correspondingPresence":Ljava/lang/String;
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsUtils5;->$SWITCH_TABLE$com$csipsimple$api$SipManager$PresenceStatus()[I

    move-result-object v6

    invoke-virtual {p3}, Lcom/csipsimple/api/SipManager$PresenceStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 718
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 719
    move-object p4, v1

    .line 722
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v3, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 727
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "custom_protocol"

    const-string v7, "csip"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 728
    const-string v6, "protocol"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 729
    const-string v6, "im_handle"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 730
    const-string v6, "status"

    invoke-virtual {v0, v6, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 731
    const-string v6, "mode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 733
    const/16 v6, 0xb

    invoke-static {v6}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 734
    const-string v6, "chat_capability"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 737
    :cond_1
    invoke-static {p1}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->getCurrentPackageInfos(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 738
    .local v4, "pkg":Ljava/lang/String;
    const-string v6, "status_res_package"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 739
    const-string v6, "status_label"

    const v7, 0x7f0b0011

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 740
    const-string v6, "status_icon"

    const v7, 0x7f0200b6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 741
    const-string v6, "status_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 742
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.contacts"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 775
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "correspondingPresence":Ljava/lang/String;
    .end local v3    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "presence":I
    :cond_2
    :goto_1
    return-void

    .line 700
    .restart local v1    # "correspondingPresence":Ljava/lang/String;
    .restart local v5    # "presence":I
    :pswitch_0
    const/4 v5, 0x5

    .line 701
    const v6, 0x7f0b0210

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 702
    goto/16 :goto_0

    .line 704
    :pswitch_1
    const/4 v5, 0x1

    .line 705
    const v6, 0x7f0b0211

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 706
    goto/16 :goto_0

    .line 708
    :pswitch_2
    const/4 v5, 0x2

    .line 709
    const v6, 0x7f0b0212

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 710
    goto/16 :goto_0

    .line 712
    :pswitch_3
    const/4 v5, 0x4

    .line 713
    const v6, 0x7f0b0213

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 714
    goto/16 :goto_0

    .line 751
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v3    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v4    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 752
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "ContactsUtils5"

    const-string v7, "Can\'t update status"

    invoke-static {v6, v7, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 753
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 754
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string v6, "ContactsUtils5"

    const-string v7, "Can\'t update status"

    invoke-static {v6, v7, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

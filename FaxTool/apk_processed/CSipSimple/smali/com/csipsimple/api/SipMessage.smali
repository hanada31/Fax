.class public Lcom/csipsimple/api/SipMessage;
.super Ljava/lang/Object;
.source "SipMessage.java"


# static fields
.field public static final FIELD_BODY:Ljava/lang/String; = "body"

.field public static final FIELD_CONTACT:Ljava/lang/String; = "contact"

.field public static final FIELD_DATE:Ljava/lang/String; = "date"

.field public static final FIELD_FROM:Ljava/lang/String; = "sender"

.field public static final FIELD_FROM_FULL:Ljava/lang/String; = "full_sender"

.field public static final FIELD_ID:Ljava/lang/String; = "id"

.field public static final FIELD_MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final FIELD_READ:Ljava/lang/String; = "read"

.field public static final FIELD_STATUS:Ljava/lang/String; = "status"

.field public static final FIELD_TO:Ljava/lang/String; = "receiver"

.field public static final FIELD_TYPE:Ljava/lang/String; = "type"

.field public static final MESSAGES_TABLE_NAME:Ljava/lang/String; = "messages"

.field public static final MESSAGE_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.csipsimple.message"

.field public static final MESSAGE_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.csipsimple.message"

.field public static final MESSAGE_ID_URI_BASE:Landroid/net/Uri;

.field public static final MESSAGE_TYPE_FAILED:I = 0x5

.field public static final MESSAGE_TYPE_INBOX:I = 0x1

.field public static final MESSAGE_TYPE_QUEUED:I = 0x6

.field public static final MESSAGE_TYPE_SENT:I = 0x2

.field public static final MESSAGE_URI:Landroid/net/Uri;

.field public static final SELF:Ljava/lang/String; = "SELF"

.field public static final STATUS_NONE:I = -0x1

.field public static final THREAD_ALIAS:Ljava/lang/String; = "thread"

.field public static final THREAD_ID_URI_BASE:Landroid/net/Uri;

.field public static final THREAD_URI:Landroid/net/Uri;


# instance fields
.field private body:Ljava/lang/String;

.field private contact:Ljava/lang/String;

.field private date:J

.field private from:Ljava/lang/String;

.field private fullFrom:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private read:Z

.field private status:I

.field private to:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-string v0, "content://com.csipsimple.db/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 150
    const-string v0, "content://com.csipsimple.db/messages/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipMessage;->MESSAGE_ID_URI_BASE:Landroid/net/Uri;

    .line 160
    const-string v0, "content://com.csipsimple.db/thread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipMessage;->THREAD_URI:Landroid/net/Uri;

    .line 165
    const-string v0, "content://com.csipsimple.db/thread/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/csipsimple/api/SipMessage;->THREAD_ID_URI_BASE:Landroid/net/Uri;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v1, -0x1

    iput v1, p0, Lcom/csipsimple/api/SipMessage;->status:I

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/csipsimple/api/SipMessage;->read:Z

    .line 219
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v0, "args":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/SipMessage;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 1
    .param p1, "aForm"    # Ljava/lang/String;
    .param p2, "aTo"    # Ljava/lang/String;
    .param p3, "aContact"    # Ljava/lang/String;
    .param p4, "aBody"    # Ljava/lang/String;
    .param p5, "aMimeType"    # Ljava/lang/String;
    .param p6, "aDate"    # J
    .param p8, "aType"    # I
    .param p9, "aFullFrom"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/csipsimple/api/SipMessage;->status:I

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/api/SipMessage;->read:Z

    .line 202
    iput-object p1, p0, Lcom/csipsimple/api/SipMessage;->from:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/csipsimple/api/SipMessage;->to:Ljava/lang/String;

    .line 204
    iput-object p3, p0, Lcom/csipsimple/api/SipMessage;->contact:Ljava/lang/String;

    .line 205
    iput-object p4, p0, Lcom/csipsimple/api/SipMessage;->body:Ljava/lang/String;

    .line 206
    iput-object p5, p0, Lcom/csipsimple/api/SipMessage;->mimeType:Ljava/lang/String;

    .line 207
    iput-wide p6, p0, Lcom/csipsimple/api/SipMessage;->date:J

    .line 208
    iput p8, p0, Lcom/csipsimple/api/SipMessage;->type:I

    .line 209
    iput-object p9, p0, Lcom/csipsimple/api/SipMessage;->fullFrom:Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method public final createFromContentValue(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "args"    # Landroid/content/ContentValues;

    .prologue
    .line 250
    const-string v4, "sender"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "tmp_s":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 252
    iput-object v3, p0, Lcom/csipsimple/api/SipMessage;->from:Ljava/lang/String;

    .line 254
    :cond_0
    const-string v4, "receiver"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    if-eqz v3, :cond_1

    .line 256
    iput-object v3, p0, Lcom/csipsimple/api/SipMessage;->to:Ljava/lang/String;

    .line 258
    :cond_1
    const-string v4, "contact"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    if-eqz v3, :cond_2

    .line 260
    iput-object v3, p0, Lcom/csipsimple/api/SipMessage;->contact:Ljava/lang/String;

    .line 262
    :cond_2
    const-string v4, "body"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    if-eqz v3, :cond_3

    .line 264
    iput-object v3, p0, Lcom/csipsimple/api/SipMessage;->body:Ljava/lang/String;

    .line 266
    :cond_3
    const-string v4, "mime_type"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    if-eqz v3, :cond_4

    .line 268
    iput-object v3, p0, Lcom/csipsimple/api/SipMessage;->mimeType:Ljava/lang/String;

    .line 270
    :cond_4
    const-string v4, "date"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 271
    .local v2, "tmp_l":Ljava/lang/Long;
    if-eqz v2, :cond_5

    .line 272
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/csipsimple/api/SipMessage;->date:J

    .line 274
    :cond_5
    const-string v4, "type"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 275
    .local v1, "tmp_i":Ljava/lang/Integer;
    if-eqz v1, :cond_6

    .line 276
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/csipsimple/api/SipMessage;->type:I

    .line 278
    :cond_6
    const-string v4, "status"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_7

    .line 280
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/csipsimple/api/SipMessage;->status:I

    .line 282
    :cond_7
    const-string v4, "read"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 283
    .local v0, "tmp_b":Ljava/lang/Boolean;
    if-eqz v0, :cond_8

    .line 284
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/csipsimple/api/SipMessage;->read:Z

    .line 287
    :cond_8
    const-string v4, "full_sender"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    if-eqz v3, :cond_9

    .line 289
    iput-object v3, p0, Lcom/csipsimple/api/SipMessage;->fullFrom:Ljava/lang/String;

    .line 291
    :cond_9
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/csipsimple/api/SipMessage;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/csipsimple/api/SipMessage;->body:Ljava/lang/String;

    const-string v2, " // "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, "splitIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/csipsimple/api/SipMessage;->body:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 361
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/csipsimple/api/SipMessage;->body:Ljava/lang/String;

    goto :goto_0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 230
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "sender"

    iget-object v2, p0, Lcom/csipsimple/api/SipMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "receiver"

    iget-object v2, p0, Lcom/csipsimple/api/SipMessage;->to:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "contact"

    iget-object v2, p0, Lcom/csipsimple/api/SipMessage;->contact:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "body"

    iget-object v2, p0, Lcom/csipsimple/api/SipMessage;->body:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/csipsimple/api/SipMessage;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "type"

    iget v2, p0, Lcom/csipsimple/api/SipMessage;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v1, "date"

    iget-wide v2, p0, Lcom/csipsimple/api/SipMessage;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 238
    const-string v1, "status"

    iget v2, p0, Lcom/csipsimple/api/SipMessage;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v1, "read"

    iget-boolean v2, p0, Lcom/csipsimple/api/SipMessage;->read:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 240
    const-string v1, "full_sender"

    iget-object v2, p0, Lcom/csipsimple/api/SipMessage;->fullFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/csipsimple/api/SipMessage;->date:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/csipsimple/api/SipMessage;->fullFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/csipsimple/api/SipUri;->getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorContent()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 369
    iget v2, p0, Lcom/csipsimple/api/SipMessage;->status:I

    if-eq v2, v4, :cond_0

    .line 370
    iget v2, p0, Lcom/csipsimple/api/SipMessage;->status:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 371
    iget v2, p0, Lcom/csipsimple/api/SipMessage;->status:I

    const/16 v3, 0xca

    if-ne v2, v3, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-object v1

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/api/SipMessage;->body:Ljava/lang/String;

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 376
    .local v0, "splitIndex":I
    if-eq v0, v4, :cond_0

    .line 377
    iget-object v1, p0, Lcom/csipsimple/api/SipMessage;->body:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x4

    iget-object v3, p0, Lcom/csipsimple/api/SipMessage;->body:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/csipsimple/api/SipMessage;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getFullFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/csipsimple/api/SipMessage;->fullFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/csipsimple/api/SipMessage;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    const-string v0, "SELF"

    iget-object v1, p0, Lcom/csipsimple/api/SipMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/csipsimple/api/SipMessage;->to:Ljava/lang/String;

    .line 348
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/csipsimple/api/SipMessage;->from:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/csipsimple/api/SipMessage;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/csipsimple/api/SipMessage;->type:I

    return v0
.end method

.method public isOutgoing()Z
    .locals 2

    .prologue
    .line 388
    const-string v0, "SELF"

    iget-object v1, p0, Lcom/csipsimple/api/SipMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/csipsimple/api/SipMessage;->read:Z

    .line 328
    return-void
.end method

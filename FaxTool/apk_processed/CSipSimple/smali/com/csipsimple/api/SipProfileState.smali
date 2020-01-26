.class public Lcom/csipsimple/api/SipProfileState;
.super Ljava/lang/Object;
.source "SipProfileState.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final ACC_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/csipsimple/api/SipProfileState;",
            ">;"
        }
    .end annotation
.end field

.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final ADDED_STATUS:Ljava/lang/String; = "added_status"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/csipsimple/api/SipProfileState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final FULL_PROJECTION:[Ljava/lang/String;

.field public static final PJSUA_ID:Ljava/lang/String; = "pjsua_id"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final REG_URI:Ljava/lang/String; = "reg_uri"

.field public static final STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final STATUS_TEXT:Ljava/lang/String; = "status_text"

.field public static final WIZARD:Ljava/lang/String; = "wizard"

.field private static final serialVersionUID:J = -0x3263e10ae96a3589L


# instance fields
.field private active:Z

.field private addedStatus:I

.field private databaseId:I

.field private displayName:Ljava/lang/String;

.field private expires:I

.field private pjsuaId:I

.field public primaryKey:I

.field private priority:I

.field private regUri:Ljava/lang/String;

.field private statusCode:I

.field private statusText:Ljava/lang/String;

.field private wizard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 134
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 135
    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pjsua_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wizard"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "active"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "status_code"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status_text"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reg_uri"

    aput-object v2, v0, v1

    .line 134
    sput-object v0, Lcom/csipsimple/api/SipProfileState;->FULL_PROJECTION:[Ljava/lang/String;

    .line 232
    new-instance v0, Lcom/csipsimple/api/SipProfileState$1;

    invoke-direct {v0}, Lcom/csipsimple/api/SipProfileState$1;-><init>()V

    sput-object v0, Lcom/csipsimple/api/SipProfileState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 527
    new-instance v0, Lcom/csipsimple/api/SipProfileState$2;

    invoke-direct {v0}, Lcom/csipsimple/api/SipProfileState$2;-><init>()V

    sput-object v0, Lcom/csipsimple/api/SipProfileState;->ACC_INFO_COMPARATOR:Ljava/util/Comparator;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Lcom/csipsimple/api/SipProfileState;->primaryKey:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 149
    iput v1, p0, Lcom/csipsimple/api/SipProfileState;->addedStatus:I

    .line 150
    iput v1, p0, Lcom/csipsimple/api/SipProfileState;->pjsuaId:I

    .line 151
    iput v1, p0, Lcom/csipsimple/api/SipProfileState;->statusCode:I

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfileState;->statusText:Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/csipsimple/api/SipProfileState;->expires:I

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/csipsimple/api/SipProfileState;->primaryKey:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1}, Lcom/csipsimple/api/SipProfileState;->createFromDb(Landroid/database/Cursor;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/csipsimple/api/SipProfileState;->primaryKey:I

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1}, Lcom/csipsimple/api/SipProfileState;->readFromParcel(Landroid/os/Parcel;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/csipsimple/api/SipProfile;)V
    .locals 2
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/csipsimple/api/SipProfileState;-><init>()V

    .line 164
    iget-wide v0, p1, Lcom/csipsimple/api/SipProfile;->id:J

    long-to-int v0, v0

    iput v0, p0, Lcom/csipsimple/api/SipProfileState;->databaseId:I

    .line 165
    iget-object v0, p1, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    iput-object v0, p0, Lcom/csipsimple/api/SipProfileState;->wizard:Ljava/lang/String;

    .line 166
    iget-boolean v0, p1, Lcom/csipsimple/api/SipProfile;->active:Z

    iput-boolean v0, p0, Lcom/csipsimple/api/SipProfileState;->active:Z

    .line 167
    iget-object v0, p1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/csipsimple/api/SipProfileState;->displayName:Ljava/lang/String;

    .line 168
    iget v0, p1, Lcom/csipsimple/api/SipProfile;->priority:I

    iput v0, p0, Lcom/csipsimple/api/SipProfileState;->priority:I

    .line 169
    iget-object v0, p1, Lcom/csipsimple/api/SipProfile;->reg_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/csipsimple/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public static final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/csipsimple/api/SipProfileState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    sget-object v0, Lcom/csipsimple/api/SipProfileState;->ACC_INFO_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private final readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/csipsimple/api/SipProfileState;->primaryKey:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/csipsimple/api/SipProfileState;->databaseId:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/csipsimple/api/SipProfileState;->pjsuaId:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/api/SipProfileState;->wizard:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/csipsimple/api/SipProfileState;->active:Z

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfileState;->statusCode:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfileState;->statusText:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfileState;->addedStatus:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfileState;->expires:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfileState;->displayName:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/csipsimple/api/SipProfileState;->priority:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 206
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final createFromContentValue(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "args"    # Landroid/content/ContentValues;

    .prologue
    .line 263
    const-string v3, "account_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 264
    .local v1, "tmp_i":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/csipsimple/api/SipProfileState;->databaseId:I

    .line 267
    :cond_0
    const-string v3, "pjsua_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/csipsimple/api/SipProfileState;->pjsuaId:I

    .line 271
    :cond_1
    const-string v3, "wizard"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "tmp_s":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 273
    iput-object v2, p0, Lcom/csipsimple/api/SipProfileState;->wizard:Ljava/lang/String;

    .line 275
    :cond_2
    const-string v3, "active"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 276
    .local v0, "tmp_b":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/csipsimple/api/SipProfileState;->active:Z

    .line 279
    :cond_3
    const-string v3, "status_code"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_4

    .line 281
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/csipsimple/api/SipProfileState;->statusCode:I

    .line 283
    :cond_4
    const-string v3, "status_text"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    if-eqz v2, :cond_5

    .line 285
    iput-object v2, p0, Lcom/csipsimple/api/SipProfileState;->statusText:Ljava/lang/String;

    .line 287
    :cond_5
    const-string v3, "added_status"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_6

    .line 289
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/csipsimple/api/SipProfileState;->addedStatus:I

    .line 291
    :cond_6
    const-string v3, "expires"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_7

    .line 293
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/csipsimple/api/SipProfileState;->expires:I

    .line 295
    :cond_7
    const-string v3, "display_name"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    if-eqz v2, :cond_8

    .line 297
    iput-object v2, p0, Lcom/csipsimple/api/SipProfileState;->displayName:Ljava/lang/String;

    .line 299
    :cond_8
    const-string v3, "reg_uri"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    if-eqz v2, :cond_9

    .line 301
    iput-object v2, p0, Lcom/csipsimple/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 303
    :cond_9
    const-string v3, "priority"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_a

    .line 305
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/csipsimple/api/SipProfileState;->priority:I

    .line 308
    :cond_a
    return-void
.end method

.method public final createFromDb(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 249
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v0, "args":Landroid/content/ContentValues;
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/csipsimple/api/SipProfileState;->createFromContentValue(Landroid/content/ContentValues;)V

    .line 252
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountId()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->databaseId:I

    return v0
.end method

.method public getAddedStatus()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->addedStatus:I

    return v0
.end method

.method public getAsContentValue()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 318
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 319
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "account_id"

    iget v2, p0, Lcom/csipsimple/api/SipProfileState;->databaseId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v1, "active"

    iget-boolean v2, p0, Lcom/csipsimple/api/SipProfileState;->active:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 321
    const-string v1, "added_status"

    iget v2, p0, Lcom/csipsimple/api/SipProfileState;->addedStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v1, "display_name"

    iget-object v2, p0, Lcom/csipsimple/api/SipProfileState;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "expires"

    iget v2, p0, Lcom/csipsimple/api/SipProfileState;->expires:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v1, "pjsua_id"

    iget v2, p0, Lcom/csipsimple/api/SipProfileState;->pjsuaId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v1, "priority"

    iget v2, p0, Lcom/csipsimple/api/SipProfileState;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v1, "reg_uri"

    iget-object v2, p0, Lcom/csipsimple/api/SipProfileState;->regUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "status_code"

    iget v2, p0, Lcom/csipsimple/api/SipProfileState;->statusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v1, "status_text"

    iget-object v2, p0, Lcom/csipsimple/api/SipProfileState;->statusText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "wizard"

    iget-object v2, p0, Lcom/csipsimple/api/SipProfileState;->wizard:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/csipsimple/api/SipProfileState;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->expires:I

    return v0
.end method

.method public getPjsuaId()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->pjsuaId:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->priority:I

    return v0
.end method

.method public getRegUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/csipsimple/api/SipProfileState;->regUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->statusCode:I

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/csipsimple/api/SipProfileState;->statusText:Ljava/lang/String;

    return-object v0
.end method

.method public getWizard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/csipsimple/api/SipProfileState;->wizard:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/csipsimple/api/SipProfileState;->active:Z

    return v0
.end method

.method public isAddedToStack()Z
    .locals 2

    .prologue
    .line 501
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->pjsuaId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidForCall()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 509
    iget-boolean v2, p0, Lcom/csipsimple/api/SipProfileState;->active:Z

    if-eqz v2, :cond_3

    .line 510
    invoke-virtual {p0}, Lcom/csipsimple/api/SipProfileState;->getRegUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/csipsimple/api/SipProfileState;->isAddedToStack()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/csipsimple/api/SipProfileState;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/csipsimple/api/SipProfileState;->getExpires()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 515
    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/csipsimple/api/SipProfileState;->active:Z

    .line 385
    return-void
.end method

.method public setAddedStatus(I)V
    .locals 0
    .param p1, "addedStatus"    # I

    .prologue
    .line 430
    iput p1, p0, Lcom/csipsimple/api/SipProfileState;->addedStatus:I

    .line 431
    return-void
.end method

.method public setDatabaseId(I)V
    .locals 0
    .param p1, "databaseId"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/csipsimple/api/SipProfileState;->databaseId:I

    .line 338
    return-void
.end method

.method public setExpires(I)V
    .locals 0
    .param p1, "expires"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/csipsimple/api/SipProfileState;->expires:I

    .line 448
    return-void
.end method

.method public setPjsuaId(I)V
    .locals 0
    .param p1, "pjsuaId"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/csipsimple/api/SipProfileState;->pjsuaId:I

    .line 354
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 476
    iput p1, p0, Lcom/csipsimple/api/SipProfileState;->priority:I

    .line 477
    return-void
.end method

.method public setRegUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "regUri"    # Ljava/lang/String;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/csipsimple/api/SipProfileState;->regUri:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/csipsimple/api/SipProfileState;->statusCode:I

    .line 400
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusText"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/csipsimple/api/SipProfileState;->statusText:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public setWizard(Ljava/lang/String;)V
    .locals 0
    .param p1, "wizard"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/csipsimple/api/SipProfileState;->wizard:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 213
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->primaryKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->databaseId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->pjsuaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v0, p0, Lcom/csipsimple/api/SipProfileState;->wizard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-boolean v0, p0, Lcom/csipsimple/api/SipProfileState;->active:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/csipsimple/api/SipProfileState;->statusText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->addedStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->expires:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/csipsimple/api/SipProfileState;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget v0, p0, Lcom/csipsimple/api/SipProfileState;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object v0, p0, Lcom/csipsimple/api/SipProfileState;->regUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

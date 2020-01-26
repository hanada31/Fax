.class public Lcom/csipsimple/ui/favorites/FavAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "FavAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;,
        Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "FavAdapter"


# instance fields
.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 127
    const v0, 0x7f030034

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 75
    new-instance v0, Lcom/csipsimple/ui/favorites/FavAdapter$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/favorites/FavAdapter$1;-><init>(Lcom/csipsimple/ui/favorites/FavAdapter;)V

    iput-object v0, p0, Lcom/csipsimple/ui/favorites/FavAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/csipsimple/ui/favorites/FavAdapter$2;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/favorites/FavAdapter$2;-><init>(Lcom/csipsimple/ui/favorites/FavAdapter;)V

    iput-object v0, p0, Lcom/csipsimple/ui/favorites/FavAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 128
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/favorites/FavAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1, p2, p3}, Lcom/csipsimple/ui/favorites/FavAdapter;->showDialogForGroupSelection(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/csipsimple/ui/favorites/FavAdapter;->showDialogForSipData(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/csipsimple/ui/favorites/FavAdapter;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    .prologue
    .line 358
    invoke-direct/range {p0 .. p5}, Lcom/csipsimple/ui/favorites/FavAdapter;->applyNumbersToCSip(Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method private applyNumbersToCSip(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 10
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "profileId"    # J

    .prologue
    .line 359
    const-string v7, "FavAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Apply numbers to csip "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v3

    .line 361
    .local v3, "cw":Lcom/csipsimple/utils/contacts/ContactsWrapper;
    iget-object v7, p0, Lcom/csipsimple/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7, p1}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 363
    .local v0, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 382
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 384
    :goto_1
    return-void

    .line 364
    :cond_1
    :try_start_1
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 365
    .local v1, "contactId":J
    iget-object v7, p0, Lcom/csipsimple/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7, v1, v2, p2}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getPhoneNumbers(Landroid/content/Context;JI)Ljava/util/List;

    move-result-object v6

    .line 366
    .local v6, "phones":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 367
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;

    invoke-virtual {v7}, Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "nbr":Ljava/lang/String;
    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 369
    sget v7, Lcom/csipsimple/utils/contacts/ContactsWrapper;->URI_NBR:I

    if-ne p2, v7, :cond_2

    .line 371
    iget-object v7, p0, Lcom/csipsimple/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, p4, p5, v5}, Lcom/csipsimple/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 373
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 375
    :cond_3
    const-string v7, "FavAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Apply number to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v7, p0, Lcom/csipsimple/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7, v1, v2, v5}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->insertOrUpdateCSipUri(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    .end local v1    # "contactId":J
    .end local v5    # "nbr":Ljava/lang/String;
    .end local v6    # "phones":Ljava/util/List;, "Ljava/util/List<Lcom/csipsimple/utils/contacts/ContactsWrapper$Phone;>;"
    :catch_0
    move-exception v4

    .line 380
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "FavAdapter"

    const-string v8, "Error while looping on contacts"

    invoke-static {v7, v8, v4}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 381
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 382
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 383
    throw v7
.end method

.method private showDialogForGroupSelection(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profileId"    # Ljava/lang/Long;
    .param p3, "groupName"    # Ljava/lang/String;

    .prologue
    .line 285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0b0218

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getGroups(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 288
    .local v1, "choiceCursor":Landroid/database/Cursor;
    const/4 v6, -0x1

    .line 289
    .local v6, "selectedIndex":I
    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 291
    const/4 v4, 0x0

    .line 292
    .local v4, "i":I
    const-string v7, "title"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 294
    .local v2, "colIdx":I
    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 296
    move v6, v4

    .line 303
    .end local v2    # "colIdx":I
    .end local v4    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v7, "title"

    new-instance v8, Lcom/csipsimple/ui/favorites/FavAdapter$3;

    invoke-direct {v8, p0, v1, p1, p2}, Lcom/csipsimple/ui/favorites/FavAdapter$3;-><init>(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/Long;)V

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 317
    const v7, 0x7f0b01c8

    new-instance v8, Lcom/csipsimple/ui/favorites/FavAdapter$4;

    invoke-direct {v8, p0, v1}, Lcom/csipsimple/ui/favorites/FavAdapter$4;-><init>(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    new-instance v7, Lcom/csipsimple/ui/favorites/FavAdapter$5;

    invoke-direct {v7, p0, v1}, Lcom/csipsimple/ui/favorites/FavAdapter$5;-><init>(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 330
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 331
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 332
    return-void

    .line 299
    .end local v3    # "dialog":Landroid/app/Dialog;
    .restart local v2    # "colIdx":I
    .restart local v4    # "i":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 300
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 293
    if-nez v7, :cond_0

    goto :goto_0
.end method

.method private showDialogForSipData(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profileId"    # Ljava/lang/Long;
    .param p3, "groupName"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0218

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 337
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 338
    const v2, 0x7f0d0002

    new-instance v3, Lcom/csipsimple/ui/favorites/FavAdapter$6;

    invoke-direct {v3, p0, p3, p4, p2}, Lcom/csipsimple/ui/favorites/FavAdapter$6;-><init>(Lcom/csipsimple/ui/favorites/FavAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 345
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 346
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 347
    return-void
.end method

.method private showViewForType(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 239
    const v0, 0x7f0600a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 240
    const v0, 0x7f0600a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 241
    const v0, 0x7f0600a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    return-void

    :cond_0
    move v0, v2

    .line 239
    goto :goto_0

    :cond_1
    move v0, v2

    .line 240
    goto :goto_1

    :cond_2
    move v1, v2

    .line 241
    goto :goto_2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 31
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 132
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v14, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p3

    invoke-static {v0, v14}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 135
    const/16 v27, 0x1

    .line 136
    .local v27, "type":I
    const-string v4, "wrapped_type"

    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    const-string v4, "wrapped_type"

    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 140
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/ui/favorites/FavAdapter;->showViewForType(Landroid/view/View;I)V

    .line 143
    if-nez v27, :cond_6

    .line 145
    const v4, 0x7f060043

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 146
    .local v26, "tv":Landroid/widget/TextView;
    const v4, 0x7f0600a5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 147
    .local v16, "icon":Landroid/widget/ImageView;
    const v4, 0x7f0600a7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;

    .line 150
    .local v23, "presSpinner":Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;
    new-instance v10, Lcom/csipsimple/api/SipProfile;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 152
    .local v10, "acc":Lcom/csipsimple/api/SipProfile;
    const-string v4, "_id"

    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 153
    .local v6, "profileId":Ljava/lang/Long;
    iget-object v7, v10, Lcom/csipsimple/api/SipProfile;->android_group:Ljava/lang/String;

    .line 154
    .local v7, "groupName":Ljava/lang/String;
    iget-object v15, v10, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    .line 155
    .local v15, "displayName":Ljava/lang/String;
    iget-object v0, v10, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 156
    .local v29, "wizard":Ljava/lang/String;
    iget v4, v10, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v9, 0x1

    .line 157
    .local v9, "publishedEnabled":Z
    :goto_0
    invoke-virtual {v10}, Lcom/csipsimple/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "domain":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static/range {v29 .. v29}, Lcom/csipsimple/wizards/WizardUtils;->getWizardIconRes(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->setProfileId(J)V

    .line 165
    const v4, 0x7f0600a6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 167
    .local v22, "menuViewWrapper":Landroid/view/ViewGroup;
    new-instance v3, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;-><init>(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    .local v3, "newMcb":Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 171
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    .line 172
    const/4 v5, -0x1

    .line 171
    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 174
    .local v18, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    new-instance v19, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 175
    .local v19, "mActionMenuPresenter":Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 176
    new-instance v20, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v20, "menuBuilder":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 178
    new-instance v17, Lcom/actionbarsherlock/view/MenuInflater;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 179
    .local v17, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v4, 0x7f0e0001

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 180
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 181
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v21

    check-cast v21, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 182
    .local v21, "menuView":Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 183
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 189
    .end local v17    # "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    .end local v18    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "mActionMenuPresenter":Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
    .end local v21    # "menuView":Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    :goto_1
    const v4, 0x7f06010e

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    if-eqz v9, :cond_4

    const v4, 0x7f0b0215

    :goto_2
    invoke-interface {v5, v4}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 190
    const v4, 0x7f06010d

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v5, v4}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 230
    .end local v3    # "newMcb":Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;
    .end local v6    # "profileId":Ljava/lang/Long;
    .end local v7    # "groupName":Ljava/lang/String;
    .end local v8    # "domain":Ljava/lang/String;
    .end local v9    # "publishedEnabled":Z
    .end local v10    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v15    # "displayName":Ljava/lang/String;
    .end local v16    # "icon":Landroid/widget/ImageView;
    .end local v20    # "menuBuilder":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .end local v22    # "menuViewWrapper":Landroid/view/ViewGroup;
    .end local v23    # "presSpinner":Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;
    .end local v26    # "tv":Landroid/widget/TextView;
    .end local v29    # "wizard":Ljava/lang/String;
    :cond_1
    :goto_4
    return-void

    .line 156
    .restart local v6    # "profileId":Ljava/lang/Long;
    .restart local v7    # "groupName":Ljava/lang/String;
    .restart local v10    # "acc":Lcom/csipsimple/api/SipProfile;
    .restart local v15    # "displayName":Ljava/lang/String;
    .restart local v16    # "icon":Landroid/widget/ImageView;
    .restart local v23    # "presSpinner":Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;
    .restart local v26    # "tv":Landroid/widget/TextView;
    .restart local v29    # "wizard":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 186
    .restart local v3    # "newMcb":Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;
    .restart local v8    # "domain":Ljava/lang/String;
    .restart local v9    # "publishedEnabled":Z
    .restart local v22    # "menuViewWrapper":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 187
    .restart local v20    # "menuBuilder":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_1

    .line 189
    :cond_4
    const v4, 0x7f0b0214

    goto :goto_2

    .line 190
    :cond_5
    const/4 v4, 0x1

    goto :goto_3

    .line 192
    .end local v3    # "newMcb":Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;
    .end local v6    # "profileId":Ljava/lang/Long;
    .end local v7    # "groupName":Ljava/lang/String;
    .end local v8    # "domain":Ljava/lang/String;
    .end local v9    # "publishedEnabled":Z
    .end local v10    # "acc":Lcom/csipsimple/api/SipProfile;
    .end local v15    # "displayName":Ljava/lang/String;
    .end local v16    # "icon":Landroid/widget/ImageView;
    .end local v20    # "menuBuilder":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .end local v22    # "menuViewWrapper":Landroid/view/ViewGroup;
    .end local v23    # "presSpinner":Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;
    .end local v26    # "tv":Landroid/widget/TextView;
    .end local v29    # "wizard":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_a

    .line 193
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getContactInfo(Landroid/content/Context;Landroid/database/Cursor;)Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;

    move-result-object v13

    .line 194
    .local v13, "ci":Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v13, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->userData:Ljava/lang/Object;

    .line 196
    const v4, 0x7f060068

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 197
    .restart local v26    # "tv":Landroid/widget/TextView;
    const v4, 0x7f060051

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .line 198
    .local v11, "badge":Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;
    const v4, 0x7f060084

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 199
    .local v25, "statusText":Landroid/widget/TextView;
    const v4, 0x7f060083

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 202
    .local v24, "statusImage":Landroid/widget/ImageView;
    iget-object v4, v13, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->contactId:Ljava/lang/Long;

    if-eqz v4, :cond_7

    .line 203
    iget-object v4, v13, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->displayName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v4, v13, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    iget-object v4, v4, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v11, v4}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 205
    invoke-virtual {v11}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    .line 206
    iget-object v5, v13, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    .line 207
    const v30, 0x7f0200a3

    .line 205
    move-object/from16 v0, p2

    move/from16 v1, v30

    invoke-static {v0, v4, v5, v1}, Lcom/csipsimple/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/csipsimple/models/CallerInfo;I)V

    .line 210
    iget-boolean v4, v13, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->hasPresence:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v4, v13, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->status:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-boolean v4, v13, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->hasPresence:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v4

    iget v5, v13, Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;->presence:I

    invoke-virtual {v4, v5}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getPresenceIconResourceId(I)I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    :cond_7
    const v4, 0x7f0600a8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 217
    .local v28, "v":Landroid/view/View;
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/ui/favorites/FavAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v4, 0x7f060052

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 220
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/ui/favorites/FavAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 210
    .end local v28    # "v":Landroid/view/View;
    :cond_8
    const/16 v4, 0x8

    goto :goto_5

    .line 212
    :cond_9
    const/16 v4, 0x8

    goto :goto_6

    .line 222
    .end local v11    # "badge":Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;
    .end local v13    # "ci":Lcom/csipsimple/utils/contacts/ContactsWrapper$ContactInfo;
    .end local v24    # "statusImage":Landroid/widget/ImageView;
    .end local v25    # "statusText":Landroid/widget/TextView;
    .end local v26    # "tv":Landroid/widget/TextView;
    :cond_a
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_1

    .line 224
    const v4, 0x7f0600a9

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 225
    .restart local v28    # "v":Landroid/view/View;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v12, Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4}, Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;-><init>(Lcom/csipsimple/ui/favorites/FavAdapter;Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;)V

    .line 227
    .local v12, "cfg":Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;
    const-string v4, "_id"

    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v12, Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;->profileId:Ljava/lang/Long;

    .line 228
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 352
    .local v1, "id":I
    const v2, 0x7f0600a9

    if-ne v1, v2, :cond_0

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;

    .line 354
    .local v0, "cfg":Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;
    iget-object v2, p0, Lcom/csipsimple/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;->profileId:Ljava/lang/Long;

    iget-object v4, v0, Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;->groupName:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/csipsimple/ui/favorites/FavAdapter;->showDialogForGroupSelection(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V

    .line 356
    .end local v0    # "cfg":Lcom/csipsimple/ui/favorites/FavAdapter$ConfigureObj;
    :cond_0
    return-void
.end method

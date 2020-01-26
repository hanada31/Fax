.class public Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "CallLogDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$OnQuitListener;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final CALL_TYPE_COLUMN_INDEX:I = 0x3

.field private static final DATE_COLUMN_INDEX:I = 0x0

.field private static final DURATION_COLUMN_INDEX:I = 0x1

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field private static final NUMBER_COLUMN_INDEX:I = 0x2

.field private static final PROFILE_ID_COLUMN_INDEX:I = 0x4

.field private static final STATUS_CODE_COLUMN_INDEX:I = 0x5

.field private static final STATUS_TEXT_COLUMN_INDEX:I = 0x6

.field private static final THIS_FILE:Ljava/lang/String; = "CallLogDetailsFragment"


# instance fields
.field private mAccountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mPhoneCallDetailsHelper:Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field mResources:Landroid/content/res/Resources;

.field private quitListener:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$OnQuitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 92
    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 93
    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 94
    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 95
    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 96
    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 97
    const-string v2, "status_code"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 98
    const-string v2, "status_text"

    aput-object v2, v0, v1

    .line 91
    sput-object v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 113
    new-instance v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$1;-><init>(Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;)V

    iput-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;)Lcom/csipsimple/widgets/AccountChooserButton;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mAccountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

    return-object v0
.end method

.method private configureCallButton(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "callText"    # Ljava/lang/String;
    .param p2, "nbrLabel"    # Ljava/lang/CharSequence;
    .param p3, "number"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v7, 0x7f060046

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, "convertView":Landroid/view/View;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 365
    const v4, 0x7f060048

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 367
    .local v3, "text":Landroid/widget/TextView;
    const v4, 0x7f060047

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 368
    .local v2, "mainAction":Landroid/view/View;
    iget-object v4, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 370
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    const-string p3, ""

    .line 373
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/csipsimple/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 374
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const v4, 0x7f060049

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 377
    .local v1, "label":Landroid/widget/TextView;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    :goto_1
    return-void

    .end local v1    # "label":Landroid/widget/TextView;
    .end local v2    # "mainAction":Landroid/view/View;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_1
    move v4, v6

    .line 363
    goto :goto_0

    .line 380
    .restart local v1    # "label":Landroid/widget/TextView;
    .restart local v2    # "mainAction":Landroid/view/View;
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 6

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 161
    .local v0, "ids":[J
    array-length v3, v0

    new-array v2, v3, [Landroid/net/Uri;

    .line 162
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 165
    return-object v2

    .line 163
    :cond_0
    sget-object v3, Lcom/csipsimple/api/SipManager;->CALLLOG_ID_URI_BASE:Landroid/net/Uri;

    aget-wide v4, v0, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    .locals 23
    .param p1, "callUri"    # Landroid/net/Uri;

    .prologue
    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 284
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 286
    .local v18, "callCursor":Landroid/database/Cursor;
    if-eqz v18, :cond_0

    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 287
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v21, "Cannot find content: "

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :catchall_0
    move-exception v2

    .line 332
    if-eqz v18, :cond_1

    .line 333
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_1
    throw v2

    .line 291
    :cond_2
    const/4 v2, 0x2

    :try_start_1
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "number":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 293
    .local v6, "date":J
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 294
    .local v8, "duration":J
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 295
    .local v19, "callType":I
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 296
    .local v10, "accountId":Ljava/lang/Long;
    const/4 v2, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 297
    .local v11, "statusCode":I
    const/4 v2, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 309
    .local v12, "statusText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/csipsimple/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;

    move-result-object v20

    .line 310
    .local v20, "info":Lcom/csipsimple/models/CallerInfo;
    if-nez v20, :cond_4

    .line 311
    move-object v4, v3

    .line 312
    .local v4, "formattedNumber":Ljava/lang/CharSequence;
    const-string v13, ""

    .line 313
    .local v13, "nameText":Ljava/lang/CharSequence;
    const/4 v14, 0x0

    .line 314
    .local v14, "numberType":I
    const-string v15, ""

    .line 315
    .local v15, "numberLabel":Ljava/lang/CharSequence;
    const/16 v17, 0x0

    .line 316
    .local v17, "photoUri":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 325
    .local v16, "lookupUri":Landroid/net/Uri;
    :goto_0
    new-instance v2, Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .line 326
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/16 v21, 0x0

    .line 327
    aput v19, v5, v21

    .line 325
    invoke-direct/range {v2 .. v17}, Lcom/csipsimple/ui/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJLjava/lang/Long;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    if-eqz v18, :cond_3

    .line 333
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_3
    return-object v2

    .line 318
    .end local v4    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v13    # "nameText":Ljava/lang/CharSequence;
    .end local v14    # "numberType":I
    .end local v15    # "numberLabel":Ljava/lang/CharSequence;
    .end local v16    # "lookupUri":Landroid/net/Uri;
    .end local v17    # "photoUri":Landroid/net/Uri;
    :cond_4
    :try_start_2
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/csipsimple/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 319
    .restart local v4    # "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    .line 320
    .restart local v13    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    iget v14, v0, Lcom/csipsimple/models/CallerInfo;->numberType:I

    .line 321
    .restart local v14    # "numberType":I
    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/csipsimple/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 322
    .restart local v15    # "numberLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/csipsimple/models/CallerInfo;->photoUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 323
    .restart local v17    # "photoUri":Landroid/net/Uri;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    move-object/from16 v16, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v16    # "lookupUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 340
    const v0, 0x7f0200a1

    .line 343
    .local v0, "defaultLargePhoto":I
    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 346
    iget-object v3, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 345
    invoke-static {v2, v3, p1, v0}, Lcom/csipsimple/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 358
    :goto_0
    return-void

    .line 348
    :cond_0
    if-eqz p2, :cond_1

    .line 349
    new-instance v1, Lcom/csipsimple/models/CallerInfo;

    invoke-direct {v1}, Lcom/csipsimple/models/CallerInfo;-><init>()V

    .line 350
    .local v1, "person":Lcom/csipsimple/models/CallerInfo;
    iput-object p2, v1, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 352
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 353
    iget-object v3, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 352
    invoke-static {v2, v3, v1, v0}, Lcom/csipsimple/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/csipsimple/models/CallerInfo;I)V

    goto :goto_0

    .line 356
    .end local v1    # "person":Lcom/csipsimple/models/CallerInfo;
    :cond_1
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 21
    .param p1, "callUris"    # [Landroid/net/Uri;

    .prologue
    .line 176
    move-object/from16 v0, p1

    array-length v14, v0

    .line 177
    .local v14, "numCalls":I
    if-nez v14, :cond_0

    .line 178
    const-string v16, "CallLogDetailsFragment"

    const-string v17, "No calls logs as parameters"

    invoke-static/range {v16 .. v17}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 182
    :cond_0
    new-array v5, v14, [Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .line 183
    .local v5, "details":[Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    if-lt v9, v14, :cond_1

    .line 190
    const/16 v16, 0x0

    aget-object v7, v5, v16

    .line 191
    .local v7, "firstDetails":Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    iget-object v4, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 192
    .local v4, "contactUri":Landroid/net/Uri;
    iget-object v15, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 195
    .local v15, "photoUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mPhoneCallDetailsHelper:Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/csipsimple/ui/calllog/PhoneCallDetails;)V

    .line 213
    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 214
    iget-object v13, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 219
    .local v13, "nameOrNumber":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v4, :cond_3

    .line 220
    new-instance v12, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v12, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 221
    .local v12, "mainActionIntent":Landroid/content/Intent;
    const v11, 0x7f0200a5

    .line 222
    .local v11, "mainActionIcon":I
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 242
    .local v10, "mainActionDescription":Ljava/lang/String;
    :goto_3
    if-nez v12, :cond_6

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mMainActionView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mHeaderOverlayView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :goto_4
    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 266
    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/csipsimple/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "displayNumber":Ljava/lang/CharSequence;
    :goto_5
    const v16, 0x7f0b02bb

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "callText":Ljava/lang/String;
    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v3, v1, v2}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->configureCallButton(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getView()Landroid/view/View;

    move-result-object v16

    const v17, 0x7f06004b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 275
    .local v8, "historyList":Landroid/widget/ListView;
    new-instance v16, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v5}, Lcom/csipsimple/ui/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;[Lcom/csipsimple/ui/calllog/PhoneCallDetails;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mAccountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

    move-object/from16 v16, v0

    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->accountId:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/csipsimple/widgets/AccountChooserButton;->setTargetAccount(Ljava/lang/Long;)V

    .line 278
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->loadContactPhotos(Landroid/net/Uri;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 184
    .end local v3    # "callText":Ljava/lang/String;
    .end local v4    # "contactUri":Landroid/net/Uri;
    .end local v6    # "displayNumber":Ljava/lang/CharSequence;
    .end local v7    # "firstDetails":Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    .end local v8    # "historyList":Landroid/widget/ListView;
    .end local v10    # "mainActionDescription":Ljava/lang/String;
    .end local v11    # "mainActionIcon":I
    .end local v12    # "mainActionIntent":Landroid/content/Intent;
    .end local v13    # "nameOrNumber":Ljava/lang/CharSequence;
    .end local v15    # "photoUri":Landroid/net/Uri;
    :cond_1
    aget-object v16, p1, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    move-result-object v16

    aput-object v16, v5, v9

    .line 183
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 216
    .restart local v4    # "contactUri":Landroid/net/Uri;
    .restart local v7    # "firstDetails":Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    .restart local v15    # "photoUri":Landroid/net/Uri;
    :cond_2
    iget-object v13, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .restart local v13    # "nameOrNumber":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 223
    :cond_3
    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 224
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v18

    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 225
    .restart local v12    # "mainActionIntent":Landroid/content/Intent;
    const v11, 0x7f02009c

    .line 226
    .restart local v11    # "mainActionIcon":I
    const v16, 0x7f0b007a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 227
    .restart local v10    # "mainActionDescription":Ljava/lang/String;
    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x7f0b007a

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 230
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x7f0b02b8

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v7, Lcom/csipsimple/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 237
    .end local v10    # "mainActionDescription":Ljava/lang/String;
    .end local v11    # "mainActionIcon":I
    .end local v12    # "mainActionIntent":Landroid/content/Intent;
    :cond_5
    const/4 v12, 0x0

    .line 238
    .restart local v12    # "mainActionIntent":Landroid/content/Intent;
    const/4 v11, 0x0

    .line 239
    .restart local v11    # "mainActionIcon":I
    const/4 v10, 0x0

    .restart local v10    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_3

    .line 248
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mMainActionView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mMainActionView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    new-instance v17, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$2;-><init>(Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;Landroid/content/Intent;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mHeaderOverlayView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 268
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mResources:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    const v17, 0x7f0b0051

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "displayNumber":Ljava/lang/CharSequence;
    goto/16 :goto_5
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mResources:Landroid/content/res/Resources;

    .line 132
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 134
    new-instance v1, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;

    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mPhoneCallDetailsHelper:Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;

    .line 135
    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 136
    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mHeaderOverlayView:Landroid/view/View;

    .line 137
    const v1, 0x7f060042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mMainActionView:Landroid/widget/ImageView;

    .line 138
    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 139
    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 140
    const v1, 0x7f06004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/widgets/AccountChooserButton;

    iput-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->mAccountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

    .line 141
    return-object v0
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 7
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v0, "callIds":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/csipsimple/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id IN ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 394
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->quitListener:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$OnQuitListener;

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->quitListener:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$OnQuitListener;

    invoke-interface {v2}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$OnQuitListener;->onQuit()V

    .line 399
    :cond_0
    return-void

    .line 387
    :cond_1
    aget-object v1, v3, v2

    .line 388
    .local v1, "callUri":Landroid/net/Uri;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 389
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_2
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->updateData([Landroid/net/Uri;)V

    .line 148
    return-void
.end method

.method public setOnQuitListener(Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$OnQuitListener;)V
    .locals 0
    .param p1, "l"    # Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$OnQuitListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->quitListener:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$OnQuitListener;

    .line 89
    return-void
.end method

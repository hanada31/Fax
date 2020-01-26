.class public Lcom/csipsimple/ui/calllog/CallLogAdapter;
.super Lcom/csipsimple/ui/calllog/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Lcom/csipsimple/ui/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/calllog/CallLogAdapter$CallFetcher;,
        Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;,
        Lcom/csipsimple/ui/calllog/CallLogAdapter$OnCallLogAction;
    }
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "CallLogAdapter"


# instance fields
.field private callLogActionListener:Lcom/csipsimple/ui/calllog/CallLogAdapter$OnCallLogAction;

.field private final mCallFetcher:Lcom/csipsimple/ui/calllog/CallLogAdapter$CallFetcher;

.field private final mCallLogGroupBuilder:Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/csipsimple/ui/calllog/CallLogListItemHelper;

.field private final mContext:Landroid/content/Context;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/csipsimple/ui/calllog/CallLogAdapter$CallFetcher;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFetcher"    # Lcom/csipsimple/ui/calllog/CallLogAdapter$CallFetcher;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/calllog/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->callLogActionListener:Lcom/csipsimple/ui/calllog/CallLogAdapter$OnCallLogAction;

    .line 85
    new-instance v2, Lcom/csipsimple/ui/calllog/CallLogAdapter$1;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/calllog/CallLogAdapter$1;-><init>(Lcom/csipsimple/ui/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v2, Lcom/csipsimple/ui/calllog/CallLogAdapter$2;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/calllog/CallLogAdapter$2;-><init>(Lcom/csipsimple/ui/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 108
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mCallFetcher:Lcom/csipsimple/ui/calllog/CallLogAdapter$CallFetcher;

    .line 111
    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;

    invoke-direct {v0, v1}, Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;)V

    .line 115
    .local v0, "phoneCallDetailsHelper":Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;
    new-instance v2, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;

    invoke-direct {v2, v0, p1}, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;-><init>(Lcom/csipsimple/ui/calllog/PhoneCallDetailsHelper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/csipsimple/ui/calllog/CallLogListItemHelper;

    .line 116
    new-instance v2, Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;-><init>(Lcom/csipsimple/ui/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;

    .line 117
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/calllog/CallLogAdapter;)Lcom/csipsimple/ui/calllog/CallLogAdapter$OnCallLogAction;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->callLogActionListener:Lcom/csipsimple/ui/calllog/CallLogAdapter$OnCallLogAction;

    return-object v0
.end method

.method private bindView(ILandroid/view/View;Landroid/database/Cursor;I)V
    .locals 27
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "count"    # I

    .prologue
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/csipsimple/ui/calllog/CallLogListItemViews;

    .line 197
    .local v24, "views":Lcom/csipsimple/ui/calllog/CallLogListItemViews;
    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 198
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->isLastOfSection(Landroid/database/Cursor;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x8

    :goto_0
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 200
    const-string v15, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 201
    .local v23, "numberColIndex":I
    const-string v15, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 202
    .local v20, "dateColIndex":I
    const-string v15, "duration"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 203
    .local v21, "durationColIndex":I
    const-string v15, "account_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 206
    .local v17, "accIdIndex":I
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "number":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 208
    .local v7, "date":J
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 209
    .local v9, "duration":J
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 214
    .local v16, "accId":Ljava/lang/Long;
    new-instance v19, Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;

    const/4 v15, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;-><init>(Lcom/csipsimple/ui/calllog/CallLogAdapter;Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;)V

    .line 215
    .local v19, "cri":Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->getCallIds(Landroid/database/Cursor;I)[J

    move-result-object v15

    move-object/from16 v0, v19

    iput-object v15, v0, Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;->callIds:[J

    .line 216
    move/from16 v0, p1

    move-object/from16 v1, v19

    iput v0, v1, Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;->position:I

    .line 217
    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;->number:Ljava/lang/String;

    .line 218
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;->accId:Ljava/lang/Long;

    .line 219
    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 220
    move-object/from16 v0, v24

    iget-object v15, v0, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 221
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v15, 0x8

    :goto_1
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    const v15, 0x7f060054

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 225
    .local v18, "cachedNumber":Ljava/lang/String;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 251
    :goto_2
    return-void

    .line 198
    .end local v4    # "number":Ljava/lang/String;
    .end local v7    # "date":J
    .end local v9    # "duration":J
    .end local v16    # "accId":Ljava/lang/Long;
    .end local v17    # "accIdIndex":I
    .end local v18    # "cachedNumber":Ljava/lang/String;
    .end local v19    # "cri":Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;
    .end local v20    # "dateColIndex":I
    .end local v21    # "durationColIndex":I
    .end local v23    # "numberColIndex":I
    :cond_0
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 222
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v7    # "date":J
    .restart local v9    # "duration":J
    .restart local v16    # "accId":Ljava/lang/Long;
    .restart local v17    # "accIdIndex":I
    .restart local v19    # "cri":Lcom/csipsimple/ui/calllog/CallLogAdapter$CallRowInfos;
    .restart local v20    # "dateColIndex":I
    .restart local v21    # "durationColIndex":I
    .restart local v23    # "numberColIndex":I
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 230
    .restart local v18    # "cachedNumber":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v15, v4}, Lcom/csipsimple/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;

    move-result-object v22

    .line 232
    .local v22, "info":Lcom/csipsimple/models/CallerInfo;
    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 233
    .local v14, "lookupUri":Landroid/net/Uri;
    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    .line 234
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, v22

    iget v12, v0, Lcom/csipsimple/models/CallerInfo;->numberType:I

    .line 235
    .local v12, "ntype":I
    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/csipsimple/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 236
    .local v13, "label":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v4, v15}, Lcom/csipsimple/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v6

    .line 239
    .local v6, "callTypes":[I
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 240
    new-instance v3, Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    invoke-direct/range {v3 .. v10}, Lcom/csipsimple/ui/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJ)V

    .line 249
    .local v3, "details":Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/csipsimple/ui/calllog/CallLogListItemHelper;

    move-object/from16 v0, v24

    invoke-virtual {v15, v0, v3}, Lcom/csipsimple/ui/calllog/CallLogListItemHelper;->setPhoneCallDetails(Lcom/csipsimple/ui/calllog/CallLogListItemViews;Lcom/csipsimple/ui/calllog/PhoneCallDetails;)V

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->setPhoto(Lcom/csipsimple/ui/calllog/CallLogListItemViews;Lcom/csipsimple/models/CallerInfo;)V

    goto :goto_2

    .line 245
    .end local v3    # "details":Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    :cond_3
    new-instance v3, Lcom/csipsimple/ui/calllog/PhoneCallDetails;

    .line 246
    const/4 v15, 0x0

    .line 245
    invoke-direct/range {v3 .. v15}, Lcom/csipsimple/ui/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .restart local v3    # "details":Lcom/csipsimple/ui/calllog/PhoneCallDetails;
    goto :goto_3
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/csipsimple/ui/calllog/CallLogListItemViews;

    move-result-object v0

    .line 179
    .local v0, "views":Lcom/csipsimple/ui/calllog/CallLogListItemViews;
    iget-object v1, v0, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 180
    iget-object v1, v0, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, v0, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method private getCallIds(Landroid/database/Cursor;I)[J
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 299
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 300
    .local v2, "position":I
    new-array v0, p2, [J

    .line 301
    .local v0, "callIds":[J
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 305
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 306
    return-object v0

    .line 302
    :cond_0
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v0, v1

    .line 303
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 270
    .local v2, "position":I
    new-array v0, p2, [I

    .line 271
    .local v0, "callTypes":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 275
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 276
    return-object v0

    .line 272
    :cond_0
    const-string v3, "type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 273
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isLastOfSection(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 255
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPhoto(Lcom/csipsimple/ui/calllog/CallLogListItemViews;Lcom/csipsimple/models/CallerInfo;)V
    .locals 3
    .param p1, "views"    # Lcom/csipsimple/ui/calllog/CallLogListItemViews;
    .param p2, "ci"    # Lcom/csipsimple/models/CallerInfo;

    .prologue
    .line 325
    iget-object v0, p1, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    iget-object v1, p2, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 326
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/csipsimple/ui/calllog/CallLogListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .line 327
    invoke-virtual {v1}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 329
    const v2, 0x7f0200a3

    .line 326
    invoke-static {v0, v1, p2, v2}, Lcom/csipsimple/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/csipsimple/models/CallerInfo;I)V

    .line 331
    return-void
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 0
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I
    .param p3, "expanded"    # Z

    .prologue
    .line 335
    invoke-super {p0, p1, p2, p3}, Lcom/csipsimple/ui/calllog/GroupingListAdapter;->addGroup(IIZ)V

    .line 336
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/csipsimple/ui/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 130
    return-void
.end method

.method public bindChildView(ILandroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->bindView(ILandroid/view/View;Landroid/database/Cursor;I)V

    .line 158
    return-void
.end method

.method public bindGroupView(ILandroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "groupSize"    # I
    .param p6, "expanded"    # Z

    .prologue
    .line 173
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->bindView(ILandroid/view/View;Landroid/database/Cursor;I)V

    .line 174
    return-void
.end method

.method public bindStandAloneView(ILandroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->bindView(ILandroid/view/View;Landroid/database/Cursor;I)V

    .line 144
    return-void
.end method

.method public getCallIdsAtPosition(I)[J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 287
    .local v1, "item":Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->getGroupSize(I)I

    move-result v0

    .line 288
    .local v0, "count":I
    invoke-direct {p0, v1, v0}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->getCallIds(Landroid/database/Cursor;I)[J

    move-result-object v2

    return-object v2
.end method

.method public getCallRemoteAtPostion(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 316
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 317
    const-string v2, "number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "number":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/csipsimple/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 320
    .end local v1    # "number":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 149
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 150
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030023

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 152
    return-object v1
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 163
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 164
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030023

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 166
    return-object v1
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 135
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 136
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030023

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/csipsimple/ui/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 138
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->mCallFetcher:Lcom/csipsimple/ui/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/csipsimple/ui/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    .line 125
    return-void
.end method

.method public setOnCallLogActionListener(Lcom/csipsimple/ui/calllog/CallLogAdapter$OnCallLogAction;)V
    .locals 0
    .param p1, "l"    # Lcom/csipsimple/ui/calllog/CallLogAdapter$OnCallLogAction;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogAdapter;->callLogActionListener:Lcom/csipsimple/ui/calllog/CallLogAdapter$OnCallLogAction;

    .line 69
    return-void
.end method

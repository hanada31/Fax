.class public Lcom/csipsimple/ui/messages/MessageAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;
    }
.end annotation


# static fields
.field private static dateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

.field private personalInfo:Lcom/csipsimple/models/CallerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/csipsimple/ui/messages/MessageAdapter;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 62
    const v0, 0x7f030044

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 63
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x1030046

    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/csipsimple/ui/messages/MessageAdapter;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 65
    iget-object v0, p0, Lcom/csipsimple/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/csipsimple/models/CallerInfo;->getCallerInfoForSelf(Landroid/content/Context;)Lcom/csipsimple/models/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/messages/MessageAdapter;->personalInfo:Lcom/csipsimple/models/CallerInfo;

    .line 67
    return-void
.end method

.method private formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 202
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    if-eqz p3, :cond_1

    const-string v3, "text/html"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 206
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 217
    :cond_0
    :goto_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 218
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 220
    .local v2, "startOffset":I
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 222
    iget-object v3, p0, Lcom/csipsimple/ui/messages/MessageAdapter;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 223
    const/16 v5, 0x21

    .line 222
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 225
    return-object v0

    .line 208
    .end local v2    # "startOffset":I
    :cond_1
    invoke-static {}, Lcom/csipsimple/utils/SmileyParser;->getInstance()Lcom/csipsimple/utils/SmileyParser;

    move-result-object v1

    .line 209
    .local v1, "parser":Lcom/csipsimple/utils/SmileyParser;
    invoke-virtual {v1, p2}, Lcom/csipsimple/utils/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private setPhotoSide(Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;)V
    .locals 6
    .param p1, "tagView"    # Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;
    .param p2, "pos"    # Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    .prologue
    const/16 v2, 0xb

    const/16 v3, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    iget-object v1, p1, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v1}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne p2, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    sget-object v1, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    iget-object v1, p1, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->containterBlock:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 172
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne p2, v1, :cond_2

    move v1, v4

    .line 173
    :goto_2
    const v2, 0x7f060051

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 174
    sget-object v1, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    if-ne p2, v1, :cond_3

    :goto_3
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 176
    iget-object v1, p1, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v1, p2}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->setPosition(Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;)V

    .line 178
    return-void

    :cond_0
    move v1, v3

    .line 167
    goto :goto_0

    :cond_1
    move v3, v2

    .line 169
    goto :goto_1

    :cond_2
    move v1, v5

    .line 172
    goto :goto_2

    :cond_3
    move v5, v4

    .line 174
    goto :goto_3
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;

    .line 83
    .local v14, "tagView":Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;
    new-instance v11, Lcom/csipsimple/api/SipMessage;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Lcom/csipsimple/api/SipMessage;-><init>(Landroid/database/Cursor;)V

    .line 85
    .local v11, "msg":Lcom/csipsimple/api/SipMessage;
    invoke-virtual {v11}, Lcom/csipsimple/api/SipMessage;->getRemoteNumber()Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, "number":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/csipsimple/api/SipMessage;->getDate()J

    move-result-wide v1

    .line 87
    .local v1, "date":J
    invoke-virtual {v11}, Lcom/csipsimple/api/SipMessage;->getBodyContent()Ljava/lang/String;

    move-result-object v13

    .line 88
    .local v13, "subject":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/csipsimple/api/SipMessage;->getErrorContent()Ljava/lang/String;

    move-result-object v8

    .line 89
    .local v8, "errorTxt":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/csipsimple/api/SipMessage;->getMimeType()Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "mimeType":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/csipsimple/api/SipMessage;->getType()I

    move-result v16

    .line 92
    .local v16, "type":I
    const-string v15, ""

    .line 93
    .local v15, "timestamp":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 96
    const/high16 v7, 0x40000

    .line 98
    .local v7, "flags":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    .line 97
    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v15

    .end local v15    # "timestamp":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 105
    .end local v7    # "flags":I
    .restart local v15    # "timestamp":Ljava/lang/String;
    :goto_0
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->dateView:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const/4 v3, 0x6

    move/from16 v0, v16

    if-ne v0, v3, :cond_1

    .line 110
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    const v4, 0x7f0200a9

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0088

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->errorView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :goto_2
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->contentView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v10}, Lcom/csipsimple/ui/messages/MessageAdapter;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v11}, Lcom/csipsimple/api/SipMessage;->isOutgoing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    sget-object v3, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->LEFT:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/csipsimple/ui/messages/MessageAdapter;->setPhotoSide(Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;)V

    .line 140
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/ui/messages/MessageAdapter;->personalInfo:Lcom/csipsimple/models/CallerInfo;

    iget-object v4, v4, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/csipsimple/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    .line 142
    iget-object v4, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v4}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    .line 143
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/csipsimple/ui/messages/MessageAdapter;->personalInfo:Lcom/csipsimple/models/CallerInfo;

    .line 144
    const v6, 0x7f0200a3

    .line 141
    invoke-static {v3, v4, v5, v6}, Lcom/csipsimple/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/csipsimple/models/CallerInfo;I)V

    .line 162
    :goto_3
    return-void

    .line 102
    :cond_0
    sget-object v3, Lcom/csipsimple/ui/messages/MessageAdapter;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 114
    :cond_1
    const/4 v3, 0x5

    move/from16 v0, v16

    if-ne v0, v3, :cond_2

    .line 115
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    const v4, 0x7f0200ca

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/csipsimple/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0067

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 120
    :cond_2
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    .line 122
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 128
    :cond_3
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->errorView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->errorView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 148
    :cond_4
    sget-object v3, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;->RIGHT:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/csipsimple/ui/messages/MessageAdapter;->setPhotoSide(Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;Lcom/csipsimple/widgets/contactbadge/QuickContactBadge$ArrowPosition;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/csipsimple/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/csipsimple/api/SipMessage;->getFullFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;

    move-result-object v9

    .line 154
    .local v9, "info":Lcom/csipsimple/models/CallerInfo;
    iget-object v3, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    iget-object v4, v9, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/csipsimple/ui/messages/MessageAdapter;->mContext:Landroid/content/Context;

    .line 156
    iget-object v4, v14, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v4}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    .line 158
    const v5, 0x7f0200a3

    .line 155
    invoke-static {v3, v4, v9, v5}, Lcom/csipsimple/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/csipsimple/models/CallerInfo;I)V

    goto :goto_3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 185
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;

    invoke-direct {v0}, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;-><init>()V

    .line 186
    .local v0, "tagView":Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;
    const v2, 0x7f0600cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->containterBlock:Landroid/widget/LinearLayout;

    .line 187
    const v2, 0x7f0600ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->contentView:Landroid/widget/TextView;

    .line 188
    const v2, 0x7f0600d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->errorView:Landroid/widget/TextView;

    .line 189
    const v2, 0x7f0600cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->dateView:Landroid/widget/TextView;

    .line 190
    const v2, 0x7f060051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    iput-object v2, v0, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .line 191
    const v2, 0x7f0600d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/csipsimple/ui/messages/MessageAdapter$MessageListItemViews;->deliveredIndicator:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    return-object v1
.end method

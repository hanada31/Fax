.class public Lcom/csipsimple/ui/messages/ConverstationsAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "ConverstationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;
    }
.end annotation


# static fields
.field private static final STYLE_BOLD:Landroid/text/style/StyleSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/csipsimple/ui/messages/ConverstationsAdapter;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 48
    const v2, 0x7f030029

    new-array v4, v1, [Ljava/lang/String;

    .line 49
    const-string v0, "body"

    aput-object v0, v4, v6

    .line 51
    new-array v5, v1, [I

    .line 52
    const v0, 0x7f06005f

    aput v0, v5, v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 53
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 54
    return-void
.end method

.method private formatMessage(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 148
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 156
    .local v0, "buf":Landroid/text/SpannableStringBuilder;
    const-string v4, "full_sender"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "remoteContactFull":Ljava/lang/String;
    invoke-static {v3}, Lcom/csipsimple/api/SipUri;->getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 159
    const-string v4, "counter"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 160
    .local v1, "counter":I
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 165
    :cond_0
    const-string v4, "read"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 167
    .local v2, "read":I
    if-nez v2, :cond_1

    .line 168
    sget-object v4, Lcom/csipsimple/ui/messages/ConverstationsAdapter;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 169
    const/16 v7, 0x11

    .line 168
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 171
    :cond_1
    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 89
    invoke-super/range {p0 .. p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;

    .line 92
    .local v12, "tagView":Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;
    const-string v3, "sender"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, "nbr":Ljava/lang/String;
    const-string v3, "full_sender"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "fromFull":Ljava/lang/String;
    const-string v3, "receiver"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "to_number":Ljava/lang/String;
    const-string v3, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 100
    .local v1, "date":J
    iput-object v8, v12, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->fromFull:Ljava/lang/String;

    .line 101
    iput-object v13, v12, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->to:Ljava/lang/String;

    .line 102
    iput-object v10, v12, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->from:Ljava/lang/String;

    .line 103
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iput v3, v12, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->position:I

    .line 113
    const-string v3, "full_sender"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 114
    .local v11, "number":Ljava/lang/String;
    iget-object v3, p0, Lcom/csipsimple/ui/messages/ConverstationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v11}, Lcom/csipsimple/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/models/CallerInfo;

    move-result-object v9

    .line 126
    .local v9, "info":Lcom/csipsimple/models/CallerInfo;
    iget-object v3, v12, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    iget-object v4, v9, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 127
    iget-object v3, p0, Lcom/csipsimple/ui/messages/ConverstationsAdapter;->mContext:Landroid/content/Context;

    .line 128
    iget-object v4, v12, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    invoke-virtual {v4}, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    .line 130
    const v5, 0x7f0200a3

    .line 127
    invoke-static {v3, v4, v9, v5}, Lcom/csipsimple/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/csipsimple/models/CallerInfo;I)V

    .line 134
    iget-object v3, v12, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->fromView:Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/messages/ConverstationsAdapter;->formatMessage(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/high16 v7, 0x40000

    .line 139
    .local v7, "flags":I
    iget-object v14, v12, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->dateView:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;

    invoke-direct {v0}, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;-><init>()V

    .line 78
    .local v0, "tagView":Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;
    const v2, 0x7f060069

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->fromView:Landroid/widget/TextView;

    .line 79
    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->dateView:Landroid/widget/TextView;

    .line 80
    const v2, 0x7f060051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    iput-object v2, v0, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

    .line 81
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    return-object v1
.end method
